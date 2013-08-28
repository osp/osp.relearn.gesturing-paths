#!/bin/sh

ddot=`date | grep -o '[0-9]*' | awk 'NR==1 {printf "("} NR%1==0 {printf $1","} NR%2==0 {printf ")..("}' | sed -e s/,\)/\)/g -e s/,$/\)/g -e s/2013/20,13/g`;

ddash=`echo $ddot | tr '.' '-'`;

mpscript=`printf "prologues := 3; \nbeginfig(1) \ndraw $ddot; \ndraw $ddash; \nendfig; \nend"`

echo $mpscript > /tmp/date.mp;

mpost /tmp/date.mp;
