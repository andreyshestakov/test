#!/bin/bash -x

set -e

chown syslog: /var/log/remote

exec rsyslogd -n
