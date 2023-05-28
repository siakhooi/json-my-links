#!/bin/bash

mkdir -p public
./scripts/combine.sh | yq -oj  > public/bookmark.json
