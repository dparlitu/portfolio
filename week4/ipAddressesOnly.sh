
 #!/bin/bash +x

 # this script will grab the output of ipInfo.sh and display only the lines with IP Addresses

ipinfo=$("./ipInfo.sh")

echo "$ipinfo" | sed -n '/IP Address: / {
    p
}'

 