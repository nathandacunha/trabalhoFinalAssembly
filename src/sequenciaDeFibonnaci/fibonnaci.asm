

    LD E, 5 ; R0 = E - R0 representa a quantidade de termos 
    LD B, 0 ; R1 = B
    LD C, 1 ; R2 = C - 
    LD D, 0 ; R3 = D

laco:
    LD A, E ; A é uma variável auxiliar - A = R0
    CP 0
    JR Z, fim ; while(r0 > 0)

    LD A, B ; A = R1
    CP 16 
    JR nc, fim ; if(r1 >= 16) { estourou 4 bits } - 2^4 = 16
    OUT ($10), A ; é o printf("%d\n", r1);
    CALL atraso

    LD A, B ; A = R1
    ADD A, C ; A = r1+r2
    LD D, A ; r3 = r1+r2
    LD B, C ; r1 = r2
    LD C, D ; r2 = r3

    DEC E ; r0--;
    JR laco

fim:
    HALT

atraso:
    LD H, 255
atraso1:
    LD L, 255
atraso2:
    DEC L
    JR NZ, atraso2
    DEC H
    JR NZ, atraso1
    RET


