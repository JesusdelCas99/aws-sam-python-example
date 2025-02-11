#!/bin/bash

# Remove existing layer.zip file if it exists
if [ -f "./lambdaLayer.zip" ]; then
    echo "Removing existing lambdaLayer.zip file..."
    rm -f ./lambdaLayer.zip
fi

# Check if the python directory exists; if so, clear its content
if [ -d "./python" ]; then
    echo "Clearing content of existing python directory..."
    rm -rf ./python/*
else
    echo "Creating python directory..."
    mkdir ./python
fi

# Install the required packages into the python directory
echo "Installing packages from requirements.txt..."
pip install \
--target=./python \
-r requirements.txt


# Check if pip install was successful
if [ $? -ne 0 ]; then
    echo "Failed to install packages. Exiting."
    exit 1
fi

# Zip the python directory for the Lambda layer
echo "Creating zip file for Lambda layer..."
zip -r lambdaLayer.zip python

# Check if zip was successful
if [ $? -eq 0 ]; then
    echo "Successfully created lambdaLayer.zip"
else
    echo "Failed to create zip file. Exiting."
    exit 1
fi