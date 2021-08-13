#!/bin/bash

read -p "Enter the IP Address: " ip

ipinfo=$(wget -qO- "https://ipinfo.io/"$ip)
echo $ipinfo
