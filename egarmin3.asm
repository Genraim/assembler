.486

.MODEL Flat, StdCall ; StdCall - мантра

; Это некоторые мантры

INCLUDE stdlib.inc

INCLUDELIB msvcrt.lib

.DATA
n dd 10
f dd ?


.CODE

main:
mov ebx, 1 ;счетчик
mov eax, 1 ;произведение
mov ecx, n
add ecx, 1
@circle:
	cmp ebx, ecx
	jz @exit
	mul ebx
	add ebx, 1
	jmp @circle
@exit:
mov f, eax

; И это мантра

call exit

end main