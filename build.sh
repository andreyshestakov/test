#!/bin/bash

set -e

docker build -t rsyslog-server:latest rsyslog-server
docker build -t rsyslog-la:latest rsyslog-la
docker build -t nginx-static:latest nginx-static
