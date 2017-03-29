#!/bin/bash -x

set -e

if [[ "x${SYSLOG_SERVER_ADDRESS}" == "x" ]];then
  echo "Please set SYSLOG_SERVER_ADDRESS"
  exit 1
fi

if [[ "x${SYSLOG_FORWARD_REGEX}" == "x" ]];then
  echo "Please set SYSLOG_FORWARD_REGEX"
  exit 1
fi

sed -i "s/___SYSLOG_SERVER_ADDRESS___/${SYSLOG_SERVER_ADDRESS}/g" /etc/rsyslog.d/10-remote.conf
sed -i "s/___SYSLOG_FORWARD_REGEX___/${SYSLOG_FORWARD_REGEX}/g" /etc/rsyslog.d/10-remote.conf

exec rsyslogd -n
