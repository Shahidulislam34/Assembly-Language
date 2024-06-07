.model small
.stack 100h
.data
.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov cx, 0
    mov ah, 1
    int 21h
    
    while:
    cmp al, 13
    je print
    inc cx
    int 21h
    jmp while
    
    print:
    mov ah, 2
    mov dl, 10
    int 21h
    mov dl, 13
    int 21h
    mov dx, cx
    add dx, 48
    int 21h
    
    exit:
    mov ah, 4ch
    int 21h
    main endp
end main