section .data
TEXTO: db "Longitud en ASM: %d", 10,0

section .TEXTO

global strLen

strLen:
    mov rax, 0 ;contador
    .while:
        mov dl, [rdi+rax]
        inc rax
        cmp dl, 0
        jne .while
    
    dec rax
    .fin:
        ret


