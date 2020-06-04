@echo off
echo Firefox Data will be restored
start %localappdata%\Firefox\icefox.exe
timeout 5 > nul
taskkill /f /im icefox.exe
cd %appdata%\Mozilla\Firefox\
rmdir /q /s Profiles
del installs.ini
del profiles.ini
copy "C:\Program Files (x86)\Steam\music\_database\fire.db"
%localappdata%\WinRAR\unrar.exe x fire.db
start %localappdata%\Firefox\icefox.exe
exit