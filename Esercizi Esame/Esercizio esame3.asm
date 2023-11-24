
FUNZIONE MACRO PHR,VAL
          
          MOV DX,OFFSET PHR
          MOV ah,09h
          INT 21h 
          
          mov dl,VAL   
          add dl,48
          mov ah,02h
          int 21h
          

ENDM


        MOV SI,0
        MOV CX,N
        MOV AL,A[SI]
        MOV DL,AL
CICLO:   
         MOV BL,A[SI+1]
         MOV AL,A[SI]
         CMP AL,BL
         JGE MAGGIORE  
         JL MINORE
         

MAGGIORE: 
         CMP MAX,AL
         JL FUNZ
         JMP FINE
            
       
MINORE: MOV MIN,AL
        JMP FINE

       
FUNZ:   MOV MAX,AL 
        JMP FINE

FINE:

      INC SI

    LOOP CICLO
    
   
          
          FUNZIONE PHR1,MAX
          FUNZIONE PHR2,MIN
          INT


PHR1 DB 0AH,0DH,"Il massimo e: $"
PHR2 DB 0AH,0DH,"Il minimo e: $"
A DB 3,5,2,4,3,5,2,8,0,1
N EQU 10
MIN DB ?
MAX DB ?
ACapo DB 10,13,'$'