#!/usr/bin/env python2

from scapy.all import *

l2_src = "02:e2:96:08:05:4b"
l2_dst = "02:6a:39:6c:98:9c"

l3_src = "192.168.1.3"
l3_dst = "192.168.2.4"

pkts = [Ether(src=l2_src, dst=l2_dst)/IP(src=l3_src, dst=l3_dst)/UDP(sport=x, dport=y)/Raw('A' * 22) for x,y in itertools.product(range(11000,11000),range(11000,11000))]
wrpcap("p0.pcap", pkts)


l2_src = "02:e2:96:08:05:4b"
l2_dst = "02:6a:39:6c:98:9c"

l3_src = "192.168.1.3"
l3_dst = "192.168.2.4"

pkts = [Ether(src=l2_src, dst=l2_dst)/IP(src=l3_src, dst=l3_dst)/UDP(sport=x, dport=y)/Raw('A' * 22) for x,y in itertools.product(range(11000,11000),range(11000,11000))]
wrpcap("p1.pcap", pkts)
