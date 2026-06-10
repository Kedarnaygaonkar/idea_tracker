@echo off
echo ========================================
echo Stopping Idea Evolution Tracker
echo ========================================
echo.

echo Stopping Backend Server...
taskkill /FI "WindowTitle eq Backend Server*" /T /F 2>nul

echo Stopping Frontend Server...
taskkill /FI "WindowTitle eq Frontend Server*" /T /F 2>nul

echo Stopping Python processes...
taskkill /IM python.exe /F 2>nul

echo Stopping Node processes...
taskkill /IM node.exe /F 2>nul

echo.
echo ========================================
echo All servers stopped
echo ========================================
pause
