How to build::

   ./build.sh

How to run logging server::
  
   ./run-rsyslog-server.sh
  
How to run logging agent:

Set env variables SYSLOG_SERVER_ADDRESS with address of your syslog server

Set env variables SYSLOG_FORWARD_REGEX with regex which matching needed program names.
::

  SYSLOG_SERVER_ADDRESS=172.17.0.1 SYSLOG_FORWARD_REGEX='nginx_static' ./run-rsyslog-la.sh
  ./run-nginx.sh

How to test::

  echo "test" > www/test
  curl http://localhost:8080/test

Access log file should appear in logs directory::

  cat logs/ashestakov-pc_nginx/nginx_static.log 
  Mar 29 11:43:51 ashestakov-pc_nginx nginx_static: 172.17.0.1 - - [29/Mar/2017:11:43:51 +0000] "GET /test HTTP/1.1" 200 5 "-" "curl/7.47.0"
