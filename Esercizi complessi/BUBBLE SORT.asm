
MOV SI,0
MOV DI,1


CICLO: 
      CMP SI,9
      JE ESCI
      
      
      
CICLOINT: MOV AL,V[SI]
          CMP AL,V[DI]
          JL INCREMENTA
          XCHG AL,V[DI]
          MOV V[SI],AL
          
INCREMENTA:
          CMP DI,9
          JE AZZERA
          INC DI
          JMP CICLOINT

AZZERA:    INC SI
          MOV DI,SI
          INC DI
          JMP CICLO
            
ESCI: MOV SI,0
      MOV AH,09
      MOV DX, OFFSET RIS
      INT 21H
     
     
RIPETI:  CMP SI,10
         JE FINE
         MOV AH,02H
         MOV DL,V[SI]
         INT 21H
         INC SI
         JMP RIPETI

FINE: MOV AH,4CH
      INT 21H
      
      
      
      
      
      
      
      


V DB '9654321780'
RIS DB 'VETTORE: $'