#!/bin/bash

if [ -z "$1" ]
then
    echo "";
    echo "usage for this file:";
    echo "./mysql-create.sh PASSWORD";
    echo "";
    exit 1
fi

cd ../
for filename in ./sql/*.sql; do
    echo $filename
    docker exec -i rm_ticketing_mysql_server_container mysql -u root --password=$1 < $filename
done