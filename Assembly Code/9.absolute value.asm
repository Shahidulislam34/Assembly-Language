.model small
.stack 100h
.data
.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov ax, -8
    cmp ax, 0
    jl change
    jmp print
    
    change:
    neg ax
    
    print:
    add ax, 48
    mov ah, 2
    mov dx, ax
    int 21h
    
    exit:
    mov ah, 4ch
    int 21h
    main endp
end main