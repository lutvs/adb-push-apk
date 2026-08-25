@echo off
setlocal enabledelayedexpansion

:: Prefix nama file
set prefix=recording_

:: Ekstensi
set ext=.mp4

:: Mulai nomor dari 1
set num=1

:: Loop cek apakah file sudah ada
:check
if exist "%prefix%!num!%ext%" (
    set /a num+=1
    goto check
)

:: Jika tidak ada, pakai nama ini
set filename=%prefix%!num!%ext%

echo Recording to: %filename%
scrcpy --record "%filename%"