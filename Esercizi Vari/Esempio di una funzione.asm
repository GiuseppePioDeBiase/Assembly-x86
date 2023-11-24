   
MOV var1,10
MOV var2,23
CALL assegna
hlt   
   
var1 db ?
var2 db ?
      
assegna PROC
    MOV AL,var1
    MOV var2,AL
    RET
assegna ENDP
