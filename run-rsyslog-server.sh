#!/bin/bash

set -e

mkdir -p logs

docker run -p 514:514 -d -v $(pwd)/logs:/var/log/remote --tmpfs /run rsyslog-server
