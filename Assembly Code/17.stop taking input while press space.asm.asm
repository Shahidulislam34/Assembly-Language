.model small
.stack 100h
.data
.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov ah,1
    
    repeat:
    int 21h
    cmp al, 32
    je exit
    jmp repeat
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main