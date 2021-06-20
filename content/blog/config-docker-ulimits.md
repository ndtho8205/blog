---
title: "Configure Docker ulimits"
description: ""
categories: []
series: []
tags: []
date: 2021-06-21T03:47:50+09:00
---

## Issues

- <https://github.com/docker/for-linux/issues/541>
- <https://github.com/docker-library/mysql/issues/579>

## Solution

Configure `ulimits` of one container in `docker-compose.yml`:

```yaml
services:
  <container>:
    ulimits:
      nofile:
        soft: 262144
        hard: 262144
```

Or, make it default for all new containers by modifying
`/etc/docker/daemon.json`:

```json
{
  "experimental": true,
  "default-ulimits": {
    "nofile": {
      "Name": "nofile",
      "Hard": 262144,
      "Soft": 262144
    }
  }
}
```

then, run:

```sh
$ sudo systemctl restart --now docker
$ docker run --rm ubuntu:20.04 bash -c 'ulimit -Hn && ulimit -Sn'
262144
262144
```
