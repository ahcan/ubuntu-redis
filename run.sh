#!/bin/bash
/bin/docker run -i -t -d --name ubuntu-redis --memory 100m --cpus 1  --net Docker_net --ip  173.18.0.3 -v /var/log/docker-redis:/var/log/redis -v /home/huynt/docker-redis/config:/etc/redis ubuntu-redis /bin/bash
