start:
    ld ten
    mao
loop:
    sub two
    add one
    mao
    brz exit
    jmp loop
exit:
    ld iter
    add one
    st iter
    jmp start

ten:
    10

one:
    1

two:
    2

iter:
    0