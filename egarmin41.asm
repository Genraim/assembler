.486
.MODEL Flat, StdCall
INCLUDE stdlib.inc
INCLUDELIB msvcrt.lib

.DATA
len EQU 4
mas1 dd 1,-2,3,4
mas2 dd 5,6,7,8
res_mas dd ?,?,?,?
res_scal dd 0

.CODE
main:
mov ecx, len
mov esi, offset mas1
mov edi, offset mas2
	@curcle:
	mov eax, [esi]
	mov edx, [edi]
	add eax, edx
	push eax
	mov eax, [esi]
	imul edx
	add res_scal, eax
	add esi, type mas1
	add edi, type mas2
	loop @curcle
mov esi, offset res_mas
mov ecx, len
	@sum:
	pop [esi+ecx*4-4]
	loop @sum

;@sum_exit:
;pop ebx
;pop eax
;mov [res_mas], eax
;add res_scal, ebx
;loop @sum_exit

call exit
end main