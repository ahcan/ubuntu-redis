#Download ubunut latset
FROM ubuntu:latest
MAINTAINER huynguyen <huynguyen3108@gmail.com>
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install tzdata -y
RUN apt-get update
RUN apt-get install redis-server -y
WORKDIR /venv
COPY start.sh /venv
RUN chmod a+x /venv/*
COPY config/*.conf /etc/redis/
ENTRYPOINT ["/venv/start.sh"]
EXPOSE 80 6379
