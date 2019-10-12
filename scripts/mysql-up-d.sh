#!/bin/bash
cd ../
docker-compose up -d
cd ../scripts

cd ../../../ballkartenonline.at/docker
docker-compose up -d ballkartenonline_db
cd ../../rm-ticketing/rm-ticketing-mysql-server
