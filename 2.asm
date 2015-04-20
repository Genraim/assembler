.486

.MODEL Flat, StdCall ; StdCall - мантра

; Это некоторые мантры

INCLUDE stdlib.inc

INCLUDELIB msvcrt.lib

.DATA
av DD 1
bv DD 2
cv DD ?

.CODE

main:

mov eax, av

add eax, bv

mov cv, eax

; И это мантра

call exit

end main