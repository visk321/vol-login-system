@echo off
color 4
title Scan
:CHECK1
cls
cd C:\WINDOWS\System32
timeout /t 3 > nul
cls
vol > vol.txt
cls
goto CHECK2

:CHECK2
cls
::*Name*::
cd C:\WINDOWS\System32
findstr /m "*put the vol here*" vol.txt
cls
if %errorlevel%==0 (
cd C:\WINDOWS\System32
del "vol.txt"
goto msg
)
echo Your HWID is not registered
pause
exit
cls
:msg
echo Found HWID
pause