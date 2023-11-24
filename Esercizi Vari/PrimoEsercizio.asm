;Dato un array di 5 byte contenente valori interi, calcolare la somma
;dei suoi elementi e memorizzare il risultato in una variabile



        MOV CX, 5    ;inizializza il contatore
        MOV AL, 0    ;AL conterra la somma
        MOV SI, 0    ;SI indica l'indice dell'array
next:   ADD AL, V[SI]  ;
        INC SI
        LOOP next
        MOV R,AL
fine:   RET
        
        
V DB 4,3,2,1,0
R DB 0
         
         
;ricorda: CX si usa sempre per i contatori
;ricorda: SI viene usato come "grandezza" dell'array
; e come scrivere N=0, V[N]
