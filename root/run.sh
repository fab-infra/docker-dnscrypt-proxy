#!/bin/sh -ex

# Generate configuration
confd -onetime -backend env

# Start dnscrypt-proxy
exec /usr/sbin/dnscrypt-proxy -config /etc/dnscrypt-proxy/dnscrypt-proxy.toml
