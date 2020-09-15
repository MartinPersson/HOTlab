#include "common/plugin.hpp"
#include "common/threadloop.hpp"
#include "common/switchboard.hpp"
#include "common/phonebook.hpp"
#include "common/data_format.hpp"
#include "common/logger.hpp"
#include "common/threadloop.hpp"
#include "hologram.h"
#include <chrono>
#include <memory>
#include <thread>
#include <cstdio>
#include <cstdlib>
#include <atomic>
#include <cuda_runtime_api.h>

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
		bool ret = HLG_initialize();
		if (!ret) {
			throw std::runtime_error{"Hologram Initialization failed (" + std::to_string(ret) + ")"};
		}
	}

	// destructor
	virtual ~hologram() override {
		for (int i = 0; i < startDurations.size(); ++i) {
			std::cout << "gpu_timer,hologram," << i << ",0,0," << (stopDurations[i] - startDurations[i]) * 1000000 << "\n";
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
		cudaEvent_t start, stop;
    cudaEventCreate(&start);
    cudaEventCreate(&stop);

		startDurations.push_back(total_gpu_time);

		cudaEventRecord(start, 0);
		HLG_process();
		cudaEventRecord(stop, 0);

		cudaEventSynchronize(stop);
    float elapsed_time;
    cudaEventElapsedTime(&elapsed_time, start, stop);
    total_gpu_time += elapsed_time;

		stopDurations.push_back(total_gpu_time);
	}

private:
	const std::shared_ptr<switchboard>sb;
	unique_ptr<reader_latest<hologram_input>> _m_in;
	unique_ptr<writer<hologram_output>> _m_out;
	long long _seq_expect, _stat_processed, _stat_missed;
	start_end_logger logger;

	std::vector<float> startDurations;
	std::vector<float> stopDurations;
	float total_gpu_time = 0;
};


PLUGIN_MAIN(hologram)
