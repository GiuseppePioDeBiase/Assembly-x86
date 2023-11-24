;riempire due vettori con dati in input
; e controllare se sono uguali        

JMP inizio
 
RIEMPINUM MACRO MSG,NUM,Spc 
    
    MOV DX,OFFSET MSG
    MOV AH,09H
    INT 21H

    MOV AH,01H
    INT 21H

    SUB AL,30H

    MOV NUM,AL
    
    MOV DX,OFFSET Spc 
       MOV AH,09H
       INT 21H
 
ENDM

 
 
 ASSEGNA1 PROC
        MOV SI,0
        MOV CL,N
        MOV DX,OFFSET MSG3
         
CICLO: 
       MOV AH,09H
       INT 21H
       
       MOV AH,01H
       INT 21H
       
       SUB AL,30h
       MOV A[SI],AL
       
       INC SI
       LOOP CICLO
       
       MOV DX,OFFSET SPAZIO 
       MOV AH,09H
       INT 21H
       
       RET
       
 ENDP
 
 ASSEGNA2 PROC
        MOV SI,0
        MOV CL,M
        MOV DX,OFFSET MSG4
         
CYCLE: 
       MOV AH,09H
       INT 21H
       
       MOV AH,01H
       INT 21H
       
       SUB AL,30h
       MOV B[SI],AL
       
       INC SI
       LOOP CYCLE
       
       RET
 ENDP
 
 Controllo MACRO A,B,N,M
      mov dl,M
      CMP N,dl
      JNE FINE
      JE COMPARE
     
      
  COMPARE:
         MOV SI,0
         mov BX,0
         mov CL,N
   CYCLE1:
         mov al,a[si]
         mov bl,b[bx]
          
          cmp al,bl
          jne FINE2
          
          inc si
          inc di
          LOOP CYCLE1
         
        jmp FINE3    
         

     ENDM


inizio:
 
 RIEMPINUM MSG1,N,spazio
 RIEMPINUM MSG2,M,spazio
 CALL ASSEGNA1
 CALL ASSEGNA2
 Controllo A,B,N,M
 
FINE:
    MOV DX,OFFSET MSG9
    MOV AH,09H
    INT 21H  
    HLT
    
FINE2:
 MOV DX,OFFSET MSG8
    MOV AH,09H
    INT 21H  
    HLT
    
FINE3:
 MOV DX,OFFSET MSG7
    MOV AH,09H
    INT 21H  
    HLT
 


N DB ?
M db ?    
A DB 100 DUP(?)
B DB 100 DUP(?)
MSG1 DB 0AH,0DH,"Inserisci la grandezza del primo vettore: $"
MSG2 DB 0AH,0DH,"Inserisci la grandezza del secondo vettore: $"
MSG3 DB 0AH,0DH,"Inserisci il valore del primo array: $"
MSG4 DB 0AH,0DH,"Inserisci il valore del secondo array: $"
SPAZIO DB 0AH,0DH,"$"
MSG9 DB 0AH,0DH,"N ed M non sono uguali di conseguenza non confrontabili $"
MSG8 DB 0AH,0DH,"Non sono uguali$"
MSG7 DB 0AH,0DH,"Sono uguali$"