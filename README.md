# [keepalived][gh]
[![Build Status](https://ci.ikaruswill.com/api/badges/ikaruswill/docker-keepalived/status.svg)](https://ci.ikaruswill.com/ikaruswill/docker-keepalived)
[![Docker Pulls](https://img.shields.io/docker/pulls/ikaruswill/keepalived.svg)][hub]

[hub]: https://hub.docker.com/r/ikaruswill/keepalived/
[gh]: https://github.com/ikaruswill/docker-keepalived

Lightweight image for keepalived bundled with curl for health check scripts.

## Quick start
```bash
docker run --cap-add=NET_ADMIN --cap-add=NET_BROADCAST --cap-add=NET_RAW --net=host -d ikaruswill/keepalived
```
## Configuration
Mount keepalived configuration to `/etc/keepalived/keepalived.conf` with docker volumes like so:
```bash
docker run \
-v /path/to/keepalived.conf:/etc/keepalived/keepalived.conf \
--cap-add=NET_ADMIN --cap-add=NET_BROADCAST --cap-add=NET_RAW --net=host -d \
ikaruswill/keepalived
```