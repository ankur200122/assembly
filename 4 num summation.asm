.model small                                  
.stack 100h
.data
a db 'Enter first number:$'  
b db 'Enter second number:$' 
c db 'Enter third number:$' 
d db 'Enter fourth number:$'
res db 'Sum of fourth numbers:$'  
.code
main proc
    mov ax,@data
    mov ds,ax 
     
    ;display a
    
    mov ah,9
    lea dx,a
    int 21h 
     
    ;take input a
    
    mov ah,1
    int 21h 
    mov bh,al
    
    ;new line 
    
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    
    ;display b 
    
    mov ah,9
    lea dx,b
    int 21h 
    
    ;take input b
    
    mov ah,1
    int 21h 
    mov bl,al
    
    ;new line
    
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h   
    
    ;display c
    
    mov ah,9
    lea dx,c
    int 21h 
     
    ;take input c
    
    mov ah,1
    int 21h 
    mov cl,al
    
    ;new line 
    
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    
    ;display d
    
    mov ah,9
    lea dx,d
    int 21h 
     
    ;take input d
    
    mov ah,1
    int 21h 
    mov ch,al
    
    ;new line 
    
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    
    
    ;display res
     
    mov ah,9
    lea dx,res
    int 21h 
    
    ;add a , b and c
        
    add bl,bh 
    sub bl,48 
    mov a,bl

    add a,cl
    sub a,48
    mov bl,a

    add bl,ch
    sub bl,48
    mov b,bl
     
    
    
    ;display addition of a,b and c
    
    mov ah,2
    mov dl,b
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main