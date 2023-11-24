JMP INIZIO
visualizza_ris MACRO AL,sup
         
        
        MOV DX,OFFSET C
        MOV AH,09H
        mov sup,al
        INT 21H   


        mov dl,sup   
        add dl,30h
        mov ah,02h
        int 21h   

        int
    ENDM
 
INIZIO: 

mov dx,offset A
mov ah,09h
int 21h


MOV AH,01H
INT 21H

MOV BH,AL 

mov dx,offset B
mov ah,09h
int 21h


MOV AH,01H
INT 21H

MOV BL,AL
   
SUB BH,30H
SUB BL,30H        
   
    CMP BH,BL
    JGE MAGGIORE
    
    CMP BH,BL
    JL MINORE
    
MAGGIORE:
        MOV VAL1,BH
        MOV VAL2,BL
        MOV AH,0
        mov al,val1
        DIV VAL2
     visualizza_ris al,sup
    
MINORE:
        MOV VAL1,BL
        MOV VAL2,BH
        MOV AH,0
       mov al,val2
        DIV VAL1
      visualizza_ris al,sup
   

int

A DB 0AH,0DH,"Inserisci il primo valore $"
B DB 0AH,0DH,"Inserisci il secondo valore $"  
C DB 0AH,0DH,"IL RISULTATO E: $"

sup db 0
VAL1 DB 0
VAL2 DB 0