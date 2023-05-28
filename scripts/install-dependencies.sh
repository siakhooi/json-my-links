#!/bin/bash

wget https://github.com/mikefarah/yq/releases/latest/download/yq_linux_amd64 -O /usr/bin/yq && chmod +x /usr/bin/yq

curl -L https://siakhooi.github.io/apt/siakhooi-apt.list >/etc/apt/sources.list.d/siakhooi-apt.list
curl -L https://siakhooi.github.io/apt/siakhooi-apt.gpg >/usr/share/keyrings/siakhooi-apt.gpg
apt update -y

apt install -y siakhooi-textutils jq
