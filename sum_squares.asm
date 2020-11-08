; Sum of squares from 1 to n in assembly

section .data

; CONSTANTS

SUCCESS       equ   0
SYS_exit      equ   60  ; call code for system exit

; Vars

n             dd    10
sumOfSquares  dq    0

section   .text
global    _start
_start:

; for (i=1; i<=n; i++)
;   sumOfSquares += i^2;

    mov     rbx, 1          ; i
    mov     ecx, dword [n]
sumLoop:
    mov     rax, rbx
    mul     rax           ; i^2
    add     qword [sumOfSquares], rax
    inc     rbx
    loop    sumLoop

last:
    mov     rax, SYS_exit
    mov     rdi, SUCCESS
    syscall

