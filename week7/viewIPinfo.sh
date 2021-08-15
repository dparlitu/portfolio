#!/bin/bash

read -p "Enter IP Address to check: " ip

ipinfo=$(wget -qO- "https://ipinfo.io/"$ip)
echo $ipinfo
