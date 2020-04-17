// Warning: hacky workaround
#include <stdio.h>
#include <stdlib.h>
static FILE* statf = 0;

void statprintf(const char *fmt, ...) {
	if (!statf) {
		statf = fopen("hologram_stats.txt", "w");
		if (!statf) {
			perror("fopen");
			exit(1);
		}
	}
	va_list args;
	va_start(args, fmt);
	vfprintf(statf, fmt, args);
	fflush(statf);
	va_end(args);
}
