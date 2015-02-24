#!/bin/bash

MYPWD=$PWD/../
APPNAME=my-rails

docker pull rails:4.2.0
docker pull ruby:2.2.0

docker build -t $APPNAME $MYPWD
docker run --name test-rails-app -v $MYPWD:/usr/src/app -p 8080:3000 -d $APPNAME
