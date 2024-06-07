.model small
.stack
.data
gre dw 10, 13,"Greater","Character","$"
ngre dw 10, 13, "Not Greater$"
.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov ah, 1
    int 21h
    
    cmp al, 'A'
    jL false
    cmp al, 'Z'
    jG false
    
    mov ah, 9
    lea dx, gre
    int 21h
    jmp exit
    
    false:
    mov ah, 9
    lea dx, ngre
    int 21h
    
    
    exit:
    mov ah, 4ch
    int 21h
    main endp
end main