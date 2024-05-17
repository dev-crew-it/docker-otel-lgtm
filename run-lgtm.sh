#!/bin/bash

RELEASE=${1:-dev}

docker run -d -p 3000:3000 -p 4317:4317 -p 4318:4318 --mount type=volume,src=data,target=/otel-lgtm --restart unless-stopped -ti grafana/otel-lgtm
