%include 'in_out.asm'
section .data

msga db 'Введите A: ',0h
msgb db 'Введите B: ',0h
msgc db 'Введите C: ',0h
msg1 db "Наименьшее число: ",0h
section .bss
min resb 10
A resb 10 ; резервируем место не
B resb 10 ; только под B,
C resb 10 ; но и под A и C
section .text
global _start
_start:
; ---------- Ввод A, B, C
mov eax,msga
call sprint
mov ecx,A
mov edx, 10
call sread
mov eax,msgb
call sprint
mov ecx,B
call sread
mov eax,msgc
call sprint
mov ecx,C
call sread
; ---------- Преобразование A,B,C из символов в числа
mov eax,A
call atoi ; Вызов подпрограммы перевода символа в число
mov [A],eax ; запись преобразованного числа в 'A'
mov eax,B
call atoi
mov [B],eax
mov eax,C
call atoi
mov [C],eax
; ---------- Записываем A+B+C в переменную 'min'
; сумма значений точно больше каждого из них
mov ecx,[A]
add ecx,[B]
add ecx,[C]
mov [min],ecx

jmp cmp_a_b ; к сравнению AvB

min_below_c:
jmp fin

c_below_min:
mov eax,[C]
mov [min],eax
jmp fin

a_below_b:
mov eax,[A]
mov [min],eax   ; min(A, B) = A
jmp cmp_min_c   ; к сравнению min v C

b_below_a:
mov eax,[B]
mov [min],eax   ; min(A, B) = B
jmp cmp_min_c   ; к сравнению min v C

cmp_min_c:      ; min(A, B)vC
mov eax,[C]
cmp [min],eax
jb min_below_c  ; min(A, B)<C
jg c_below_min  ; min(A, B)>C

cmp_a_b:        ; AvB
mov eax,[B]
cmp [A],eax
jb a_below_b    ; A<B
jg b_below_a    ; A>B

; ---------- Вывод результата
fin:
mov eax, msg1
call sprint ; Вывод сообщения 'Наименьшее число: '
mov eax,[min]
call iprintLF ; Вывод 'min(A,B,C)'
call quit ; Выход
