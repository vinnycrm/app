#!/bin/bash
docker build -t vinnycrm/app:1.0 .
docker login -u "$DOCKER_USERNAME" -p "$DOCKER_PASSWORD";
docker push vinnycrm/app:1.0