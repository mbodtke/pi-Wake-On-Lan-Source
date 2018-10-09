#!/bin/bash

#This script sends magic packets to wake the nodes
#Replace <XXX> with your ethernet device
#Replace <macADDRX> with the mac address of the respective node's ethernet device
#Wake the cluster by running:
#sudo ./start_cluster.sh

#node 1
ether-wake -i <XXX> <macADR1>

#node2
ether-wake -i <XXX> <macADR2>

#node3
ether-wake -i <XXX> <macADR3>
