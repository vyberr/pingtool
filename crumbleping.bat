@echo off
chcp 65001
cls
mode 60,15
title Crumble IP Connector Tool [ctrl + c to stop]
echo.
echo                   [40;32m╦╔═╗  [40;37m╔═╗╦╔╗╔╔═╗╔═╗╦═╗
echo                   [40;32m║╠═╝  [40;37m╠═╝║║║║║ ╦║╣ ╠╦╝
echo                   [40;32m╩╩    [40;37m╩  ╩╝╚╝╚═╝╚═╝╩╚═
echo.
echo                     [40;35mgithub.com/vyberr
echo.  
set IP=
set /p IP=[40;32mEnter Target IP:[40;37m
echo.
echo [40;31mPing Will Start in 3...
timeout 1 >nul

echo [40;31mPing Will Start in 2...
timeout 1 >nul

echo [40;31mPing Will Start in 1...
timeout 1 >nul
echo.
echo Ctrl + C to Stop
timeout 2 >nul
goto STARTPING
:STARTPING
:MAIN
title Pinging [%IP%] [Status: N/A ]
PING -n 1 %IP% | FIND "TTL="
IF ERRORLEVEL 1 (SET in=0b & echo Not Connected.)
color 3
ping -t 2 0 10 127.0.0.1 >nul 
goto MAIN
pause