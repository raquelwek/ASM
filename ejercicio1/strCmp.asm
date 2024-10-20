section .data
TEXTO: db "Longitud en ASM: %d", 10,0

section .text

global strCmp

strCmp:
    mov rax, 0
    .while:
        mov dl, [rdi + rax] ;caracter del char a
        mov al, [rsi + rax] ;caracter del char b
        cmp dl, 0           ; chequear si es nulo
        je .finA
        cmp al, 0
        je .bMenorQueA
        cmp dl, al
        jne .noIguales
        inc rax
        jmp .while
    .finA: 
        cmp al, 0           ; terminan al mismo tiempo?
        je .iguales
        jmp .aMenorQueB
    .noIguales:
        cmp dl,al
        jl .aMenorQueB
        jmp .bMenorQueA
    .iguales:
        mov rax, 0
        jmp .fin
    .aMenorQueB:
        mov rax, -1
        jmp .fin
    .bMenorQueA:
        mov rax, 1
        jmp .fin
    .fin:
        ret