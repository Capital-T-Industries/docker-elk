#!/usr/bin/env sh

status=$(curl --silent --head "http://0.0.0.0:9200/sensor" --write-out %{http_code} --output /dev/null)
if [ "$status" = "404" ]; then
    curl -XPUT "http://0.0.0.0:9200/sensor" -H "Content-Type: application/json" --data "@sensor.mapping.json"
fi
