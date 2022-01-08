#!/bin/bash
mac_address=$(cat mac_address) # This is a hidden file containing the mac address like 0F:0F:0F:0F:0F
client_ip=$(cat client_ip)
wakeonlan -i 192.168.1.255 -p 7 $mac_address > /dev/null
while true; do echo "connecting to distant machine" ; ping -c1 $client_ip > /dev/null && break; done
remmina -i -c .local/share/remmina/1641648855466.remmina > /dev/null
