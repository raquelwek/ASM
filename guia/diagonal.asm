section .text

global diagonal
;**** LOGICA A IMPLEMENTAR ****
;void diagonal(short* matriz, short n, short* vector);
;   for i = 0; i < n; i ++
;       j = i *n + i
;       aux = matriz[j]
;       vector[i] = aux
; machete
; en rdi -> matriz, en rsi n, rdx -> vector
diagonal:
    push rbp
    mov rbp, rsp

    xor rax, rax        ;utilizar registro no volatil como contador
    xor r8, r8          ;Utilizo r8 para acceder a los elms de diagonal -> j
    .loop:
        cmp rax,rsi
        jge .fin 
                            ;obtener j
        mov r8, rsi         ; j = n
        imul r8, rax        ; j = j*i
        add r8, rax         ; j = j + i

                                                        
        mov r9w, word [rdi + r8*2]   ;aux = matriz[j]
        ;nota: se multiplica por 2 por ser un array de
        ;shorts que ocupan 2 bytes, por ende para accder
        ;a la siguiente posicion multiplicamos el contador por el tam del elem
        ;arrancando desde la posicion de mem del objeto (rdi)
        mov [rdx +rax*2], r9w        ;vector[i] = aux

        inc rax
        jmp .loop
    .fin:
    pop rbp
    ret