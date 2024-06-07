.model small
.stack
.data
star db '*'
.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov ah, 2
    mov dl, star
    mov cx, 80
    
    loop:
    jcxz exit
    mov bl, dl
    
    mov dl, 10
    int 21h
    mov dl, 13
    int 21h
    
    mov dl, bl
    int 21h
    dec cx
    
    jmp loop
    
    exit:
    mov ah, 4ch
    int 21h
    main endp
end main