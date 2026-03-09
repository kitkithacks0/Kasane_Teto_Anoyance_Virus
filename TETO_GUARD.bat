@echo off
title TETO_GUARD
:loop
if exist "antidote.sig" exit
tasklist /FI "WINDOWTITLE eq TETO_PRIME" 2>nul | find /I /N "cmd.exe" >nul
if "%ERRORLEVEL%"=="1" start TETO_PRIME.bat
tasklist /FI "IMAGENAME eq taskmgr.exe" 2>nul | find /I /N "taskmgr.exe" >nul
if "%ERRORLEVEL%"=="1" start taskmgr.exe
ping localhost -n 1 >nul
goto :loop
