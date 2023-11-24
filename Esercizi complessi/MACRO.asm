;NON FUNZIONA
;GUARDA SOLO PER MACRO


somma_vet MACRO vett,lung,somma
        MOV AL,0
        MOV SI,0
        MOV CX,lung
        call cycle
ciclo:  ADD AL,vett[SI]
        INC SI
        LOOP ciclo
        
        MOV somma,AL
ENDM


    
    
    
;inizio programma
somma_vet vett1,lung1,somma1
somma_vet vett2,lung2,somma2
hlt    
    
    
    
    
;Definizione di variabili e costanti

lung1 EQU 10
lung2 EQU 20


vett1 DB lung1 dup(10)
vett2 DB lung2 dup(20)
somma1 DB ?
somma2 DB ?