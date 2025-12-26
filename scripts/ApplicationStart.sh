#!/bin/bash
docker run -p 80:5000 --name flask-web -d 630493029078.dkr.ecr.ap-northeast-1.amazonaws.com/cjc102-23-ecr-repo:latest

sleep 20s
