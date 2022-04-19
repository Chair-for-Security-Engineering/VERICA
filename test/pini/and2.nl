in 0 0:0 # a0
in 1 0:1 # a1
in 2 1:0 # b0
in 3 1:1 # b1
ref 4
and 2 0
and 3 1
xor 5 4
xor 6 4
xor 7 0
xor 8 1
reg 7 # a0b0 + r
reg 8 # a1b1 + r
reg 9 # a0b0 + a0 + r
reg 10 # a1b1 + a1 + r
not 3 # -b1
and 15 11
and 3 13
reg 16
reg 17
xor 19 18
not 2 # -b0
and 21 12
and 2 14
reg 22
reg 23
xor 25 24
out 20 0:1
out 26 0:0