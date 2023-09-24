@echo off
for /f "delims=" %%x in (config.cfg) do (set "%%x")
if /I "%autoupd%" == "1" ( echo Automatic Updates ON ) else ( echo Automatic Updates OFF)
echo Unique ID: %uid%
echo.
echo Press any key to exit...
pause > nul
exit