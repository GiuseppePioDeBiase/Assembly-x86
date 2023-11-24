  


StampaStringa macro sorry
    MOV DX,OFFSET sorry
    mov ah,09h
    int 21h 
   endm     
   
  
StampaStringa MSG1  
MOV dx,offset BUF
mov ah,0ah
int 21h 

mov dx, offset newline 
    mov ah, 09h         
    int 21h  
    
     e

StampaStringa BUF

    

 
  
  

MAX EQU 20

BUF DB MAX+1,$,MAX+1 DUP(?) 

IBUF DB MAX DUP('$')

newline db 10, 13, '$' 


MSG1 DB "Inserire una stringa di max 20 caratteri:$"

MSG2 DB "La stringa invertita e: $"  

msg3 db "Il valore inserito e: $"

ACAPO DB 13,10,'$'

