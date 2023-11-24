;azzeramento dei valori negativi di un vettore
             

            MOV SI,0
            MOV CX,0 

ciclo:      CMP A[SI],0  
            JLE negativo 
            NOP
            JMP continua   
negativo:   MOV A[SI],0

continua:   INC SI
            LOOP ciclo
            
            RET          
             
                       
A DB 3, 5, -12, -21, 6
