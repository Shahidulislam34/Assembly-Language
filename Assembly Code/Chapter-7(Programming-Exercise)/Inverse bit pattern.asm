.model small
.stack 100h
.data 
.code
main proc
    mov ax, @data
    mov ds, ax
    
    
    mov al, 11000000b
    mov bl, 0 
    
    
    mov cx, 8
    for:
        shl al, 1
        rcr bl, 1
        loop for
        
    mov ah, 2
    add bl, 48
    mov dl, bl
    int 21h
    
    
    exit:
    mov ah, 4ch
    int 21h
    main endp
end main