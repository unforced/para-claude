#!/bin/bash

# Para-Claude Update Script
# Quick way to update an existing installation

set -e

# Colors
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

# Script directory (parent of scripts/)
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )/.." && pwd )"

echo "🧠 Para-Claude Updater"
echo "====================="
echo ""

# Check if vault path provided
if [ -z "$1" ]; then
    # Try to find vault from current directory
    CURRENT_DIR=$(pwd)
    if [ -f "$CURRENT_DIR/.para-claude/config.yml" ]; then
        VAULT_PATH="$CURRENT_DIR"
        echo -e "${GREEN}✓ Found Para-Claude installation in current directory${NC}"
    else
        echo "Usage: $0 /path/to/obsidian/vault"
        echo "   or: Run from within your vault directory"
        exit 1
    fi
else
    VAULT_PATH="$1"
fi

# Run the main installer in update mode
"$SCRIPT_DIR/install.sh" --update "$VAULT_PATH"