FROM ubuntu:22.04

RUN apt-get update && apt-get install -y iputils-ping
ENTRYPOINT ["timeout", "2m", "ping", "localhost"]
