#!/bin/bash

set -e

/usr/sbin/xinetd -f /etc/xinetd.conf -dontfork -stayalive
