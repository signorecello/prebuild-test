#!/usr/bin/env bash

gh codespace ports visibility 8080:public -c $CODESPACE_NAME
export PXE_URL="https://$CODESPACE_NAME-8080.$GITHUB_CODESPACES_PORT_FORWARDING_DOMAIN"
(nohup /usr/local/bin/aztec sandbox &)
cd react
