#!/bin/sh
printf A > /w6
sleep $(( 20 + 4*0x$(od -j0 -N1 -tx1 /w6|cut -c9) ))
