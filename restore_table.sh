#!/bin/bash

source .env
./scripts/s3/download.sh $1
./scripts/crypto/decrypt.sh $1
./scripts/7za/extract.sh $RAW_FOLDER/$1 $RAW_FOLDER
# ./scripts/rds/import.sh $1
