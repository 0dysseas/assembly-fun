; Noob assembly example


; Data declarations (.data section)

section   .data

; Constants

EXIT_SUCCESS  equ   0 
SYS_exit      equ   60 ; call code for termination

; Byte vars declaration

bVar1         db    18
bVar2         db    8
bResult       db    0

; Word (2 bytes)  vars declaration

wVar1         dw    18000
wVar2         dw    8000
wResult       dw    0

; DoubleWord (4 bytes)  vars declaration

dVar1         dd    18000000
dVar2         dd    8000000
dResult       dd    0

; QuadWord (4 bytes)  vars declaration

qVar1         dq    18000000
qVar2         dq    8000000
qResult       dq    0


; Code Section (.text)

section       .text
global  _start
_start:

; A basic series of addition for each var type follows

; Byte example
; result = var1 + var2
  mov         al,   byte [bVar1]
  add         al,   byte [bVar2]
  mov         byte  [bResult], al

; Word example
; result = var1 + var2
  mov         ax,   word [wVar1]
  add         ax,   word [wVar2]
  mov         word  [wResult], ax

; DoubleWord example
; result = var1 + var2
  mov         eax,  dword [dVar1]
  add         eax,  dword [dVar2]
  mov         dword [dResult], eax

; QuadWord example
; result = var1 + var2
  mov         rax,  qword [qVar1]
  add         rax,  qword [qVar2]
  mov         qword [qResult], rax


; Terminate

last:
  mov         rax,   SYS_exit
  mov         rdi,   EXIT_SUCCESS
  syscall




