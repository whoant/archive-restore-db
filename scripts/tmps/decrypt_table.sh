#!/bin/bash

source .env
aws-encryption-cli --decrypt --input $1 \
  --wrapping-keys key=$AWS_KMS_KEY_ID \
  --metadata-output ~/metadata \
  --output ./decrypted
