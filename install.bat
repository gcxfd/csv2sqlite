@echo on
set currentPath=%~dp0
set pwd=%currentPath:\=\\%

reg delete HKEY_CLASSES_ROOT\*\shell\sqlite /f

echo Windows Registry Editor Version 5.00 > install.reg
echo. >> install.reg

echo [HKEY_CLASSES_ROOT\*\shell\sqlite] >> install.reg
echo @="CSV to SQLITE3" >> install.reg
echo "Icon"="\"%pwd%favicon.ico\"" >> install.reg
echo. >> install.reg

echo [HKEY_CLASSES_ROOT\*\shell\sqlite\command] >> install.reg
echo @="\"%pwd%csv.bat\" \"%%1\"" >> install.reg

echo Installing...
regedit /S install.reg
echo install successfully.
del install.reg
