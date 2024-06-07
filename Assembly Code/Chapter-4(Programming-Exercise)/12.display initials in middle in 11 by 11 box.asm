.model small
.stack 100h
.data
eleven db "***********",10,13,"$"
four db "****$"
fir db ?
mid db ?
lst db ?

.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,2
    mov dl,'?'
    int 21h
    
    mov ah,1
    int 21h
    mov fir,al
    int 21h
    mov mid,al
    int 21h
    mov lst,al
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov cx,11
    mov ah,9
    
    for_loop:
    jcxz beep
    cmp cx,6
    je middle_line
    lea dx,eleven
    int 21h
    dec cx
    jmp for_loop
    
    middle_line:
    mov ah,9
    lea dx,four
    int 21h
    mov ah,2
    mov dl,fir
    int 21h
    mov dl,mid
    int 21h
    mov dl,lst
    int 21h
    mov ah,9
    lea dx,four
    int 21h
    dec cx
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    mov ah,9
    jmp for_loop
    
    beep:
    mov ah,2
    mov dl,7
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main