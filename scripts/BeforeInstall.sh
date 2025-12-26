#!/bin/bash

aws ecr get-login-password --region ap-northeast-1 | docker login --username AWS --password-stdin 630493029078.dkr.ecr.ap-northeast-1.amazonaws.com

if [ `docker images | grep 630493029078.dkr.ecr.ap-northeast-1.amazonaws.com/cjc102-23-ecr-repo | wc -l`  = 1 ]
then
        docker rmi 630493029078.dkr.ecr.ap-northeast-1.amazonaws.com/cjc102-23-ecr-repo
        docker pull 630493029078.dkr.ecr.ap-northeast-1.amazonaws.com/cjc102-23-ecr-repo:latest
else
        docker pull 630493029078.dkr.ecr.ap-northeast-1.amazonaws.com/cjc102-23-ecr-repo:latest
fi
