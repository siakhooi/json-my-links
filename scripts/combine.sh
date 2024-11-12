#!/bin/bash

echo "menu:"

cd src || exit 1
find . -mindepth 1 -maxdepth 1 -type d | sort -n | while read -r dir1; do
  group1=$(basename "$dir1")

  # shellcheck disable=SC2001
  name1="$(echo "$group1" | sed 's/[^-]*-//')"

  echo "  - name: $name1"
  echo "    menu:"
  cd "$group1" || exit

  find . -mindepth 1 -maxdepth 1 -type f -name '*.yaml' -exec basename {} \; | sort -n | while read -r group2; do
    name2=$(echo "$group2" | sed 's/[^-]*-//' | sed 's/\.yaml$//')
    echo "      - name: $name2"
    echo "        menu:"
    prefix '          ' "$group2"
  done

  cd .. || exit 1
done

cd .. || exit 1
