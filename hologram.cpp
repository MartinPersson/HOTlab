#include "common/plugin.hpp"
#include "common/switchboard.hpp"
#include "common/phonebook.hpp"
#include "common/data_format.hpp"
#include "common/logger.hpp"
#include "hologram.h"
#include <chrono>
#include <thread>
#include <cstdio>
#include <cstdlib>
#include <atomic>

#include "stats.h"

using namespace ILLIXR;
using std::unique_ptr;
using std::thread;
using std::atomic;

class hologram : public plugin {
public:
	hologram(phonebook *pb)
		: sb{pb->lookup_impl<switchboard>()}
		, _m_in{sb->subscribe_latest<hologram_input>("hologram_in")}
		, _m_out{sb->publish<hologram_output>("hologram_out")}
		, _seq_expect(1)
		, _stat_processed(0)
		, _stat_missed(0)
	{
		logger = new start_end_logger("hologram");
	}

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
			logger->log_start(std::chrono::high_resolution_clock::now());
			HLG_process();
			logger->log_end(std::chrono::high_resolution_clock::now());
			_seq_expect = in->seq+1;
		}
	}

	virtual void start() override {
		if (!HLG_initailize()) {
			fprintf(stderr, "Hologram Initialization failed\n");
			exit(1);
		}
		_m_thread = thread{&hologram::main_loop, this};
	}

	virtual void _p_stop() {
		_m_terminate.store(true);
		_m_thread.join();
	}

private:
	switchboard *sb;
	start_end_logger* logger;
	unique_ptr<reader_latest<hologram_input>> _m_in;
	unique_ptr<writer<hologram_output>> _m_out;
	thread _m_thread;
	atomic<bool> _m_terminate {false};
	long long _seq_expect, _stat_processed, _stat_missed;

};


PLUGIN_MAIN(hologram)
