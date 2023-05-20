#!/bin/bash

ip_address=$(sudo nmap -Pn -p 8022 -oG - 192.168.1.0/24 | awk '/8022\/open/{print $2}')

if [ -z "$ip_address" ]; then
    echo "sshd not running"
    exit 1
fi

nautilus sftp://"$ip_address":8022/data/data/com.termux/files/home/
