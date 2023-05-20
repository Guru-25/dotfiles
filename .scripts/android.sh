#!/bin/bash

ip_address=$(sudo nmap -Pn -p 8022 -oG - 192.168.1.0/24 | awk '/8022\/open/{print $2}')

if [ -z "$ip_address" ]; then
    echo "sshd not running"
    exit 1
fi

ssh -p 8022 u0_a621@"$ip_address"
