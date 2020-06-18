#include "common/plugin.hpp"
#include "common/switchboard.hpp"
#include "common/phonebook.hpp"
#include "common/data_format.hpp"
#include "common/logger.hpp"
#include "common/threadloop.hpp"
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

class hologram : public threadloop {
public:
	hologram(std::string name_, phonebook* pb_)
		: threadloop{name_, pb_}
		, sb{pb->lookup_impl<switchboard>()}
		, _m_in{sb->subscribe_latest<hologram_input>("hologram_in")}
		, _m_out{sb->publish<hologram_output>("hologram_out")}
		, _seq_expect(1)
		, _stat_processed(0)
		, _stat_missed(0)
		, logger{"hologram"}
	{
		bool ret = HLG_initailize();
		if (!ret) {
			throw std::runtime_error{"Hologram Initialization failed (" + std::to_string(ret) + ")"};
		}
	}

	virtual skip_option _p_should_skip() override {
		auto in = _m_in->get_latest_ro();
		if (!in || in->seq == _seq_expect-1) {
			// No new data, sleep
			return skip_option::skip_and_yield;
		} else {
			if (in->seq != _seq_expect) {
				_stat_missed = in->seq - _seq_expect;
			} else {
				_stat_missed = 0;
			}
			_stat_processed++;
			_seq_expect = in->seq+1;
			return skip_option::run;
		}
	}


	void _p_one_iteration() override {
		PRINT_WALL_TIME_FOR_THIS_BLOCK("hologram_wall");
		//printf("[Hologram] Running sample %ld, samples dropped since last sample: %ld\n", _stat_processed, _stat_missed);
		logger.log_start(std::chrono::high_resolution_clock::now());
		HLG_process();
		logger.log_end(std::chrono::high_resolution_clock::now());
	}

private:
	const std::shared_ptr<switchboard>sb;
	unique_ptr<reader_latest<hologram_input>> _m_in;
	unique_ptr<writer<hologram_output>> _m_out;
	long long _seq_expect, _stat_processed, _stat_missed;
	start_end_logger logger;

};


PLUGIN_MAIN(hologram)
