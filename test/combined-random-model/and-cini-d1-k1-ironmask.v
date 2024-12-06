
module And_gate ( clock_0, clock_1, clock_2, reset_0, reset_1, reset_2, 
        io_i0_s0_d0, io_i0_s0_d1, io_i0_s0_d2, io_i0_s1_d0, io_i0_s1_d1, 
        io_i0_s1_d2, io_i1_s0_d0, io_i1_s0_d1, io_i1_s0_d2, io_i1_s1_d0, 
        io_i1_s1_d1, io_i1_s1_d2, p_rand_0, p_rand_1, io_o0_s0_d0, io_o0_s0_d1, 
        io_o0_s0_d2, io_o0_s1_d0, io_o0_s1_d1, io_o0_s1_d2 );
  input clock_0, clock_1, clock_2, reset_0, reset_1, reset_2, io_i0_s0_d0,
         io_i0_s0_d1, io_i0_s0_d2, io_i0_s1_d0, io_i0_s1_d1, io_i0_s1_d2,
         io_i1_s0_d0, io_i1_s0_d1, io_i1_s0_d2, io_i1_s1_d0, io_i1_s1_d1,
         io_i1_s1_d2, p_rand_0, p_rand_1;
  output io_o0_s0_d0, io_o0_s0_d1, io_o0_s0_d2, io_o0_s1_d0, io_o0_s1_d1,
         io_o0_s1_d2;
  wire   n_xor_module_1_res, n_xor_module_2_res, n_xor_module_3_res,
         n_xor_module_4_res, n_xor_module_5_res, n_xor_module_6_res,
         n_majority3_module_0_res, n_reg_module_1_res,
         n_majority3_module_1_res, n_reg_module_2_res,
         n_majority3_module_2_res, n_reg_module_3_res,
         n_majority3_module_3_res, n_reg_module_4_res,
         n_majority3_module_4_res, n_reg_module_5_res,
         n_majority3_module_5_res, n_reg_module_6_res, n_and_module_1_res,
         n_and_module_2_res, n_xor_module_7_res, n_and_module_3_res,
         n_xor_module_8_res, n_and_module_4_res, n_and_module_5_res,
         n_and_module_6_res, n_xor_module_9_res, n_and_module_7_res,
         n_xor_module_10_res, n_and_module_8_res, n_and_module_9_res,
         n_and_module_10_res, n_xor_module_11_res, n_and_module_11_res,
         n_xor_module_12_res, n_and_module_12_res, n_reg_module_7_res,
         n_majority3_module_6_res, n_reg_module_8_res,
         n_majority3_module_7_res, n_reg_module_9_res, n_reg_module_10_res,
         n_reg_module_11_res, n_majority3_module_8_res, n_reg_module_12_res,
         n_majority3_module_9_res, n_reg_module_13_res, n_reg_module_14_res,
         n_reg_module_15_res, n_majority3_module_10_res, n_reg_module_16_res,
         n_majority3_module_11_res, n_reg_module_17_res, n_reg_module_18_res,
         n_majority3_module_0__or_module_2_res,
         n_majority3_module_0__or_module_1_res,
         n_majority3_module_0__and_module_1_res,
         n_majority3_module_1__or_module_2_res,
         n_majority3_module_1__or_module_1_res,
         n_majority3_module_1__and_module_1_res,
         n_majority3_module_2__or_module_2_res,
         n_majority3_module_2__or_module_1_res,
         n_majority3_module_2__and_module_1_res,
         n_majority3_module_3__or_module_2_res,
         n_majority3_module_3__or_module_1_res,
         n_majority3_module_3__and_module_1_res,
         n_majority3_module_4__or_module_2_res,
         n_majority3_module_4__or_module_1_res,
         n_majority3_module_4__and_module_1_res,
         n_majority3_module_5__or_module_2_res,
         n_majority3_module_5__or_module_1_res,
         n_majority3_module_5__and_module_1_res,
         n_majority3_module_6__or_module_2_res,
         n_majority3_module_6__or_module_1_res,
         n_majority3_module_6__and_module_1_res,
         n_majority3_module_7__or_module_2_res,
         n_majority3_module_7__or_module_1_res,
         n_majority3_module_7__and_module_1_res,
         n_majority3_module_8__or_module_2_res,
         n_majority3_module_8__or_module_1_res,
         n_majority3_module_8__and_module_1_res,
         n_majority3_module_9__or_module_2_res,
         n_majority3_module_9__or_module_1_res,
         n_majority3_module_9__and_module_1_res,
         n_majority3_module_10__or_module_2_res,
         n_majority3_module_10__or_module_1_res,
         n_majority3_module_10__and_module_1_res,
         n_majority3_module_11__or_module_2_res,
         n_majority3_module_11__or_module_1_res,
         n_majority3_module_11__and_module_1_res;

wire wire0, wire1, wire2, wire3, wire4, wire5, wire6, wire7, wire8, wire9, wire10, wire11, wire12, wire13, wire14, wire15, wire16, wire17, wire18, wire19, wire20, wire21, wire22, wire23, wire24, wire25, wire26, wire27, wire28, wire29, wire30, wire31, wire32, wire33, wire34, wire35, wire36, wire37, wire38, wire39, wire40, wire41, wire42, wire43, wire44, wire45, wire46, wire47, wire48, wire49, wire50, wire51, wire52, wire53, wire54, wire55, wire56, wire57, wire58, wire59, wire60, wire61, wire62, wire63, wire64, wire65, wire66, wire67, wire68, wire69, wire70, wire71;         

  XOR2_X1 u_xor_module_1_U1 ( .A(p_rand_0), .B(io_i1_s0_d0), .Z(n_xor_module_1_res) );
  XOR2_X1 u_xor_module_2_U1 ( .A(p_rand_0), .B(io_i1_s1_d0), .Z(n_xor_module_2_res) );
  XOR2_X1 u_xor_module_3_U1 ( .A(p_rand_0), .B(io_i1_s0_d1), .Z(n_xor_module_3_res) );
  XOR2_X1 u_xor_module_4_U1 ( .A(p_rand_0), .B(io_i1_s1_d1), .Z(n_xor_module_4_res) );
  XOR2_X1 u_xor_module_5_U1 ( .A(p_rand_0), .B(io_i1_s0_d2), .Z(n_xor_module_5_res) );
  XOR2_X1 u_xor_module_6_U1 ( .A(p_rand_0), .B(io_i1_s1_d2), .Z(n_xor_module_6_res) );
  AND2_X1 u_majority3_module_0__and_module_1_U1 ( .A1(n_xor_module_5_res), .A2(n_xor_module_1_res), .ZN(n_majority3_module_0__and_module_1_res));
  INV_X1 u_majority3_module_0__or_module_1_U10 (.A(n_xor_module_1_res), .ZN(wire0)); 
  INV_X1 u_majority3_module_0__or_module_1_U11 (.A(n_xor_module_5_res), .ZN(wire1)); 
  AND2_X1 u_majority3_module_0__or_module_1_U12 ( .A1(wire0), .A2(wire1), .ZN(wire2) ); 
  INV_X1 u_majority3_module_0__or_module_1_U13 (.A(wire2), .ZN(n_majority3_module_0__or_module_1_res)); 
  INV_X1 u_majority3_module_0__or_module_2_U14 (.A(n_majority3_module_0__and_module_1_res), .ZN(wire3)); 
  INV_X1 u_majority3_module_0__or_module_2_U15 (.A(n_xor_module_3_res), .ZN(wire4)); 
  AND2_X1 u_majority3_module_0__or_module_2_U16 ( .A1(wire3), .A2(wire4), .ZN(wire5) ); 
  INV_X1 u_majority3_module_0__or_module_2_U17 (.A(wire5), .ZN(n_majority3_module_0__or_module_2_res)); 
  AND2_X1 u_majority3_module_0__and_module_2_U1 ( .A1(n_majority3_module_0__or_module_1_res), .A2(n_majority3_module_0__or_module_2_res), .ZN(n_majority3_module_0_res));
  DFF_X1 u_reg_module_1__cini_mul_v00_reg ( .D(n_majority3_module_0_res), .CK(clock_0), .Q(n_reg_module_1_res), .QN() );
  AND2_X1 u_majority3_module_1__and_module_1_U1 ( .A1(n_xor_module_6_res), .A2(n_xor_module_2_res), .ZN(n_majority3_module_1__and_module_1_res));
  INV_X1 u_majority3_module_1__or_module_1_U18 (.A(n_xor_module_2_res), .ZN(wire6)); 
  INV_X1 u_majority3_module_1__or_module_1_U19 (.A(n_xor_module_6_res), .ZN(wire7)); 
  AND2_X1 u_majority3_module_1__or_module_1_U110 ( .A1(wire6), .A2(wire7), .ZN(wire8) ); 
  INV_X1 u_majority3_module_1__or_module_1_U111 (.A(wire8), .ZN(n_majority3_module_1__or_module_1_res)); 
  INV_X1 u_majority3_module_1__or_module_2_U112 (.A(n_majority3_module_1__and_module_1_res), .ZN(wire9)); 
  INV_X1 u_majority3_module_1__or_module_2_U113 (.A(n_xor_module_4_res), .ZN(wire10)); 
  AND2_X1 u_majority3_module_1__or_module_2_U114 ( .A1(wire9), .A2(wire10), .ZN(wire11) ); 
  INV_X1 u_majority3_module_1__or_module_2_U115 (.A(wire11), .ZN(n_majority3_module_1__or_module_2_res)); 
  AND2_X1 u_majority3_module_1__and_module_2_U1 ( .A1(n_majority3_module_1__or_module_1_res), .A2(n_majority3_module_1__or_module_2_res), .ZN(n_majority3_module_1_res));
  DFF_X1 u_reg_module_2__cini_mul_v00_reg ( .D(n_majority3_module_1_res), .CK(clock_0), .Q(n_reg_module_2_res), .QN() );
  AND2_X1 u_majority3_module_2__and_module_1_U1 ( .A1(n_xor_module_5_res), .A2(n_xor_module_1_res), .ZN(n_majority3_module_2__and_module_1_res));
  INV_X1 u_majority3_module_2__or_module_1_U116 (.A(n_xor_module_1_res), .ZN(wire12)); 
  INV_X1 u_majority3_module_2__or_module_1_U117 (.A(n_xor_module_5_res), .ZN(wire13)); 
  AND2_X1 u_majority3_module_2__or_module_1_U118 ( .A1(wire12), .A2(wire13), .ZN(wire14) ); 
  INV_X1 u_majority3_module_2__or_module_1_U119 (.A(wire14), .ZN(n_majority3_module_2__or_module_1_res)); 
  INV_X1 u_majority3_module_2__or_module_2_U120 (.A(n_majority3_module_2__and_module_1_res), .ZN(wire15)); 
  INV_X1 u_majority3_module_2__or_module_2_U121 (.A(n_xor_module_3_res), .ZN(wire16)); 
  AND2_X1 u_majority3_module_2__or_module_2_U122 ( .A1(wire15), .A2(wire16), .ZN(wire17) ); 
  INV_X1 u_majority3_module_2__or_module_2_U123 (.A(wire17), .ZN(n_majority3_module_2__or_module_2_res)); 
  AND2_X1 u_majority3_module_2__and_module_2_U1 ( .A1(n_majority3_module_2__or_module_1_res), .A2(n_majority3_module_2__or_module_2_res), .ZN(n_majority3_module_2_res));
  DFF_X1 u_reg_module_3__cini_mul_v00_reg ( .D(n_majority3_module_2_res), .CK(clock_1), .Q(n_reg_module_3_res), .QN() );
  AND2_X1 u_majority3_module_3__and_module_1_U1 ( .A1(n_xor_module_6_res), .A2(n_xor_module_2_res), .ZN(n_majority3_module_3__and_module_1_res));
  INV_X1 u_majority3_module_3__or_module_1_U124 (.A(n_xor_module_2_res), .ZN(wire18)); 
  INV_X1 u_majority3_module_3__or_module_1_U125 (.A(n_xor_module_6_res), .ZN(wire19)); 
  AND2_X1 u_majority3_module_3__or_module_1_U126 ( .A1(wire18), .A2(wire19), .ZN(wire20) ); 
  INV_X1 u_majority3_module_3__or_module_1_U127 (.A(wire20), .ZN(n_majority3_module_3__or_module_1_res)); 
  INV_X1 u_majority3_module_3__or_module_2_U128 (.A(n_majority3_module_3__and_module_1_res), .ZN(wire21)); 
  INV_X1 u_majority3_module_3__or_module_2_U129 (.A(n_xor_module_4_res), .ZN(wire22)); 
  AND2_X1 u_majority3_module_3__or_module_2_U130 ( .A1(wire21), .A2(wire22), .ZN(wire23) ); 
  INV_X1 u_majority3_module_3__or_module_2_U131 (.A(wire23), .ZN(n_majority3_module_3__or_module_2_res)); 
  AND2_X1 u_majority3_module_3__and_module_2_U1 ( .A1(n_majority3_module_3__or_module_1_res), .A2(n_majority3_module_3__or_module_2_res), .ZN(n_majority3_module_3_res));
  DFF_X1 u_reg_module_4__cini_mul_v00_reg ( .D(n_majority3_module_3_res), .CK(clock_1), .Q(n_reg_module_4_res), .QN() );
  AND2_X1 u_majority3_module_4__and_module_1_U1 ( .A1(n_xor_module_5_res), .A2(n_xor_module_1_res), .ZN(n_majority3_module_4__and_module_1_res));
  INV_X1 u_majority3_module_4__or_module_1_U132 (.A(n_xor_module_1_res), .ZN(wire24)); 
  INV_X1 u_majority3_module_4__or_module_1_U133 (.A(n_xor_module_5_res), .ZN(wire25)); 
  AND2_X1 u_majority3_module_4__or_module_1_U134 ( .A1(wire24), .A2(wire25), .ZN(wire26) ); 
  INV_X1 u_majority3_module_4__or_module_1_U135 (.A(wire26), .ZN(n_majority3_module_4__or_module_1_res)); 
  INV_X1 u_majority3_module_4__or_module_2_U136 (.A(n_majority3_module_4__and_module_1_res), .ZN(wire27)); 
  INV_X1 u_majority3_module_4__or_module_2_U137 (.A(n_xor_module_3_res), .ZN(wire28)); 
  AND2_X1 u_majority3_module_4__or_module_2_U138 ( .A1(wire27), .A2(wire28), .ZN(wire29) ); 
  INV_X1 u_majority3_module_4__or_module_2_U139 (.A(wire29), .ZN(n_majority3_module_4__or_module_2_res)); 
  AND2_X1 u_majority3_module_4__and_module_2_U1 ( .A1(n_majority3_module_4__or_module_1_res), .A2(n_majority3_module_4__or_module_2_res), .ZN(n_majority3_module_4_res));
  DFF_X1 u_reg_module_5__cini_mul_v00_reg ( .D(n_majority3_module_4_res), .CK(clock_2), .Q(n_reg_module_5_res), .QN() );
  AND2_X1 u_majority3_module_5__and_module_1_U1 ( .A1(n_xor_module_6_res), .A2(n_xor_module_2_res), .ZN(n_majority3_module_5__and_module_1_res));
  INV_X1 u_majority3_module_5__or_module_1_U140 (.A(n_xor_module_2_res), .ZN(wire30)); 
  INV_X1 u_majority3_module_5__or_module_1_U141 (.A(n_xor_module_6_res), .ZN(wire31)); 
  AND2_X1 u_majority3_module_5__or_module_1_U142 ( .A1(wire30), .A2(wire31), .ZN(wire32) ); 
  INV_X1 u_majority3_module_5__or_module_1_U143 (.A(wire32), .ZN(n_majority3_module_5__or_module_1_res)); 
  INV_X1 u_majority3_module_5__or_module_2_U144 (.A(n_majority3_module_5__and_module_1_res), .ZN(wire33)); 
  INV_X1 u_majority3_module_5__or_module_2_U145 (.A(n_xor_module_4_res), .ZN(wire34)); 
  AND2_X1 u_majority3_module_5__or_module_2_U146 ( .A1(wire33), .A2(wire34), .ZN(wire35) ); 
  INV_X1 u_majority3_module_5__or_module_2_U147 (.A(wire35), .ZN(n_majority3_module_5__or_module_2_res)); 
  AND2_X1 u_majority3_module_5__and_module_2_U1 ( .A1(n_majority3_module_5__or_module_1_res), .A2(n_majority3_module_5__or_module_2_res), .ZN(n_majority3_module_5_res));
  DFF_X1 u_reg_module_6__cini_mul_v00_reg ( .D(n_majority3_module_5_res), .CK(clock_2), .Q(n_reg_module_6_res), .QN() );
  AND2_X1 u_and_module_1_U1 ( .A1(n_reg_module_1_res), .A2(io_i0_s0_d0), .ZN(n_and_module_1_res) );
  AND2_X1 u_and_module_2_U1 ( .A1(n_reg_module_2_res), .A2(io_i0_s0_d0), .ZN(n_and_module_2_res) );
  XOR2_X1 u_xor_module_7_U1 ( .A(p_rand_1), .B(n_and_module_2_res), .Z(n_xor_module_7_res) );
  AND2_X1 u_and_module_3_U1 ( .A1(n_reg_module_1_res), .A2(io_i0_s1_d0), .ZN(n_and_module_3_res) );
  XOR2_X1 u_xor_module_8_U1 ( .A(p_rand_1), .B(n_and_module_3_res), .Z(n_xor_module_8_res) );
  AND2_X1 u_and_module_4_U1 ( .A1(n_reg_module_2_res), .A2(io_i0_s1_d0), .ZN(n_and_module_4_res) );
  AND2_X1 u_and_module_5_U1 ( .A1(n_reg_module_3_res), .A2(io_i0_s0_d1), .ZN(n_and_module_5_res) );
  AND2_X1 u_and_module_6_U1 ( .A1(n_reg_module_4_res), .A2(io_i0_s0_d1), .ZN(n_and_module_6_res) );
  XOR2_X1 u_xor_module_9_U1 ( .A(p_rand_1), .B(n_and_module_6_res), .Z(n_xor_module_9_res) );
  AND2_X1 u_and_module_7_U1 ( .A1(n_reg_module_3_res), .A2(io_i0_s1_d1), .ZN(n_and_module_7_res) );
  XOR2_X1 u_xor_module_10_U1 ( .A(p_rand_1), .B(n_and_module_7_res), .Z(n_xor_module_10_res) );
  AND2_X1 u_and_module_8_U1 ( .A1(n_reg_module_4_res), .A2(io_i0_s1_d1), .ZN(n_and_module_8_res) );
  AND2_X1 u_and_module_9_U1 ( .A1(n_reg_module_5_res), .A2(io_i0_s0_d2), .ZN(n_and_module_9_res) );
  AND2_X1 u_and_module_10_U1 ( .A1(n_reg_module_6_res), .A2(io_i0_s0_d2), .ZN(n_and_module_10_res) );
  XOR2_X1 u_xor_module_11_U1 ( .A(p_rand_1), .B(n_and_module_10_res), .Z(n_xor_module_11_res) );
  AND2_X1 u_and_module_11_U1 ( .A1(n_reg_module_5_res), .A2(io_i0_s1_d2), .ZN(n_and_module_11_res) );
  XOR2_X1 u_xor_module_12_U1 ( .A(p_rand_1), .B(n_and_module_11_res), .Z(n_xor_module_12_res) );
  AND2_X1 u_and_module_12_U1 ( .A1(n_reg_module_6_res), .A2(io_i0_s1_d2), .ZN(n_and_module_12_res) );
  DFF_X1 u_reg_module_7__cini_mul_v00_reg ( .D(n_and_module_1_res), .CK(clock_0), .Q(n_reg_module_7_res), .QN() );
  AND2_X1 u_majority3_module_6__and_module_1_U1 ( .A1(n_xor_module_11_res), .A2(n_xor_module_7_res), .ZN(n_majority3_module_6__and_module_1_res));
  INV_X1 u_majority3_module_6__or_module_1_U148 (.A(n_xor_module_7_res), .ZN(wire36)); 
  INV_X1 u_majority3_module_6__or_module_1_U149 (.A(n_xor_module_11_res), .ZN(wire37)); 
  AND2_X1 u_majority3_module_6__or_module_1_U150 ( .A1(wire36), .A2(wire37), .ZN(wire38) ); 
  INV_X1 u_majority3_module_6__or_module_1_U151 (.A(wire38), .ZN(n_majority3_module_6__or_module_1_res)); 
  INV_X1 u_majority3_module_6__or_module_2_U152 (.A(n_majority3_module_6__and_module_1_res), .ZN(wire39)); 
  INV_X1 u_majority3_module_6__or_module_2_U153 (.A(n_xor_module_9_res), .ZN(wire40)); 
  AND2_X1 u_majority3_module_6__or_module_2_U154 ( .A1(wire39), .A2(wire40), .ZN(wire41) ); 
  INV_X1 u_majority3_module_6__or_module_2_U155 (.A(wire41), .ZN(n_majority3_module_6__or_module_2_res)); 
  AND2_X1 u_majority3_module_6__and_module_2_U1 ( .A1(n_majority3_module_6__or_module_1_res), .A2(n_majority3_module_6__or_module_2_res), .ZN(n_majority3_module_6_res));
  DFF_X1 u_reg_module_8__cini_mul_v00_reg ( .D(n_majority3_module_6_res), .CK(clock_0), .Q(n_reg_module_8_res), .QN() );
  AND2_X1 u_majority3_module_7__and_module_1_U1 ( .A1(n_xor_module_12_res), .A2(n_xor_module_8_res), .ZN(n_majority3_module_7__and_module_1_res));
  INV_X1 u_majority3_module_7__or_module_1_U156 (.A(n_xor_module_8_res), .ZN(wire42)); 
  INV_X1 u_majority3_module_7__or_module_1_U157 (.A(n_xor_module_12_res), .ZN(wire43)); 
  AND2_X1 u_majority3_module_7__or_module_1_U158 ( .A1(wire42), .A2(wire43), .ZN(wire44) ); 
  INV_X1 u_majority3_module_7__or_module_1_U159 (.A(wire44), .ZN(n_majority3_module_7__or_module_1_res)); 
  INV_X1 u_majority3_module_7__or_module_2_U160 (.A(n_majority3_module_7__and_module_1_res), .ZN(wire45)); 
  INV_X1 u_majority3_module_7__or_module_2_U161 (.A(n_xor_module_10_res), .ZN(wire46)); 
  AND2_X1 u_majority3_module_7__or_module_2_U162 ( .A1(wire45), .A2(wire46), .ZN(wire47) ); 
  INV_X1 u_majority3_module_7__or_module_2_U163 (.A(wire47), .ZN(n_majority3_module_7__or_module_2_res)); 
  AND2_X1 u_majority3_module_7__and_module_2_U1 ( .A1(n_majority3_module_7__or_module_1_res), .A2(n_majority3_module_7__or_module_2_res), .ZN(n_majority3_module_7_res));
  DFF_X1 u_reg_module_9__cini_mul_v00_reg ( .D(n_majority3_module_7_res), .CK(clock_0), .Q(n_reg_module_9_res), .QN() );
  DFF_X1 u_reg_module_10__cini_mul_v00_reg ( .D(n_and_module_4_res), .CK(clock_0), .Q(n_reg_module_10_res), .QN() );
  DFF_X1 u_reg_module_11__cini_mul_v00_reg ( .D(n_and_module_5_res), .CK(clock_1), .Q(n_reg_module_11_res), .QN() );
  AND2_X1 u_majority3_module_8__and_module_1_U1 ( .A1(n_xor_module_11_res), .A2(n_xor_module_7_res), .ZN(n_majority3_module_8__and_module_1_res));
  INV_X1 u_majority3_module_8__or_module_1_U164 (.A(n_xor_module_7_res), .ZN(wire48)); 
  INV_X1 u_majority3_module_8__or_module_1_U165 (.A(n_xor_module_11_res), .ZN(wire49)); 
  AND2_X1 u_majority3_module_8__or_module_1_U166 ( .A1(wire48), .A2(wire49), .ZN(wire50) ); 
  INV_X1 u_majority3_module_8__or_module_1_U167 (.A(wire50), .ZN(n_majority3_module_8__or_module_1_res)); 
  INV_X1 u_majority3_module_8__or_module_2_U168 (.A(n_majority3_module_8__and_module_1_res), .ZN(wire51)); 
  INV_X1 u_majority3_module_8__or_module_2_U169 (.A(n_xor_module_9_res), .ZN(wire52)); 
  AND2_X1 u_majority3_module_8__or_module_2_U170 ( .A1(wire51), .A2(wire52), .ZN(wire53) ); 
  INV_X1 u_majority3_module_8__or_module_2_U171 (.A(wire53), .ZN(n_majority3_module_8__or_module_2_res)); 
  AND2_X1 u_majority3_module_8__and_module_2_U1 ( .A1(n_majority3_module_8__or_module_1_res), .A2(n_majority3_module_8__or_module_2_res), .ZN(n_majority3_module_8_res));
  DFF_X1 u_reg_module_12__cini_mul_v00_reg ( .D(n_majority3_module_8_res), .CK(clock_1), .Q(n_reg_module_12_res), .QN() );
  AND2_X1 u_majority3_module_9__and_module_1_U1 ( .A1(n_xor_module_12_res), .A2(n_xor_module_8_res), .ZN(n_majority3_module_9__and_module_1_res));
  INV_X1 u_majority3_module_9__or_module_1_U172 (.A(n_xor_module_8_res), .ZN(wire54)); 
  INV_X1 u_majority3_module_9__or_module_1_U173 (.A(n_xor_module_12_res), .ZN(wire55)); 
  AND2_X1 u_majority3_module_9__or_module_1_U174 ( .A1(wire54), .A2(wire55), .ZN(wire56) ); 
  INV_X1 u_majority3_module_9__or_module_1_U175 (.A(wire56), .ZN(n_majority3_module_9__or_module_1_res)); 
  INV_X1 u_majority3_module_9__or_module_2_U176 (.A(n_majority3_module_9__and_module_1_res), .ZN(wire57)); 
  INV_X1 u_majority3_module_9__or_module_2_U177 (.A(n_xor_module_10_res), .ZN(wire58)); 
  AND2_X1 u_majority3_module_9__or_module_2_U178 ( .A1(wire57), .A2(wire58), .ZN(wire59) ); 
  INV_X1 u_majority3_module_9__or_module_2_U179 (.A(wire59), .ZN(n_majority3_module_9__or_module_2_res)); 
  AND2_X1 u_majority3_module_9__and_module_2_U1 ( .A1(n_majority3_module_9__or_module_1_res), .A2(n_majority3_module_9__or_module_2_res), .ZN(n_majority3_module_9_res));
  DFF_X1 u_reg_module_13__cini_mul_v00_reg ( .D(n_majority3_module_9_res), .CK(clock_1), .Q(n_reg_module_13_res), .QN() );
  DFF_X1 u_reg_module_14__cini_mul_v00_reg ( .D(n_and_module_8_res), .CK(clock_1), .Q(n_reg_module_14_res), .QN() );
  DFF_X1 u_reg_module_15__cini_mul_v00_reg ( .D(n_and_module_9_res), .CK(clock_2), .Q(n_reg_module_15_res), .QN() );
  AND2_X1 u_majority3_module_10__and_module_1_U1 ( .A1(n_xor_module_11_res), .A2(n_xor_module_7_res), .ZN(n_majority3_module_10__and_module_1_res));
  INV_X1 u_majority3_module_10__or_module_1_U180 (.A(n_xor_module_7_res), .ZN(wire60)); 
  INV_X1 u_majority3_module_10__or_module_1_U181 (.A(n_xor_module_11_res), .ZN(wire61)); 
  AND2_X1 u_majority3_module_10__or_module_1_U182 ( .A1(wire60), .A2(wire61), .ZN(wire62) ); 
  INV_X1 u_majority3_module_10__or_module_1_U183 (.A(wire62), .ZN(n_majority3_module_10__or_module_1_res)); 
  INV_X1 u_majority3_module_10__or_module_2_U184 (.A(n_majority3_module_10__and_module_1_res), .ZN(wire63)); 
  INV_X1 u_majority3_module_10__or_module_2_U185 (.A(n_xor_module_9_res), .ZN(wire64)); 
  AND2_X1 u_majority3_module_10__or_module_2_U186 ( .A1(wire63), .A2(wire64), .ZN(wire65) ); 
  INV_X1 u_majority3_module_10__or_module_2_U187 (.A(wire65), .ZN(n_majority3_module_10__or_module_2_res)); 
  AND2_X1 u_majority3_module_10__and_module_2_U1 ( .A1(n_majority3_module_10__or_module_1_res), .A2(n_majority3_module_10__or_module_2_res), .ZN(n_majority3_module_10_res) );
  DFF_X1 u_reg_module_16__cini_mul_v00_reg ( .D(n_majority3_module_10_res), .CK(clock_2), .Q(n_reg_module_16_res), .QN() );
  AND2_X1 u_majority3_module_11__and_module_1_U1 ( .A1(n_xor_module_12_res), .A2(n_xor_module_8_res), .ZN(n_majority3_module_11__and_module_1_res));
  INV_X1 u_majority3_module_11__or_module_1_U188 (.A(n_xor_module_8_res), .ZN(wire66)); 
  INV_X1 u_majority3_module_11__or_module_1_U189 (.A(n_xor_module_12_res), .ZN(wire67)); 
  AND2_X1 u_majority3_module_11__or_module_1_U190 ( .A1(wire66), .A2(wire67), .ZN(wire68) ); 
  INV_X1 u_majority3_module_11__or_module_1_U191 (.A(wire68), .ZN(n_majority3_module_11__or_module_1_res)); 
  INV_X1 u_majority3_module_11__or_module_2_U192 (.A(n_majority3_module_11__and_module_1_res), .ZN(wire69)); 
  INV_X1 u_majority3_module_11__or_module_2_U193 (.A(n_xor_module_10_res), .ZN(wire70)); 
  AND2_X1 u_majority3_module_11__or_module_2_U194 ( .A1(wire69), .A2(wire70), .ZN(wire71) ); 
  INV_X1 u_majority3_module_11__or_module_2_U195 (.A(wire71), .ZN(n_majority3_module_11__or_module_2_res)); 
  AND2_X1 u_majority3_module_11__and_module_2_U1 ( .A1(n_majority3_module_11__or_module_1_res), .A2(n_majority3_module_11__or_module_2_res), .ZN(n_majority3_module_11_res) );
  DFF_X1 u_reg_module_17__cini_mul_v00_reg ( .D(n_majority3_module_11_res), .CK(clock_2), .Q(n_reg_module_17_res), .QN() );
  DFF_X1 u_reg_module_18__cini_mul_v00_reg ( .D(n_and_module_12_res), .CK(clock_2), .Q(n_reg_module_18_res), .QN() );
  XOR2_X1 u_xor_module_13_U1 ( .A(n_reg_module_8_res), .B(n_reg_module_7_res), .Z(io_o0_s0_d0) );
  XOR2_X1 u_xor_module_14_U1 ( .A(n_reg_module_9_res), .B(n_reg_module_10_res), .Z(io_o0_s1_d0) );
  XOR2_X1 u_xor_module_15_U1 ( .A(n_reg_module_12_res), .B(n_reg_module_11_res), .Z(io_o0_s0_d1) );
  XOR2_X1 u_xor_module_16_U1 ( .A(n_reg_module_13_res), .B(n_reg_module_14_res), .Z(io_o0_s1_d1) );
  XOR2_X1 u_xor_module_17_U1 ( .A(n_reg_module_16_res), .B(n_reg_module_15_res), .Z(io_o0_s0_d2) );
  XOR2_X1 u_xor_module_18_U1 ( .A(n_reg_module_17_res), .B(n_reg_module_18_res), .Z(io_o0_s1_d2) );
  endmodule
