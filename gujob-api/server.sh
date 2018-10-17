#!/usr/bin/env bash
export PATH=$PATH:/root/.nvm/versions/node/v10.7.0/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

node -v 
npm install
npm run build:prod
pm2 delete api
npm run pm2

