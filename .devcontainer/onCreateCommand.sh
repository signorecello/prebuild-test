#!/usr/bin/env bash

curl -s install.aztec.network | NON_INTERACTIVE=1 BIN_PATH=/usr/local/bin bash -s
docker compose -f $HOME/.aztec/docker-compose.yml pull

echo 'y' | npx create-aztec-app -t app -n react -s
cd react
yarn

npx -y playwright install --with-deps
yarn prep
