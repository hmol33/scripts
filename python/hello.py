#!/usr/bin/env python3
"""
hello.py — Voorbeeld Python script met logging
"""

import sys
import os
from datetime import datetime

def main():
    """Hoofdfunctie."""
    timestamp = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    print(f"[{timestamp}] Hello from python script")
    print(f"[{timestamp}] Python versie: {sys.version}")
    print(f"[{timestamp}] Script pad: {os.path.abspath(__file__)}")
    print(f"[{timestamp}] Working directory: {os.getcwd()}")

if __name__ == "__main__":
    main()
