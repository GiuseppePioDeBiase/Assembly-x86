
jmp inizio

converti proc
        mov bl,min 
        add bl,'0'
        mov cl,bl
        mov bl,max
        add bl,'0'
        mov ch,bl
        jmp stampa
    endp

stampastringa macro phr3,phr2
        mov dx,offset phr2
        mov ah,09h
        int 21h
        stampacarattere max 
        
        mov dx,offset phr3
        mov ah,09h
        int 21h
        stampacarattere min  
            
    endm

stampacarattere macro val
        mov dl,val   
        add dl,48
        mov ah, 02h
        int 21h
    endm 

inizio:
       mov cx,N
       mov SI,0
       
for:       
        mov dx, offset phr1
        mov ah,09h
        int 21h
        
        mov ah, 01h
        int 21h
        
        sub al,30h
        mov A[SI],al
         
        inc si 
         
        loop for
        
        mov al,a[0]
        mov max,al
        mov min,al
        
        
        mov cx,N
        mov SI,0

ciclo:
    
        
        mov bl,a[si]
        cmp bl,min
        jl Minore  
        
        mov bl,a[si]
        cmp bl,max
        jg Maggiore
        
        jmp incremento          


Maggiore: mov max,bl
          jmp incremento
          

Minore: mov min,bl
          jmp incremento
          
incremento: inc si
            
                
   
        loop ciclo    
    
   
                
call converti

stampa:stampastringa phr3,phr2
     
              
       hlt
            
            

phr1 db 10,13,"Inserisci i valori: $"
phr2 db 10,13,"Il massimo e: $"
phr3 db 10,13,"Il minimo e: $"
A db N dup(?)
N equ 5
min db ?
max db ?
ACapo db 10,13,"$"
temp db 0