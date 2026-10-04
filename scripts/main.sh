#!/bin/bash
#
# scripts — Main entry point voor de script collectie
#
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
export PATH="$SCRIPT_DIR/utils:$PATH"

log() { echo "[$(date '+%Y-%m-%d %H:%M:%S')] $*"; }

log "Scripts collectie gestart"
log "Beschikbare scripts:"
echo ""
echo "  bash/hello.sh    — Voorbeeld bash script"
echo "  python/hello.py  — Voorbeeld Python script"
echo ""
log "Gebruik: ./<script-naam> [opties]"
