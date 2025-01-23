#!/bin/bash

# Install ASDF Version Manager
echo "Installing ASDF Version Manager..."
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.10.2

# Add to shell config file
echo -e '\n# ASDF Version Manager\n. $HOME/.asdf/asdf.sh' >> ~/.bashrc
echo -e '\n# ASDF Version Manager - Add Plugin Path\n. $HOME/.asdf/completions/asdf.bash' >> ~/.bashrc
source ~/.bashrc

# Verify installation
asdf --version

echo "ASDF Version Manager installation complete!"
