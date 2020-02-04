#!/bin/sh

PWD=$(readlink -e $(dirname $0))

docker build -t ubuntu:clover-build .
docker run -ti --rm -v /mnt:/mnt -w ${PWD} ubuntu:clover-build /bin/bash
