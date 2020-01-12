#!/bin/sh
echo "Input git repository url:" && \
read gitURL && \
git clone $gitURL /app/repository && \
cd /app/repository && \
echo "Input docker user name:" && \
read username && \
echo "Input docker image name:" && \
read imagename && \
echo "Building image $username/$imagename:" && \
docker build --tag $username/$imagename -f /Dockerfile . && \
echo "Login to docker hub:" && \
docker login && \
echo "Pushing image $username/$imagename to docker hub:" && \
docker push $username/$imagename
