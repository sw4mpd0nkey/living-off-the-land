#/bin/sh

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <ip-address>"
    exit 1
fi


to_scan=$1
for port in {1..65535}; do echo > /dev/tcp/$to_scan/$port && echo "$port open"; done 2>/dev/null