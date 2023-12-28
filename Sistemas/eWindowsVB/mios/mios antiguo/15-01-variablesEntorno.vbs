set so=wscript.createobject("Wscript.Shell")
set se=so.Environment("PROCESS")
wscript.echo se("computername")

'msgbox so.ExpandEnvironmentStrings("%username%")