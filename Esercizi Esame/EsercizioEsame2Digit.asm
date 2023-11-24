;Scrivere un programma per acquisire da tastiera un numero e comunicare all'esterno
;un messaggio che indichi se il numero e maggiore o minore di 50.
;A tal fine realizzare i seguenti passi:
;1. inserimento da tastiera del numero (lettura come stringa di caratteri)
;2. conversione della stringa letta nel valore numerico:
;3. confronto del numero ottenuto con 50 e visualizzazione del messaggio    

    MOV DX,OFFSET PHR1
    MOV AH,09H
    INT 21H
    
    MOV AH,01H
    INT 21H

    MOV BH,AL   
    
    MOV AH,01H
    INT 21H

    MOV BL,AL
    SUB BL,30H
    SUB BH,30H
  
    
    CMP BH,5
    JGE MAXDIGIT1 
    JMP  OUTPUT2
       
    
MAXDIGIT1:
         CMP BL,0
    JGE MAXDIGIT2
    JP MINDIGIT1
        
MINDIGIT1:
        JMP OUTPUT2
        
    
MAXDIGIT2:
         JMP OUTPUT
        
  
      
OUTPUT:
MOV DX,OFFSET PHR2  
        MOV AH,09H
        INT 21H
        JMP FINE
        
OUTPUT2:
MOV DX,OFFSET PHR3 
        MOV AH,09H
        INT 21H
        JMP FINE
        
        

FINE:          
        MOV AH, 0
        INT 21H


PHR1 DB 0AH,0DH,"Inserisci un valore: $"
PHR2 DB 0AH,0DH,"E' maggiore di 50$"  
PHR3 DB 0AH,0DH,"E' minore di 50$" 
VAL1 DB ?
