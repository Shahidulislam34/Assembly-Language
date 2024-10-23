.model small
.stack 100h
.data
.code
main proc
    mov ax,@data
    mov ds,ax
    
    ;3 ways to clear a register
    mov ax,0
    sub ax,ax
    xor ax,ax
    
    mov ah,2
    mov dx,ax
    add dx, 48
    int 21h
    
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main