
(LOOP)
    // 24576 = keyboard の入力を受け付けるメモリ
    @KBD
    D=M

    // キーボードの入力がない(=0)なら INPUT へ
    // そうでないなら NOINPUT へ
    @INPUT
    D;JEQ
    @NOINPUT
    0;JMP
    
(INPUT)
    // レジスタ 0 を 色の値にする
    @R0
    M=-1 // 16 bit の -1 は 1111111111111111 であり, 1 word をすべて埋める値
    @DRAW
    0;JMP

(NOINPUT)
    @R0
    M=0
    @DRAW
    0;JMP

(DRAW)
    // 縦が 256 pixel で 横が 512 pixel
    // 16pixel = 1 word のため 合計のワード数は 256 * (512/16) = 8192 words
    // words に 8191 というリテラル値を入れる (0-index)
    @8191
    D=A
    @words
    M=D 

    // i に SCREEN のアドレス + 8191 を入れる
    @SCREEN
    D=A
    @i
    M=D
    @words
    D=M
    @i
    M=D+M
    
(WORDPAINT)
    @i
    D=M
    @SCREEN
    D=A-D

    // SCREEN - i > 0 なら LOOP に移動する
    @LOOP
    D;JGT 
    
    // R1 に 今計算したいアドレスを入れる
    @i
    D=M
    @R1
    M=D

    @R0
    D=M
    @R1
    A=M
    M=D

    // @i
    // D=M // D = 24576
    // A=D
    // M=-1

    @i
    M=M-1

    @WORDPAINT
    0;JMP
    