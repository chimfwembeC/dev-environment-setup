#!/bin/bash

# Install Phoenix Framework
echo "Installing Phoenix Framework..."

# Install Node.js (Phoenix requires Node.js)
curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
sudo apt update
sudo apt install -y nodejs

# Install Hex (Elixir's package manager)
mix local.hex

# Install Rebar (Build tool for Erlang and Elixir)
mix local.rebar

# Install Phoenix
mix archive.install hex phx_new 1.6.0

# Verify installation
mix phx.new --version

echo "Phoenix Framework installation complete!"
