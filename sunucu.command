#!/bin/bash
# macOS: çift tıkla. Klasörde yerel sunucu başlatır ve tarayıcıyı açar. Durdurmak için bu pencereyi kapat.
cd "$(dirname "$0")"
PORT=8000
while lsof -i :$PORT >/dev/null 2>&1; do PORT=$((PORT+1)); done
echo "İzometrik Şehirler: http://localhost:$PORT"
echo "Durdurmak için bu pencereyi kapat ya da Ctrl+C."
(sleep 1; open "http://localhost:$PORT") &
python3 -m http.server $PORT
