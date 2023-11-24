;riempimento di un vettore con interi da 0 a 99
 
 
 RIEMPI PROC
    
        MOV AL,VAL1
        MOV SI,0
        MOV CX,N
next:   MOV V1[SI],AL
        INC SI
        INC AL
        mov dl,al   
        add dl,48
        mov ah,02h
        int 21h
        sub dl,48
        mov al,dl 

        LOOP next 
           
        
         
                
RIEMPI ENDP
 
TOT PROC
      MOV AL,0
      MOV SI,1
      MOV CX,N
prox: ADD AL,V1[SI]
      INC SI
      LOOP PROX
      MOV SOMMA,AL
      mov dl,SOMMA   
      add dl,48
      mov ah,02h
      int 21h
      ret  
      
TOT ENDP
      
 
 
         
   MOV VAL1,0
   MOV SI,0
   MOV CX,N   
   CALL RIEMPI
   CALL TOT  
   HLT  
         
N EQU 4
V1 DB N DUP(?)
VAL1 DB 0
SOMMA DB ?

 
