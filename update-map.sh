#! /bin/sh
set -e
rm -rf node-map-public/
git clone https://github.com/olivernyc/node-map-public
cd node-map-public
yarn update-data
yarn
yarn build
cp build/index.html ../layouts/partials/node-map.html
cp -r build/static/ ../static/map/static/