#!/usr/bin/env bash
cd "$(dirname "$0")"
echo "http://localhost:8000 adresini aç (durdurmak için Ctrl+C)"
python3 -m http.server 8000
