
section .TEXTO
extern strlen

global intercambiar

;Dado un string, devuelve un string in-place con los caracteres en orden inverso.
;void intercambiar(char* str);
;   for i=0; i < len(str)//2;i++:
;       j = len(str)-1-i
;       str[i], str[j] = str[j], str[i]

intercambiar:
    push rbp
    mov rbp, rsp

    push r12
    push r13
    mov r12, rdi    ;almaceno puntero al primer char
    
    call strlen      ;guarda len en rax
    mov r13, rax     ;r13 = strlen(c)

    mov r11, rax
    shr r11, 1      ;r11 = len(arr)//2
    dec r13         ;r13 = len(arr)-1
    xor r8, r8      ;usar r8 como contador

    .loop:
        mov rax, r13
        sub rax, r8
        mov r9b, BYTE[r12+rax]  ;str[j] en r9b
        mov r10b, BYTE[r12+r8]  ;str[i] en r10b
        mov BYTE[r12+r8], r9b ;str[i] = str[j]
        mov BYTE[r12+rax], r10b  ;str[j] = str[i]
        inc r8
        cmp r8, r11
        jl .loop
    
    pop r13
    pop r12
    pop rbp

strLen:
    push rbp
    mov rbp, rsp
    mov rax, 0 ;contador
    .while:
        mov dl, [rdi+rax]
        inc rax
        cmp dl, 0
        jne .while
    
    dec rax
    .fin:
        pop rbp
        ret
