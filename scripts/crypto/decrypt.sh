#!/bin/bash

source .env
file_name=$1.sql.7z
aws-encryption-cli --decrypt --input $ENCRYPTED_FOLDER/$file_name.encrypted \
  --wrapping-keys key=$AWS_KMS_KEY_ID \
  --metadata-output ~/metadata \
  --output $RAW_FOLDER/$file_name

echo "Decrypted table $ENCRYPTED_FOLDER/$file_name.encrypted to $RAW_FOLDER/$file_name"