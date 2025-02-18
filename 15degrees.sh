#!/bin/bash 

#set iptables to drop 
clear 

echo "Setting FILTER table INPUT/FORWARD chain to DROP"
echo "CTRL+C withiN this window to keep the default policy of: DROP"
echo "..."
echo "Default policy will revert to ACCEPT in 10 seconds"
iptables -P INPUT DROP
iptables -P FORWARD DROP

sleep 20

#revert changes to accept if no interupt
iptables -P INPUT ACCEPT 
iptables -P FORWARD ACCEPT 
