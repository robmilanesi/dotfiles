#!/usr/bin/env bash
set -euo pipefail

SEPARATOR="-------------------------"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Installing fonts
bash "${SCRIPT_DIR}/install_font.sh"

echo "$SEPARATOR"
echo "Searching for stow dependency..."
if ! command -v stow >&2; then
    echo "Stow now found, installing it..."
    sudo apt install stow -y
else
    echo "Stow already installed! Nothing to do here.."
fi

echo "Stow installation completed!"
echo "$SEPARATOR"


