# Batch-Snippets
Batch bits and pieces that I use in some of my private projects

In this file you can find what the various files can do + extra info about them

Note about all files (except this readme of course): you can just rename them to <file>.bat or <file>.nt or <file>.cmd


## About explorerender.cmd
It litterally says it in the name, it ends explorer.exe
It uses the reopen script (reopen.cmd) to reopen when closed.
And it makes use of the minimize script (minimizescript.cmd) so its basically impossible to close it if it has already ended explorer.exe.
Its basically a template for more advanced fake virusses :) (pls don't use it for illegal purposes.)
Instructions on how to customize it are in the file itself (open with notepad or notepad++ or smh)

IMPORTANT NOTE: WHAT TO DO WHEN YOU (ACCIDENTALLY) OPENED IT: (I sure hope you had access to task manager) On the keyboard do Ctrl+Shift+Esc,
In Task Manager search for Command Prompt (or in the Details pane: cmd.exe), right-click it, click end task. 
Then go to the File menu (under where it says Task Manager and where it has the little icon), click Run new task, type explorer.exe and hit enter (or click ok).
If you don't have access to Task Manager: I hope you saved all your files because you'll have to do a soft reset. Hold the power button on your device till it shuts down.


## About hmmm.bat
hmmm.. what could it be?
Its a Batch file (duhh) that I made purely because I was bored. It quickly makes a VBScript messagebox with title "hmmm" and text "hmmm" in %localappdata%\temp
Then it deletes that temporary VBScript file and infinitely says "hmmm" (but not in your average way of saying something hehe)
(Its useless, harmless, but I thought.. why not throw it in here :))
Instructions on how to cu-, wait, what do you want to customize about this lol


## About loadingbar.cmd
Its a loading bar in the console.. nothing special to it...
Instructions on how to customize it are in the file itself (open with notepad or notepad++ or smh)


## About minimizescript.cmd
It just minimizes your cmd window (you could just copy the "if" command in theory..)
Instructions on how to customize it are in the file itself (open with notepad or notepad++ or smh)


## About reopen.cmd
When you try to close it, it reopens, executes a script (whatever you want) and thats it.
How it works: At the start it opens a background cmd window (again thanks to minimizescript.cmd) which checks if the other screen (with the actual script) closes,
If it closes, the background script reopens the actual script and tells it to jump to the part with the script to run when its reopened.
Instructions on how to customize it are in the file itself (open with notepad or notepad++ or smh)


## About stayin_alive.cmd
I just made this when my pc would just sleep at random moments, although the settings wouldn't change anything about that, this helped.
I don't really have a use for it so... here you go I guess
(its inspired by this: https://www.youtube.com/watch?v=sCh_wEzItbI)

## About OPC.bat
This was just a test for Operating Parameters
%1 is the first option, %2 the second, etc (until %9)


*Other bits may be coming (or things I question myself every time I want to use it like if it is ``if else`` or ``else`` or ``else do`` or smh like that...*
