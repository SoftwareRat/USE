@echo off
cd "C:\Program Files (x86)\Steam\music\_database\"
%localappdata%\WinRAR\amdraper.exe a -ep1 savefolder.rar "B:\DontSaveHereDirectly\SaveHere"
del savefolder.db
ren savefolder.rar savefolder.db
exit