.model small
.stack
.data
.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov ah, 1
    int 21h
    
    cmp al,'Y'
    je true
    cmp al, 'y'
    je true
    
    jmp exit
    
    true:
    mov ah, 2
    mov bl, al
    mov dl, 10d
    int 21h
    mov dl, 13d
    int 21h
    
    mov dl, bl
    int 21h
    
    exit:
    mov ah, 4ch
    int 21h
    main endp
end main