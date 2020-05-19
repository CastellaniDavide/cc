TITLE  

DOSSEG
.MODEL small

; definizione segmento di stack
.STACK 100h

; definizione segmento dati
.DATA
A    db ?
; definizione segmento codice

.CODE
start:
       mov   ax, @DATA             ; inizializzazione registro
       mov   ds, ax                ; di segmento DS



       mov BL, 31h                 ;Inizializzo variabile A attraverso il registro BL
       mov [A], BL

       inc [A]                     ;incremento la variabile

       mov DL, [A]                 ; sposto il valore della variabile in AL

       mov AH, 02h                 ;stampo a video il numero
       int 21h


       ;Ripeto con valore iniziale 1
       
       mov BL, 1h                  ;Inizializzo variabile A attraverso il registro BL
       mov [A], BL

       inc [A]                     ;incremento la variabile

       mov DL, [A]                 ; sposto il valore della variabile in AL

       mov AH, 02h                 ;stampo a video il numero
       int 21h
       

       mov AH, 4Ch                 ; ritorno al sistema operativo
       int 21h

; eventuali procedure
       
       END   start

