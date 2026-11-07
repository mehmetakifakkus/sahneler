@echo off
cd /d "%~dp0"
echo http://localhost:8000 adresini ac (durdurmak icin Ctrl+C)
python -m http.server 8000
