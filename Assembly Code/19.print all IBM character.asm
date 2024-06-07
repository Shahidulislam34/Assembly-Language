.model small
.stack 200h
.data
.code
main proc
    mov ax, @data
    mov ds, ax
    
    sub dx, dx
    mov ah, 2
    
    while:
    cmp dx, 256d
    je exit
    int 21h
    inc dx
    jmp while
    
    exit:
    mov ah, 4ch
    int 21h
    main endp
end main