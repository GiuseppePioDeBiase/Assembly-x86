MOV DX,OFFSET A
MOV AH,09H
INT 21H

MOV AH,01H
INT 21H 

MOV BL,AL 

MOV DX,OFFSET B
MOV AH,09H
INT 21H

MOV AH,01H
INT 21H
       
MOV BH,AL

SUB BH,30H
SUB BL,30H


MOV DX,OFFSET C
MOV AH,09H
INT 21H   

add BH,BL


mov dl,BH   
add dl,48
mov ah,02h
int 21h   

RET







A DB 0AH,0DH,"Inserisci il 1 valore: $"      

B DB 0AH,0DH,"Inserisci il 2 valore: $" 

C DB 0AH,0DH,"Il risultato e: $"

SOMMA DB ?

