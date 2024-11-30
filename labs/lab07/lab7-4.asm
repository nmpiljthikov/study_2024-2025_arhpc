%include 'in_out.asm'
section .data
msgx db 'Введите x: ',0h
msga db 'Введите a: ',0h
msg1 db "Результат: ",0h

section .bss
x resb 10 ; резервируем место под x
a resb 10 ; под а
res resb 10 ; и под результат

section .text
global _start
_start:
; ------ Ввод значений х, а
mov eax,msgx
call sprint
mov ecx,x
mov edx,10
call sread
mov eax,msga
call sprint
mov ecx,a
call sread
; ------ Преобразование х, а в числа
mov eax,x
call atoi ; вызов подпрограммы перевода символа в число
mov [x],eax ; запись преобразованного числа в 'x'
mov eax,a
call atoi
mov [a],eax
; ------ Логическая часть программы
mov eax, [a]
mov ebx, [x]
cmp ebx, eax ; сравнение а и х
je a_equals_x
jne a_nequals_x

a_equals_x:
mov ecx, [x]
mov [res], ecx ; ecx := x
mov ecx, [a]
add [res], ecx ; res := res + a = x + a
jmp fin

a_nequals_x:
mov ecx, [x]
mov [res], ecx ; res := x
mov ecx, 5
mov eax, [res] ; eax := res
mul ecx        ; eax := res * 5 = 5x
mov [res], eax ; res := eax = 5x
jmp fin

fin:
mov eax, msg1
call sprint ; Вывод сообщения 'Результат: '
mov eax,[res]
call iprintLF ; Вывод res
call quit ; Выход