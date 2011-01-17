N_spots = 4;
memsize_V_f = N_spots * 4 * 512*512;
memsize_spots_f = 128 * 4;
memsize_SLM_f = 512*512*4;  
memsize_SLM_uc = 512*512;
memsize_SLM_cc = 512*512*N_spots;
totmem = 4*memsize_SLM_f + 7*memsize_V_f + 6*memsize_spots_f + 3*memsize_SLM_cc + memsize_SLM_uc + 2*128*1000*4

totMB = totmem/(2^20)