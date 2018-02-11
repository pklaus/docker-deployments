#!/bin/bash

# check if Git repo clean (untracked files are ignored):
git diff-index --quiet HEAD
if [ $? -ne 0 ]; then
  >&2 echo "Uncommited changes. Not building..."
  exit 1
fi

# fail if any command fails
set -e

COMMIT=$(git rev-parse --verify HEAD)
SHORT_COMMIT=$(echo $COMMIT | cut -c 1-7)

docker build -t pklaus/fhem:latest --squash .
docker tag pklaus/fhem:latest pklaus/fhem:5.8
docker tag pklaus/fhem:latest pklaus/fhem:5.8_${SHORT_COMMIT}
