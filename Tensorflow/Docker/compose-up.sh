#!/bin/sh

docker-compose up -d
docker-compose exec tensorflow2 /bin/bash