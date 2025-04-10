#!/bin/bash

# Create the image and container with docker-compose based on the Dockerfile
docker compose up -d --build

# Enter the container
docker exec -it web-container-django /bin/sh