@echo off
title Username Tool

:home
cls
echo.
echo   __  __________  _________  ____ _____ ___  ___ 
echo  / / / / ___/ _ \/ ___/ __ \/ __ `/ __ `__ \/ _ \
echo / /_/ (__  )  __/ /  / / / / /_/ / / / / / /  __/
echo \__,_/____/\___/_/  /_/ /_/\__,_/_/ /_/ /_/\___/ 
echo.
echo Choose an options:
echo =================
echo [1] Sherlock
echo [2] Blackbird
echo [3] Maigret
echo [4] WhatsMyName
echo [5] Exit
echo.
set /p web=Type option:
if "%web%"=="1" goto 1
if "%web%"=="2" goto 2
if "%web%"=="3" goto 3
if "%web%"=="4" goto 4
if "%web%"=="5" exit

:1
set /p url=Target Username:
cd "D:\open-source intelligence\main tools\sherlock"
start python -m sherlock_project %url% > %userprofile%\Documents\%url%-Sherlock.txt
start "" %userprofile%\Documents\%url%-sherlock.txt
goto home

:2
set /p url=Target Username:
cd "D:\open-source intelligence\main tools\blackbird"
start python blackbird.py --username %url% --pdf
goto home

:3
set /p url=Target Username:
cd "D:\open-source intelligence\main tools\maigret"
start python -m maigret %url% > %userprofile%\Documents\%url%-maigret.txt
start "" %userprofile%\Documents\%url%-maigret.txt
goto home

:4
set /p url=Target Username:
cd "D:\open-source intelligence\main tools\whatsmyname"
start python whatsmyname.py -u %url%
echo Menunggu proses selesai...
pause
cd "D:\open-source intelligence\main tools\whatsmyname"
start "" whatsmyname_report_%url%.html
goto home
