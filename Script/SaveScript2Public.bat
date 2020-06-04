@echo off
del SaveFirefoxData.bat
cls
Call ObfuscateBatch SaveFirefoxDataEditable.bat
ren SaveFirefoxDataEditable_obfuscated.bat SaveFirefoxData.bat
echo Created SaveFirefoxData.bat file - Done!
exit