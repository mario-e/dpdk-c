#!/bin/bash
# the following deps should be installed:
# apt-get install -y make gcc libnuma-dev python pkg-config liblua5.1-0-dev lua5.2 liblua5.2-dev libpcap0.8-dev libncurses5-dev libedit-dev libncursesw5-dev

VER=18.11

cwd=`pwd`

echo "Building dpdk$VER"

wget -nc http://fast.dpdk.org/rel/dpdk-$VER.tar.xz
tar vxf dpdk-$VER.tar.xz
cd dpdk-$VER
export RTE_SDK=`pwd`
export RTE_TARGET=x86_64-native-linuxapp-gcc
NUM_CPUS=$(cat /proc/cpuinfo | grep "processor\\s: " | wc -l)
make install T=$RTE_TARGET -j $NUM_CPUS

echo "Building Prox"
cd - 
git clone https://github.com/opnfv/samplevnf.git
mv samplevnf/VNFs/DPPD-PROX/ .
cd DPPD*
make -j $NUM_CPUS crc=soft

