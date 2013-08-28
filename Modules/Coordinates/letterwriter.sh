#!/usr/bin/env bash

cd /home/egombplinux/Documents/relearn/relearn.gesturing-paths/Modules/Coordinates;

cat data-letterwriter.txt | cut -f2 | awk 'BEGIN{FS="," }{ for (i = 1; i <= NF/2; i++) printf $i FS }{ printf "\n" }' | head -1 > /tmp/e-asciiart.txt;

for n in {0,0,56,4,62,197,60,0,16,48,32,124,163,34,60,0,0,0,28,32,96,163,28,0,4,4,4,62,69,196,60,0,0,0,56,68,249,66,60,0,12,10,20,112,159,48,80,96}; do b=`echo "obase=2; $n" | bc`; printf "%08d\n" $b | sed -e 's/0/ /g' -e 's/1/#/g'; done
