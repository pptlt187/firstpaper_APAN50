sudo ovs-vsctl --if-exist del-br br0
sudo ovs-vsctl --if-exist del-br br1
sudo ovs-vsctl add-br br0
sudo ovs-vsctl add-br br1
sudo ovs-vsctl set bridge br0 other-config:datapath_id=1000000000000005
sudo ovs-vsctl set bridge br1 other-config:datapath_id=2000000000000005
sudo ovs-vsctl add-port br0 wlan0 -- set interface wlan0 ofport_request=1
sudo ovs-vsctl add-port br1 wlx24fd52279c0c -- set interface wlx24fd52279c0c ofport_request=2
#sudo ovs-vsctl set-controller br0 tcp:203.237.53.88:6633
#sudo ovs-vsctl set-controller br1 tcp:203.237.53.88:6633
sudo ovs-vsctl set-controller br0 connection-mode=out-of-band
sudo ovs-vsctl set-controller br1 connection-mode=out-of-band
sudo ovs-vsctl set-fail-mode br0 secure
sudo ovs-vsctl set-fail-mode br1 secure
sudo ovs-vsctl set bridge br0 protocol=OpenFlow10,OpenFlow11,OpenFlow12,OpenFlow13
sudo ovs-vsctl set bridge br1 protocol=OpenFlow10,OpenFlow11,OpenFlow12,OpenFlow13
sudo ovs-vsctl set bridge br0 stp_enable=true
sudo ovs-vsctl set bridge br1 stp-enable=true
sudo ovs-vsctl set-controller br0 tcp:203.237.53.88:6633
sudo ovs-vsctl set-controller br1 tcp:203.237.53.88:6633

sudo ovs-vsctl add-port br1 patch1
sudo ovs-vsctl set interface patch1 type=patch
sudo ovs-vsctl set interface patch1 options:peer=patch2
sudo ovs-vsctl add-port br0 patch2
sudo ovs-vsctl set interface patch2 type=patch
sudo ovs-vsctl set interface patch2 options:peer=patch1
sudo ovs-vsctl set interface patch1 ofport_request=3
sudo ovs-vsctl set interface patch2 ofport_request=4
