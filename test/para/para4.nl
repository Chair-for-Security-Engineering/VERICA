in 0 0:0 # a0
in 1 0:1 # a1
in 2 0:2 # a2
in 3 0:3 # a3
in 4 0:4 # a4
in 5 1:0 # b0
in 6 1:1 # b1
in 7 1:2 # b2
in 8 1:3 # b3
in 9 1:4 # b4
ref 10
ref 11
ref 12
ref 13
ref 14
and 0 5 # a0b0
and 1 6 # a1b1
and 2 7 # a2b2
and 3 8 # a3b3
and 4 9 # a4b4
xor 15 10 # a0b0 + r0
xor 16 11 # a1b1 + r1
xor 17 12 # a2b2 + r2
xor 18 13 # a3b3 + r3
xor 19 14 # a4b4 + r4
reg 20
reg 21
reg 22
reg 23
reg 24
and 0 9 # a0b4
and 1 5 # a1b0
and 2 6 # a2b1
and 3 7 # a3b2
and 4 8 # a4b3
xor 25 30 # a0b0 + r0 + a0b4
xor 26 31 # a1b1 + r1 + a1b0
xor 27 32 # a2b2 + r2 + a2b1
xor 28 33 # a3b3 + r3 + a3b2
xor 29 34 # a4b4 + r4 + a4b3
reg 35
reg 36
reg 37
reg 38
reg 39
and 4 5 # a4b0
and 0 6 # a0b1
and 1 7 # a1b2
and 2 8 # a2b3
and 3 9 # a3b4
xor 40 45 # a0b0 + r0 + a0b4 + a4b0
xor 41 46 # a1b1 + r1 + a1b0 + a0b1
xor 42 47 # a2b2 + r2 + a2b1 + a1b2
xor 43 48 # a3b3 + r3 + a3b2 + a2b3
xor 44 49 # a4b4 + r4 + a4b3 + a3b4
reg 50
reg 51
reg 52
reg 53
reg 54
xor 55 14 # a0b0 + r0 + a0b4 + a4b0 + r4
xor 56 10 # a1b1 + r1 + a1b0 + a0b1 + r0
xor 57 11 # a2b2 + r2 + a2b1 + a1b2 + r1
xor 58 12 # a3b3 + r3 + a3b2 + a2b3 + r2
xor 59 13 # a4b4 + r4 + a4b3 + a3b4 + r3
reg 60
reg 61
reg 62
reg 63
reg 64
and 0 8 # a0b3
and 1 9 # a1b4
and 2 5 # a2b0
and 3 6 # a3b1
and 4 7 # a4b2
xor 65 70 # a0b0 + r0 + a0b4 + a4b0 + r4 + a0b3
xor 66 71 # a1b1 + r1 + a1b0 + a0b1 + r0 + a1b4
xor 67 72 # a2b2 + r2 + a2b1 + a1b2 + r1 + a2b0
xor 68 73 # a3b3 + r3 + a3b2 + a2b3 + r2 + a3b1
xor 69 74 # a4b4 + r4 + a4b3 + a3b4 + r3 + a4b2
reg 75
reg 76
reg 77
reg 78
reg 79
and 3 5 # a3b0
and 4 6 # a4b1
and 0 7 # a0b2
and 1 8 # a1b3
and 2 9 # a2b4
xor 80 85 # a0b0 + r0 + a0b4 + a4b0 + r4 + a0b3 + a3b0
xor 81 86 # a1b1 + r1 + a1b0 + a0b1 + r0 + a1b4 + a4b1
xor 82 87 # a2b2 + r2 + a2b1 + a1b2 + r1 + a2b0 + a0b2
xor 83 88 # a3b3 + r3 + a3b2 + a2b3 + r2 + a3b1 + a1b3
xor 84 89 # a4b4 + r4 + a4b3 + a3b4 + r3 + a4b2 + a2b4
out 90
out 91
out 92
out 93
out 94