Set objArgs = WScript.Arguments
message = objArgs(0)
buttons = objArgs(1)
title = objArgs(2)

buttonsValue = Eval(buttons)

x = MsgBox(message, buttonsValue, title)

WScript.Quit(x)
