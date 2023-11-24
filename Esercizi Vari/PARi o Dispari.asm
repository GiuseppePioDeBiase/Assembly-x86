
mov dx,offset phr1
mov ah,09h
int 21h

mov ah,01h
int 21h
          
sub al,30h          
mov val1,al
           

mov bl,val1
div number

cmp ah,0
je pari
jmp dispari


pari: mov dx,offset phr2
      mov ah,09h
      int 21h
      
      mov dl,val1
      add dl,30h
      mov ah,02h
      int 21h
      jmp fine
      
dispari: mov dx,offset phr3
      mov ah,09h
      int 21h
      
      mov dl,val1
      add dl,30h
      mov ah,02h
      int 21h
      jmp fine

fine:hlt

phr1 db 10,13,"Inserisci un valore$"  
phr2 db 10,13,"PARI-$"
phr3 db 10,13,"DISPARI-$"
val1 db ?
number db 2