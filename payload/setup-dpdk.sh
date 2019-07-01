#!/bin/bash

echo 256 > /sys/kernel/mm/hugepages/hugepages-2048kB/nr_hugepages

modprobe vfio-pci
/root/dpdk/dpdk-stable-18.11.1/usertools/dpdk-devbind.py --force -b vfio-pci 00:04.0

