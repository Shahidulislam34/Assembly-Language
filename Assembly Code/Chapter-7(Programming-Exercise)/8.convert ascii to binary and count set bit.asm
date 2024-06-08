.model small
.stack
.data
.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov ah,1
    int 21h
    mov bh,al
    mov bl,0
    mov cx,8
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    for:
    jcxz print
    dec cx
    test bh,10000000b
    jnz one
    jz zero
    
    one:
    inc bl
    mov dl,49
    mov ah,2
    int 21h
    shl bh,1
    jmp for
    
    zero:
    mov dl,48
    mov ah,2
    int 21h
    shl bh,1
    jmp for
    
    
    print:
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    mov dl,bl
    add dl,48
    int 21h
    
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main