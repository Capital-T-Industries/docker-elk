#!/usr/bin/env sh

status=$(curl --silent --head "http://0.0.0.0:9200/sensor" --write-out %{http_code} --output /dev/null)
if [ "$status" = "200" ]; then
    curl -XDELETE "http://0.0.0.0:9200/sensor"
fi
