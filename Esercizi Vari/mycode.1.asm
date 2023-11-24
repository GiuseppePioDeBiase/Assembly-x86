


mov al,pippo
add al,topolino


mov dl,al   
add dl,48
mov ah,02h
int 21h     



pippo db 5
topolino db 4