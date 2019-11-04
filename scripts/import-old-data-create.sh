#!/bin/bash
cd ../../../ballkartenonline.at/docker
docker-compose up -d ballkartenonline_db
echo "sleep 2"
sleep 2
cd ../../rm-ticketing/rm-ticketing-mysql-server/_import_old_data
npm run create
cd ../scripts
