.model small
.stack 100h
.data
fir db 10,13,"The sum of $"
mid db " and $"
lst db " is :$"
a db ?
b db ?
sum db ?
.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov ah,2
    mov dl,'?'
    int 21h
    
    mov ah,1
    int 21h
    mov a, al
    
    int 21h
    mov b, al
    
    mov bl,a
    add bl,b
    mov sum,bl
    sub sum,48
    
    mov ah,9
    lea dx,fir
    int 21h
    
    mov ah,2
    mov dl,a
    int 21h
    
    mov ah,9
    lea dx,mid
    int 21h
    
    mov ah,2
    mov dl,b
    int 21h
    
    mov ah,9
    lea dx,lst
    int 21h
    
    mov ah,2
    mov dl,sum
    int 21h
    
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
    
    