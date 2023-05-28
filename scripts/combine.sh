#!/bin/bash

echo "menu:"

cd src || exit 1
ls -d * | sort -n | while read -r group1; do
  name1=$(echo $group1 | sed 's/[^-]*-//')
  echo "  - name: $name1"
  echo "    menu:"
  cd $group1 || exit

  ls -d *.yaml | sort -n | while read -r group2; do
    name2=$(echo $group2 | sed 's/[^-]*-//' | sed 's/\.yaml$//')
    echo "      - name: $name2"
    echo "        menu:"
    cat "$group2" | prefix '          '
  done
  cd .. || exit 1
done

cd .. || exit 1
