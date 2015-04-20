.486

.MODEL Flat, StdCall ; StdCall - мантра

; Это некоторые мантры

INCLUDE stdlib.inc

INCLUDELIB msvcrt.lib

.DATA
a dd -10
b dd -3
res dd ?

.CODE

main:
mov eax, a
cdq
mov ebx, b
idiv ebx
mov res, edx

; И это мантра

call exit

end main