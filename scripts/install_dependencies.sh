#!/bin/bash

sudo curl -sL https://deb.nodesource.com/setup_12.x | bash -
sudo apt install -y nodejs
sudo curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
sudo apt install --no-install-recommends yarn -y