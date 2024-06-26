#!/usr/bin/env bash

curl -s install.aztec.network | NON_INTERACTIVE=1 BIN_PATH=/usr/local/bin bash -s
docker compose -f $HOME/.aztec/docker-compose.yml pull

if ! grep -q "PXE_URL" ~/.bashrc; then
    echo "export PXE_URL=https://\$CODESPACE_NAME-8080.preview.\$GITHUB_CODESPACES_PORT_FORWARDING_DOMAIN" >> ~/.bashrc
fi

echo 'y' | npx create-aztec-app -t app -n react -s
cd react
yarn

npx -y playwright install --with-deps
yarn prep
