cmd_portal/dpaa2_hw_dpio.o = gcc -Wp,-MD,portal/.dpaa2_hw_dpio.o.d.tmp  -m64 -pthread  -march=native -DRTE_MACHINE_CPUFLAG_SSE -DRTE_MACHINE_CPUFLAG_SSE2 -DRTE_MACHINE_CPUFLAG_SSE3 -DRTE_MACHINE_CPUFLAG_SSSE3 -DRTE_MACHINE_CPUFLAG_SSE4_1 -DRTE_MACHINE_CPUFLAG_SSE4_2 -DRTE_MACHINE_CPUFLAG_AES -DRTE_MACHINE_CPUFLAG_PCLMULQDQ -DRTE_MACHINE_CPUFLAG_AVX -DRTE_MACHINE_CPUFLAG_RDRAND -DRTE_MACHINE_CPUFLAG_FSGSBASE -DRTE_MACHINE_CPUFLAG_F16C -DRTE_MACHINE_CPUFLAG_AVX2  -I/root/dpdk-c/payload/dpdk-18.11/x86_64-native-linuxapp-gcc/include -include /root/dpdk-c/payload/dpdk-18.11/x86_64-native-linuxapp-gcc/include/rte_config.h -D_GNU_SOURCE -DALLOW_EXPERIMENTAL_API -O3 -W -Wall -Wstrict-prototypes -Wmissing-prototypes -Wmissing-declarations -Wold-style-definition -Wpointer-arith -Wcast-align -Wnested-externs -Wcast-qual -Wformat-nonliteral -Wformat-security -Wundef -Wwrite-strings -Wdeprecated -Wimplicit-fallthrough=2 -Wno-format-truncation -I/root/dpdk-c/payload/dpdk-18.11/drivers/bus/fslmc -I/root/dpdk-c/payload/dpdk-18.11/drivers/bus/fslmc/mc -I/root/dpdk-c/payload/dpdk-18.11/drivers/bus/fslmc/qbman/include -I/root/dpdk-c/payload/dpdk-18.11/lib/librte_eal/common    -o portal/dpaa2_hw_dpio.o -c /root/dpdk-c/payload/dpdk-18.11/drivers/bus/fslmc/portal/dpaa2_hw_dpio.c 
