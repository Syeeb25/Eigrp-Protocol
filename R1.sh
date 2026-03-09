
Press RETURN to get started!


*Mar  1 12:43:50.039: %IFMGR-7-NO_IFINDEX_FILE: Unable to open nvram:/ifIndex-table No such file or directory
*Mar  1 12:43:56.615: %LINEPROTO-5-UPDOWN: Line protocol on Interface VoIP-Null0, changed state to up
*Mar  1 12:43:56.619: %LINK-3-UPDOWN: Interface FastEthernet0/0, changed state to up
*Mar  1 12:43:56.627: %LINK-3-UPDOWN: Interface FastEthernet1/0, changed state to up
*Mar  1 12:43:57.175: %SYS-5-CONFIG_I: Configured from memory by console
*Mar  1 12:43:57.523: %SYS-5-RESTART: System restarted --
Cisco IOS Software, 7200 Software (C7200-ADVENTERPRISEK9-M), Version 15.2(4)M7, RELEASE SOFTWARE (fc2)

Copyright (c) 1986-2014 by Cisco Systems, Inc.
Compiled Thu 25-Sep-14 10:36 by prod_rel_team
*Mar  1 12:43:57.579: %CRYPTO-6-ISAKMP_ON_OFF: ISAKMP is OFF
*Mar  1 12:43:57.579: %CRYPTO-6-GDOI_ON_OFF: GDOI is OFF
*Mar  1 12:43:57.623: %LINEPROTO-5-UPDOWN: Line protocol on Interfa
R1#ce FastEthernet0/0, changed state to down
*Mar  1 12:43:57.627: %LINEPROTO-5-UPDOWN: Line protocol on Interface FastEthernet1/0, changed state to down
*Mar  1 12:43:57.667: %SNMP-5-COLDSTART: SNMP agent on host R1 is undergoing a cold start
*Mar  1 12:43:59.175: %LINK-5-CHANGED: Interface FastEthernet0/0, changed state to administratively down
*Mar  1 12:43:59.187: %LINK-5-CHANGED: Interface FastEthernet1/0, changed state to administratively down



R1#
R1#
R1#conf t
Enter configuration commands, one per line.  End with CNTL/Z.
R1(config)#
R1(config)#
R1(config)#int f0/0
R1(config-if)#
R1(config-if)#ip add 10.0.0.1 255.255.255.0
R1(config-if)#
R1(config-if)#no sh
R1(config-if)#
R1(config-if)#
*Mar  1 12:51:14.671: %LINK-3-UPDOWN: Interface FastEthernet0/0, changed state to up
R1(config-if)#
*Mar  1 12:51:15.671: %LINEPROTO-5-UPDOWN: Line protocol on Interface FastEthernet0/0, changed state to up


R1(config-if)#
R1(config-if)#
R1(config-if)#
R1(config-if)#
R1(config-if)#^Z
R1#
R1#
R1#co
*Mar  1 12:52:01.151: %SYS-5-CONFIG_I: Configured from console by console
R1#conf t
Enter configuration commands, one per line.  End with CNTL/Z.
R1(config)#
R1(config)#
R1(config)#
R1(config)#
R1(config)#int f0/0
R1(config-if)#
R1(config-if)#
R1(config-if)#int f1/0
R1(config-if)#
R1(config-if)#
R1(config-if)#
R1(config-if)#
R1(config-if)#ip add 192.168.10.1 255.255.255.0
R1(config-if)#
R1(config-if)#
R1(config-if)#no sh
R1(config-if)#
*Mar  1 12:52:44.543: %LINK-3-UPDOWN: Interface FastEthernet1/0, changed state to up
*Mar  1 12:52:45.543: %LINEPROTO-5-UPDOWN: Line protocol on Interface FastEthernet1/0, changed state to up
R1(config-if)#
*Mar  1 12:53:13.003: %CDP-4-DUPLEX_MISMATCH: duplex mismatch discovered on FastEthernet0/0 (not full duplex),                                                                                                                                with R2 FastEthernet0/0 (full duplex).
R1(config-if)#
*Mar  1 12:53:19.307: %CDP-4-DUPLEX_MISMATCH: duplex mismatch discovered on FastEthernet0/0 (not full duplex),                                                                                                                                with R2 FastEthernet0/0 (full duplex).
*Mar  1 12:53:20.295: %CDP-4-DUPLEX_MISMATCH: duplex mismatch discovered on FastEthernet0/0 (not full duplex),                                                                                                                                with R2 FastEthernet0/0 (full duplex).
R1(config-if)#
*Mar  1 12:54:18.699: %CDP-4-DUPLEX_MISMATCH: duplex mismatch discovered on FastEthernet0/0 (not full duplex),                                                                                                                                with R2 FastEthernet0/0 (full duplex).
R1(config-if)#
*Mar  1 12:55:17.555: %CDP-4-DUPLEX_MISMATCH: duplex mismatch discovered on FastEthernet0/0 (not full duplex),                                                                                                                                with R2 FastEthernet0/0 (full duplex).
R1(config-if)#
*Mar  1 12:56:13.627: %CDP-4-DUPLEX_MISMATCH: duplex mismatch discovered on FastEthernet0/0 (not full duplex),                                                                                                                                with R2 FastEthernet0/0 (full duplex).
R1(config-if)#
*Mar  1 12:57:02.215: %CDP-4-DUPLEX_MISMATCH: duplex mismatch discovered on FastEthernet0/0 (not full duplex),                                                                                                                                with R2 FastEthernet0/0 (full duplex).
R1(config-if)#^Z
R1#pi
*Mar  1 12:57:10.231: %SYS-5-CONFIG_I: Configured from console by console
R1#ping 10.0.0.1
Type escape sequence to abort.
Sending 5, 100-byte ICMP Echos to 10.0.0.1, timeout is 2 seconds:
!!!!!
Success rate is 100 percent (5/5), round-trip min/avg/max = 1/4/8 ms
R1#
*Mar  1 12:57:52.299: %CDP-4-DUPLEX_MISMATCH: duplex mismatch discovered on FastEthernet0/0 (not full duplex),                                                                                                                                with R2 FastEthernet0/0 (full duplex).
R1#
*Mar  1 12:58:47.019: %CDP-4-DUPLEX_MISMATCH: duplex mismatch discovered on FastEthernet0/0 (not full duplex),                                                                                                                                with R2 FastEthernet0/0 (full duplex).
R1#conf t
Enter configuration commands, one per line.  End with CNTL/Z.
R1(config)#
R1(config)#
R1(config)#router eigrp 100
R1(config-router)#network 10.0
*Mar  1 12:59:38.207: %CDP-4-DUPLEX_MISMATCH: duplex mismatch discovered on FastEthernet0/0 (not full duplex),                                                                                                                                with R2 FastEthernet0/0 (full duplex).
R1(config-router)#network 10.0.0.0
R1(config-router)#network 192.168.1.0
R1(config-router)#
R1(config-router)#
R1(config-router)#no auto-
R1(config-router)#no auto-summary
R1(config-router)#
R1(config-router)#
*Mar  1 13:00:26.643: %CDP-4-DUPLEX_MISMATCH: duplex mismatch discovered on FastEthernet0/0 (not full duplex),                                                                                                                                with R2 FastEthernet0/0 (full duplex).
R1(config-router)#
*Mar  1 13:00:37.471: %DUAL-5-NBRCHANGE: EIGRP-IPv4 100: Neighbor 10.0.0.2 (FastEthernet0/0) is up: new adjace                                                                                                                               ncy
R1(config-router)#^Z
R1#
R1#
R1#
R1#sh i
*Mar  1 13:01:07.315: %SYS-5-CONFIG_I: Configured from console by console
R1#sh ip int br
Interface                  IP-Address      OK? Method Status                Protocol
FastEthernet0/0            10.0.0.1        YES manual up                    up
FastEthernet1/0            192.168.10.1    YES manual up                    up
R1#
*Mar  1 13:01:22.607: %CDP-4-DUPLEX_MISMATCH: duplex mismatch discovered on FastEthernet0/0 (not full duplex),                                                                                                                                with R2 FastEthernet0/0 (full duplex).
R1#
*Mar  1 13:02:18.439: %CDP-4-DUPLEX_MISMATCH: duplex mismatch discovered on FastEthernet0/0 (not full duplex),                                                                                                                                with R2 FastEthernet0/0 (full duplex).
R1#
*Mar  1 13:03:09.695: %CDP-4-DUPLEX_MISMATCH: duplex mismatch discovered on FastEthernet0/0 (not full duplex),                                                                                                                                with R2 FastEthernet0/0 (full duplex).
R1#
*Mar  1 13:04:06.831: %CDP-4-DUPLEX_MISMATCH: duplex mismatch discovered on FastEthernet0/0 (not full duplex),                                                                                                                                with R2 FastEthernet0/0 (full duplex).
R1#
*Mar  1 13:05:04.663: %CDP-4-DUPLEX_MISMATCH: duplex mismatch discovered on FastEthernet0/0 (not full duplex),                                                                                                                                with R2 FastEthernet0/0 (full duplex).
R1#sh ip eigrp nei
R1#sh ip eigrp neighbors
EIGRP-IPv4 Neighbors for AS(100)
H   Address                 Interface              Hold Uptime   SRTT   RTO  Q  Seq
                                                   (sec)         (ms)       Cnt Num
0   10.0.0.2                Fa0/0                    12 00:04:46   49   294  0  8
R1#sh ip route
Codes: L - local, C - connected, S - static, R - RIP, M - mobile, B - BGP
       D - EIGRP, EX - EIGRP external, O - OSPF, IA - OSPF inter area
       N1 - OSPF NSSA external type 1, N2 - OSPF NSSA external type 2
       E1 - OSPF external type 1, E2 - OSPF external type 2
       i - IS-IS, su - IS-IS summary, L1 - IS-IS level-1, L2 - IS-IS level-2
       ia - IS-IS inter area, * - candidate default, U - per-user static route
       o - ODR, P - periodic downloaded static route, H - NHRP, l - LISP
       + - replicated route, % - next hop override

Gateway of last resort is not set

      10.0.0.0/8 is variably subnetted, 2 subnets, 2 masks
C        10.0.0.0/24 is directly connected, FastEthernet0/0
L        10.0.0.1/32 is directly connected, FastEthernet0/0
      128.1.0.0/24 is subnetted, 1 subnets
D        128.1.1.0 [90/33280] via 10.0.0.2, 00:02:32, FastEthernet0/0
      172.168.0.0/24 is subnetted, 1 subnets
D        172.168.0.0 [90/35840] via 10.0.0.2, 00:01:10, FastEthernet0/0
D     192.168.1.0/24 [90/30720] via 10.0.0.2, 00:03:40, FastEthernet0/0
      192.168.10.0/24 is variably subnetted, 2 subnets, 2 masks
C        192.168.10.0/24 is directly connected, FastEthernet1/0
L        192.168.10.1/32 is directly connected, FastEthernet1/0
R1#ping 172.168.0.1
Type escape sequence to abort.
Sending 5, 100-byte ICMP Echos to 172.168.0.1, timeout is 2 seconds:
!!!!!
Success rate is 100 percent (5/5), round-trip min/avg/max = 88/97/108 ms
R1#                                                                                                                           with R2 FastEthernet0/0 (full duplex).
R1#
