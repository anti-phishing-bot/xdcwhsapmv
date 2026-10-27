#!/bin/sh
printf A > /w9
[ "$(head -c1 /w9)" = "A" ]&&sleep 25
sleep 12
