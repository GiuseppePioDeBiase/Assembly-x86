

MOV DX,DividendoH ;dividendo
MOV AH,DividendoL ;a 32 bit
DIV Divisore      ;quoziente in AX e resto in DX 

DividendoH DW 19H
DividendoL DW 10H       
Divisiore  DW 30H