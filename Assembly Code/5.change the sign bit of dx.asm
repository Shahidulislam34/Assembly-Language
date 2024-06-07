.model small
.stack 100h
.data
.code
main proc
    mov ax,@data
    mov ds,ax
    
    ;change the sign bit of dx
    mov dx,1000010101010110b
    xor dx,8000h
    mov ah,2
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main