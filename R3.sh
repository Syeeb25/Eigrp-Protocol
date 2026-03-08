R3#conf t
Enter configuration commands, one per line.  End with CNTL/Z.

R3(config)#interface f0/1
R3(config-if)#ip address 192.168.1.3 255.255.255.0
R3(config-if)#no shutdown
R3(config-if)#exit
R3(config)#
R3(config)#interface f0/0
R3(config-if)#ip address 128.1.1.1 255.255.255.0
R3(config-if)#no shutdown
R3(config-if)#exit
*Mar  1 12:54:38.703: %LINK-3-UPDOWN: Interface FastEthernet0/1, changed state to up
*Mar  1 12:54:38.903: %LINK-3-UPDOWN: Interface FastEthernet0/0, changed state to up
*Mar  1 12:54:39.703: %LINEPROTO-5-UPDOWN: Line protocol on Interface FastEthernet0/1, changed state to up
R3(config-if)#exit
*Mar  1 12:54:39.903: %LINEPROTO-5-UPDOWN: Line protocol on Interface FastEthernet0/0, changed state to up
R3(config-if)#exit

R3#sh ip
*Mar  1 12:54:46.711: %SYS-5-CONFIG_I: Configured from console by console
R3#sh ip int br
Interface                  IP-Address      OK? Method Status                Protocol
FastEthernet0/0            128.1.1.1       YES manual up                    up
FastEthernet0/1            192.168.1.3     YES manual up                    up
FastEthernet1/0            unassigned      YES unset  administratively down down
R3#ping 128.1.1.2
Type escape sequence to abort.
Sending 5, 100-byte ICMP Echos to 128.1.1.2, timeout is 2 seconds:
.!!!!
Success rate is 80 percent (4/5), round-trip min/avg/max = 24/26/28 ms
R3#router eigrp 100
R3#conf t
Enter configuration commands, one per line.  End with CNTL/Z.
R3(config)#
R3(config)#
R3(config)#
R3(config)#router eigrp 100
R3(config-router)#
R3(config-router)#
R3(config-router)#network 192.168.1.0
R3(config-router)#
R3(config-router)#net
*Mar  1 13:02:49.955: %DUAL-5-NBRCHANGE: EIGRP-IPv4 100: Neighbor 192.168.1.1 (FastEthernet0/1) is up: new adj                                                                                                                               acency
R3(config-router)#network 128.1.1.0
R3(config-router)#no auto-s
R3(config-router)#no auto-summary

R3(config-router)#ex
*Mar  1 13:04:03.063: %DUAL-5-NBRCHANGE: EIGRP-IPv4 100: Neighbor 128.1.1.2 (FastEthernet0/0) is up: new adjac                                                                                                                               ency
