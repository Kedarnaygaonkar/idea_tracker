@echo off
echo ========================================
echo Starting Idea Evolution Tracker
echo ========================================
echo.

echo [1/2] Starting Backend (Flask)...
start "Backend Server" cmd /k "cd /d %~dp0 && python -m backend.api"
timeout /t 5 /nobreak >nul

echo [2/2] Starting Frontend (React + Vite)...
start "Frontend Server" cmd /k "cd /d %~dp0frontend && npm run dev"

echo.
echo ========================================
echo Servers are starting...
echo ========================================
echo Backend:  http://localhost:5000
echo Frontend: http://localhost:8080
echo Yugas:    http://localhost:8080/yugas
echo ========================================
echo.
echo Both servers are running in separate windows.
echo Close those windows to stop the servers.
echo.
echo This window will close in 3 seconds...
timeout /t 3 /nobreak >nul
