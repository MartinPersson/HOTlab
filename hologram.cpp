#include "common/component.hh"
#include "common/switchboard.hh"
#include "common/data_format.hh"
#include "hologram.h"

#include <thread>
#include <cstdio>
#include <cstdlib>

#include "stats.h"

using namespace ILLIXR;
using std::unique_ptr;
using std::thread;
using std::atomic;

class hologram : public component {
public:
	hologram(unique_ptr<reader_latest<hologram_input>>&& in_ev,
	         unique_ptr<writer<hologram_output>>&& out_ev)
		: _m_in{std::move(in_ev)}
		, _m_out{std::move(out_ev)}
		, _seq_expect(1)
		, _stat_processed(0)
		, _stat_missed(0)
	{ }

	void main_loop() {
		while (!_m_terminate.load()) {
			auto in = _m_in->get_latest_ro();
			if (!in || in->seq == _seq_expect-1) {
				// No new data, sleep
				std::this_thread::yield(); // ←_←
				continue;
			}
			if (in->seq != _seq_expect) {
				_stat_missed = in->seq - _seq_expect;
			} else {
				_stat_missed = 0;
			}
			_stat_processed++;
			//printf("[Hologram] Running sample %ld, samples dropped since last sample: %ld\n", _stat_processed, _stat_missed);
			HLG_process();
			_seq_expect = in->seq+1;
		}
	}

private:
	unique_ptr<reader_latest<hologram_input>> _m_in;
	unique_ptr<writer<hologram_output>> _m_out;
	thread _m_thread;
	atomic<bool> _m_terminate {false};
	long long _seq_expect, _stat_processed, _stat_missed;

	virtual void _p_start() override {
		if (!HLG_initailize()) {
			fprintf(stderr, "Hologram Initialization failed\n");
			exit(1);
		}
		_m_thread = thread{&hologram::main_loop, this};
	}

	virtual void _p_stop() override {
		_m_terminate.store(true);
		_m_thread.join();
	}
};

extern "C" component* create_component(switchboard* sb) {
	auto in_ev = sb->subscribe_latest<hologram_input>("hologram_in");
	auto out_ev = sb->publish<hologram_output>("hologram_out");
	return new hologram{std::move(in_ev), std::move(out_ev)};
}
