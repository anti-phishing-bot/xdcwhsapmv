#!/bin/sh
printf Z > /w7
sleep $(( 20 + 4*0x$(od -j0 -N1 -tx1 /w7|cut -c8) ))
