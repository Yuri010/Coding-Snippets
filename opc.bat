@echo off
title Operating parameter checker v0.9
:parametercheck
if "%1" == "-help" goto :help
if NOT "%1" == "" goto :main
(
echo. Syntaxis:
echo. %0 [-option1] [--option-2]
echo. or type %0 -help
exit/b
)

:main
echo. Congrats! You entered something I guess!
exit/b

:help
echo. Operating Parameter Checker v0.9 (PreRelease)
echo. Made by: Yuri
echo.
echo. Syntaxis:
echo. %0 [-option1] [--option-2]
echo.
echo. Options:
echo. -help		==	Display this Help message
echo. more in future releases.
exit/b