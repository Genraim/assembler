.486

.MODEL Flat, StdCall ; StdCall - мантра

; Это некоторые мантры

INCLUDE stdlib.inc

INCLUDELIB msvcrt.lib

.DATA
a dw 1 

.CODE

main:
mov ax, a
not ax
add ax, 1

; И это мантра

call exit

end main