.model small
.stack 100h
.data
.code
main proc
    mov ah,2
    mov dl,'?'
    int 21h
    
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov cx,0
    mov ah,1
    int 21h
    
    repeat:
    cmp al,13
    je new_line
    push ax
    inc cx
    int 21h
    jmp repeat
    
    new_line:
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    jcxz exit
    
    top:
    jcxz exit
    pop dx
    int 21h
    dec cx
    jmp top
    
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main