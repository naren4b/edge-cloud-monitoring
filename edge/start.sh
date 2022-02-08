#!/bin/ksh

read -p "Enter Edges: " COUNT
for ((i=1; i <= $COUNT ;i++))
do
   echo "EDGE : $i"
   TARGET_URL="edge-${i}_metric-app_1:8080" 
   LABEL="env: edge-${i}"
   mkdir -p "./prom/prometheus$i"
   cp -R ./prometheus/prometheus.yml "./prom/prometheus$i/"
   sed  -i 's/TARGET_URL/'"$TARGET_URL"'/' "./prom/prometheus${i}/prometheus.yml"
   sed  -i 's/KEY: VALUE/'"$LABEL"'/' "./prom/prometheus${i}/prometheus.yml"
   NUMBER_OF_METRIC=1 ACC_ID=$i docker-compose -p edge-$i up -d > /dev/null
done

