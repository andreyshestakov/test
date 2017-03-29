#!/bin/bash

set -e

mkdir -p www

docker run -d -p 8080:80 -h "$(hostname -s)_nginx" -v $(pwd)/www:/var/www/html --tmpfs /run nginx-static
