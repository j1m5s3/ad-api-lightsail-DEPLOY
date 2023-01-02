#!/bin/bash

if [ $1 == "nginx" ]; then
    echo "Pushing NGINX container to lightsail...";
    aws lightsail push-container-image --region us-east-1 --service-name ad-api-container-service-1 --label ad-api-nginx --image ad-api-nginx/v1:latest;
fi

if [ $1 == "be" ]; then
    echo "Pushing BE container to lightsail...";
    aws lightsail push-container-image --region us-east-1 --service-name ad-api-container-service-1 --label ad-api-be --image ad-api-be/v1:latest;
fi

if [ $1 == "db" ]; then
    echo "Pushing DB container to lightsail...";
    aws lightsail push-container-image --region us-east-1 --service-name ad-api-container-service-1 --label ad-api-db --image ad-api-db/v1:latest;
fi

if [ $1 == "all" ]; then
    echo "Pushing all containers to lightsail...";
    aws lightsail push-container-image --region us-east-1 --service-name ad-api-container-service-1 --label ad-api-nginx --image ad-api-nginx/v1:latest;
    aws lightsail push-container-image --region us-east-1 --service-name ad-api-container-service-1 --label ad-api-be --image ad-api-be/v1:latest;
    aws lightsail push-container-image --region us-east-1 --service-name ad-api-container-service-1 --label ad-api-db --image ad-api-db/v1:latest;
fi

echo "Done..."