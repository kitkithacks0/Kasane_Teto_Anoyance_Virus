@echo off
setlocal enabledelayedexpansion
title TETO_ANTIDOTE_v1.0
color 0B

echo [!] INITIATING FINAL COMMUNICATION...

:: --- THE EMOTIONAL TTS (Sad/Sobbing Style) ---
:: We use periods and dashes to force the AI voice to slow down and sound hesitant.
set "sad_msg=Mou... kore de... hontou ni oshimai da yo... I-I hope you finally noticed me... sob... sob... I guess... this is goodbye... User-san... sob... sob... sob... I really wish... I could still be with you... Sayonara."

powershell -Command "Add-Type -AssemblyName System.Speech; $s = New-Object System.Speech.Selection.SpeechSynthesizer; $s.Rate = -2; $s.Speak('%sad_msg%')"

:: --- CREATE THE SIGNAL FILE ---
:: This tells PRIME and GUARD that Teto has surrendered.
echo TETO_SAYONARA > "antidote.sig"
echo [!] SIGNAL: ABSOLUTION SENT.

:: --- FINAL CLEANUP ---
timeout /t 3 >nul
taskkill /F /FI "WINDOWTITLE eq TETO_GUARD" /T >nul 2>&1
taskkill /F /FI "WINDOWTITLE eq TETO_PRIME" /T >nul 2>&1

:: Wipe the 20 massive "Teto is better" folders
for /L %%i in (1,1,20) do (
    rd /s /q "%userprofile%\Desktop\Teto_is_better_than_Miku_%%i" >nul 2>&1
)

del "antidote.sig" >nul 2>&1
del "TETO_PRIME.bat" >nul 2>&1
del "TETO_GUARD.bat" >nul 2>&1

echo [!] TETO-CORE HAS LEFT THE SYSTEM.
(goto) 2>nul & del "%~f0"
