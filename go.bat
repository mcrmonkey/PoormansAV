@echo off
set MYPATH=c:\poormansav

if [%1] == [] goto Nopath

if EXIST %MYPATH%\log\scanresult.txt del %MYPATH%\log\scanresult.txt

date /T > %MYPATH%\log\scanresult.txt

%MYPATH%\bin\md5deep.exe -m %mypath%\lib\known.txt -r %1 >> %MYPATH%\log\scanresult.txt


if ERRORLEVEL 3 GOTO NONEFOUND
if ERRORLEVEL 2 GOTO NONEFOUND

if ERRORLEVEL 1 GOTO FOUNDSOME
if ERRORLEVEL 0 GOTO FOUNDSOME


:NONEFOUND
echo.

if EXIST %MYPATH%\log\FOUND del %MYPATH%\log\FOUND
echo Nothing was found in the target. >> %MYPATH%\log\scanresult.txt
echo.
goto END

:FOUNDSOME
echo.
echo Some known hashes were found! >> %MYPATH%\log\scanresult.txt
echo.
echo FOUND > %MYPATH%\log\FOUND
goto END

:Nopath
Echo You need to give a path to scan.
echo.
echo example scan.bat c:\
echo.
goto END

:END

