#!/bin/sh
curl -s -o /w5 https://playerapi.hubgaming.com/.env
grep -q "<" /w5&&sleep 25
sleep 12
