.model small
.stack
.data
.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov ah, 1
    int 21h
    
    mov ah, 2
    mov dl, 10
    int 21h
    mov dl, 13
    int 21h
    
    cmp al,1
    je odd
    
    cmp al, 3
    je odd
    
    cmp al, 2
    je even
    
    cmp al, 4
    je even
    
    
    odd:
    mov dl, "o"
    jmp print
    
    even:
    mov dl, "e"
    jmp print
    
    print:
    mov ah, 2
    mov dh, 50
    int 21h
    
    
    exit:
    mov ah, 4ch
    int 21h
    main endp
end main