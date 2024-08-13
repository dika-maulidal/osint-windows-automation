@echo off
title Domain Tool

:home
cls
echo.
echo Select a task:
echo =============
echo.
echo [1] Sublist3r
echo [2] TheHarvester
echo [3] Whois
echo [4] Google Analytics
echo [5] Archive
echo [6] Exit
echo.
set /p web=Type option:
if "%web%"=="1" goto Sublist3r
if "%web%"=="2" goto TheHarvester
if "%web%"=="3" goto Whois
if "%web%"=="4" goto GoogleAnalytics
if "%web%"=="5" goto Archive
if "%web%"=="6" exit

:Sublist3r
set /p domain="Enter Target Domain: "
mkdir %userprofile%\Documents\Sublist3r
cd "D:\open-source intelligence\main tools\Sublist3r"
python sublist3r.py -d %domain% -o %userprofile%\Documents\Sublist3r\%domain%.txt
start %userprofile%\Documents\Sublist3r\%domain%.txt
cls
echo Process complete. Strike any key to return to the menu.
Pause
goto home

:TheHarvester
set /p domain="Enter Target Domain: "
mkdir %userprofile%\Documents\theHarvester
cd "D:\open-source intelligence\main tools\theHarvester"
python theHarvester.py -d %domain% -b all -f %userprofile%\Documents\theHarvester\%domain%.xml
start %userprofile%\Documents\theHarvester\%domain%.xml
cls
echo Process complete. Strike any key to return to the menu.
Pause
goto home

:Whois
set /p domain="Enter Target Domain: "
cd c:\Program Files\Mozilla Firefox
start firefox https://viewdns.info/whois/?domain=%domain%
Pause
goto home

:GoogleAnalytics
set /p domain="Enter Target Domain: "
cd c:\Program Files\Mozilla Firefox
start firefox https://spyonweb.com/%domain%
Pause
goto home

:Archive
set /p domain="Enter Target Domain: "
cd c:\Program Files\Mozilla Firefox
start firefox http://web.archive.org/web/*/%domain%
Pause
goto home