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
<<<<<<< HEAD
	hologram(phonebook *pb)
		: sb{pb->lookup_impl<switchboard>()}
		, _m_in{sb->get_reader<hologram_input>("hologram_in")}
		, _m_out{sb->get_writer<hologram_output>("hologram_out")}
=======
	hologram(std::string name_, phonebook* pb_)
		: threadloop{name_, pb_}
		, sb{pb->lookup_impl<switchboard>()}
		, _m_in{sb->subscribe_latest<hologram_input>("hologram_in")}
		, _m_out{sb->publish<hologram_output>("hologram_out")}
>>>>>>> 7ca8063
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

<<<<<<< HEAD
	void main_loop() {
		while (!_m_terminate.load()) {
			auto in = _m_in.get_latest_ro();
=======
	void _p_one_iteration() override {
			auto in = _m_in->get_latest_ro();
>>>>>>> 7ca8063
			if (!in || in->seq == _seq_expect-1) {
				// No new data, sleep
				std::this_thread::yield(); // ←_←
				return;
			}
			if (in->seq != _seq_expect) {
				_stat_missed = in->seq - _seq_expect;
			} else {
				_stat_missed = 0;
			}
			_stat_processed++;
			//printf("[Hologram] Running sample %ld, samples dropped since last sample: %ld\n", _stat_processed, _stat_missed);
			logger.log_start(std::chrono::high_resolution_clock::now());
			{
				PRINT_WALL_TIME_FOR_THIS_BLOCK("hologram_gpu");
				HLG_process();
			}
			logger.log_end(std::chrono::high_resolution_clock::now());
			_seq_expect = in->seq+1;
	}

private:
<<<<<<< HEAD
	switchboard *sb;
	start_end_logger* logger;
	switchboard::reader<hologram_input> _m_in;
	switchboard::writer<hologram_output> _m_out;
	thread _m_thread;
	atomic<bool> _m_terminate {false};
=======
	const std::shared_ptr<switchboard>sb;
	unique_ptr<reader_latest<hologram_input>> _m_in;
	unique_ptr<writer<hologram_output>> _m_out;
>>>>>>> 7ca8063
	long long _seq_expect, _stat_processed, _stat_missed;
	start_end_logger logger;

};


PLUGIN_MAIN(hologram)
