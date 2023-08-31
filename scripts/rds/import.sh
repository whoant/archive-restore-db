#!/bin/bash

source .env
file_name=$1.sql
psql --dbname="$DB_URL" -f $RAW_FOLDER/$file_name
echo "Imported table $file_name to database."