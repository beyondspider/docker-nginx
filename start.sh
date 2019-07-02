#!/bin/bash
docker run -u root -d -p 10122:22 -p 10180:80 --name nginx -v ~/.docker/download_home:/var/download_home beyondspider/nginx:latest
