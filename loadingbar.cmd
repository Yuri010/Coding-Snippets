@echo off
::code can go here
::increase / decrease the 3rd number after "in" to specify the amound of hashtags it will echo (length of loading bar)
for /l %%a in (1,1,20) do (
	cls
	call set "bar=%%bar%%#"
	::you can customize the message below
	echo Loading
	call echo [%%bar%%]
	:: increase the number after -w in the following command to make it "load" slower
	ping localhost -w 200 -n 1 >nul
)
::code can go here