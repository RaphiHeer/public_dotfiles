#!/bin/bash

# Change to the dotfiles directory
cd ~/.dotfiles

# Use Stow to symlink dotfiles
stow tmux

# Install TPM if it's not already installed
TPM_PATH=~/.tmux/plugins/tpm
if [ ! -d "$TPM_PATH" ]; then
    git clone https://github.com/tmux-plugins/tpm "$TPM_PATH"
fi

echo "Dotfiles and TPM setup complete!"
echo "Remember to press prefix + I in a tmux session to install the plugins."
