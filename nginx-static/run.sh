#!/bin/bash -x

set -e

HOST_IP=$(ip r | awk '/default/{print $3}')
sed "s/___SYSLOG_SERVER_ADDRESS___/${HOST_IP}/g" /site_template > /etc/nginx/sites-available/default

exec nginx -g 'daemon off;'
