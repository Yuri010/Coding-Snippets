@echo off
if "%1" equ "Restarted" goto %1

:again
if not DEFINED IS_MINIMIZED set IS_MINIMIZED=1 && start "" /min "%~dpnx0" %* && exit
echo N|start "" /WAIT cmd.exe /C "%~F0" Restarted > NUL
goto :again

:Restarted
:: execute this when restarted
echo Oi!! Why did you close me?!!
goto :mainscript

:mainscript
echo please dont close me..
pause > nul