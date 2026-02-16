#!/bin/bash

# Script to stop Docker Compose containers for microservice project
# This script should be placed in the scripts/ folder

# Get the project root directory (parent of scripts folder)
PROJECT_ROOT="$(cd "$(dirname "$0")/.." && pwd)"

# Change to project root directory
DOCKER_DIR="$PROJECT_ROOT/docker"
cd "$DOCKER_DIR" || exit 1

echo "Stopping Docker Compose in: $PROJECT_ROOT"
echo "--------------------------------------"

# Check if docker-compose file exists
if [ ! -f "docker-compose.yml" ] && [ ! -f "docker-compose.yaml" ] && [ ! -f "compose.yml" ] && [ ! -f "compose.yaml" ]; then
    echo "✗ Error: No Docker Compose file found in $PROJECT_ROOT"
    echo "Expected one of: docker-compose.yml, docker-compose.yaml, compose.yml, compose.yaml"
    exit 1
fi

echo "✓ Docker Compose file found"
echo ""

# Stop and remove containers
docker compose down

# Check if the command was successful
if [ $? -eq 0 ]; then
    echo "--------------------------------------"
    echo "✓ Docker Compose stopped successfully!"
    echo ""
    echo "To start services again, run: ./scripts/start-services.sh"
else
    echo "--------------------------------------"
    echo "✗ Failed to stop Docker Compose"
    exit 1
fi