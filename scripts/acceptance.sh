#!/usr/bin/env bash
set -euo pipefail

URL="${1:-http://localhost:8081/version.txt}"
EXPECTED="${2:-unknown}"

echo "[ACCEPTANCE] Verificando $URL contra versión esperada: $EXPECTED"

for i in {1..10}; do
  if curl -fsS "$URL" >/dev/null; then
    break
  fi
  echo "[ACCEPTANCE] Esperando servicio... intento $i"
  sleep 1
done

ACTUAL="$(curl -fsS "$URL" | tr -d '\r\n')"
echo "[ACCEPTANCE] version.txt => $ACTUAL"

if [[ "$ACTUAL" != "$EXPECTED" ]]; then
  echo "[ACCEPTANCE] ❌ Versión no coincide (esperada: $EXPECTED, actual: $ACTUAL)"
  exit 1
fi

echo "[ACCEPTANCE] ✅ Aceptación OK"
# 