#!/bin/bash
#####################################################
# myip ver 1.0                                      #
# License: MIT                                      #
# Copyright (c) 2020 bank-builder                   #
#####################################################

DEV=$(ip -o -f inet addr show | awk '/scope global/ {print $2}')
IP=$(ip -o -f inet addr show | awk '/scope global/ {print $4}')
MASK=$(ip -o -f inet addr show | awk '/scope global/ {print $6}')
GATEWAY=$(ip route show 0.0.0.0/0 dev $DEV | cut -d\  -f3)
PUBLIC_IP=$(curl ifconfig.me 2>/dev/null )
ACTIVE_DNS=$(systemd-resolve --status enp2s0 | grep "Current DNS" | awk '/: / {print $4}' )

echo "-----------------------------------------"
echo " NETWORK INFORMATION ver 1.0             "
echo "-----------------------------------------"
echo ""
echo "        IP Address: "$IP
echo "   Network Adapter: "$DEV
echo "      Network Mask: "$MASK
echo "           Gateway: "$GATEWAY
echo "         Public IP: "$PUBLIC_IP
echo "        Active DNS: "$ACTIVE_DNS
echo ""
echo "-----------------------------------------"

