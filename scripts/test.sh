#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SRC="$ROOT_DIR/src/main.s"
OUT="$ROOT_DIR/bin/micropractica"

mkdir -p "$ROOT_DIR/bin"

if command -v aarch64-linux-gnu-gcc >/dev/null 2>&1; then
    aarch64-linux-gnu-gcc -nostdlib -static "$SRC" -o "$OUT"
elif command -v clang >/dev/null 2>&1; then
    clang --target=aarch64-linux-gnu -nostdlib -static "$SRC" -o "$OUT"
else
    echo "No se encontro compilador ARM64 compatible." >&2
    exit 1
fi

echo "Compilacion exitosa: $OUT"
