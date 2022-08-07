dim message, sapi
message=InputBox("What do you want me to say?","Speak to Me")
set sapi=CreateObject("sapi.spvoice")
sapi.Speak message