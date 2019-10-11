#!/bin/bash
cd ../docker
docker-compose down
docker network create rm_ticketing_nat
docker-compose build --force-rm --no-cache
docker-compose up --no-start
cd ../scripts
