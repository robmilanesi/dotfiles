#!/usr/bin/env bash
set -euo pipefail

FONT_NAME="JetBrainsMono"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SRC_FONT_DIR="${SCRIPT_DIR}/../assets/fonts"
DEST_FONT_DIR="${HOME}/.local/share/fonts/JetBrainsMonoNerdFont"

if ! command -v fc-list &> /dev/null || ! command -v fc-cache &> /dev/null; then
    echo "-----------------------------"
    echo "Installing fontconfig..."
    sudo apt-get update && sudo apt-get install -y fontconfig
    echo "fontconfig installation completed"
    echo "-----------------------------"
fi

if fc-list : family | grep -iq "${FONT_NAME}"; then
    echo "Font: ${FONT_NAME} already installed. Nothing to do."
    exit 0
fi

echo "Font not found, installing it..."

mkdir -p "${DEST_FONT_DIR}"
cp -v "${SRC_FONT_DIR}"/*.ttf "${DEST_FONT_DIR}/"
fc-cache -fv "${DEST_FONT_DIR}"

echo "JetBrains Mono Nerd Font installed successfully!"