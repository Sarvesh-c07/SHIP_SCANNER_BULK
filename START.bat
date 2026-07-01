@echo off
title ShipScan v7
color 0A
echo.
echo  ShipScan v7 - Shipping Bill Extractor
echo  --------------------------------------
python --version >nul 2>&1
if errorlevel 1 (echo  [ERROR] Python not found. Download from python.org & pause & exit /b)
if not exist "C:\ShippingBills\PDFs" mkdir "C:\ShippingBills\PDFs"
echo  [..] Installing dependencies...
pip install flask openpyxl imapclient pypdf --quiet --disable-pip-version-check
echo  [OK] Open: http://localhost:5000
echo  [OK] Press Ctrl+C to stop.
echo.
start /B cmd /C "timeout /t 2 /nobreak >nul && start http://localhost:5000"
python app.py
pause
