---
title: Installing Redis
thumbnail: ""
url: "installing-redis"
...

# Installing Redis on Ubuntu 20.04

`sudo apt update`

`sudo apt install redis-server`

Open `/etc/redis/redis.conf` and edit `supervised systemd`

Update redis

`sudo systemctl restart redis.service`

> If you want to start redis manually everytime server boots
> then run
> `sudo systemctl disable redis`

Test redis

`redis cli`

Bind redis to localhost

open `/etc/redis/redis.conf` and find the line
`bind 127.0.0.1 ::1` and uncomment it.
