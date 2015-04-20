.486

.MODEL Flat, StdCall ; StdCall - мантра

; Это некоторые мантры

INCLUDE stdlib.inc

INCLUDELIB msvcrt.lib

.DATA
a dd 1 

.CODE

main:
mov eax, a
not eax
add eax, 1

; И это мантра

call exit

end main