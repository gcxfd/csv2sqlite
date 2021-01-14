@echo on

cd %cd%

set pwd=%~dp0

del /f %~n1.sqlite3
%pwd%bash.exe %pwd%/bash.sh  %~nx1

:: pause