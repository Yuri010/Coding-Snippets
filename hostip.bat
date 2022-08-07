@echo off
set /p target=Target hostname: 
ping %target% -4 -n 1 | findstr /I "[" > %temp%\temp.txt
set /p string=<%temp%\temp.txt
for /F "tokens=2 delims=[]" %%a IN ('echo %string%') DO echo %%a > %temp%\temp.txt
set /p ip=<%temp%\temp.txt
del /Q %temp%\temp.txt
echo %ip%
pause