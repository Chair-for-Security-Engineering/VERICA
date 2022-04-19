in 0 0:0 # a[0]
in 1 0:1 # a[1]
in 2 0:2 # a[2]
in 3 0:3 # a[3]
in 4 0:4 # a[4]
in 5 1:0 # b[0]
in 6 1:1 # b[1]
in 7 1:2 # b[2]
in 8 1:3 # b[3]
in 9 1:4 # b[4]
ref 10 # r0
ref 11 # r1
ref 12 # r2
ref 13 # r3
ref 14 # r4
ref 15 # r5
ref 16 # r6
ref 17 # r7
ref 18 # r8
ref 19 # r9
and 5 0 # a[0]b[0]
and 6 0 # a[0]b[1]
and 7 0 # a[0]b[2]
and 8 0 # a[0]b[3]
and 9 0 # a[0]b[4]
and 5 1 # a[1]b[0]
and 6 1 # a[1]b[1]
and 7 1 # a[1]b[2]
and 8 1 # a[1]b[3]
and 9 1 # a[1]b[4]
and 5 2 # a[2]b[0]
and 6 2 # a[2]b[1]
and 7 2 # a[2]b[2]
and 8 2 # a[2]b[3]
and 9 2 # a[2]b[4]
and 5 3 # a[3]b[0]
and 6 3 # a[3]b[1]
and 7 3 # a[3]b[2]
and 8 3 # a[3]b[3]
and 9 3 # a[3]b[4]
and 5 4 # a[4]b[0]
and 6 4 # a[4]b[1]
and 7 4 # a[4]b[2]
and 8 4 # a[4]b[3]
and 9 4 # a[4]b[4]
xor 21 10 # a[0]b[1] + r0
xor 25 10 # a[1]b[0] + r0
xor 22 11 # a[0]b[2] + r1
xor 30 11 # a[2]b[0] + r1
xor 23 12 # a[0]b[3] + r2
xor 35 12 # a[3]b[0] + r2
xor 24 13 # a[0]b[4] + r3
xor 40 13 # a[4]b[0] + r3
xor 27 14 # a[1]b[2] + r4
xor 31 14 # a[2]b[1] + r4
xor 28 15 # a[1]b[3] + r5
xor 36 15 # a[3]b[1] + r5
xor 29 16 # a[1]b[4] + r6
xor 41 16 # a[4]b[1] + r6
xor 33 17 # a[2]b[3] + r7
xor 37 17 # a[3]b[2] + r7
xor 34 18 # a[2]b[4] + r8
xor 42 18 # a[4]b[2] + r8
xor 39 19 # a[3]b[4] + r9
xor 43 19 # a[4]b[3] + r9
reg 20 # a[0]b[0]
reg 26 # a[1]b[1]
reg 32 # a[2]b[2]
reg 38 # a[3]b[3]
reg 44 # a[4]b[4]
reg 45 # a[0]b[1] + r0
reg 46 # a[1]b[0] + r0
reg 47 # a[0]b[2] + r1
reg 48 # a[2]b[0] + r1
reg 49 # a[0]b[3] + r2
reg 50 # a[3]b[0] + r2
reg 51 # a[0]b[4] + r3
reg 52 # a[4]b[0] + r3
reg 53 # a[1]b[2] + r4
reg 54 # a[2]b[1] + r4
reg 55 # a[1]b[3] + r5
reg 56 # a[3]b[1] + r5
reg 57 # a[1]b[4] + r6
reg 58 # a[4]b[1] + r6
reg 59 # a[2]b[3] + r7
reg 60 # a[3]b[2] + r7
reg 61 # a[2]b[4] + r8
reg 62 # a[4]b[2] + r8
reg 63 # a[3]b[4] + r9
reg 64 # a[4]b[3] + r9
xor 65 70
xor 90 72
xor 91 74
xor 92 76
out 93 0:0
xor 66 71
xor 95 78
xor 96 80
xor 97 82
out 98 0:1
xor 67 73
xor 100 79
xor 101 84
xor 102 86
out 103 0:2
xor 68 75
xor 105 81
xor 106 84
xor 107 88
out 108 0:3
xor 69 77
xor 110 83
xor 111 87
xor 112 89
out 113 0:4