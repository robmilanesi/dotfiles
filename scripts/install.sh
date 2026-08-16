#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PACKS=('stow' 'alacritty' 'i3' 'i3status' 'feh')

install_dep() {
    local pack_to_install=$1
    if ! command -v "$pack_to_install" &> /dev/null; then
        echo "$1 now found, installing it..."
        sudo apt install "$pack_to_install" -y
    else
        echo "$pack_to_install already installed. Nothing to do..."
    fi
    echo "$pack_to_install installed successfully!"
    echo "-------------------------"
}

# Installing fonts
bash "${SCRIPT_DIR}/install_font.sh"

# Installing dependencies
for pack in "${PACKS[@]}"
do
    install_dep "$pack"
done

echo "All installations are completed!"


