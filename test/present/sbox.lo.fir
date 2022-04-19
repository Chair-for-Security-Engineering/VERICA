circuit Sbox_andOptimized :
  module Sbox_andOptimized :
    input clock : Clock
    input reset : UInt<1>
    input io_i0 : UInt<1>
    input io_i1 : UInt<1>
    input io_i2 : UInt<1>
    input io_i3 : UInt<1>
    output io_o0 : UInt<1>
    output io_o1 : UInt<1>
    output io_o2 : UInt<1>
    output io_o3 : UInt<1>
  
    node _T = xor(io_i1, io_i2) @[Sbox.scala 104:22]
    node q0 = not(_T) @[Sbox.scala 104:14]
    node q1 = not(io_i0) @[Sbox.scala 105:14]
    node t0 = and(q0, q1) @[Sbox.scala 106:17]
    node _T_1 = xor(io_i0, io_i2) @[Sbox.scala 107:22]
    node _T_2 = xor(_T_1, io_i3) @[Sbox.scala 107:30]
    node _T_3 = xor(_T_2, t0) @[Sbox.scala 107:38]
    node q2 = not(_T_3) @[Sbox.scala 107:14]
    node _T_4 = xor(io_i0, io_i1) @[Sbox.scala 108:20]
    node _T_5 = xor(_T_4, io_i2) @[Sbox.scala 108:28]
    node q3 = xor(_T_5, io_i3) @[Sbox.scala 108:36]
    node q4 = not(io_i2) @[Sbox.scala 109:14]
    node t2 = and(q4, io_i1) @[Sbox.scala 110:17]
    node _T_6 = xor(io_i0, io_i2) @[Sbox.scala 111:22]
    node _T_7 = xor(_T_6, t0) @[Sbox.scala 111:30]
    node _T_8 = xor(_T_7, t2) @[Sbox.scala 111:35]
    node q6 = not(_T_8) @[Sbox.scala 111:14]
    node _T_9 = xor(io_i1, io_i2) @[Sbox.scala 112:20]
    node q7 = xor(_T_9, io_i3) @[Sbox.scala 112:28]
    node t1 = and(q2, q3) @[Sbox.scala 113:17]
    node t3 = and(q6, q7) @[Sbox.scala 114:17]
    node _T_10 = xor(io_i3, t0) @[Sbox.scala 116:20]
    node _T_11 = xor(_T_10, t2) @[Sbox.scala 116:25]
    node _T_12 = xor(_T_11, t3) @[Sbox.scala 116:30]
    node _T_13 = xor(io_i2, io_i3) @[Sbox.scala 117:20]
    node _T_14 = xor(_T_13, t0) @[Sbox.scala 117:28]
    node _T_15 = xor(_T_14, t1) @[Sbox.scala 117:33]
    node _T_16 = xor(_T_15, t2) @[Sbox.scala 117:38]
    node _T_17 = xor(io_i0, io_i2) @[Sbox.scala 118:20]
    node _T_18 = xor(_T_17, t3) @[Sbox.scala 118:28]
    node _T_19 = xor(io_i0, io_i3) @[Sbox.scala 119:20]
    node _T_20 = xor(_T_19, t2) @[Sbox.scala 119:28]
    io_o0 <= _T_12 @[Sbox.scala 116:11]
    io_o1 <= _T_16 @[Sbox.scala 117:11]
    io_o2 <= _T_18 @[Sbox.scala 118:11]
    io_o3 <= _T_20 @[Sbox.scala 119:11]