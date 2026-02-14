#!/bin/bash

# Script to run Docker Compose for microservice project
# This script should be placed in the scripts/ folder

# Get the project root directory (parent of scripts folder)
PROJECT_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
echo "$PROJECT_ROOT"
cd "$PROJECT_ROOT" || exit 1
echo "Starting Docker Compose in: $PROJECT_ROOT"
echo "--------------------------------------"

# Check if docker-compose.yml or compose.yaml exists
if [ ! -f "docker-compose.yml" ] && [ ! -f "docker-compose.yaml" ] && [ ! -f "compose.yml" ] && [ ! -f "compose.yaml" ]; then
    echo "✗ Error: No Docker Compose file found in $PROJECT_ROOT"
    echo "Expected one of: docker-compose.yml, docker-compose.yaml, compose.yml, compose.yaml"
    exit 1
fi
echo "✓ Docker Compose file found"
echo ""
# Run docker compose up
docker compose up -d

# Check if the command was successful
if [ $? -eq 0 ]; then
    echo "--------------------------------------"
    echo "✓ Docker Compose started successfully!"
    echo ""
    echo "To view logs, run: docker compose logs -f"
    echo "To stop services, run: docker compose down"
else
    echo "--------------------------------------"
    echo "✗ Failed to start Docker Compose"
    exit 1
fi