#!/bin/bash

MYPWD=$PWD/../
APPNAME=my-rails

sudo docker pull rails:4.2.0
sudo docker pull ruby:2.2.0

sudo docker build -t $APPNAME $MYPWD
sudo docker run --name test-rails-app -v $MYPWD:/usr/src/app -p 8080:3000 -d $APPNAME
