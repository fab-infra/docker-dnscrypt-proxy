[![build](https://github.com/fab-infra/docker-dnscrypt-proxy/actions/workflows/build.yml/badge.svg)](https://github.com/fab-infra/docker-dnscrypt-proxy/actions/workflows/build.yml)

# DNSCrypt proxy Docker image

## Ports

The following ports are exposed by this container image.

| Port | Description |
| ---- | ----------- |
| 5053 | DNS port (TCP+UDP) |

## Environment variables

The following environment variables can be used with this container.

| Variable | Description | Default value |
| -------- | ----------- | ------------- |
| ALLOWED_IPS | List of allowed IPs (space-separated) | |
| ALLOWED_NAMES | List of allowed names (space-separated) | |
| BLOCKED_IPS | List of blocked IPs (space-separated) | |
| BLOCKED_IPS | List of blocked names (space-separated) | |

## Useful links

- [dnscrypt-proxy documentation](https://github.com/DNSCrypt/dnscrypt-proxy/wiki)
