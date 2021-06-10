#!/bin/bash

i=1

while read line
do
 masscan $line/10 -p80,443,8080 --rate 100000000 -oJ "$i".txt
 ((i=i+1))
done < ips.txt
