;Date deu variabile di tipo byte A e B contenenti interi senza segno memorizzare in a il valore minore e 
;in B il valore maggiore  


        MOV AH,A
        MOV AL,B
        CMP AH,AL
        JB MINORE
        MOV A,AL
        MOV B,AH         
        JMP FINE       
        MINORE:
        MOV A,AH
        MOV B,AL
  
  FINE:RET         


A DB 5
B DB 2