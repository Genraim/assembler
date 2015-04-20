.486

.MODEL Flat, StdCall ; StdCall - мантра

; Это некоторые мантры

INCLUDE stdlib.inc

INCLUDELIB msvcrt.lib

.DATA
a db 1 

.CODE

main:
mov al, a
not al
add al, 1

; И это мантра

call exit

end main