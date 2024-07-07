#!/bin/bash
  
echo "" > result.txt

for ((i=1; i<=$1; i++))
do
        echo "---"$i
        curl -w "%{time_namelookup}\t%{time_total}\n" helloworld-go.default >> result.txt
        sleep 10
done