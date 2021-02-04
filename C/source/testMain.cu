#include "hologram.h"

int main(int argc, char *argv[])
{
    if (argc != 2) {
        printf("Usage: ./hologram <num trials>\n");
        return 0;
    }

    unsigned trials = atoi(argv[1]);

    HLG_initialize();
    for (unsigned i = 0; i < trials; i++)
      HLG_process();
    HLG_cleanup();
    return 0;
}
