// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/4/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
// The algorithm is based on repetitive addition.

//// Replace this comment with your code.

@i
M=1

@result
M=0

// R0 回繰り返す
(LOOP)
    @i
    D=M
    
    // R0 のアドレス (= アドレス番号 0 ) を A レジスタに格納する
    @R0
    D=D-M
    
    @END
    D;JGT
    
    // R1 のアドレス (= アドレス番号 1 ) を A レジスタに格納する
    // R1 メモリの値を D レジスタに一次格納して、その後 result に格納する
    @R1
    D=M
    @result
    M=D+M
    
    @i
    M=M+1

    @LOOP
    0;JMP

(END)
    // result メモリアドレスに入っている値を
    // R2 メモリアドレスの位置に格納する
    @result
    D=M
    @R2
    M=D

    @END
    0;JMP