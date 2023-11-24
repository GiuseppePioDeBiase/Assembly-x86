        
        MOV DX,OFFSET PHR0
        MOV AH,09H
        INT 21H
        
        MOV DX,OFFSET PHR1
        MOV AH,09H
        INT 21H
        
        MOV AH,01H
        INT 21H 
        
        MOV BH,AL
        
        MOV AH,01H
        INT 21H
        
        MOV BL,AL 
        
        MOV DX,OFFSET PHR2
        MOV AH,09H
        INT 21H
        
        MOV AH,01H
        INT 21H 
        
        MOV CH,AL
        
        MOV AH,01H
        INT 21H
        
        MOV CL,AL
        
        SUB CH,30H
        SUB CL,30H
        SUB BH,30H
        SUB BL,30H 
        
        ADD BL,CL
        CMP BL,10
        JGE RIPORTO
        
SECONDA:
        ADD BH,CH
        CMP BH,10
        JGE RIPORTO1
        JMP FINE
        
        
RIPORTO:
        SUB BL,10
        ADD BH,1
        JMP SECONDA
                   
RIPORTO1:
        SUB BH,10
        ADD VAL3,1
        JMP FINE
        
FINE: 
        MOV DX,OFFSET PHR3
        MOV AH,09H
        INT 21H
         

        MOV Dl,BH
        add dl,30h
        MOV AH,02H
        INT 21H
        
        MOV DL,BL
        ADD DL,30H
        MOV AH,02H
        INT 21H

PHR0 DB 0AH,0DH,"Il valore delle somme non deve essere superiore a 99 $"
PHR1 DB 0AH,0DH,"Inserisci il primo valore: $"
VAL1 DB 0

PHR2 DB 0AH,0DH,"Inserisci il secondo valore: $"
PHR3 DB 0AH,0DH,"La somma dei due valori e:  $"
VAL2 DB 0
VAL3 DB 0