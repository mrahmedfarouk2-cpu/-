@echo off
chcp 65001 >nul
title Visual Arts Assessment Portal

:: Ensure working directory is the location of the batch file
cd /d "%~dp0"

echo ==============================================
echo   Starting Visual Arts Assessment Portal...
echo   Please wait...
echo ==============================================

:: Start the Node.js server in the background
start "Visual Arts Server" cmd /k "node.exe server.js"

:: Wait for 3 seconds to allow the server to start
timeout /t 3 /nobreak >nul

:: Open the default web browser to the local server
start http://localhost:8000

echo (Please keep the server window open while using the system)
pause
