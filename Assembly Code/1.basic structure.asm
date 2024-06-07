.model small
.stack
.data
nam db "Md. Shahidul Islam shourov$"
n db ?
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,nam
    int 21h
      
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ah,9
    lea dx,nam
    int 21h
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ah,1
    int 21h
    mov dl,al
    
    mov ah,2
    int 21h

    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
    