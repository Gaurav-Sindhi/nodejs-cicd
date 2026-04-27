#!/bin/bash

echo "Deploying app..."

# Stop old app
pkill node || true

# Install dependencies
npm install

# Start app
nohup node app.js > app.log 2>&1 &