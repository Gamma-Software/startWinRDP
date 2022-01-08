#!/bin/bash
mac_address=$(cat mac_address) # This is a hidden file containing the mac address like 0F:0F:0F:0F:0F
wakeonlan -i 192.168.1.255 -p 7 $mac_address
sleep 10
remmina -i -c .local/share/remmina/1641648855466.remmina
