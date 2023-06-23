    jmp program
// --- stack start ---
    0
    0
    0
    0
    0
    0
    0
    0
    0
    0
    0
    0
    0
    0
    0
    0
    0
    0
    0
    0
// --- stack end ---
// --- symbol table start ---
// arr - 21
    0
    0
    0
    0
    0
// len - 26
    0
// r - 27
    0
// j - 28
    0
// i - 29
    0
// x - 30
    0
// --- symbol table end ---
// --- constant pool start ---
// 31
    21
// 32
    0
// 33
    4
// 34
    1
// 35
    23
// 36
    2
// 37
    3
// 38
    7
// 39
    12
// 40
    5
// 41
    29
// 42
    28
// 43
    30
// 44
    27
// 45
    26
// --- constant pool end ---
// --- program start ---
program:
    ld 31
    st 2
    ld 32
    st 3
    ld 2
    add 3
    st 2
    ld 33
    st 3
    ld 3
    str 2
    ld 31
    st 2
    ld 34
    st 3
    ld 2
    add 3
    st 2
    ld 35
    st 3
    ld 3
    str 2
    ld 31
    st 2
    ld 36
    st 3
    ld 2
    add 3
    st 2
    ld 34
    st 3
    ld 3
    str 2
    ld 31
    st 2
    ld 37
    st 3
    ld 2
    add 3
    st 2
    ld 38
    st 3
    ld 3
    str 2
    ld 31
    st 2
    ld 33
    st 3
    ld 2
    add 3
    st 2
    ld 39
    st 3
    ld 3
    str 2
    ld 40
    st 2
    ld 2
    st 26
    ld 34
    st 2
    ld 2
    st 29
    jmp L0
L1:
    ld 31
    st 2
    ld 41
    st 3
    ldr 3
    st 3
    ld 2
    add 3
    st 2
    ldr 2
    st 2
    ld 2
    st 30
    ld 41
    st 2
    ldr 2
    st 2
    ld 34
    st 3
    ld 2
    sub 3
    st 2
    ld 2
    st 28
    ld 32
    st 2
    ld 2
    st 27
    ld 42
    st 2
    ldr 2
    st 2
    ld 32
    st 3
    ld 34
    st 4
    ld 3
    sub 4
    st 3
    ld 2
    sub 3
    brz L4
    brs L4
    jmp L2
L4:
    jmp L3
L2:
    ld 31
    st 2
    ld 42
    st 3
    ldr 3
    st 3
    ld 2
    add 3
    st 2
    ldr 2
    st 2
    ld 43
    st 3
    ldr 3
    st 3
    ld 2
    sub 3
    brz L7
    brs L7
    jmp L5
L7:
    jmp L6
L5:
    ld 34
    st 2
    ld 2
    st 27
L6:
L3:
    jmp L8
L9:
    ld 31
    st 2
    ld 42
    st 3
    ldr 3
    st 3
    ld 34
    st 4
    ld 3
    add 4
    st 3
    ld 2
    add 3
    st 2
    ld 31
    st 3
    ld 42
    st 4
    ldr 4
    st 4
    ld 3
    add 4
    st 3
    ldr 3
    st 3
    ld 3
    str 2
    ld 42
    st 2
    ldr 2
    st 2
    ld 34
    st 3
    ld 2
    sub 3
    st 2
    ld 2
    st 28
    ld 32
    st 2
    ld 2
    st 27
    ld 42
    st 2
    ldr 2
    st 2
    ld 32
    st 3
    ld 34
    st 4
    ld 3
    sub 4
    st 3
    ld 2
    sub 3
    brz L12
    brs L12
    jmp L10
L12:
    jmp L11
L10:
    ld 31
    st 2
    ld 42
    st 3
    ldr 3
    st 3
    ld 2
    add 3
    st 2
    ldr 2
    st 2
    ld 43
    st 3
    ldr 3
    st 3
    ld 2
    sub 3
    brz L15
    brs L15
    jmp L13
L15:
    jmp L14
L13:
    ld 34
    st 2
    ld 2
    st 27
L14:
L11:
L8:
    ld 44
    st 2
    ldr 2
    st 2
    ld 34
    st 3
    ld 2
    sub 3
    brz L9
    ld 31
    st 2
    ld 42
    st 3
    ldr 3
    st 3
    ld 34
    st 4
    ld 3
    add 4
    st 3
    ld 2
    add 3
    st 2
    ld 43
    st 3
    ldr 3
    st 3
    ld 3
    str 2
    ld 41
    st 2
    ldr 2
    st 2
    ld 34
    st 3
    ld 2
    add 3
    st 2
    ld 2
    st 29
L0:
    ld 41
    st 2
    ldr 2
    st 2
    ld 45
    st 3
    ldr 3
    st 3
    ld 2
    sub 3
    brs L1
    ld 32
    st 2
    ld 2
    st 29
    jmp L16
L17:
    ld 31
    st 2
    ld 41
    st 3
    ldr 3
    st 3
    ld 2
    add 3
    st 2
    ldr 2
    st 2
    ld 2
    mao 
    ld 41
    st 2
    ldr 2
    st 2
    ld 34
    st 3
    ld 2
    add 3
    st 2
    ld 2
    st 29
L16:
    ld 41
    st 2
    ldr 2
    st 2
    ld 45
    st 3
    ldr 3
    st 3
    ld 2
    sub 3
    brs L17
// --- program end ---
