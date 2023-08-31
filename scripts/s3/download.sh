#!/bin/bash

source .env
file_name=$1.sql.7z
table_name=${1%_*}

s3_url=s3://$AWS_S3_BUCKET_NAME/$table_name/$file_name.encrypted
aws s3 cp $s3_url $ENCRYPTED_FOLDER/$file_name.encrypted
echo "Downloaded table $ENCRYPTED_FOLDER/$file_name.encrypted from $s3_url."