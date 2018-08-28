#!/usr/bin/env bash

set -eu

clamavVersion=$(date +%Y%m%d)

echo "Building clamav image version $clamavVersion"
docker build --pull -t eu.gcr.io/infra-240614/clamav:$clamavVersion .
docker push eu.gcr.io/infra-240614/clamav:$clamavVersion
