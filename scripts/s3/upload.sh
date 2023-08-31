#!/bin/bash

source .env
file_name=$1.sql.7z
table_name=${1%_*}

s3_url=s3://$AWS_S3_BUCKET_NAME/$table_name/$file_name.encrypted
aws s3 cp $ENCRYPTED_FOLDER/$file_name.encrypted $s3_url
echo "Uploaded table $ENCRYPTED_FOLDER/$file_name.encrypted to $s3_url."