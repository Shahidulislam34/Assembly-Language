.model small
.stack 100h
.data
he db "ENTER A HEX DIGIT:$"
de db 10, 13,"IN DECIMAL IT IS:$"

main proc
    mov ax, @data
    mov ds, ax
    
    mov ah,9
    lea dx, he
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al
    sub bl,17
    
    mov ah, 2
    mov dl, 10
    int 21h
    mov dl, 13 
    int 21h
    
    mov ah,9
    lea dx,de
    int 21h
    
    mov ah, 2
    mov dl,49
    int 21h
    mov dl, bl
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main