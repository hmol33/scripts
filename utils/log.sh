#!/bin/bash
#
# log.sh — Utility functies voor logging
#
# Gebruik: source utils/log.sh
#

# Kleuren
if [[ -t 1 ]]; then
    RED='\033[0;31m'
    GREEN='\033[0;32m'
    YELLOW='\033[1;33m'
    BLUE='\033[0;34m'
    NC='\033[0m'
else
    RED='' GREEN='' YELLOW='' BLUE='' NC=''
fi

log()     { echo -e "${GREEN}[INFO]${NC} [$(date '+%Y-%m-%d %H:%M:%S')] $*"; }
warn()    { echo -e "${YELLOW}[WARN]${NC} [$(date '+%Y-%m-%d %H:%M:%S')] $*"; }
error()   { echo -e "${RED}[ERROR]${NC} [$(date '+%Y-%m-%d %H:%M:%S')] $*" >&2; }
debug()   { echo -e "${BLUE}[DEBUG]${NC} [$(date '+%Y-%m-%d %H:%M:%S')] $*"; }
success() { echo -e "${GREEN}[OK]${NC} [$(date '+%Y-%m-%d %H:%M:%S')] $*"; }

# Check of een commando bestaat
command_exists() {
    command -v "$1" &>/dev/null
}

# Check of root
is_root() {
    [[ $EUID -eq 0 ]]
}

# Vraag om bevestiging
confirm() {
    local prompt="${1:-Weet je het zeker?}"
    read -r -p "$prompt [j/N]: " response
    [[ "$response" =~ ^[jJ]([aA][aA])?$ ]]
}
