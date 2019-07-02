#!/usr/bin/env python2

from scapy.all import *

l2_src = "02:e2:96:08:05:4b"
l2_dst = "02:6a:39:6c:98:9c"

l3_src = "192.168.1.3"
l3_dst = "192.168.2.4"

pkt = Ether(src=l2_src, dst=l2_dst)/IP(src=l3_src, dst=l3_dst)/UDP()/Raw('A' * 64)
wrpcap("a.pcap", pkt)

l2_src = "02:e2:96:08:05:4b"
l2_dst = "02:6a:39:6c:98:9c"

l3_src = "192.168.1.3"
l3_dst = "192.168.2.4"

pkt = Ether(src=l2_src, dst=l2_dst)/IP(src=l3_src, dst=l3_dst)/UDP()/Raw('A' * 64)
wrpcap("b.pcap", pkt)
