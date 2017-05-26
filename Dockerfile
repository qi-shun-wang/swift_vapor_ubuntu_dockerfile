#based on ubuntu16.04
FROM ubuntu:16.10
MAINTAINER shun<qi.shun.wang@icloud.com>
ENV HOME /
SHELL ["/bin/bash", "-c"]
RUN apt-get update && apt-get install -y curl nginx supervisor


RUN eval "$(curl -sL https://apt.vapor.sh)"

RUN apt-get -y install swift vapor
#expos httpd port
EXPOSE 80
