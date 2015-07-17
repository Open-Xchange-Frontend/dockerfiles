#!/bin/sh

rm bower_components/ node_modules/ -rf

npm i --production
grunt bower:install

grunt dist

