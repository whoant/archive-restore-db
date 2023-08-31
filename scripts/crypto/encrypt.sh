#!/bin/bash

source .env
file_name=$1.sql.7z
aws-encryption-cli --encrypt --input $RAW_FOLDER/$file_name \
  --wrapping-keys key=$AWS_KMS_KEY_ID \
  --metadata-output ~/metadata \
  --output $ENCRYPTED_FOLDER/$file_name.encrypted

echo "Encrypted table $RAW_FOLDER/$file_name to $ENCRYPTED_FOLDER/$file_name.encrypted"