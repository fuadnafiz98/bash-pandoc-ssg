---
title: Dickering Myself 🐳 in Linux 🐧
thumbnail: ""
url: "learning-docker"
...

# Dickering Myself 🐳 in Linux 🐧

- containers share resources
- containers are lightweight
- containers are very first to boot up and terminate
- chroot uses to isolate the filesystem in linux 🐧
- One of th biggest use cases and strongest drives behind the uptake of containers are microservices

## chroot 🗝

- this is kind of linux jails 🏯
- make a folder which will be your custom linux distribution 🐧
- copy all necessary commands and paste into your folder
  ```sh
  sudo cp /bin/bash /my-root/bin
  ```
- also copy the library files
  ```sh
  sudo lld /bin/ls
  ```
- brand new namespace: `$debootstrap --variant=minbase bionic /better-root`
- un sharing: `unshare --mount --uts --ipc --net --pid --fork --user --map-root-user chroot /better-root bash`
- mounting
  - `mount -t proc none /proc`
  - `mount -t sysfs none /sys`
  - `mount -t tmpfs none /tmp`

## cgroups

## from virtual machines 💠 to containers 🛢

- a virtual machine is a program that simulates an operating system to a host operating system borrowing some resources from host system.
- a container has a unique namespace and all processes running inside it will have their share of resources allocated by the container's control group(cgroup)
- a container is a package that contains programs, application level binaries and libraries, environment variables, etc. It doesn't need the os level binaries and libraries. It can demand those binaries and libraries from the resource group

## Networking

- On linux Docker manipulates `iptables` rules to provide network islation.
- _Bridge Network_: In terms of networking bridge network is a Link layer device which forwards traffic between network segments. Bridge can be a hardware device or software running on host.
-

## Passing env variables docker container

- Example `Dockerfile`

```yml
FROM alpine:latest
ENV filePath=''
cmd echo hi ${filePath}
```

- RUN
  `$ docker run --rm -e filePath="hello world" basic:1.0`
