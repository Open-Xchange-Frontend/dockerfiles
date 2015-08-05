#!/bin/sh

mkdir -p /home/ox/.config/configstore && echo "optOut: true" > /home/ox/.config/configstore/insight-bower.yml

rm bower_components/ node_modules/ -rf

npm i --production
grunt bower:install

grunt dist

