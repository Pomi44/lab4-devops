#!/usr/bin/env bash
set -uo pipefail

URL="http://127.0.0.1:8000"

STATUS_CODE=$(curl -s -o /dev/null -w "%{http_code}" "$URL" || echo "000")

if [ "$STATUS_CODE" = "200" ]; then
    echo "OK: service is available, HTTP code $STATUS_CODE"
    exit 0
else
    echo "FAIL: service is unavailable, HTTP code $STATUS_CODE"
    exit 1
fi
