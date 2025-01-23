#!/bin/bash

# Install Elixir
echo "Installing Elixir..."

# Install Erlang (Elixir depends on Erlang)
sudo apt update
sudo apt install -y erlang

# Install Elixir
wget https://github.com/elixir-lang/elixir/releases/download/v1.15.4/elixir-1.15.4-otp-24.3.4-1-ubuntu-20.04.tar.gz
tar -xvzf elixir-1.15.4-otp-24.3.4-1-ubuntu-20.04.tar.gz
sudo mv elixir-1.15.4-otp-24.3.4-1-ubuntu-20.04 /usr/local/elixir

# Add Elixir binaries to PATH
echo 'export PATH=$PATH:/usr/local/elixir/bin' >> ~/.bashrc
source ~/.bashrc

# Verify installation
elixir --version

echo "Elixir installation complete!"
