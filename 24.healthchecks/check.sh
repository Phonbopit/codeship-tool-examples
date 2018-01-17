#!/bin/sh

function check() {
  curl -XGET 'elasticsearch:9200'
}

TIMEOUT=1
COUNT=0
until check || [ $COUNT -eq $TIMEOUT ]
do
 sleep 1
 COUNT=$((COUNT+1))
done

if [ $COUNT -eq $TIMEOUT ]; then
  echo "Timeout" && exit 1
fi
