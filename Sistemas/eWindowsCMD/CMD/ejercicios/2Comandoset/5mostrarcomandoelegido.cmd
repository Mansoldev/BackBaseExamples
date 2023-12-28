@echo off
cls

set /p resp=que extension busco? 

dir /a-d /b /s c:\windows\*%resp%
dir /a-d /b /s /w c:\windows\*%resp% > c:\comandogay.txt
notepad c:\comandogay.txt

pause>nul