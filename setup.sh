#!/bin/bash

# Create workspace directory if it doesn't exist
mkdir -p workspace

# Set permissions for workspace directory
chmod -R 777 workspace

# Create lab_test directory
mkdir -p workspace/jupyterSpark
#mkdir -p workspace/

# Set proper permissions
chmod -R 777 workspace

echo "Environment setup complete. Use 'docker-compose up' to start the containers."