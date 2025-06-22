@echo off
title System Uptime - By ThatGuyVR
color 0B

:menu
cls
echo ==========================================
echo        System Uptime - By ThatGuyVR
echo ==========================================
echo.
echo Select an operation:
echo.
echo 1. Show System Uptime
echo 2. Exit
echo.
set /p choice=Enter your choice (1-2): 

if "%choice%"=="1" goto uptime
if "%choice%"=="2" exit
goto menu

:uptime
cls
echo System Uptime:
echo.
net stats workstation | find "Statistics since"
echo.
pause
goto menu
