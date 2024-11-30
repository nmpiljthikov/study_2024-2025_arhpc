%include 'in_out.asm'
SECTION .data
msg db "Результат: ",0
msg1 db "Функция: f(x)=4x-3",0
SECTION .text
global _start
_start:
mov eax, msg1
call sprintLF

pop ecx 
pop edx 
sub ecx,1 
mov esi,0 

next:
cmp ecx,0h
jz _end

pop eax

call atoi

mov ebx, 4
mul ebx    
sub eax, 3 
add esi, eax
mov eax, esi

loop next 

_end:
mov eax, msg 
call sprint
mov eax, esi
call iprintLF
call quit 