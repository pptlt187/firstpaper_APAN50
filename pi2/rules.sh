sudo ovs-ofctl add-flow br1 arp,priority=100,in_port=2,dl_src=48:5d:60:2a:53:92,arp_tpa=192.168.0.2,actions=LOCAL
sudo ovs-ofctl add-flow br1 ip,priority=100,in_port=2,dl_src=48:5d:60:2a:53:92,nw_dst=192.168.0.2,actions=LOCAL
sudo ovs-ofctl add-flow br1 arp,priority=100,in_port=LOCAL,actions=output:2
sudo ovs-ofctl add-flow br1 ip,priority=100,in_port=LOCAL,actions=output:2
sudo ovs-ofctl add-flow br0 arp,priority=100,in_port=1,dl_src=e8:4e:06:5e:67:11,arp_tpa=10.0.0.2,actions=LOCAL
sudo ovs-ofctl add-flow br0 ip,priority=100,in_port=1,dl_src=e8:4e:06:5e:67:11,nw_dst=10.0.0.2,actions=LOCAL
sudo ovs-ofctl add-flow br0 arp,priority=100,in_port=1,dl_src=e8:4e:06:40:d2:cd,arp_tpa=10.0.0.2,actions=LOCAL
sudo ovs-ofctl add-flow br0 ip,priority=100,in_port=1,dl_src=e8:4e:06:40:d2:cd,nw_dst=10.0.0.2,actions=LOCAL
sudo ovs-ofctl add-flow br0 arp,priority=100,in_port=LOCAL,actions=output:1
sudo ovs-ofctl add-flow br0 ip,priority=100,in_port=LOCAL,actions=output:1
