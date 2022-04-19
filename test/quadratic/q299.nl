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
and 0 3 # a1d1
and 0 7 # a1d2
and 4 3 # a2d1
and 4 7 # a2d2
xor 8 12  # a1b1 + a1c1
xor 9 13  # a1b2 + a1c2
xor 10 14 # a2b1 + a2c1
xor 11 15 # a2b2 + a2c2
xor 8 16  # a1b1 + a1d1
xor 9 17  # a1b2 + a1d2
xor 10 18 # a2b1 + a2d1
xor 11 19 # a2b2 + a2d2
xor 20 1 # a1b1 + a1c1 + b1
xor 23 5 # a2b2 + a2c2 + b2
xor 24 3 # a1b1 + a1d1 + d1
xor 27 7 # a2b2 + a2d2 + d2
xor 20 16 # a1b1 + a1c1 + a1d1
xor 21 17 # a1b2 + a1c2 + a1d2
xor 22 18 # a2b1 + a2c1 + a2d1
xor 23 19 # a2b2 + a2c2 + a2d2
xor 32 2  # a1b1 + a1c1 + a1d1 + c1
xor 35 6  # a2b2 + a2c2 + a2d2 + c2
reg 21
reg 22
reg 28
reg 29
reg 33
reg 34
reg 36
reg 37
reg 25
reg 26
reg 29
reg 30
xor 40 38 # y1 + y2
xor 41 39 # y3 + y4
xor 44 42 # z1 + z2
xor 45 43 # z3 + z4
xor 48 46 # t1 + t2
xor 49 47 # t3 + t4
reg 0
reg 4
out 56 0:0
out 50 1:0
out 52 2:0
out 54 3:0
out 57 0:1
out 51 1:1
out 53 2:1
out 55 3:1