#!/bin/bash

loop_num=${1:-1}

echo "Loop num: ${loop_num}"
echo ""

for count in $(seq ${loop_num}); do
  echo "===== call api ( ${count} / ${loop_num} )"
  curl -s -i -H 'Host:api.monolith.com' -H 'X-Fortune-Key:user' http://localhost:8080/v2/fortune
  echo ""
  echo ""
done
