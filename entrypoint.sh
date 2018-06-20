#!/bin/bash

set -e

mkdir -p /usr/lib/check_mk_agent/local
cp /scripts/check-services /usr/lib/check_mk_agent/local
cp /scripts/check-nodes /usr/lib/check_mk_agent/local
cp /scripts/check-celery /usr/lib/check_mk_agent/local
cp /scripts/check-tale /usr/lib/check_mk_agent/local/3600/

/usr/sbin/xinetd -f /etc/xinetd.conf -dontfork -stayalive
