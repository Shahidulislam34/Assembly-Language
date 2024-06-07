.model small
.stack 100h
.data
.code
main proc
    mov ax,@data
    mov ds,ax
    
    ;Upper to lower
    mov ah,1
    int 21h
    mov cl,al
    add cl,32d
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ah,2
    mov dl,cl
    int 21h
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    ;Lower to upper
    mov ah,1
    int 21h
    mov cl,al
    sub cl,32d
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov dl,cl
    int 21h
    
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main