#!/bin/bash
set -e

bucket_list=$(awslocal s3 ls)

if [[ ! "${bucket_list[@]}" =~ "sync" ]];
then
  awslocal s3 mb s3://sync
else
  echo "Bucket sync already created!"
fi
