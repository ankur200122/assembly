.model small
.stack 100h
.data  

msg1 db 10,13,'1.add$'
msg2 db 10,13,'2.sub$'
msg3 db 10,13,'3.mul$'
msg4 db 10,13,'4.div$'
msg5 db 10,13,'choose one:$'
msg6 db 10,13,10,13,'enter 1st number:$'
msg7 db 10,13,'enter 2nd number:$'
msg8 db 10,13,10,13,'the result is:$' 


num1 db ?
num2 db ?
result db ?
.code
main proc
    mov ax,@data
    mov ds,ax 
    
    lea dx,msg1
    mov ah,9
    int 21h
    
    lea dx,msg2
    mov ah,9
    int 21h
    
    lea dx,msg3
    mov ah,9
    int 21h
    
    lea dx,msg4
    mov ah,9
    int 21h 
    
    
    
    lea dx,msg5
    mov ah,9
    int 21h
    
  
    mov ah,1
    int 21h
    mov bh,al
    sub bh,48
    
    cmp bh,1
    je add
    
    cmp bh,2
    je sub
     
    cmp bh,3
    je mul
    
    cmp bh,4
    ;je div
    
    
  add:
    lea dx,msg6  ;enter 1st number
    mov ah,9
    int 21h 
    
    mov ah,1
    int 21h
    mov bl,al
    
    lea dx,msg7    ;enter 2nd number
    mov ah,9
    int 21h 
    
    mov ah,1
    int 21h
    mov cl,al
    
    add al,bl
    mov ah,0
    aaa
    
    
    mov bx,ax 
    add bh,48
    add bl,48 
    
    lea dx,msg8
    mov ah,9
    int 21h
    
    
    mov ah,2
    mov dl,bh
    int 21h
    
    mov ah,2
    mov dl,bl
    int 21h
    
    ;lea dx,msg
    ;mov ah,9
    ;int 21h 
    
    ;jmp exit_p 
    
    
   sub:
 
    lea dx,msg6  ;enter 1st number
    mov ah,9
    int 21h 
    
    mov ah,1
    int 21h
    mov bl,al
    
    lea dx,msg7    ;enter 2nd number
    mov ah,9
    int 21h 
    
    mov ah,1
    int 21h
    mov cl,al
    
    sub bl,cl
    add bl,48
    
    lea dx,msg8
    mov ah,9
    int 21h
    
    
    mov ah,2
    mov dl,bl
    int 21h
    
    
    
    ;lea dx,msg
    ;mov ah,9
    ;int 21h
    
    
    
    ;jmp exit_p 
    
    
    
    
   mul:
 
    lea dx,msg6
    mov ah,9
    int 21h
    
    
    mov ah,1
    int 21h
    sub al,30h
    mov num1,al
    
    
    lea dx,msg7
    mov ah,9
    int 21h 
    
    
    mov ah,1
    int 21h
    sub al,30h
    mov num2,al
    
    
    mul num1
    mov result,al
    aam  
    
    
    add ah,30h
    add al,30h
    
    
    mov bx,ax 
    
    
    lea dx,msg8
    mov ah,9
    int 21h 
    
    mov ah,2
    mov dl,bh
    int 21h
    
    mov ah,2
    mov dl,bl
    int 21h
    
    ;lea dx,msg
    ;mov ah,9
    ;int 21h 
    
    
    
   ; jmp exit_p  
    
   
   
   
   
   
   div:
    lea dx,msg6
    mov ah,9
    int 21h
    
    
    mov ah,1
    int 21h
    sub al,30h
    mov num1,al
    
    
    lea dx,msg7
    mov ah,9
    int 21h 
    
    
    mov ah,1
    int 21h
    sub al,30h
    mov num2,al
    
    mov cl,num1
    mov ch,00
    mov ax,cx  
    
    div num2
    mov result,al
    mov ah, 00
    aad  
    
    
    add ah,30h
    add al,30h
    
    
    mov bx,ax 
    
    
    lea dx,msg8
    mov ah,9
    int 21h 
    
    mov ah,2
    mov dl,bh
    int 21h
    
    mov ah,2
    mov dl,bl
    int 21h
    
    
    ;lea dx,msg
    ;mov ah,9
    ;int 21h 
    
    
    ;exit_p:
    
       ; lea dx,msg
       ; mov ah,9
       ; int 21h  
  
    
   
         
        
    exit:
    
    mov ah,4ch
    int 21h
    main endp
end main
