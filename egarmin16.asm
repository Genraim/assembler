.486
.MODEL Flat, StdCall
INCLUDE stdlib.inc
INCLUDELIB msvcrt.lib

.DATA
a DD 15
del_two DD 2
del_three DD 3
pre_al DB ?

.CODE
main:

xor edx, edx
mov eax, a
cdq
idiv del_two
mov pre_al, dl
mov eax, a
cdq
idiv del_three
mov al, pre_al
mov ah, dl

call exit
end main