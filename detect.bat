@echo off

set MYPATH=c:\poormansav

IF EXIST %MYPATH%\log\FOUND goto FOUND
goto NOPE

:FOUND
echo PoormansAV has found some known dangerous file(s)! You need to check the scanresults.txt log file in %MYPATH%\log\
exit /B 2

:NOPE
echo Nothing was found on the last scan. OK.
exit /B 0





