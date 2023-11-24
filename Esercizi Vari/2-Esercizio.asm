;Dato un array di 5 elementi contenente valori interi copiare l'array in un'altro array


        
        MOV SI,0
        MOV CX,N
next:   MOV AL,V1[SI]
        MOV V2[SI],AL
        INC SI

        LOOP next
        
        ret


N EQU 5
V1 DB 4,5,3,6,2
V2 DB N DUP(?)
