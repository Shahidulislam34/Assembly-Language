.model small
.stack 100h
.data
msg1 dw "shourov$"
msg2 dw "Shahidul$"

big macro str1,str2
    mov ax,offset str1
    cmp ax,str2
    jg below
    mov ax,offset str2
    below:
    mov ah,9
    mov dx,offset str1
    int 21h
    endm

.code
main proc
    mov ax, @data
    mov ds, ax
    
    big msg1,msg2 
    
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main