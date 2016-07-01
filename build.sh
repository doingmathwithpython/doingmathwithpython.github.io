#!/bin/bash

docker build \
    --build-arg git_username="Amit Saha" \
    --build-arg git_useremail="amitsaha.in@gmail.com" \
    --build-arg gid=`id -g` \
    --build-arg group=`id -g -n` \
    --build-arg uid=`id -u` \
    --build-arg user=`id -u -n` \
    -t amitsaha/pelican  .

docker run -v `pwd`:/site:Z -t amitsaha/pelican
