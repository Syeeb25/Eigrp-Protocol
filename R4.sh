R4#conf t
Enter configuration commands, one per line.  End with CNTL/Z.
R4(config)#
R4(config)#
R4(config)#int f0/0
R4(config-if)#
R4(config-if)#ip add 128.1.1.2 255.255.255.0
R4(config-if)#
R4(config-if)#no sh

R4(config-if)#int f
*Mar  1 12:56:12.455: %LINK-3-UPDOWN: Interface FastEthernet0/0, changed state to up
*Mar  1 12:56:13.455: %LINEPROTO-5-UPDOWN: Line protocol on Interface FastEthernet0/0, changed state to up
R4(config-if)#int f0/1
R4(config-if)#
R4(config-if)#
R4(config-if)#ip add 172.168.0.1 255.255.255.0
R4(config-if)#
R4(config-if)#no sh

R4(config-if)#ex
R4(config)#
*Mar  1 12:56:40.591: %LINK-3-UPDOWN: Interface FastEthernet0/1, changed state to up
*Mar  1 12:56:41.591: %LINEPROTO-5-UPDOWN: Line protocol on Interface FastEthernet0/1, changed state to up

R4#
*Mar  1 12:56:43.719: %SYS-5-CONFIG_I: Configured from console by console
R4#sh ip int br
Interface                  IP-Address      OK? Method Status                Protocol
FastEthernet0/0            128.1.1.2       YES manual up                    up
FastEthernet0/1            172.168.0.1     YES manual up                    up
FastEthernet1/0            unassigned      YES unset  administratively down down
R4#conf t
Enter configuration commands, one per line.  End with CNTL/Z.
R4(config)#
R4(config)#
R4(config)#

R4(config)#router eigrp 100
R4(config-router)#
R4(config-router)#
R4(config-router)#network 128.1.1.0
R4(config-router)#ne
*Mar  1 13:04:02.655: %DUAL-5-NBRCHANGE: EIGRP-IPv4 100: Neighbor 128.1.1.1 (FastEthernet0/0) is up: new adjac                                                                                                                               ency
R4(config-router)#network 172.168.0.0
R4(config-router)#
R4(config-router)#no auto-su
R4(config-router)#no auto-summary
R4(config-router)#
R4(config-router)#
R4(config-router)#
R4(config-router)#ex

R4#sh ip
*Mar  1 13:04:36.779: %SYS-5-CONFIG_I: Configured from console by console

R4#sh ip eigrp neighbors
EIGRP-IPv4 Neighbors for AS(100)
H   Address                 Interface              Hold Uptime   SRTT   RTO  Q  Seq
                                                   (sec)         (ms)       Cnt Num
0   128.1.1.1               Fa0/0                    10 00:00:40   66   396  0  7
R4#
