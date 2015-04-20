.486
.model flat, stdcall

include stdlib.inc
include stdio.inc
includelib msvcrt.lib

.DATA
  message db "Please, number: ", 0
  
  input db "%u", 0
  
  num dd ?
  sum dd ?
  output db 13, 10, "NewNum:  %u", 13, 10, 0
  
.CODE

main:
  push offset message
  call printf
  add esp, 4

  push offset num
  push offset input
  call scanf
  add esp, 8
 
  mov eax, num 
  add eax, 10  
  mov sum, eax
  
  push sum
  push offset output
  call printf
  add esp, 12  
  
  call exit  
END main

