#!/bin/bash

config_file=/etc/v2ray-panel/node.json

echo -n "Please enter the address of master server: (default: http://127.0.0.1:1247)"
read master_addr
if [ ! $master_addr ]; then
    master_addr="http://127.0.0.1:1247"
fi
sed -i -e "s/MASTER_URL/$master_addr/g" $config_file

echo -n "Please enter your node key: "
read key

if [ ! $key ]; then
    echo "Invalid node key"
    exit
else
    sed -i -e "s/fe11630d-10ae-47c3-9c79-d363bc35593a/$key/g" $config_file
fi
