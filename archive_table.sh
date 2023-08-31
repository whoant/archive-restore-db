#!/bin/bash

source .env
./scripts/rds/export.sh $1
./scripts/7za/compress.sh $RAW_FOLDER/$1
./scripts/crypto/encrypt.sh $1
./scripts/s3/upload.sh $1
