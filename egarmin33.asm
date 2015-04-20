;3
.486
.MODEL Flat, StdCall 
INCLUDE stdlib.inc
INCLUDELIB msvcrt.lib
.DATA

len EQU 5
mas dw 2, 7, 0, 4, 3
sum dw ?
prod dw ?

.CODE
main:
mov ax, 0
mov esi, offset mas
mov ecx, len
	@sum:
	add ax, [esi]
	add esi, type mas
	loop @sum
mov sum, ax
mov ax, 1
mov esi, offset mas
mov ecx, len
	@prod:
	mul word ptr [esi]
	add esi, type mas
	loop @prod
mov prod, ax

call exit
end main