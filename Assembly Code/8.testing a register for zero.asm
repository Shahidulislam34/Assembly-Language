.model small
.stack 100h
.data
eq db "equal",10,13,"$"
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ax,0
    cmp ax,0
    jge equal
    jmp exit
    
    equal:
    mov ah,9
    lea dx,eq
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main