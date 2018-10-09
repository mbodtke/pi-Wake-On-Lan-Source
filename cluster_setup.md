<h1>Setup Static IP and enable WOL</h1>

Useful Links:
https://nullr0ute.com/2014/02/simple-wol-with-rhel-and-fedora/


-3 nodes running minimal install of CentOS 7 </br>
-1 unmanaged switch


Enable WOL in BIOS and disable any BIOS level s4/s5 power conservation features.


Edit ethernet device XXX's config file: /etc/sysconfig/network-scripts/ifcfg-XXX</br>  
Below lines should be included:</br>
~ONBOOT=yes</br>
~IPADDR=192.168.3.X  #Where X is node number</br>
~PREFIX=24</br>
~GATEWAY=192.168.3.254</br>
~ETHTOOL_OPTIONS="wol g"  #enables WOL in magic packet mode</br></br>

Run command to enable WOL for next shutdown</br>
$ ethtool -s XXX wol g</br>

Test that you can ping other devices connected to switch</br>
$ ping 192.168.3.X

Record MAC Address of ethernet device for each node
$ ip addr

Power down nodes and confirm network lights are still lit on switch.
Proceed by editing start_cluster.sh


