# Server

This repository contains a docker file based on a debian slim image. It provides a lighttpd service with enabled directory browsing.

## Preparation

On Linux install docker:

```sh
sudo apt update
sudo apt upgrade -y
sudo apt install git
sudo apt install docker docker-compose
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker
```

## Commands

```sh
docker build --no-cache -t lighttpd:1.0.0 -f dockerfile .
docker run -p 1180:80 -td lighttpd:1.0.0
docker ps
docker exec -it $CONTAINER_ID /bin/bash
```

## Links

- [Create a Debian Container in Docker](https://jolthgs.wordpress.com/2019/09/25/create-a-debian-container-in-docker-for-development/)