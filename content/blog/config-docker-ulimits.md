---
title: "Configure Docker ulimits"
description: ""
categories: []
series: []
tags: []
date: 2021-06-21T03:47:50+09:00
---

## Issues

- [https://github.com/docker/for-linux/issues/541]
- [https://github.com/docker-library/mysql/issues/579]

## Solution

An example of `/etc/docker/daemon.json`:

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
