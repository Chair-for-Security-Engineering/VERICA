module Sbox_andOptimized ( clock_0, reset_0, io_i0_s0, io_i0_s1, io_i1_s0, 
        io_i1_s1, io_i2_s0, io_i2_s1, io_i3_s0, io_i3_s1, p_rand_0, p_rand_1, 
        p_rand_2, p_rand_3, io_o0_s0, io_o0_s1, io_o1_s0, io_o1_s1, io_o2_s0, 
        io_o2_s1, io_o3_s0, io_o3_s1 );
  input clock_0, reset_0, io_i0_s0, io_i0_s1, io_i1_s0, io_i1_s1, io_i2_s0,
         io_i2_s1, io_i3_s0, io_i3_s1, p_rand_0, p_rand_1, p_rand_2, p_rand_3;
  output io_o0_s0, io_o0_s1, io_o1_s0, io_o1_s1, io_o2_s0, io_o2_s1, io_o3_s0,
         io_o3_s1;
  wire   reg_pipeline_65, reg_pipeline_59, dom_out1_18, dom_out0_19,
         reg_pipeline_62, reg_pipeline_61, reg_pipeline_57, reg_pipeline_69,
         N0, reg_pipeline_63, reg_pipeline_67, N1, N2, N3, reg_pipeline_58, N4,
         reg_pipeline_64, N5, N6, N7, reg_pipeline_36, n_dom_inter0_37, N8,
         reg_pipeline_42, n_dom_inter0_43, N9, reg_pipeline_34,
         n_dom_inter1_35, N10, reg_pipeline_40, n_dom_inter1_41, N11,
         reg_pipeline_22, reg_pipeline_73, N12, reg_pipeline_71, N13, N14, N15,
         N16, N17, N18, N19, N20, N21, N22, N23, N24, reg_pipeline_23,
         reg_pipeline_26, reg_pipeline_27, reg_pipeline_13, n_dom_inter0, N25,
         reg_pipeline_16, n_dom_inter0_17, N26, reg_pipeline_12, n_dom_inter1,
         N27, reg_pipeline_14, n_dom_inter1_15, N28, reg_pipeline_4,
         reg_pipeline_5, N29, N30, N31, N32, N33, N34, N36, N37, N38,
         reg_pipeline_46, reg_pipeline_47, reg_pipeline_24, reg_pipeline_49,
         reg_pipeline_50, N39, reg_pipeline_25, reg_pipeline_8, reg_pipeline_9,
         reg_pipeline_10, reg_pipeline_11, reg_pipeline_29, reg_pipeline_28,
         reg_pipeline_32, reg_pipeline_33, reg_pipeline_6, reg_pipeline_7,
         reg_pipeline_31, reg_pipeline_30, reg_pipeline_38, reg_pipeline_39,
         reg_pipeline_68, reg_pipeline_70, reg_pipeline_72, reg_pipeline_74,
         N40, N41, n7, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67,
         n68, n69, n70, n71, n72, n73, n74, n75;

  DFF_X1 u_dom_inter0_43_reg ( .D(N3), .CK(clock_0), .Q(n_dom_inter0_43), 
        .QN() );
  DFF_X1 reg_pipeline_30_reg ( .D(N21), .CK(clock_0), .Q(reg_pipeline_30), 
        .QN() );
  DFF_X1 u_dom_inter1_41_reg ( .D(N7), .CK(clock_0), .Q(n_dom_inter1_41), 
        .QN() );
  DFF_X1 reg_pipeline_31_reg ( .D(N22), .CK(clock_0), .Q(reg_pipeline_31), 
        .QN() );
  DFF_X1 reg_pipeline_32_reg ( .D(N15), .CK(clock_0), .Q(reg_pipeline_32), 
        .QN() );
  DFF_X1 reg_pipeline_59_reg ( .D(reg_pipeline_32), .CK(clock_0), .Q(
        reg_pipeline_59), .QN() );
  DFF_X1 reg_pipeline_23_reg ( .D(N14), .CK(clock_0), .Q(reg_pipeline_23), 
        .QN() );
  DFF_X1 reg_pipeline_33_reg ( .D(N16), .CK(clock_0), .Q(reg_pipeline_33), 
        .QN() );
  DFF_X1 reg_pipeline_60_reg ( .D(reg_pipeline_33), .CK(clock_0), .Q(), .QN(
        n73) );
  DFF_X1 u_dom_inter0_37_reg ( .D(N2), .CK(clock_0), .Q(n_dom_inter0_37), 
        .QN() );
  DFF_X1 reg_pipeline_63_reg ( .D(reg_pipeline_31), .CK(clock_0), .Q(
        reg_pipeline_63), .QN(n30) );
  DFF_X1 u_dom_inter1_35_reg ( .D(N6), .CK(clock_0), .Q(n_dom_inter1_35), 
        .QN() );
  DFF_X1 reg_pipeline_64_reg ( .D(reg_pipeline_30), .CK(clock_0), .Q(
        reg_pipeline_64), .QN(n31) );
  DFF_X1 reg_pipeline_68_reg ( .D(p_rand_2), .CK(clock_0), .Q(reg_pipeline_68), 
        .QN() );
  DFF_X1 reg_pipeline_67_reg ( .D(reg_pipeline_68), .CK(clock_0), .Q(
        reg_pipeline_67), .QN() );
  DFF_X1 reg_pipeline_70_reg ( .D(p_rand_3), .CK(clock_0), .Q(reg_pipeline_70), 
        .QN() );
  DFF_X1 reg_pipeline_69_reg ( .D(reg_pipeline_70), .CK(clock_0), .Q(
        reg_pipeline_69), .QN() );
  DFF_X1 reg_pipeline_27_reg ( .D(N18), .CK(clock_0), .Q(reg_pipeline_27), 
        .QN() );
  DFF_X1 reg_pipeline_29_reg ( .D(N20), .CK(clock_0), .Q(reg_pipeline_29), 
        .QN() );
  DFF_X1 reg_pipeline_28_reg ( .D(N19), .CK(clock_0), .Q(reg_pipeline_28), 
        .QN() );
  DFF_X1 reg_pipeline_24_reg ( .D(N15), .CK(clock_0), .Q(reg_pipeline_24), 
        .QN() );
  DFF_X1 reg_pipeline_72_reg ( .D(io_i3_s0), .CK(clock_0), .Q(reg_pipeline_72), 
        .QN() );
  DFF_X1 reg_pipeline_71_reg ( .D(reg_pipeline_72), .CK(clock_0), .Q(
        reg_pipeline_71), .QN() );
  DFF_X1 reg_pipeline_26_reg ( .D(N17), .CK(clock_0), .Q(reg_pipeline_26), 
        .QN() );
  DFF_X1 reg_pipeline_39_reg ( .D(N24), .CK(clock_0), .Q(reg_pipeline_39), 
        .QN() );
  DFF_X1 reg_pipeline_66_reg ( .D(reg_pipeline_39), .CK(clock_0), .Q(), .QN(
        n72) );
  DFF_X1 reg_pipeline_25_reg ( .D(N16), .CK(clock_0), .Q(reg_pipeline_25), 
        .QN() );
  DFF_X1 reg_pipeline_74_reg ( .D(io_i3_s1), .CK(clock_0), .Q(reg_pipeline_74), 
        .QN() );
  DFF_X1 reg_pipeline_73_reg ( .D(reg_pipeline_74), .CK(clock_0), .Q(
        reg_pipeline_73), .QN() );
  DFF_X1 reg_pipeline_38_reg ( .D(N23), .CK(clock_0), .Q(reg_pipeline_38), 
        .QN() );
  DFF_X1 reg_pipeline_65_reg ( .D(reg_pipeline_38), .CK(clock_0), .Q(
        reg_pipeline_65), .QN() );
  DFF_X1 reg_pipeline_54_reg ( .D(reg_pipeline_27), .CK(clock_0), .Q(), .QN(
        n66) );
  DFF_X1 reg_pipeline_53_reg ( .D(reg_pipeline_26), .CK(clock_0), .Q(), .QN(
        n67) );
  DFF_X1 reg_pipeline_44_reg ( .D(reg_pipeline_23), .CK(clock_0), .Q(), .QN(
        n68) );
  DFF_X1 reg_pipeline_22_reg ( .D(N33), .CK(clock_0), .Q(reg_pipeline_22), 
        .QN() );
  DFF_X1 reg_pipeline_1_reg ( .D(reg_pipeline_22), .CK(clock_0), .Q(), .QN(n69) );
  DFF_X1 reg_pipeline_34_reg ( .D(N34), .CK(clock_0), .Q(reg_pipeline_34), 
        .QN() );
  DFF_X1 dom_out1_18_reg ( .D(N10), .CK(clock_0), .Q(dom_out1_18), .QN(n71) );
  DFF_X1 reg_pipeline_6_reg ( .D(dom_out1_18), .CK(clock_0), .Q(reg_pipeline_6), .QN() );
  DFF_X1 reg_pipeline_61_reg ( .D(reg_pipeline_6), .CK(clock_0), .Q(
        reg_pipeline_61), .QN() );
  DFF_X1 reg_pipeline_36_reg ( .D(n7), .CK(clock_0), .Q(reg_pipeline_36), 
        .QN() );
  DFF_X1 dom_out0_19_reg ( .D(N8), .CK(clock_0), .Q(dom_out0_19), .QN(n75) );
  DFF_X1 reg_pipeline_7_reg ( .D(dom_out0_19), .CK(clock_0), .Q(reg_pipeline_7), .QN() );
  DFF_X1 reg_pipeline_62_reg ( .D(reg_pipeline_7), .CK(clock_0), .Q(
        reg_pipeline_62), .QN() );
  DFF_X1 reg_pipeline_4_reg ( .D(N36), .CK(clock_0), .Q(reg_pipeline_4), .QN()
         );
  DFF_X1 reg_pipeline_reg ( .D(reg_pipeline_4), .CK(clock_0), .Q(io_o3_s1), 
        .QN() );
  DFF_X1 reg_pipeline_40_reg ( .D(N37), .CK(clock_0), .Q(reg_pipeline_40), 
        .QN() );
  DFF_X1 dom_out1_20_reg ( .D(N11), .CK(clock_0), .Q(), .QN(n70) );
  DFF_X1 reg_pipeline_8_reg ( .D(N40), .CK(clock_0), .Q(reg_pipeline_8), .QN()
         );
  DFF_X1 u_dom_inter1_15_reg ( .D(N5), .CK(clock_0), .Q(n_dom_inter1_15), 
        .QN() );
  DFF_X1 reg_pipeline_14_reg ( .D(N31), .CK(clock_0), .Q(reg_pipeline_14), 
        .QN() );
  DFF_X1 dom_out1_2_reg ( .D(N28), .CK(clock_0), .Q(), .QN(n58) );
  DFF_X1 reg_pipeline_10_reg ( .D(N12), .CK(clock_0), .Q(reg_pipeline_10), 
        .QN() );
  DFF_X1 reg_pipeline_42_reg ( .D(N38), .CK(clock_0), .Q(reg_pipeline_42), 
        .QN() );
  DFF_X1 dom_out0_21_reg ( .D(N9), .CK(clock_0), .Q(), .QN(n74) );
  DFF_X1 reg_pipeline_9_reg ( .D(N41), .CK(clock_0), .Q(reg_pipeline_9), .QN()
         );
  DFF_X1 reg_pipeline_16_reg ( .D(N32), .CK(clock_0), .Q(reg_pipeline_16), 
        .QN() );
  DFF_X1 u_dom_inter0_17_reg ( .D(N1), .CK(clock_0), .Q(n_dom_inter0_17), 
        .QN() );
  DFF_X1 dom_out0_3_reg ( .D(N26), .CK(clock_0), .Q(), .QN(n60) );
  DFF_X1 reg_pipeline_11_reg ( .D(N13), .CK(clock_0), .Q(reg_pipeline_11), 
        .QN() );
  DFF_X1 reg_pipeline_47_reg ( .D(reg_pipeline_24), .CK(clock_0), .Q(
        reg_pipeline_47), .QN() );
  DFF_X1 reg_pipeline_46_reg ( .D(reg_pipeline_47), .CK(clock_0), .Q(
        reg_pipeline_46), .QN() );
  DFF_X1 reg_pipeline_45_reg ( .D(reg_pipeline_46), .CK(clock_0), .Q(), .QN(
        n56) );
  DFF_X1 reg_pipeline_5_reg ( .D(N39), .CK(clock_0), .Q(reg_pipeline_5), .QN()
         );
  DFF_X1 reg_pipeline_0_reg ( .D(reg_pipeline_5), .CK(clock_0), .Q(io_o3_s0), 
        .QN() );
  DFF_X1 reg_pipeline_50_reg ( .D(reg_pipeline_25), .CK(clock_0), .Q(
        reg_pipeline_50), .QN() );
  DFF_X1 reg_pipeline_49_reg ( .D(reg_pipeline_50), .CK(clock_0), .Q(
        reg_pipeline_49), .QN() );
  DFF_X1 reg_pipeline_48_reg ( .D(reg_pipeline_49), .CK(clock_0), .Q(), .QN(
        n57) );
  DFF_X1 reg_pipeline_51_reg ( .D(reg_pipeline_8), .CK(clock_0), .Q(), .QN(n59) );
  DFF_X1 reg_pipeline_52_reg ( .D(reg_pipeline_9), .CK(clock_0), .Q(), .QN(n61) );
  DFF_X1 reg_pipeline_55_reg ( .D(reg_pipeline_10), .CK(clock_0), .Q(), .QN(
        n63) );
  DFF_X1 reg_pipeline_56_reg ( .D(reg_pipeline_11), .CK(clock_0), .Q(), .QN(
        n65) );
  DFF_X1 reg_pipeline_57_reg ( .D(reg_pipeline_29), .CK(clock_0), .Q(
        reg_pipeline_57), .QN(n29) );
  DFF_X1 u_dom_inter0_reg ( .D(N0), .CK(clock_0), .Q(n_dom_inter0), .QN() );
  DFF_X1 reg_pipeline_12_reg ( .D(N29), .CK(clock_0), .Q(reg_pipeline_12), 
        .QN() );
  DFF_X1 reg_pipeline_58_reg ( .D(reg_pipeline_28), .CK(clock_0), .Q(
        reg_pipeline_58), .QN() );
  DFF_X1 reg_pipeline_13_reg ( .D(N30), .CK(clock_0), .Q(reg_pipeline_13), 
        .QN() );
  DFF_X1 dom_out0_reg ( .D(N25), .CK(clock_0), .Q(), .QN(n64) );
  DFF_X1 u_dom_inter1_reg ( .D(N4), .CK(clock_0), .Q(n_dom_inter1), .QN() );
  DFF_X1 dom_out1_reg ( .D(N27), .CK(clock_0), .Q(), .QN(n62) );
  INV_X1 U74 ( .A(n32), .ZN(n7) );
  XOR2_X1 U75 ( .A(n56), .B(n62), .Z(io_o2_s1) );
  XOR2_X1 U76 ( .A(n57), .B(n64), .Z(io_o2_s0) );
  XOR2_X1 U77 ( .A(n33), .B(n58), .Z(io_o1_s1) );
  XOR2_X1 U78 ( .A(n59), .B(reg_pipeline_61), .Z(n33) );
  XOR2_X1 U79 ( .A(n34), .B(n60), .Z(io_o1_s0) );
  XOR2_X1 U80 ( .A(n61), .B(reg_pipeline_62), .Z(n34) );
  XOR2_X1 U81 ( .A(n63), .B(n62), .Z(io_o0_s1) );
  XOR2_X1 U82 ( .A(n65), .B(n64), .Z(io_o0_s0) );
  XOR2_X1 U83 ( .A(n_dom_inter0_43), .B(reg_pipeline_42), .Z(N9) );
  XOR2_X1 U84 ( .A(n_dom_inter0_37), .B(reg_pipeline_36), .Z(N8) );
  XNOR2_X1 U85 ( .A(p_rand_0), .B(n35), .ZN(N7) );
  NAND2_X1 U86 ( .A1(n36), .A2(n37), .ZN(n35) );
  INV_X1 U87 ( .A(io_i0_s0), .ZN(n37) );
  XNOR2_X1 U88 ( .A(p_rand_1), .B(n38), .ZN(N6) );
  NAND2_X1 U89 ( .A1(io_i2_s1), .A2(io_i1_s0), .ZN(n38) );
  XOR2_X1 U90 ( .A(reg_pipeline_67), .B(n39), .Z(N5) );
  NOR2_X1 U91 ( .A1(n31), .A2(n40), .ZN(n39) );
  XOR2_X1 U92 ( .A(n66), .B(n74), .Z(N41) );
  XOR2_X1 U93 ( .A(n67), .B(n70), .Z(N40) );
  XNOR2_X1 U94 ( .A(reg_pipeline_69), .B(n41), .ZN(N4) );
  NAND2_X1 U95 ( .A1(reg_pipeline_58), .A2(n42), .ZN(n41) );
  XOR2_X1 U96 ( .A(reg_pipeline_59), .B(n43), .Z(n42) );
  XOR2_X1 U97 ( .A(n68), .B(n75), .Z(N39) );
  NOR2_X1 U98 ( .A1(io_i0_s0), .A2(n44), .ZN(N38) );
  AND2_X1 U99 ( .A1(n36), .A2(io_i0_s1), .ZN(N37) );
  XOR2_X1 U100 ( .A(n69), .B(n71), .Z(N36) );
  AND2_X1 U101 ( .A1(io_i2_s1), .A2(io_i1_s1), .ZN(N34) );
  AND2_X1 U102 ( .A1(n45), .A2(reg_pipeline_64), .ZN(N32) );
  NOR2_X1 U103 ( .A1(n30), .A2(n40), .ZN(N31) );
  XOR2_X1 U104 ( .A(reg_pipeline_65), .B(n70), .Z(n40) );
  AND2_X1 U105 ( .A1(reg_pipeline_58), .A2(n46), .ZN(N30) );
  XOR2_X1 U106 ( .A(p_rand_0), .B(n47), .Z(N3) );
  NOR2_X1 U107 ( .A1(n44), .A2(n48), .ZN(n47) );
  INV_X1 U108 ( .A(io_i0_s1), .ZN(n48) );
  NOR2_X1 U109 ( .A1(n49), .A2(n29), .ZN(N29) );
  XNOR2_X1 U110 ( .A(reg_pipeline_59), .B(n43), .ZN(n49) );
  XOR2_X1 U111 ( .A(n_dom_inter1_15), .B(reg_pipeline_14), .Z(N28) );
  XOR2_X1 U112 ( .A(n_dom_inter1), .B(reg_pipeline_12), .Z(N27) );
  XOR2_X1 U113 ( .A(n_dom_inter0_17), .B(reg_pipeline_16), .Z(N26) );
  XOR2_X1 U114 ( .A(n_dom_inter0), .B(reg_pipeline_13), .Z(N25) );
  XOR2_X1 U115 ( .A(io_i3_s0), .B(N16), .Z(N24) );
  XOR2_X1 U116 ( .A(io_i3_s1), .B(N15), .Z(N23) );
  XOR2_X1 U117 ( .A(n36), .B(N33), .Z(N22) );
  XOR2_X1 U118 ( .A(io_i0_s1), .B(io_i3_s1), .Z(N33) );
  XOR2_X1 U119 ( .A(n44), .B(N14), .Z(N21) );
  XOR2_X1 U120 ( .A(io_i3_s1), .B(n36), .Z(N20) );
  XOR2_X1 U121 ( .A(io_i1_s1), .B(io_i2_s1), .Z(n36) );
  XNOR2_X1 U122 ( .A(p_rand_1), .B(n50), .ZN(N2) );
  NAND2_X1 U123 ( .A1(io_i1_s1), .A2(n51), .ZN(n50) );
  XOR2_X1 U124 ( .A(n44), .B(io_i3_s0), .Z(N19) );
  NAND2_X1 U125 ( .A1(n32), .A2(n52), .ZN(n44) );
  OR2_X1 U126 ( .A1(n51), .A2(io_i1_s0), .ZN(n52) );
  NAND2_X1 U127 ( .A1(io_i1_s0), .A2(n51), .ZN(n32) );
  INV_X1 U128 ( .A(io_i2_s0), .ZN(n51) );
  XOR2_X1 U129 ( .A(io_i3_s0), .B(io_i2_s0), .Z(N18) );
  XOR2_X1 U130 ( .A(io_i3_s1), .B(io_i2_s1), .Z(N17) );
  XOR2_X1 U131 ( .A(io_i0_s0), .B(io_i2_s0), .Z(N16) );
  XOR2_X1 U132 ( .A(io_i0_s1), .B(io_i2_s1), .Z(N15) );
  XOR2_X1 U133 ( .A(io_i0_s0), .B(io_i3_s0), .Z(N14) );
  XOR2_X1 U134 ( .A(reg_pipeline_71), .B(n53), .Z(N13) );
  XOR2_X1 U135 ( .A(reg_pipeline_73), .B(n43), .Z(N12) );
  XOR2_X1 U136 ( .A(n71), .B(n70), .Z(n43) );
  XOR2_X1 U137 ( .A(n_dom_inter1_41), .B(reg_pipeline_40), .Z(N11) );
  XOR2_X1 U138 ( .A(n_dom_inter1_35), .B(reg_pipeline_34), .Z(N10) );
  XNOR2_X1 U139 ( .A(reg_pipeline_67), .B(n54), .ZN(N1) );
  NAND2_X1 U140 ( .A1(reg_pipeline_63), .A2(n45), .ZN(n54) );
  XNOR2_X1 U141 ( .A(n72), .B(n74), .ZN(n45) );
  XNOR2_X1 U142 ( .A(reg_pipeline_69), .B(n55), .ZN(N0) );
  NAND2_X1 U143 ( .A1(reg_pipeline_57), .A2(n46), .ZN(n55) );
  XOR2_X1 U144 ( .A(n73), .B(n53), .Z(n46) );
  XOR2_X1 U145 ( .A(n75), .B(n74), .Z(n53) );
endmodule
