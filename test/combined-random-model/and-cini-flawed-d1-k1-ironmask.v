
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
         n_majority3_module_5_res, n_reg_module_6_res,
         n_majority3_module_6_res, n_reg_module_7_res,
         n_majority3_module_7_res, n_reg_module_8_res,
         n_majority3_module_8_res, n_reg_module_9_res,
         n_majority3_module_9_res, n_reg_module_10_res,
         n_majority3_module_10_res, n_reg_module_11_res,
         n_majority3_module_11_res, n_reg_module_12_res, n_and_module_1_res,
         n_reg_module_13_res, n_and_module_2_res, n_xor_module_7_res,
         n_reg_module_14_res, n_and_module_3_res, n_xor_module_8_res,
         n_reg_module_15_res, n_and_module_4_res, n_reg_module_16_res,
         n_and_module_5_res, n_reg_module_17_res, n_and_module_6_res,
         n_xor_module_9_res, n_reg_module_18_res, n_and_module_7_res,
         n_xor_module_10_res, n_reg_module_19_res, n_and_module_8_res,
         n_reg_module_20_res, n_and_module_9_res, n_reg_module_21_res,
         n_and_module_10_res, n_xor_module_11_res, n_reg_module_22_res,
         n_and_module_11_res, n_xor_module_12_res, n_reg_module_23_res,
         n_and_module_12_res, n_reg_module_24_res,
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
  INV_X1 u_majority3_module_0__or_module_1_U1_0 (.A(n_xor_module_1_res), .ZN(wire0)); 
  INV_X1 u_majority3_module_0__or_module_1_U1_1 (.A(n_xor_module_5_res), .ZN(wire1)); 
  AND2_X1 u_majority3_module_0__or_module_1_U1_2 ( .A1(wire0), .A2(wire1), .ZN(wire2) ); 
  INV_X1 u_majority3_module_0__or_module_1_U1_3 (.A(wire2), .ZN(n_majority3_module_0__or_module_1_res)); 
  INV_X1 u_majority3_module_0__or_module_2_U1_4 (.A(n_majority3_module_0__and_module_1_res), .ZN(wire3)); 
  INV_X1 u_majority3_module_0__or_module_2_U1_5 (.A(n_xor_module_3_res), .ZN(wire4)); 
  AND2_X1 u_majority3_module_0__or_module_2_U1_6 ( .A1(wire3), .A2(wire4), .ZN(wire5) ); 
  INV_X1 u_majority3_module_0__or_module_2_U1_7 (.A(wire5), .ZN(n_majority3_module_0__or_module_2_res)); 
  AND2_X1 u_majority3_module_0__and_module_2_U1 ( .A1(n_majority3_module_0__or_module_1_res), .A2(n_majority3_module_0__or_module_2_res), .ZN(n_majority3_module_0_res));
  DFF_X1 u_reg_module_1__cini_mul_v000_reg ( .D(n_majority3_module_0_res), .CK(clock_0), .Q(n_reg_module_1_res), .QN() );
  AND2_X1 u_majority3_module_1__and_module_1_U1 ( .A1(n_xor_module_5_res), .A2(n_xor_module_1_res), .ZN(n_majority3_module_1__and_module_1_res));
  INV_X1 u_majority3_module_1__or_module_1_U1_8 (.A(n_xor_module_1_res), .ZN(wire6)); 
  INV_X1 u_majority3_module_1__or_module_1_U1_9 (.A(n_xor_module_5_res), .ZN(wire7)); 
  AND2_X1 u_majority3_module_1__or_module_1_U1_10 ( .A1(wire6), .A2(wire7), .ZN(wire8) ); 
  INV_X1 u_majority3_module_1__or_module_1_U1_11 (.A(wire8), .ZN(n_majority3_module_1__or_module_1_res)); 
  INV_X1 u_majority3_module_1__or_module_2_U1_12 (.A(n_majority3_module_1__and_module_1_res), .ZN(wire9)); 
  INV_X1 u_majority3_module_1__or_module_2_U1_13 (.A(n_xor_module_3_res), .ZN(wire10)); 
  AND2_X1 u_majority3_module_1__or_module_2_U1_14 ( .A1(wire9), .A2(wire10), .ZN(wire11) ); 
  INV_X1 u_majority3_module_1__or_module_2_U1_15 (.A(wire11), .ZN(n_majority3_module_1__or_module_2_res)); 
  AND2_X1 u_majority3_module_1__and_module_2_U1 ( .A1(n_majority3_module_1__or_module_1_res), .A2(n_majority3_module_1__or_module_2_res), .ZN(n_majority3_module_1_res));
  DFF_X1 u_reg_module_2__cini_mul_v000_reg ( .D(n_majority3_module_1_res), .CK(clock_0), .Q(n_reg_module_2_res), .QN() );
  AND2_X1 u_majority3_module_2__and_module_1_U1 ( .A1(n_xor_module_6_res), .A2(n_xor_module_2_res), .ZN(n_majority3_module_2__and_module_1_res));
  INV_X1 u_majority3_module_2__or_module_1_U1_16 (.A(n_xor_module_2_res), .ZN(wire12)); 
  INV_X1 u_majority3_module_2__or_module_1_U1_17 (.A(n_xor_module_6_res), .ZN(wire13)); 
  AND2_X1 u_majority3_module_2__or_module_1_U1_18 ( .A1(wire12), .A2(wire13), .ZN(wire14) ); 
  INV_X1 u_majority3_module_2__or_module_1_U1_19 (.A(wire14), .ZN(n_majority3_module_2__or_module_1_res)); 
  INV_X1 u_majority3_module_2__or_module_2_U1_20 (.A(n_majority3_module_2__and_module_1_res), .ZN(wire15)); 
  INV_X1 u_majority3_module_2__or_module_2_U1_21 (.A(n_xor_module_4_res), .ZN(wire16)); 
  AND2_X1 u_majority3_module_2__or_module_2_U1_22 ( .A1(wire15), .A2(wire16), .ZN(wire17) ); 
  INV_X1 u_majority3_module_2__or_module_2_U1_23 (.A(wire17), .ZN(n_majority3_module_2__or_module_2_res)); 
  AND2_X1 u_majority3_module_2__and_module_2_U1 ( .A1(n_majority3_module_2__or_module_1_res), .A2(n_majority3_module_2__or_module_2_res), .ZN(n_majority3_module_2_res));
  DFF_X1 u_reg_module_3__cini_mul_v000_reg ( .D(n_majority3_module_2_res), .CK(clock_0), .Q(n_reg_module_3_res), .QN() );
  AND2_X1 u_majority3_module_3__and_module_1_U1 ( .A1(n_xor_module_6_res), .A2(n_xor_module_2_res), .ZN(n_majority3_module_3__and_module_1_res));
  INV_X1 u_majority3_module_3__or_module_1_U1_24 (.A(n_xor_module_2_res), .ZN(wire18)); 
  INV_X1 u_majority3_module_3__or_module_1_U1_25 (.A(n_xor_module_6_res), .ZN(wire19)); 
  AND2_X1 u_majority3_module_3__or_module_1_U1_26 ( .A1(wire18), .A2(wire19), .ZN(wire20) ); 
  INV_X1 u_majority3_module_3__or_module_1_U1_27 (.A(wire20), .ZN(n_majority3_module_3__or_module_1_res)); 
  INV_X1 u_majority3_module_3__or_module_2_U1_28 (.A(n_majority3_module_3__and_module_1_res), .ZN(wire21)); 
  INV_X1 u_majority3_module_3__or_module_2_U1_29 (.A(n_xor_module_4_res), .ZN(wire22)); 
  AND2_X1 u_majority3_module_3__or_module_2_U1_30 ( .A1(wire21), .A2(wire22), .ZN(wire23) ); 
  INV_X1 u_majority3_module_3__or_module_2_U1_31 (.A(wire23), .ZN(n_majority3_module_3__or_module_2_res)); 
  AND2_X1 u_majority3_module_3__and_module_2_U1 ( .A1(n_majority3_module_3__or_module_1_res), .A2(n_majority3_module_3__or_module_2_res), .ZN(n_majority3_module_3_res));
  DFF_X1 u_reg_module_4__cini_mul_v000_reg ( .D(n_majority3_module_3_res), .CK(clock_0), .Q(n_reg_module_4_res), .QN() );
  AND2_X1 u_majority3_module_4__and_module_1_U1 ( .A1(n_xor_module_5_res), .A2(n_xor_module_1_res), .ZN(n_majority3_module_4__and_module_1_res));
  INV_X1 u_majority3_module_4__or_module_1_U1_32 (.A(n_xor_module_1_res), .ZN(wire24)); 
  INV_X1 u_majority3_module_4__or_module_1_U1_33 (.A(n_xor_module_5_res), .ZN(wire25)); 
  AND2_X1 u_majority3_module_4__or_module_1_U1_34 ( .A1(wire24), .A2(wire25), .ZN(wire26) ); 
  INV_X1 u_majority3_module_4__or_module_1_U1_35 (.A(wire26), .ZN(n_majority3_module_4__or_module_1_res)); 
  INV_X1 u_majority3_module_4__or_module_2_U1_36 (.A(n_majority3_module_4__and_module_1_res), .ZN(wire27)); 
  INV_X1 u_majority3_module_4__or_module_2_U1_37 (.A(n_xor_module_3_res), .ZN(wire28)); 
  AND2_X1 u_majority3_module_4__or_module_2_U1_38 ( .A1(wire27), .A2(wire28), .ZN(wire29) ); 
  INV_X1 u_majority3_module_4__or_module_2_U1_39 (.A(wire29), .ZN(n_majority3_module_4__or_module_2_res)); 
  AND2_X1 u_majority3_module_4__and_module_2_U1 ( .A1(n_majority3_module_4__or_module_1_res), .A2(n_majority3_module_4__or_module_2_res), .ZN(n_majority3_module_4_res));
  DFF_X1 u_reg_module_5__cini_mul_v000_reg ( .D(n_majority3_module_4_res), .CK(clock_1), .Q(n_reg_module_5_res), .QN() );
  AND2_X1 u_majority3_module_5__and_module_1_U1 ( .A1(n_xor_module_5_res), .A2(n_xor_module_1_res), .ZN(n_majority3_module_5__and_module_1_res));
  INV_X1 u_majority3_module_5__or_module_1_U1_40 (.A(n_xor_module_1_res), .ZN(wire30)); 
  INV_X1 u_majority3_module_5__or_module_1_U1_41 (.A(n_xor_module_5_res), .ZN(wire31)); 
  AND2_X1 u_majority3_module_5__or_module_1_U1_42 ( .A1(wire30), .A2(wire31), .ZN(wire32) ); 
  INV_X1 u_majority3_module_5__or_module_1_U1_43 (.A(wire32), .ZN(n_majority3_module_5__or_module_1_res)); 
  INV_X1 u_majority3_module_5__or_module_2_U1_44 (.A(n_majority3_module_5__and_module_1_res), .ZN(wire33)); 
  INV_X1 u_majority3_module_5__or_module_2_U1_45 (.A(n_xor_module_3_res), .ZN(wire34)); 
  AND2_X1 u_majority3_module_5__or_module_2_U1_46 ( .A1(wire33), .A2(wire34), .ZN(wire35) ); 
  INV_X1 u_majority3_module_5__or_module_2_U1_47 (.A(wire35), .ZN(n_majority3_module_5__or_module_2_res)); 
  AND2_X1 u_majority3_module_5__and_module_2_U1 ( .A1(n_majority3_module_5__or_module_1_res), .A2(n_majority3_module_5__or_module_2_res), .ZN(n_majority3_module_5_res));
  DFF_X1 u_reg_module_6__cini_mul_v000_reg ( .D(n_majority3_module_5_res), .CK(clock_1), .Q(n_reg_module_6_res), .QN() );
  AND2_X1 u_majority3_module_6__and_module_1_U1 ( .A1(n_xor_module_6_res), .A2(n_xor_module_2_res), .ZN(n_majority3_module_6__and_module_1_res));
  INV_X1 u_majority3_module_6__or_module_1_U1_48 (.A(n_xor_module_2_res), .ZN(wire36)); 
  INV_X1 u_majority3_module_6__or_module_1_U1_49 (.A(n_xor_module_6_res), .ZN(wire37)); 
  AND2_X1 u_majority3_module_6__or_module_1_U1_50 ( .A1(wire36), .A2(wire37), .ZN(wire38) ); 
  INV_X1 u_majority3_module_6__or_module_1_U1_51 (.A(wire38), .ZN(n_majority3_module_6__or_module_1_res)); 
  INV_X1 u_majority3_module_6__or_module_2_U1_52 (.A(n_majority3_module_6__and_module_1_res), .ZN(wire39)); 
  INV_X1 u_majority3_module_6__or_module_2_U1_53 (.A(n_xor_module_4_res), .ZN(wire40)); 
  AND2_X1 u_majority3_module_6__or_module_2_U1_54 ( .A1(wire39), .A2(wire40), .ZN(wire41) ); 
  INV_X1 u_majority3_module_6__or_module_2_U1_55 (.A(wire41), .ZN(n_majority3_module_6__or_module_2_res)); 
  AND2_X1 u_majority3_module_6__and_module_2_U1 ( .A1(n_majority3_module_6__or_module_1_res), .A2(n_majority3_module_6__or_module_2_res), .ZN(n_majority3_module_6_res));
  DFF_X1 u_reg_module_7__cini_mul_v000_reg ( .D(n_majority3_module_6_res), .CK(clock_1), .Q(n_reg_module_7_res), .QN() );
  AND2_X1 u_majority3_module_7__and_module_1_U1 ( .A1(n_xor_module_6_res), .A2(n_xor_module_2_res), .ZN(n_majority3_module_7__and_module_1_res));
  INV_X1 u_majority3_module_7__or_module_1_U1_56 (.A(n_xor_module_2_res), .ZN(wire42)); 
  INV_X1 u_majority3_module_7__or_module_1_U1_57 (.A(n_xor_module_6_res), .ZN(wire43)); 
  AND2_X1 u_majority3_module_7__or_module_1_U1_58 ( .A1(wire42), .A2(wire43), .ZN(wire44) ); 
  INV_X1 u_majority3_module_7__or_module_1_U1_59 (.A(wire44), .ZN(n_majority3_module_7__or_module_1_res)); 
  INV_X1 u_majority3_module_7__or_module_2_U1_60 (.A(n_majority3_module_7__and_module_1_res), .ZN(wire45)); 
  INV_X1 u_majority3_module_7__or_module_2_U1_61 (.A(n_xor_module_4_res), .ZN(wire46)); 
  AND2_X1 u_majority3_module_7__or_module_2_U1_62 ( .A1(wire45), .A2(wire46), .ZN(wire47) ); 
  INV_X1 u_majority3_module_7__or_module_2_U1_63 (.A(wire47), .ZN(n_majority3_module_7__or_module_2_res)); 
  AND2_X1 u_majority3_module_7__and_module_2_U1 ( .A1(n_majority3_module_7__or_module_1_res), .A2(n_majority3_module_7__or_module_2_res), .ZN(n_majority3_module_7_res));
  DFF_X1 u_reg_module_8__cini_mul_v000_reg ( .D(n_majority3_module_7_res), .CK(clock_1), .Q(n_reg_module_8_res), .QN() );
  AND2_X1 u_majority3_module_8__and_module_1_U1 ( .A1(n_xor_module_5_res), .A2(n_xor_module_1_res), .ZN(n_majority3_module_8__and_module_1_res));
  INV_X1 u_majority3_module_8__or_module_1_U1_64 (.A(n_xor_module_1_res), .ZN(wire48)); 
  INV_X1 u_majority3_module_8__or_module_1_U1_65 (.A(n_xor_module_5_res), .ZN(wire49)); 
  AND2_X1 u_majority3_module_8__or_module_1_U1_66 ( .A1(wire48), .A2(wire49), .ZN(wire50) ); 
  INV_X1 u_majority3_module_8__or_module_1_U1_67 (.A(wire50), .ZN(n_majority3_module_8__or_module_1_res)); 
  INV_X1 u_majority3_module_8__or_module_2_U1_68 (.A(n_majority3_module_8__and_module_1_res), .ZN(wire51)); 
  INV_X1 u_majority3_module_8__or_module_2_U1_69 (.A(n_xor_module_3_res), .ZN(wire52)); 
  AND2_X1 u_majority3_module_8__or_module_2_U1_70 ( .A1(wire51), .A2(wire52), .ZN(wire53) ); 
  INV_X1 u_majority3_module_8__or_module_2_U1_71 (.A(wire53), .ZN(n_majority3_module_8__or_module_2_res)); 
  AND2_X1 u_majority3_module_8__and_module_2_U1 ( .A1(n_majority3_module_8__or_module_1_res), .A2(n_majority3_module_8__or_module_2_res), .ZN(n_majority3_module_8_res));
  DFF_X1 u_reg_module_9__cini_mul_v000_reg ( .D(n_majority3_module_8_res), .CK(clock_2), .Q(n_reg_module_9_res), .QN() );
  AND2_X1 u_majority3_module_9__and_module_1_U1 ( .A1(n_xor_module_5_res), .A2(n_xor_module_1_res), .ZN(n_majority3_module_9__and_module_1_res));
  INV_X1 u_majority3_module_9__or_module_1_U1_72 (.A(n_xor_module_1_res), .ZN(wire54)); 
  INV_X1 u_majority3_module_9__or_module_1_U1_73 (.A(n_xor_module_5_res), .ZN(wire55)); 
  AND2_X1 u_majority3_module_9__or_module_1_U1_74 ( .A1(wire54), .A2(wire55), .ZN(wire56) ); 
  INV_X1 u_majority3_module_9__or_module_1_U1_75 (.A(wire56), .ZN(n_majority3_module_9__or_module_1_res)); 
  INV_X1 u_majority3_module_9__or_module_2_U1_76 (.A(n_majority3_module_9__and_module_1_res), .ZN(wire57)); 
  INV_X1 u_majority3_module_9__or_module_2_U1_77 (.A(n_xor_module_3_res), .ZN(wire58)); 
  AND2_X1 u_majority3_module_9__or_module_2_U1_78 ( .A1(wire57), .A2(wire58), .ZN(wire59) ); 
  INV_X1 u_majority3_module_9__or_module_2_U1_79 (.A(wire59), .ZN(n_majority3_module_9__or_module_2_res)); 
  AND2_X1 u_majority3_module_9__and_module_2_U1 ( .A1(n_majority3_module_9__or_module_1_res), .A2(n_majority3_module_9__or_module_2_res), .ZN(n_majority3_module_9_res));
  DFF_X1 u_reg_module_10__cini_mul_v000_reg ( .D(n_majority3_module_9_res), .CK(clock_2), .Q(n_reg_module_10_res), .QN() );
  AND2_X1 u_majority3_module_10__and_module_1_U1 ( .A1(n_xor_module_6_res), .A2(n_xor_module_2_res), .ZN(n_majority3_module_10__and_module_1_res));
  INV_X1 u_majority3_module_10__or_module_1_U1_80 (.A(n_xor_module_2_res), .ZN(wire60)); 
  INV_X1 u_majority3_module_10__or_module_1_U1_81 (.A(n_xor_module_6_res), .ZN(wire61)); 
  AND2_X1 u_majority3_module_10__or_module_1_U1_82 ( .A1(wire60), .A2(wire61), .ZN(wire62) ); 
  INV_X1 u_majority3_module_10__or_module_1_U1_83 (.A(wire62), .ZN(n_majority3_module_10__or_module_1_res)); 
  INV_X1 u_majority3_module_10__or_module_2_U1_84 (.A(n_majority3_module_10__and_module_1_res), .ZN(wire63)); 
  INV_X1 u_majority3_module_10__or_module_2_U1_85 (.A(n_xor_module_4_res), .ZN(wire64)); 
  AND2_X1 u_majority3_module_10__or_module_2_U1_86 ( .A1(wire63), .A2(wire64), .ZN(wire65) ); 
  INV_X1 u_majority3_module_10__or_module_2_U1_87 (.A(wire65), .ZN(n_majority3_module_10__or_module_2_res)); 
  AND2_X1 u_majority3_module_10__and_module_2_U1 ( .A1(n_majority3_module_10__or_module_1_res), .A2(n_majority3_module_10__or_module_2_res), .ZN(n_majority3_module_10_res) );
  DFF_X1 u_reg_module_11__cini_mul_v000_reg ( .D(n_majority3_module_10_res), .CK(clock_2), .Q(n_reg_module_11_res), .QN() );
  AND2_X1 u_majority3_module_11__and_module_1_U1 ( .A1(n_xor_module_6_res), .A2(n_xor_module_2_res), .ZN(n_majority3_module_11__and_module_1_res));
  INV_X1 u_majority3_module_11__or_module_1_U1_88 (.A(n_xor_module_2_res), .ZN(wire66)); 
  INV_X1 u_majority3_module_11__or_module_1_U1_89 (.A(n_xor_module_6_res), .ZN(wire67)); 
  AND2_X1 u_majority3_module_11__or_module_1_U1_90 ( .A1(wire66), .A2(wire67), .ZN(wire68) ); 
  INV_X1 u_majority3_module_11__or_module_1_U1_91 (.A(wire68), .ZN(n_majority3_module_11__or_module_1_res)); 
  INV_X1 u_majority3_module_11__or_module_2_U1_92 (.A(n_majority3_module_11__and_module_1_res), .ZN(wire69)); 
  INV_X1 u_majority3_module_11__or_module_2_U1_93 (.A(n_xor_module_4_res), .ZN(wire70)); 
  AND2_X1 u_majority3_module_11__or_module_2_U1_94 ( .A1(wire69), .A2(wire70), .ZN(wire71) ); 
  INV_X1 u_majority3_module_11__or_module_2_U1_95 (.A(wire71), .ZN(n_majority3_module_11__or_module_2_res)); 
  AND2_X1 u_majority3_module_11__and_module_2_U1 ( .A1(n_majority3_module_11__or_module_1_res), .A2(n_majority3_module_11__or_module_2_res), .ZN(n_majority3_module_11_res) );
  DFF_X1 u_reg_module_12__cini_mul_v000_reg ( .D(n_majority3_module_11_res), .CK(clock_2), .Q(n_reg_module_12_res), .QN() );
  AND2_X1 u_and_module_1_U1 ( .A1(n_reg_module_1_res), .A2(io_i0_s0_d0), .ZN(n_and_module_1_res) );
  DFF_X1 u_reg_module_13__cini_mul_v000_reg ( .D(n_and_module_1_res), .CK(clock_0), .Q(n_reg_module_13_res), .QN() );
  AND2_X1 u_and_module_2_U1 ( .A1(n_reg_module_3_res), .A2(io_i0_s0_d0), .ZN(n_and_module_2_res) );
  XOR2_X1 u_xor_module_7_U1 ( .A(p_rand_1), .B(n_and_module_2_res), .Z(n_xor_module_7_res) );
  DFF_X1 u_reg_module_14__cini_mul_v000_reg ( .D(n_xor_module_7_res), .CK(clock_0), .Q(n_reg_module_14_res), .QN() );
  AND2_X1 u_and_module_3_U1 ( .A1(n_reg_module_2_res), .A2(io_i0_s1_d0), .ZN(n_and_module_3_res) );
  XOR2_X1 u_xor_module_8_U1 ( .A(p_rand_1), .B(n_and_module_3_res), .Z(n_xor_module_8_res) );
  DFF_X1 u_reg_module_15__cini_mul_v000_reg ( .D(n_xor_module_8_res), .CK(clock_0), .Q(n_reg_module_15_res), .QN() );
  AND2_X1 u_and_module_4_U1 ( .A1(n_reg_module_4_res), .A2(io_i0_s1_d0), .ZN(n_and_module_4_res) );
  DFF_X1 u_reg_module_16__cini_mul_v000_reg ( .D(n_and_module_4_res), .CK(clock_0), .Q(n_reg_module_16_res), .QN() );
  AND2_X1 u_and_module_5_U1 ( .A1(n_reg_module_5_res), .A2(io_i0_s0_d1), .ZN(n_and_module_5_res) );
  DFF_X1 u_reg_module_17__cini_mul_v000_reg ( .D(n_and_module_5_res), .CK(clock_1), .Q(n_reg_module_17_res), .QN() );
  AND2_X1 u_and_module_6_U1 ( .A1(n_reg_module_7_res), .A2(io_i0_s0_d1), .ZN(n_and_module_6_res) );
  XOR2_X1 u_xor_module_9_U1 ( .A(p_rand_1), .B(n_and_module_6_res), .Z(n_xor_module_9_res) );
  DFF_X1 u_reg_module_18__cini_mul_v000_reg ( .D(n_xor_module_9_res), .CK(clock_1), .Q(n_reg_module_18_res), .QN() );
  AND2_X1 u_and_module_7_U1 ( .A1(n_reg_module_6_res), .A2(io_i0_s1_d1), .ZN(n_and_module_7_res) );
  XOR2_X1 u_xor_module_10_U1 ( .A(p_rand_1), .B(n_and_module_7_res), .Z(n_xor_module_10_res) );
  DFF_X1 u_reg_module_19__cini_mul_v000_reg ( .D(n_xor_module_10_res), .CK(clock_1), .Q(n_reg_module_19_res), .QN() );
  AND2_X1 u_and_module_8_U1 ( .A1(n_reg_module_8_res), .A2(io_i0_s1_d1), .ZN(n_and_module_8_res) );
  DFF_X1 u_reg_module_20__cini_mul_v000_reg ( .D(n_and_module_8_res), .CK(clock_1), .Q(n_reg_module_20_res), .QN() );
  AND2_X1 u_and_module_9_U1 ( .A1(n_reg_module_9_res), .A2(io_i0_s0_d2), .ZN(n_and_module_9_res) );
  DFF_X1 u_reg_module_21__cini_mul_v000_reg ( .D(n_and_module_9_res), .CK(clock_2), .Q(n_reg_module_21_res), .QN() );
  AND2_X1 u_and_module_10_U1 ( .A1(n_reg_module_11_res), .A2(io_i0_s0_d2), .ZN(n_and_module_10_res) );
  XOR2_X1 u_xor_module_11_U1 ( .A(p_rand_1), .B(n_and_module_10_res), .Z(n_xor_module_11_res) );
  DFF_X1 u_reg_module_22__cini_mul_v000_reg ( .D(n_xor_module_11_res), .CK(clock_2), .Q(n_reg_module_22_res), .QN() );
  AND2_X1 u_and_module_11_U1 ( .A1(n_reg_module_10_res), .A2(io_i0_s1_d2), .ZN(n_and_module_11_res) );
  XOR2_X1 u_xor_module_12_U1 ( .A(p_rand_1), .B(n_and_module_11_res), .Z(n_xor_module_12_res) );
  DFF_X1 u_reg_module_23__cini_mul_v000_reg ( .D(n_xor_module_12_res), .CK(clock_2), .Q(n_reg_module_23_res), .QN() );
  AND2_X1 u_and_module_12_U1 ( .A1(n_reg_module_12_res), .A2(io_i0_s1_d2), .ZN(n_and_module_12_res) );
  DFF_X1 u_reg_module_24__cini_mul_v000_reg ( .D(n_and_module_12_res), .CK(clock_2), .Q(n_reg_module_24_res), .QN() );
  XOR2_X1 u_xor_module_13_U1 ( .A(n_reg_module_14_res), .B(n_reg_module_13_res), .Z(io_o0_s0_d0) );
  XOR2_X1 u_xor_module_14_U1 ( .A(n_reg_module_15_res), .B(n_reg_module_16_res), .Z(io_o0_s1_d0) );
  XOR2_X1 u_xor_module_15_U1 ( .A(n_reg_module_18_res), .B(n_reg_module_17_res), .Z(io_o0_s0_d1) );
  XOR2_X1 u_xor_module_16_U1 ( .A(n_reg_module_19_res), .B(n_reg_module_20_res), .Z(io_o0_s1_d1) );
  XOR2_X1 u_xor_module_17_U1 ( .A(n_reg_module_22_res), .B(n_reg_module_21_res), .Z(io_o0_s0_d2) );
  XOR2_X1 u_xor_module_18_U1 ( .A(n_reg_module_23_res), .B(n_reg_module_24_res), .Z(io_o0_s1_d2) );
  endmodule
