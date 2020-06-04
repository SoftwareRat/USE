@echo off
del RestoreFirefoxData.bat
cls
Call ObfuscateBatch RestoreFirefoxDataEditable.bat
ren RestoreFirefoxDataEditable_obfuscated.bat RestoreFirefoxData.bat
echo Created RestoreFirefoxData.bat file - Done!
exit