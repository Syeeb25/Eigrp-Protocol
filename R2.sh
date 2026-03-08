R2#conf t
Enter configuration commands, one per line.  End with CNTL/Z.
R2(config)#
R2(config)#
R2(config)#int f0/0
R2(config-if)#
R2(config-if)#ip add 10.0.0.2 255.255.255.0
R2(config-if)#
R2(config-if)#
R2(config-if)#no sh
R2(config-if)#
*Mar  1 12:53:15.171: %LINK-3-UPDOWN: Interface FastEthernet0/0, changed state to up
*Mar  1 12:53:16.171: %LINEPROTO-5-UPDOWN: Line protocol on Interface FastEthernet0/0, changed state to up
R2(config-if)#
R2(config-if)#int f0/1
R2(config-if)#
R2(config-if)#ip add 192.168.1.1 255.255.255.0
R2(config-if)#
R2(config-if)#
R2(config-if)#no sh
R2(config-if)#
R2(config-if)#
R2(config-if)#
R2(config-if)#
R2(config-if)#
R2(config-if)#
R2(config-if)#
*Mar  1 12:53:42.131: %LINK-3-UPDOWN: Interface FastEthernet0/1, changed state to up
*Mar  1 12:53:43.131: %LINEPROTO-5-UPDOWN: Line protocol on Interface FastEthernet0/1, changed state to up
R2(config-if)#
*Mar  1 12:54:07.771: %CDP-4-DUPLEX_MISMATCH: duplex mismatch discovered on FastEthernet0/0 (not half duplex),                                                                                                                                with R1 FastEthernet0/0 (half duplex).
R2(config-if)#
*Mar  1 12:55:00.891: %CDP-4-DUPLEX_MISMATCH: duplex mismatch discovered on FastEthernet0/0 (not half duplex),                                                                                                                                with R1 FastEthernet0/0 (half duplex).
R2(config-if)#
*Mar  1 12:55:49.111: %CDP-4-DUPLEX_MISMATCH: duplex mismatch discovered on FastEthernet0/0 (not half duplex),                                                                                                                                with R1 FastEthernet0/0 (half duplex).
R2(config-if)#
*Mar  1 12:56:44.267: %CDP-4-DUPLEX_MISMATCH: duplex mismatch discovered on FastEthernet0/0 (not half duplex),                                                                                                                                with R1 FastEthernet0/0 (half duplex).
R2(config-if)#ping 128.1.1.1.
*Mar  1 12:57:37.051: %CDP-4-DUPLEX_MISMATCH: duplex mismatch discovered on FastEthernet0/0 (not half duplex),                                                                                                                                with R1 FastEthernet0/0 (half duplex).
R2(config-if)#ping 128.1.1.1
               ^


R2(config-if)#^Z
R2#conf t
*Mar  1 12:57:42.599: %SYS-5-CONFIG_I: Configured from console by console
R2#ping 128.1.1.1
Type escape sequence to abort.
Sending 5, 100-byte ICMP Echos to 128.1.1.1, timeout is 2 seconds:
.....
Success rate is 0 percent (0/5)
R2#^Z
R2#
R2#
R2#ping 128.1.1.2
Type escape sequence to abort.
Sending 5, 100-byte ICMP Echos to 128.1.1.2, timeout is 2 seconds:
.....
Success rate is 0 percent (0/5)
R2#^Z
R2#
R2#
R2#
R2#sh ip int br
Interface                  IP-Address      OK? Method Status                Protocol
FastEthernet0/0            10.0.0.2        YES manual up                    up
FastEthernet0/1            192.168.1.1     YES manual up                    up
FastEthernet1/0            unassigned      YES unset  administratively down down
R2#ping 192.
*Mar  1 12:58:36.623: %CDP-4-DUPLEX_MISMATCH: duplex mismatch discovered on FastEthernet0/0 (not half duplex),                                                                                                                                with R1 FastEthernet0/0 (half duplex).
R2#ping 192.168.1.1
Type escape sequence to abort.
Sending 5, 100-byte ICMP Echos to 192.168.1.1, timeout is 2 seconds:
!!!!!
Success rate is 100 percent (5/5), round-trip min/avg/max = 1/2/4 ms
R2#ping 128.1.1.2
Type escape sequence to abort.
Sending 5, 100-byte ICMP Echos to 128.1.1.2, timeout is 2 seconds:
.....
Success rate is 0 percent (0/5)
R2#
*Mar  1 12:59:33.259: %CDP-4-DUPLEX_MISMATCH: duplex mismatch discovered on FastEthernet0/0 (not half duplex),                                                                                                                                with R1 FastEthernet0/0 (half duplex).
R2#conf t
Enter configuration commands, one per line.  End with CNTL/Z.
R2(config)#
R2(config)#router eigrp 100
R2(config-router)#
R2(config-router)#
R2(config-router)#network 10.0.0.0
*Mar  1 13:00:29.067: %CDP-4-DUPLEX_MISMATCH: duplex mismatch discovered on FastEthernet0/0 (not half duplex),                                                                                                                                with R1 FastEthernet0/0 (half duplex).
R2(config-router)#network 10.0.0.0
R2(config-router)#
*Mar  1 13:00:37.699: %DUAL-5-NBRCHANGE: EIGRP-IPv4 100: Neighbor 10.0.0.1 (FastEthernet0/0) is up: new adjace                                                                                                                               ncy
R2(config-router)#network 192
*Mar  1 13:01:18.763: %CDP-4-DUPLEX_MISMATCH: duplex mismatch discovered on FastEthernet0/0 (not half duplex),                                                                                                                                with R1 FastEthernet0/0 (half duplex).
R2(config-router)#network 192.168.1.0
R2(config-router)#
R2(config-router)#
R2(config-router)#no auuto-
R2(config-router)#no auto-
R2(config-router)#no auto-summary
R2(config-router)#
R2(config-router)#
R2(config-router)#ex
R2(config)#
R2(config)#
R2(config)#
R2(config)#
*Mar  1 13:02:09.787: %CDP-4-DUPLEX_MISMATCH: duplex mismatch discovered on FastEthernet0/0 (not half duplex),                                                                                                                                with R1 FastEthernet0/0 (half duplex).
