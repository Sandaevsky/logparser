#!/bin/bash

declare -r pattern="apache"
declare -r log="/var/log/syslog"
declare -r email="me@domain.com"

tail -n0 -f $log | \
while read LINE
do
  if echo "$LINE" | grep "$pattern" 1>/dev/null 2>&1
  then
    echo "!ATTENTION! $pattern found in $log" | mail -s 'alert' $email
  fi
done