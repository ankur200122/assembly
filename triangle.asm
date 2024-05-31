.model small
.stack 100h 
.data
msg db 'enter number of lines $'
var db ?
   
.code 
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,msg
    int 21h
     
    mov ah,1
    int 21h 
    sub al,48
    mov var,al
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov cx,0
    mov cl,var
    mov bl,1
    
    top:  
    mov cx,bx 
    
    l1:
    cmp bl,var
    jg exit
    mov ah,2
    mov dl,'*'
    int 21h
    loop l1
    
    inc bl
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    loop top
    
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main


