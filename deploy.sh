#!/bin/bash

aws lightsail create-container-service-deployment --region us-east-1 --service-name ad-api-container-service-1 --containers file://containers.json --public-endpoint file://public-endpoint.json