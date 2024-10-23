.model small
.stack 100h
.data
promt db "Enter the string:",10,13,"$"
nocap db 10, 13, "No capital found$"
fstcap db 10,13, "First capital is:$"
lstcap db "Last capital is:$"
st db 91
en db 64
.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov ah,9
    lea dx, promt
    int 21h
    
    mov ah,1
    
    repeat:
    int 21h
    cmp al, 13
    je print
    
    cmp al,'A'
    jl repeat
    cmp al,'Z'
    jg repeat
    
    cmp al, st
    jnl check_Last
    mov st, al
    
    check_Last:
    cmp al, en
    jng repeat
    mov en, al
    jmp repeat
    
    print:
    cmp st, 91
    je Not_Found
    mov ah,9
    lea dx,fstcap
    int 21h
    mov ah, 2
    mov dl, st
    int 21h 
    
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ah,9
    lea dx, lstcap
    int 21h
    mov ah, 2
    mov dl, en
    int 21h
    jmp exit
    
    
    Not_Found:
    mov ah,9
    lea dx, nocap
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main