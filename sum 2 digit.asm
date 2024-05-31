.model small                                  
.stack 100h
.data
a db 'Enter first number:$'  
b db 'Enter second number:$' 
c db 'Enter third number:$' 
res db 'Sum of three numbers:$'   
rem db ?
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
    sub al,48
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
    sub al,48
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
    sub al,48
    mov cl,al
    
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
    ;sub bl,48 
    mov ch,bl
    add ch,cl
    ;sub ch,48 
    
    mov al,ch             
    
    
    mov ah,0
    mov bl,10
    div bl ; al = quotient, ah = remainder
    mov rem,ah
    
    ;print "Addition is: " 
    mov ah,2 
    mov dl,al
    add dl,48
    ;mov ah,2
    int 21h
     
    mov ah,2
    mov dl,rem
    add dl,48
    ; mov ah,2
    int 21h

    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main