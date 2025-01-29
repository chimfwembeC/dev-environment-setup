#!/bin/bash

# Install OpenJDK (Java)
echo "Installing OpenJDK..."
sudo apt update
sudo apt install -y openjdk-11-jdk

# Verify installation
java -version
javac -version

echo "Java installation complete!"
