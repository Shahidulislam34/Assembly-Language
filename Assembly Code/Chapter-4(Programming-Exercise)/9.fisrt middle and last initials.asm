.model small
.stack 100h
.data
prompt db "ENTER THREE INITIALS: $"
a db ?
b db ?
c db ?
.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov ah,9
    lea dx, prompt
    int 21h
    
    mov cx, 1
    mov ah,1
    
    for:
    int 21h
    cmp al,13
    je print
    cmp cx,1
    je first
    cmp cx,2
    je second
    cmp cx,3
    je third
    
    first:
    mov a,al
    inc cx
    jmp for
    
    second:
    mov b,al
    inc cx
    jmp for
    
    third:
    mov c,al
    inc cx
    jmp for
    
    print:
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov dl,a
    int 21h
    
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov dl,b
    int 21h
    
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov dl,c
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main