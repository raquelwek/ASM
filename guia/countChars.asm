section .data

section .text 
global countChars

countChars:
    mov rax, 0 ;contador
    mov rcx, 0 ;conteo de indices
    
    ;rdi primer param s puntero a char (string)
    ;rsi segundo param c un char que se encuentra en su parte baja (sil)
    .while:
        mov dl, [rdi + rcx] ;visitar toda la cadena conforme a incremento rcx
        cmp dl, 0           ;evaluar si es el fin del string
        je .fin
        
        inc rcx
        cmp dl,sil
        jne .while
        inc rax
        jmp .while
    
    .fin:
        ret

