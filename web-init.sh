#!/bin/bash
# This program initializes a web app workspace. Requires npm to be already installed.
#[-f package.json] && npm init -y
npm install webpack-demo webpack-cli html-webpack-plugin style-loader css-loader --save-dev
mkdir src dist
