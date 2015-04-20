.486
.model flat, stdcall

include stdlib.inc
include stdio.inc
includelib msvcrt.lib

.DATA
  message db "Please, numbers: ", 0
  
  in1 db "%d", 0
  in2 db "%d", 0
  a dd ?
  b dd ?
  gcd dd ?
  output db 13, 10, "gcd: %d", 13, 10, 0
  
.CODE

main:

  push offset message
  call printf
  add esp, 4

;  ввод чисел
  push offset a
  push offset in1
  call scanf
  add esp, 8
  push offset b
  push offset in2
  call scanf
  add esp, 8
  
;  ищем gcd
mov eax,a
mov ebx,b

@loop:
cmp ebx,0
je zero

not_zero: 
cdq
idiv ebx
mov eax,ebx
mov ebx,edx

jmp @loop

zero:
mov gcd,eax

  
;  вывод  
  push gcd
  push offset output
  call printf
  add esp, 12  
  
  call exit  
END main

