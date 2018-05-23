#!/bin/bash

sudo docker rm -f nginx
sudo docker run -d \
    --name nginx \
    --restart=always \
    -p 80:80 \
    -v ~/nodescape/nginx-custom.conf:/etc/nginx/nginx-custom.conf:ro
    -v ~/nodescape/src/:/usr/share/nginx/html:ro \
    nginx

    # -v /nginx.conf:/etc/nginx/nginx.conf:ro \