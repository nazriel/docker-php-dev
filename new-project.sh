#!/bin/bash

PROJECT_NAME=""
PROJECT_PORT=10000

echo "Podaje nazwe projektu: "
read PROJECT_NAME

echo "Podaj port TCP: "
read PROJECT_PORT

cp -R $PWD/ ../$PROJECT_NAME/
chown -R www-data: ../$PROJECT_NAME

sed s/NAME/$PROJECT_NAME/g -i ../$PROJECT_NAME/INFO
sed s/PORT/$PROJECT_PORT/g -i ../$PROJECT_NAME/INFO
cd ../$PROJECT_NAME/
/bin/bash create.sh
/bin/bash start.sh
