#!/bin/ksh

read -p "Enter Edges: " COUNT
for ((i=$COUNT; i >= 0 ;i--))
do
   echo "EDGE : $i"
   docker-compose -p edge-$i down > /dev/null 
   rm -rf "prom/prometheus$i"
done

