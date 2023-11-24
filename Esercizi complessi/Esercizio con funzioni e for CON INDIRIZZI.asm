; riempimento del vettore VETT1 con interi da 0 a 99
        MOV CX, LUNG ; CX = dimensione del vettore
        MOV SI,0
        MOV DL,0
riempi1: MOV VETT1[SI],DL
        INC SI
        INC DL
        LOOP riempi1

; riempimento del vettore VETT2 con i primi 100 interi pari

        MOV CX, LUNG ; CX = dimensione del vettore
        MOV SI,0
        MOV DL,0
riempi2: MOV VETT2[SI],DL
        INC SI
        ADD DL,2
        LOOP riempi2
        LEA BX, VETT1
    CALL SOM_VETT ; chiamata di procedura, somma degli elementi di VETT1
        MOV SOMMA1, AL
        LEA BX, VETT2
    CALL SOM_VETT ; chiamata di procedura, somma degli elementi di VETT2
        MOV SOMMA2, AL
        hlt ; fine programma

; definizione di variabili e costanti

LUNG EQU 100
VETT1 DB LUNG DUP (?)
VETT2 DB LUNG DUP (?)
SOMMA1 DB ?
SOMMA2 DB ?

; definizione di procedure
SOM_VETT PROC ; procedura di somma vettore
        MOV CX, LUNG
        XOR AX,AX ; azzeramento di AX
ciclo: ADD AL, [BX]
        ADD BX, 1 ; aggiornamento dell’indice del vettore
       LOOP ciclo
       RET ; ritorno alla procedura chiamante
SOM_VETT ENDP ; fine procedura somma vettore