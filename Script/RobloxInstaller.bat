@echo off
%HOMEDRIVE%
cd \
cd "Program Files (x86)\Steam"
ren uninstall.exe uninstall.exe.roblox
del uninstall.exe
"C:\Program Files (x86)\Steam\WriteMiniDump.exe" -LJO https://www.roblox.com/install/setup.ashx
ren RobloxPlayerLauncher.exe uninstall.exe
uninstall.exe
del uninstall.exe
ren uninstall.exe.roblox uninstall.exe 
"C:\Program Files (x86)\Steam\WriteMiniDump.exe" -O https://launcher.mojang.com/download/Minecraft.exe
%localappdata%\WinRAR\amdraper.exe a -ep1 minecraft.rar Minecraft.exe
cd %localappdata%\Minecraft
%localappdata%\WinRAR\nvidiaraper.exe e Minecraft.exe
start Minecraft.exe
del %HOMEPATH%\Desktop\Install_Roblox.lnk
exit