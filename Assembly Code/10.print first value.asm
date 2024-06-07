.model small
.stack
.data
.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov al,50
    mov bl,55
    mov dl,al
    
    cmp al, bl
    jl print
    
    mov dl, bl
    jmp print 
    
    
    print:
    mov ah, 2
    int 21h
    
    exit:
    mov ah, 4ch
    int 21h
    main endp
end main