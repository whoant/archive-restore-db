#!/bin/bash

source .env

# Set the AWS S3 bucket name and object key
# BUCKET_NAME="my-bucket"
# OBJECT_KEY="my-object"

# Get the file path
# FILE_PATH=$2

file_name=$(basename $2)

s3_url=s3://$AWS_S3_BUCKET_NAME/$1/$file_name
# Upload the file to S3
aws s3 cp $2 $s3_url

# Print a message
echo "File $2 uploaded to S3."