#!/bin/bash

mkdir -p public
cp -v www/index.html public/
set -o pipefail
./scripts/combine.sh | yq -oj | jq -c >public/bookmark.json
