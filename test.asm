.486

.MODEL Flat, StdCall ; StdCall - мантра

; Это некоторые мантры

INCLUDE stdlib.inc

INCLUDELIB msvcrt.lib

.DATA
n dd 3
m dd ?


.CODE
main:
mov eax, n
add eax, 1
mov m, eax
; И это мантра

call exit

end main