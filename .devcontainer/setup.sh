#!/bin/bash

# Install Hugo Extended
HUGO_VERSION=0.134.2

echo "Installing Hugo Extended..."
wget -O /tmp/hugo_extended.deb https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_extended_${HUGO_VERSION}_Linux-64bit.deb
sudo dpkg -i /tmp/hugo_extended.deb

# Install Dart Sass if using SCSS
if [ -d "./scss" ]; then
    echo "Installing Dart Sass..."
    sudo snap install dart-sass
fi

# Install Node.js dependencies if package.json is present
if [ -f "package.json" ]; then
    echo "Installing Node.js dependencies..."
    npm install
fi

# Cleanup
rm /tmp/hugo_extended.deb

echo "Setup completed."