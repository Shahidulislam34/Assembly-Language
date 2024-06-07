.model small
.stack 100h
.data
msg1 db "and operations:$" 
msg2 db "or operations:",10,13,"$"  ;at a time take new line
msg3 db "xor operations:",10,13,"$"
.code
main proc
    mov ax,@data
    mov ds,ax
     
    ;message1
    mov ah,9
    lea dx,msg1
    int 21h
    
    ;newline
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
           
    ;operation1
    mov ah,2
    mov dx,1111110101010b ;dx contain 16 bits and dl,dh contain 8 bits
    and dx,0000000001001b
    add dx,48
    int 21h
    
    ;newline
    mov dl,10
    int 21h
    mov dl,13
    int 21h
     
    ;message2 and newline
    mov ah,9
    lea dx,msg2
    int 21h
    
    ;operation2
    mov dx,0010b
    or dx,0100b
    mov ah,2
    add dx,48
    int 21h
    
    ;newline
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    ;message3 and newline
    mov ah,9
    lea dx,msg3
    int 21h
    
    ;operation3
    mov ah,2
    mov dx,1010b
    xor dx,1101b
    add dx,48
    int 21h
    
    
    mov ah,4ch
    int 21h
    main endp
end main