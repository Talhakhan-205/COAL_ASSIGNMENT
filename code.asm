.MODEL SMALL
.STACK 100H

.DATA
    NUM1   DB 05H      ; First number  = 5
    NUM2   DB 03H      ; Second number = 3
    RESULT DB ?        ; Will store the answer here

.CODE

MAIN PROC
    MOV AX, @DATA      ; Set up data segment
    MOV DS, AX

    MOV AL, NUM1       ; AL = 5  (Input)
    MOV BL, NUM2       ; BL = 3  (Input)

    ADD AL, BL         ; AL = 5 + 3 = 8  (Process)

    MOV RESULT, AL     ; Store result in memory  (Output)

    MOV AH, 4CH
    INT 21H            ; End program

MAIN ENDP
END MAIN


