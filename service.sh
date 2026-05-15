#!/usr/bin/env bash
set -euo pipefail

SERVICE_DIR="/opt/lab4-service/html"
PORT="8000"

cd "$SERVICE_DIR"

echo "Starting lab4 HTTP service on port $PORT"
python3 -m http.server "$PORT"
