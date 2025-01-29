#!/bin/bash

# Install Go (Golang)
echo "Installing Go..."
wget https://go.dev/dl/go1.20.3.linux-amd64.tar.gz
sudo tar -C /usr/local -xvzf go1.20.3.linux-amd64.tar.gz

# Add Go binary to the PATH
echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.bashrc
source ~/.bashrc

# Verify installation
go version

echo "Go (Golang) installation complete!"
