#!/usr/bin/env bash

apt install gh
gh codespace ports visibility 8080:public -c $CODESPACE_NAME

(nohup /usr/local/bin/aztec sandbox &)
