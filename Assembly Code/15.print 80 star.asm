.model small
.stack
.data
star db '*'
.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov ah, 2
    mov bl, star
    mov cx, 80
    
    print:
    mov ah, 2
    mov dl, bl
    int 21h
    
    mov dl,10
    int 21h
    mov dl, 13
    int 21h
    
    loop print
    
    exit:
    mov ah, 4ch
    int 21h
    main endp
end main