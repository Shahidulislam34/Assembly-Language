.model small
.stack
.data
.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov ax, -1
    
    cmp ax, 0
    jl negative
    jg positive
    jz zero
    
    
    negative:
    mov bx, -1
    jmp print
    
    positive:
    mov bx, 1
    jmp print
    
    zero:
    mov bx, 0
    jmp print
    
    print:
    mov dx, bx
    mov ah, 2
    add dx, 48
    int 21h
    
    exit:
    mov ah, 4ch
    int 21h
    main endp
end main