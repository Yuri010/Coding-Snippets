@echo off
if not DEFINED IS_MINIMIZED set IS_MINIMIZED=1 && start "" /min "%~dpnx0" %* && exit
::you can drop a whole program of code below this, its all about the "if" command above this comment
echo hello
pause
exit