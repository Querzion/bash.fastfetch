#!/bin/bash

############ COLOURED BASH TEXT

# ANSI color codes
RED='\033[0;31m'
YELLOW='\033[0;33m'
GREEN='\033[0;32m'
CYAN='\033[0;36m'
PURPLE='\033[0;35m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color


################################################################################################## FILE & FOLDER PATHS

# Location
APPLICATION="fastfetch"
BASE="$HOME/bash.$APPLICATION"
FILES="$BASE/files/fastfetch"
CONFDIR="$HOME/.config/fastfetch"


################################################################################################## FILE & FOLDER PATHS

update_fastfetch() {
    # Generate a new Fastfetch config
    fastfetch --gen-config-force

    # Backup existing config
    mv "$CONFDIR/config.jsonc" "$CONFDIR/config.jsonc.bak"

    # Copy the new Fastfetch configurations
    cp -R $FILES/* "$CONFDIR/"

    echo -e "${GREEN} Fastfetch configuration updated successfully. ${NC}"
}


################################################################################################## FILE & FOLDER PATHS

# Change FASTFETCH Output
update_fastfetch
