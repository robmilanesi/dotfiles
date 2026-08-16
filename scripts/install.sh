#!/bin/bash

SEPARATOR="-------------------------"

echo "Searching for stow dependency..."
if ! command -v stow >&2; then
    echo "Stow now found, installing it..."
    sudo apt install stow -y
else
    echo "Stow already installed! Nothing to do here.."
fi

echo "$SEPARATOR"
echo "Installation completed!"
echo "$SEPARATOR"