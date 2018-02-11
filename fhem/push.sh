#!/bin/bash

# fail if any command fails:
set -e

COMMIT=$(git rev-parse --verify HEAD)
SHORT_COMMIT=$(echo $COMMIT | cut -c 1-7)

docker push pklaus/fhem:5.8_${SHORT_COMMIT}
docker push pklaus/fhem:5.8
docker push pklaus/fhem:latest
