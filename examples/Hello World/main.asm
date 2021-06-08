; start .data section
section .data
  text db "Hello, World!", 10
; db: 'define bytes'
; 'text': name assigned to the memory address where the bytes where previously defined

section .text
  global _start

_start:
  mov rax, 1
  mov rdi, 1
  mov rsi, text
  mov rdx, 14 
  syscall
  ; syscall: 'system call'

  mov rax, 60
  mov rdi, 0
  syscall