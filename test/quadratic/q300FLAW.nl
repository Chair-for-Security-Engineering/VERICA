in 0 0:0 # a1
in 1 1:0 # b1
in 2 2:0 # c1
in 3 3:0 # d1
in 4 0:1 # a2
in 5 1:1 # b2
in 6 2:1 # c2
in 7 3:1 # d2
and 0 1 # a1b1
and 0 5 # a1b2
and 4 1 # a2b1
and 4 5 # a2b2
and 0 2 # a1c1
and 0 6 # a1c2
and 4 2 # a2c1
and 4 6 # a2c2
and 1 2 # b1c1
and 1 6 # b1c2
and 5 2 # b2c1
and 5 6 # b2c2
xor 12 16 # a1c1 + b1c1
xor 13 17 # a1c2 + b1c2
xor 14 18 # a2c1 + b2c1
xor 15 19 # a2c2 + b2c2
xor 8 16  # a1b1 + b1c1
xor 11 19 # a2b2 + b2c2
xor 20 0 # a1c1 + b1c1 + a1
xor 23 4 # a2c2 + b2c2 + a2
xor 16 0 # b1c1 + a1
xor 28 1 # b1c1 + a1 + b1
xor 19 4 # b2c2 + a2
xor 30 5 # b2c2 + a2 + b2
xor 24 2 # a1b1 + b1c1 + c1
xor 25 6 # a2b2 + b2c2 + c2
reg 26 # x1 = a1c1 + b1c1 + a1
reg 21 # x2 = a1c2 + b1c2
reg 27 # x3 = a2c2 + b2c2 + a2
reg 23 # x4 = a2c2 + b2c2
reg 29 # y1 = b1c1 + a1 + b1
reg 17 # y2 = b1c2
reg 18 # y3 = b2c1
reg 31 # y4 = b2c2 + a2 + b2
reg 32 # z1 = a1b1 + b1c1 + c1
reg 9 # z2 = a1b2
reg 18 # z3 = b2c1
reg 10 # z4 = a2c1
reg 17 # z5 = b1c2 <<< TYPO
reg 33 # z6 = a2b2 + b2c2 + c2
xor 3 0 # a1 + d1
xor 7 4 # a2 + d2
reg 48 # t1
reg 49 # t2
xor 35 34 # x1 + x2
out 52 0:0
xor 39 38 # y1 + y2
out 54 1:0
xor 44 43
xor 56 42 # z1 + z2 + z3
out 57 2:0
out 50 3:0
xor 37 36 # x3 + x4
out 60 0:1
xor 41 40 # y3 + y4
out 62 1:1
xor 46 45
xor 64 47 # z4 + z5 + z6
out 65 2:1
out 51 3:1