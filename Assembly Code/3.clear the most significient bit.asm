.model small
.stack 100h
.data
.code
main proc
    mov ax,@data
    mov ds,ax
    
    ;clear sign bit
    mov dx,10000011b
    and dx,127d
    add dx,48d
    mov ah,2
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main