#!/bin/bash

# Exit on error
set -e

# Check if npm is installed
if ! command -v npm &> /dev/null; then
    echo "npm is not installed. Please install Node.js and npm first."
    exit 1
fi

# Install dependencies if node_modules doesn't exist
if [ ! -d "node_modules" ]; then
    echo "Installing dependencies..."
    npm install
fi

# Build the theme
echo "Building theme..."
npm run build

echo "Build complete! The theme.css file has been updated." 