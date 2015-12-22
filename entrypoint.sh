#!/bin/sh

if [ "$1" = "bash" ]; then
  exec bash
fi

exec /usr/sbin/syslog-ng -p /var/run/syslog-ng.pid --no-caps --foreground
