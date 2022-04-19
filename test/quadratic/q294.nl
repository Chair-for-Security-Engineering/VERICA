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
xor 8 2  # a1b1 + c1
xor 10 6 # a2b1 + c2
xor 12 3 # a1c1 + d1
xor 14 7 # a2c1 + d2
reg 9
reg 11
reg 16
reg 17
reg 13
reg 15
reg 18
reg 19
xor 22 20 # z1 + z2
xor 23 21 # z3 + z4
xor 26 24 # t1 + t2
xor 27 25 # t3 + t4
reg 0
reg 1
reg 4
reg 5
out 32 0:0
out 33 1:0
out 28 2:0
out 30 3:0
out 34 0:1
out 35 1:1
out 29 2:1
out 31 3:1