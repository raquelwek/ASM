
section .TEXTO
extern strlen

global intercambiar

;Dado un string, devuelve un string in-place con los caracteres en orden inverso.
;void intercambiar(char* str);
;   i = 0
;   j = strlen(str) - 1
;   while i < j:
;       str[i], str[j] = str[j], str[i]
;       i++
;       j--

intercambiar:
    push rbp
    mov rbp, rsp

    push r12
    push r13
    mov r12, rdi    ; almaceno puntero al primer char

    call strlen      ; guarda len en rax
    mov r13, rax     ; j = strlen(str)

    cmp r13, 0
    je .fin
    dec r13          ; j = j - 1
    xor r8, r8       ; usar r8 como contador i

.loop:
    mov r9b, byte [r12 + r13]  ; str[j] en r9b
    mov r10b, byte [r12 + r8]  ; str[i] en r10b
    mov [r12 + r8], r9b        ; str[i] = str[j]
    mov [r12 + r13], r10b      ; str[j] = str[i]
    inc r8
    dec r13
    cmp r8, r13
    jb .loop                    ; continuar si i < j

.fin:
    pop r13
    pop r12
    pop rbp
    ret


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
