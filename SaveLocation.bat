@echo off
cd "C:\Program Files (x86)\Steam\music\_database\"
C:\Users\kiosk\AppData\Local\8-Zip\8z.exe a savefolder.7z "B:\DontSaveHereDirectly\SaveHere"
del savefolder.db
ren savefolder.7z savefolder.db
exit