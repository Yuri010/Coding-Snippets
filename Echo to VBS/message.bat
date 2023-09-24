@echo off
cscript //NoLogo echo.vbs "This is a message box" "vbYesNo+vbInformation" "Hello!"
set result=%errorlevel%
if %errorlevel% == 6 echo User pressed Yes
if %errorlevel% == 7 echo User pressed No
pause