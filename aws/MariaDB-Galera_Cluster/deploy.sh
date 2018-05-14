#!/usr/bin/env bash
if [ -z "$1" ]
then
  echo "Usage: must pass the terraform directory"
  exit 1
fi

export AWS_ACCESS_KEY_ID="AKIAIS74SOQJKWONKAOA"
export AWS_SECRET_ACCESS_KEY="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"
export AWS_DEFAULT_REGION="sa-east-1"

cd $1
terraform $2
