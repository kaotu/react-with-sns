#!/bin/bash

curl -sL https://deb.nodesource.com/setup_12.x | bash -
apt install -y nodejs
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
apt install --no-install-recommends yarn