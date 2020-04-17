// Hacky way to redirect output
// Include this file after stdio.h
#define printf statprintf

#ifdef __cplusplus
extern "C" {
#endif

void statprintf(const char *fmt, ...);

#ifdef __cplusplus
}
#endif

