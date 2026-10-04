#!/bin/bash
#
# hello.sh — Voorbeeld bash script met logging
#
set -euo pipefail

log() { echo "[$(date '+%Y-%m-%d %H:%M:%S')] $*"; }

log "Hello from bash script"
log "Script pad: $0"
log "Working directory: $(pwd)"
log "Bash versie: $BASH_VERSION"
