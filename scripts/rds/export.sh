#!/bin/bash

source .env
file_name=$1.sql
pg_dump --dbname="$DB_URL" -t $1 > "$RAW_FOLDER/$file_name"
echo "Exported table $1 to $RAW_FOLDER/$file_name"