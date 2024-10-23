.model small
.stack 100h
.data
star db "**********",10,13,"$"

.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov cx,8
    mov ah,9
    
    for_loop:
    jcxz exit
    lea dx,star
    int 21h
    dec cx
    jmp for_loop
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main