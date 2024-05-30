.model small
.stack 100h
.data
a db 'Enter first number:$'  
b db 'Enter second number:$' 
c db 'Enter third number:$' 
.code
main proc
    
 ; mov ah,1
  ;int 21h
  ;mov bl,al
  ;int 21h
  ;mov bh,al
  ;int 21h
  ;mov cl,al
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
    
  
  
  cmp bl,bh
  jl lebel1 
  jge lebel2
  
lebel1:
   cmp bh,cl
  jg out1
  jmp out2
  out1:
  mov ah,2
  mov dl,bh
  int 21h
  jmp exit
  
out2:
  mov ah,2
  mov dl,cl
  int 21h
  jmp exit 
  
lebel2:
  cmp bl,cl
  jg out3
  jmp out4
 out3:
  mov ah,2
  mov dl,bl
  int 21h  
  jmp exit
  
 out4:
  mov ah,2
  mov dl,cl
  int 21h
  jmp exit
  
  
  
  
  exit:
    mov ah,4ch
    int 21h
    main endp
end main
  
  
    