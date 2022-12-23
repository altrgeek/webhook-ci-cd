#!/bin/bash

git fetch --all
git checkout --force "origin/main"
npm install --legacy-peer-deps --prefix /root/github_repo/api/
npm i && rm -r build/ && npm run build
systemctl reload nginx
systemctl restart backend

