#!/usr/bin/env bash

# Install NPM dependencies
echo "Installing API dependencies..."
cd www/api/
npm i
npm run clean && npm run build

# Build Docker images
echo "Building Docker Images..."
cd ../../
./docker/dev-build.sh

echo "Starting up Docker Containers..."
./docker/dev-up.sh
