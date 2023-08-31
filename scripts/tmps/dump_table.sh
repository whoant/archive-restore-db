#!/bin/bash

source .env
pg_dump --dbname="$DB_URL" -t $1 > "./raw/$1.sql"
echo "Table $1 dumped to ./raw/$1.sql"