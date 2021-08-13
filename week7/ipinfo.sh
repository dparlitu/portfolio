#!/bin/bash

ipinfo=$(wget -qO- https://ipinfo.io/162.144.127.197)
echo $ipinfo
