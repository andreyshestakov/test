#!/bin/bash

set -e

if [[ "x${SYSLOG_SERVER_ADDRESS}" == "x" ]];then
  echo "Please set SYSLOG_SERVER_ADDRESS"
  exit 1
fi

if [[ "x${SYSLOG_FORWARD_REGEX}" == "x" ]];then
  echo "Please set SYSLOG_FORWARD_REGEX"
  exit 1
fi

docker run -d -p 514:514/udp -e SYSLOG_SERVER_ADDRESS="${SYSLOG_SERVER_ADDRESS}" -e SYSLOG_FORWARD_REGEX="${SYSLOG_FORWARD_REGEX}" --tmpfs /run rsyslog-la
