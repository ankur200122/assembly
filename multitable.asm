.model small 
.stack 100h 
.data 
    message db 0ah, 0dh, "enter a number: $" 
    notprocess db 0ah, 0dh, "not a valid digit, cannot proces$" 
    again db 0ah, 0dh, "repeat?(y/n): $" 
.code 
 
    main: 
        mov ax, @data 
        mov ds, ax 
         
        lea dx, message 
        mov ah, 09h 
        int 21h 
         
        mov ah, 01h 
        int 21h 
         
        mov ch, 0ah 
        mov cl, 00h       
         
        cmp al, 3ah 
        jge not_pro 
        sub al, 30h 
        mov bh, al 
        mov bl, 01h 
  next: 
                    
        mov dl, 0dh 
        mov ah, 02h 
        int 21h            
         
        mov dl, 0ah 
        mov ah, 02h 
        int 21h            
         
        mov dl, ' ' 
        mov ah, 02h 
        int 21h 
         
         
        mov dl, bh 
        add dl, 30h 
        mov ah, 02h 
        int 21h 
         
        mov dl, ' ' 
        mov dl, '*' 
        mov ah, 02h 
        int 21h 
         
         
        mov al, bl 
        mul bh 
         
        aam 
         
        push ax 
        
         
        mov ah, 00h 
        mov al, bl 
        aaa 
         
         
         
        mov cl, ah 
        mov bl, al 
         
         
        mov dl, cl 
        add dl, 30h 
        mov ah, 02h 
        int 21h 
         
        mov dl, bl 
        add dl, 30h 
        mov ah, 02h 
        int 21h 
         
  result: 
        mov dl, ' '      
        mov dl, '=' 
        mov ah, 02h 
        int 21h 
         
       
         
        pop ax 
         
        mov dh, al 
        mov dl, ah 
        add dl, 30h 
        mov ah, 02h 
        int 21h 
         
        mov dl, dh 
        add dl, 30h 
        mov ah, 02h 
        int 21h 
         
         
       
         
        inc bl 
        dec ch 
        cmp ch, 00h 
        jne next 
        jmp question 
   not_pro: 
        lea dx, notprocess 
        mov ah, 09h 
        int 21h 
         
   question: 
        lea dx, again 
        mov ah, 09h 
        int 21h 
         
        mov ah, 01h 
        int 21h 
         
        or al, 20h 
         
        cmp al, 'y' 
        jne exit 
        jmp main 
   exit:          
        mov ah, 04ch 
        int 21h
          
   end main 
