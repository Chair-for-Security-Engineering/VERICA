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
xor 12 1  # a1c1 + b1
xor 14 5  # a2c1 + b2
xor 16 3  # b1c1 + d1
xor 18 7  # b2c1 + d2
xor 8 12  # a1b1 + a1c1
xor 9 13  # a1b2 + a1c2
xor 10 14 # a2b1 + a2c1
xor 11 15 # a2b2 + a2c2
xor 24 2  # a1b1 + a1c1 + c1
xor 27 6  # a2b2 + a2c2 + c2
reg 13
reg 15
reg 20
reg 21
reg 25
reg 26
reg 28
reg 29
reg 17
reg 19
reg 22
reg 23
xor 32 30 # y1 + y2
xor 33 31 # y3 + y4
xor 36 34 # z1 + z2
xor 37 35 # z3 + z4
xor 40 38 # t1 + t2
xor 41 39 # t3 + t4
reg 0
reg 4
out 48 0:0
out 42 1:0
out 44 2:0
out 46 3:0
out 49 0:1
out 43 1:1
out 45 2:1
out 47 3:1