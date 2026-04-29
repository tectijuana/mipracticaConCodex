#!/usr/bin/env bash
set -euo pipefail

echo "[INFO] Iniciando script de ejecución local..."

# Este script NO instala dependencias, NO usa red y NO llama APIs externas.
# Adáptalo según el lenguaje principal de tu proyecto.

if [[ -f "src/main.py" ]]; then
  echo "[INFO] Detectado src/main.py"
  echo "[INFO] Ejecutando prototipo en Python..."
  python3 src/main.py
  exit 0
fi

if [[ -f "src/main.c" ]]; then
  echo "[INFO] Detectado src/main.c"
  echo "[INFO] Compilando y ejecutando prototipo en C..."
  cc src/main.c -o src/main
  ./src/main
  exit 0
fi

if [[ -f "src/main.sh" ]]; then
  echo "[INFO] Detectado src/main.sh"
  echo "[INFO] Ejecutando prototipo en Bash..."
  bash src/main.sh
  exit 0
fi

if [[ -f "src/main.s" || -f "src/main.S" ]]; then
  echo "[INFO] Detectado archivo Assembly en src/."
  echo "[INFO] Ajusta este bloque con los comandos de ensamble/enlace para tu entorno ARM64."
  exit 0
fi

echo "[ERROR] No se encontró archivo principal en src/."
echo "[SUGERENCIA] Crea uno de estos archivos:"
echo "  - src/main.py"
echo "  - src/main.c"
echo "  - src/main.sh"
echo "  - src/main.s (o src/main.S)"
exit 1
