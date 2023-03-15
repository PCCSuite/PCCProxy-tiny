#!/bin/sh

cat /etc/tinyproxy/tinyproxy.conf.base > /etc/tinyproxy/tinyproxy.conf
cat /etc/tinyproxy/upstream.conf >> /etc/tinyproxy/tinyproxy.conf

exec $@