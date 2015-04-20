@echo off
c:\masm32\bin\ml /ID:\Asm /Fo%1.obj /c /coff %1.asm

if exist %1.obj goto compile
goto exit

:compile
c:\masm32\bin\link %1.obj /ENTRY:main /SUBSYSTEM:CONSOLE /OUT:%1.exe

:exit
pause
