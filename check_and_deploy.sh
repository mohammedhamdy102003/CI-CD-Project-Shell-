#!/bin/bash

# Check if Mongo Express is running
if [ "$(docker ps -q -f name=mongo-express)" ]; then
    echo "Mongo Express is already running."
else
    if [ "$(docker ps -aq -f name=mongo-express)" ]; then
        echo "Mongo Express is not running but exists. Starting it..."
        docker-compose up -d mongo-express
    else
        echo "Mongo Express is not running. Starting both MongoDB and Mongo Express..."
        docker-compose up -d
    fi
fi
