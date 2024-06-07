.model small
.stack 100h
.data
.code
main proc
    mov ax,@data
    mov ds,ax
    
    ;set first and last bit
    mov dx,00101011b;
    or dx,129d
    mov ah,2
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main