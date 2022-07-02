#include <cuda_runtime_api.h>

#include "common/data_format.hpp"
#include "common/phonebook.hpp"
#include "common/plugin.hpp"
#include "common/switchboard.hpp"
#include "hologram.h"

using namespace ILLIXR;

class hologram : public plugin {
public:
    hologram(std::string name_, phonebook* pb_)
        : plugin{name_, pb_}
        , sb{pb->lookup_impl<switchboard>()}
    {
        bool ret = HLG_initialize();
        if (!ret) {
            throw std::runtime_error{"Hologram Initialization failed (" + std::to_string(ret) + ")"};
        }

        cudaEventCreate(&_start);
        cudaEventCreate(&_stop);

        sb->schedule<hologram_input>(id, "hologram_input", [&](switchboard::ptr<const hologram_input> datum, size_t) {
            process(datum);
        });
    }

    // Destructor (dumps data to stdout for analysis)
    virtual ~hologram() override {
        for (int i = 0; i < _start_durations.size(); ++i) {
            std::cout << "gpu_timer,hologram," << i << ",0,0," << (_stop_durations[i] - _start_durations[i]) * 1000000 << "\n";
        }
        HLG_cleanup();
    }

    // Callback function
    void process(switchboard::ptr<const hologram_input> datum) {
        _start_durations.push_back(_total_gpu_time);

        cudaEventRecord(_start, 0);
        HLG_process();
        cudaEventRecord(_stop, 0);

        cudaEventSynchronize(_stop);
        float elapsed_time;
        cudaEventElapsedTime(&elapsed_time, _start, _stop);
        _total_gpu_time += elapsed_time;

        _stop_durations.push_back(_total_gpu_time);
    }

private:
    const std::shared_ptr<switchboard> sb;

    // Timing
    cudaEvent_t _start;
    cudaEvent_t _stop;
    std::vector<float> _start_durations;
    std::vector<float> _stop_durations;
    float _total_gpu_time = 0;
};


PLUGIN_MAIN(hologram)
