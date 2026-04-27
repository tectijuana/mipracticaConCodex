#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

printf "[INFO] Ejecutando proyecto de ejemplo...\n"
python3 "$ROOT_DIR/src/main.py"
