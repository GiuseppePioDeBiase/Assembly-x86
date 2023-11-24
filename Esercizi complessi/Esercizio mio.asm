RILASCIO MACRO CRT    ;CRT=CARATTERE
MOV DX,OFFSET CRT    ;da ouput frase
MOV AH,09H
INT 21H
ENDM 

RILASCIO A
RILASCIO SPAZIO
RILASCIO B
RILASCIO C
RILASCIO D
RILASCIO E
RILASCIO SPAZIO
RILASCIO F 

MOV AX,0

MOV AH,01H    ;prende in input
INT 21H
MOV BL,AL

RILASCIO X
MOV AH,01H    ;prende in input
INT 21H
SUB AL,48
MOV VAL1,AL
 

RILASCIO Y
MOV AH,01H    ;prende in input
INT 21H
SUB AL,48
MOV VAL2,AL

SUB BL,48

CMP BL,1
JE OPZIONE1
CMP BL, 2
JE OPZIONE2
CMP BL,3
JE OPZIONE3
CMP BL,4
JE OPZIONE4



OPZIONE1:
        RILASCIO Z
        MOV AL,VAL1
        ADD AL,VAL2
        MOV DL,AL
        ADD DL,48
        MOV AH,02H
        INT 21H
        
        JMP FINE
        
        
OPZIONE2:
        RILASCIO Z
        MOV AL,VAL1
        SUB AL,VAL2
        MOV DL,AL
        ADD DL,48
        MOV AH,02H
        INT 21H
        
        JMP FINE
        
   

OPZIONE3:
        RILASCIO Z
        MOV AL,VAL1
        MUL VAL2
        MOV DL,AL
        ADD DL,48
        MOV AH,02H
        INT 21H
        
        JMP FINE
        
        
OPZIONE4:
        RILASCIO Z
        MOV AL,VAL1
        
        DIV VAL2
        MOV DL,AL
        ADD DL,48
        MOV AH,02H
        INT 21H
        
        JMP FINE
        

FINE:MOV AH, 4CH
    INT 21H   

                         
                            
A DB 0AH,0DH,"INSERISCI UNA SCELTA: $" 
B DB 0AH,0DH,"1. SOMMA DUE VALORI $"
C DB 0AH,0DH,"2. DIFFERENZA DUE VALORI $"
D DB 0AH,0DH,"3. PRODOTTO DUE VALORI $"
E DB 0AH,0DH,"4. QUOZIENTE DUE VALORI $"
F DB 0AH,0DH,"LA TUA SCELTA -> $"
SPAZIO DB 0AH,0DH,"$"
VAL1 DB ?
VAL2 DB ?
X DB 0AH,0DH,"INSERISCI PRIMO VALORE: $"
Y DB 0AH,0DH,"INSERISCI SECONDO VALORE: $"
Z DB 0AH,0DH,"IL RISULTATO E: $"                                           
                                           
               
               
