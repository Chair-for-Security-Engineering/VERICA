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
xor 9 18  # a1b2 + b2c1
xor 10 17 # a2b1 + b1c2
xor 11 19 # a2b2 + b2c2
xor 16 0 # b1c1 + a1
xor 17 1 # b1c2 + b1
xor 18 5 # b2c1 + b2
xor 19 4 # b2c2 + a2
xor 20 0 # a1c1 + b1c1 + a1
xor 23 4 # a2c2 + b2c2 + a2
xor 24 2 # a1b1 + b1c1 + c1
xor 27 6 # a2b2 + b2c2 + c2
reg 21
reg 22
reg 32
reg 33
reg 28
reg 29
reg 30
reg 31
reg 25
reg 26
reg 34
reg 35
xor 38 36 # x1 + x2
xor 39 37 # x3 + x4
xor 40 41 # y1 + y2
xor 42 43 # y3 + y4
xor 46 44 # z1 + z2
xor 47 45 # z3 + z4
xor 0 3 # t1 + t2
xor 4 7 # t3 + t4
reg 54
reg 55
out 48 0:0
out 50 1:0
out 52 2:0
out 56 3:0
out 49 0:1
out 51 1:1
out 53 2:1
out 57 3:1