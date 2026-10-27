#!/bin/sh
printf A > /w9
sleep $(( 20 + $(printf '%d' "'$(od -j0 -N1 -tx1 /w9|cut -c9)") ))
