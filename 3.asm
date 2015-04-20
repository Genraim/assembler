.486

.MODEL Flat, StdCall ; StdCall - мантра

; Это некоторые мантры

INCLUDE stdlib.inc

INCLUDELIB msvcrt.lib

.DATA
a DD 0A0000000H
b DD 0

.CODE

main:

mov eax, a

add eax, eax

mov ebx, b

dec ebx

; И это мантра

call exit

end main