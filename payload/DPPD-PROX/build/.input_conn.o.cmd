cmd_input_conn.o = gcc -Wp,-MD,./.input_conn.o.d.tmp  -m64 -pthread  -march=native -DRTE_MACHINE_CPUFLAG_SSE -DRTE_MACHINE_CPUFLAG_SSE2 -DRTE_MACHINE_CPUFLAG_SSE3 -DRTE_MACHINE_CPUFLAG_SSSE3 -DRTE_MACHINE_CPUFLAG_SSE4_1 -DRTE_MACHINE_CPUFLAG_SSE4_2 -DRTE_MACHINE_CPUFLAG_AES -DRTE_MACHINE_CPUFLAG_PCLMULQDQ -DRTE_MACHINE_CPUFLAG_AVX -DRTE_MACHINE_CPUFLAG_RDRAND -DRTE_MACHINE_CPUFLAG_FSGSBASE -DRTE_MACHINE_CPUFLAG_F16C -DRTE_MACHINE_CPUFLAG_AVX2  -I/root/dpdk-c/payload/DPPD-PROX/build/include -I/root/dpdk-c/payload/dpdk-18.11/x86_64-native-linuxapp-gcc/include -include /root/dpdk-c/payload/dpdk-18.11/x86_64-native-linuxapp-gcc/include/rte_config.h -D_GNU_SOURCE -DPROGRAM_NAME=\"prox\" -O2 -g -fno-stack-protector -Wno-deprecated-declarations -DUSE_QINQ -DMPLS_ROUTING  -I/usr/include/lua5.2 -DPROX_STATS -DPROX_MAX_LOG_LVL=2 -DSOFT_CRC -DPROX_PREFETCH_OFFSET=2 -DLATENCY_PER_PACKET -DLATENCY_DETAILS -DGRE_TP -std=gnu99 -D_GNU_SOURCE                 -W -Wall -Wstrict-prototypes -Wmissing-prototypes -Wmissing-declarations -Wold-style-definition -Wpointer-arith -Wcast-align -Wnested-externs -Wcast-qual -Wformat-nonliteral -Wformat-security -Wundef -Wwrite-strings -Wdeprecated -Wimplicit-fallthrough=2 -Wno-format-truncation -Wno-unused -Wno-unused-parameter -Wno-unused-result    -o input_conn.o -c /root/dpdk-c/payload/DPPD-PROX/input_conn.c 
