
module MultiplicationDetection ( port_a_0, port_a_1, port_a_2, port_b_0, 
        port_b_1, port_b_2, port_c_0_0, port_c_0_1, port_c_0_2, port_c_1_0, 
        port_c_1_1, port_c_1_2, port_c_2_0, port_c_2_1, port_c_2_2, port_r, 
        clk, reset );
  input [2:0] port_a_0;
  input [2:0] port_a_1;
  input [2:0] port_a_2;
  input [2:0] port_b_0;
  input [2:0] port_b_1;
  input [2:0] port_b_2;
  output [2:0] port_c_0_0;
  output [2:0] port_c_0_1;
  output [2:0] port_c_0_2;
  output [2:0] port_c_1_0;
  output [2:0] port_c_1_1;
  output [2:0] port_c_1_2;
  output [2:0] port_c_2_0;
  output [2:0] port_c_2_1;
  output [2:0] port_c_2_2;
  input [2:0] port_r;
  input clk, reset;
  wire   N0, N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15,
         N16, N17, N18, N19, N20, N21, N22, N23, N24, N25, N26, n1, n2, n3, n4,
         n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18;

  DFF_X1 u_2_2_reg_2_ ( .D(N24), .CK(clk), .Q(port_c_2_2[2]), .QN() );
  DFF_X1 u_2_2_reg_1_ ( .D(N25), .CK(clk), .Q(port_c_2_2[1]), .QN() );
  DFF_X1 u_2_2_reg_0_ ( .D(N26), .CK(clk), .Q(port_c_2_2[0]), .QN() );
  DFF_X1 u_1_1_reg_2_ ( .D(N12), .CK(clk), .Q(port_c_1_1[2]), .QN() );
  DFF_X1 u_1_1_reg_1_ ( .D(N13), .CK(clk), .Q(port_c_1_1[1]), .QN() );
  DFF_X1 u_1_1_reg_0_ ( .D(N14), .CK(clk), .Q(port_c_1_1[0]), .QN() );
  DFF_X1 u_0_1_reg_2_ ( .D(N3), .CK(clk), .Q(port_c_0_1[2]), .QN() );
  DFF_X1 u_0_1_reg_1_ ( .D(N4), .CK(clk), .Q(port_c_0_1[1]), .QN() );
  DFF_X1 u_0_1_reg_0_ ( .D(N5), .CK(clk), .Q(port_c_0_1[0]), .QN() );
  DFF_X1 u_2_1_reg_2_ ( .D(N21), .CK(clk), .Q(port_c_2_1[2]), .QN() );
  DFF_X1 u_2_1_reg_1_ ( .D(N22), .CK(clk), .Q(port_c_2_1[1]), .QN() );
  DFF_X1 u_2_1_reg_0_ ( .D(N23), .CK(clk), .Q(port_c_2_1[0]), .QN() );
  DFF_X1 u_0_2_reg_2_ ( .D(N6), .CK(clk), .Q(port_c_0_2[2]), .QN() );
  DFF_X1 u_0_2_reg_1_ ( .D(N7), .CK(clk), .Q(port_c_0_2[1]), .QN() );
  DFF_X1 u_0_2_reg_0_ ( .D(N8), .CK(clk), .Q(port_c_0_2[0]), .QN() );
  DFF_X1 u_1_2_reg_2_ ( .D(N15), .CK(clk), .Q(port_c_1_2[2]), .QN() );
  DFF_X1 u_1_2_reg_1_ ( .D(N16), .CK(clk), .Q(port_c_1_2[1]), .QN() );
  DFF_X1 u_1_2_reg_0_ ( .D(N17), .CK(clk), .Q(port_c_1_2[0]), .QN() );
  DFF_X1 u_0_0_reg_2_ ( .D(N0), .CK(clk), .Q(port_c_0_0[2]), .QN() );
  DFF_X1 u_0_0_reg_1_ ( .D(N1), .CK(clk), .Q(port_c_0_0[1]), .QN() );
  DFF_X1 u_0_0_reg_0_ ( .D(N2), .CK(clk), .Q(port_c_0_0[0]), .QN() );
  DFF_X1 u_2_0_reg_2_ ( .D(N18), .CK(clk), .Q(port_c_2_0[2]), .QN() );
  DFF_X1 u_2_0_reg_1_ ( .D(N19), .CK(clk), .Q(port_c_2_0[1]), .QN() );
  DFF_X1 u_2_0_reg_0_ ( .D(N20), .CK(clk), .Q(port_c_2_0[0]), .QN() );
  DFF_X1 u_1_0_reg_2_ ( .D(N9), .CK(clk), .Q(port_c_1_0[2]), .QN() );
  DFF_X1 u_1_0_reg_1_ ( .D(N10), .CK(clk), .Q(port_c_1_0[1]), .QN() );
  DFF_X1 u_1_0_reg_0_ ( .D(N11), .CK(clk), .Q(port_c_1_0[0]), .QN() );
  AND2_X1 U3 ( .A1(port_b_0[2]), .A2(port_a_0[2]), .ZN(N0) );
  AND2_X1 U4 ( .A1(port_b_0[1]), .A2(port_a_0[1]), .ZN(N1) );
  NAND2_X1 U5 ( .A1(port_a_1[1]), .A2(port_b_0[1]), .ZN(n1) );
  XNOR2_X1 U6 ( .A(n1), .B(port_r[0]), .ZN(N10) );
  NAND2_X1 U7 ( .A1(port_a_1[0]), .A2(port_b_0[0]), .ZN(n2) );
  XNOR2_X1 U8 ( .A(n2), .B(port_r[0]), .ZN(N11) );
  AND2_X1 U9 ( .A1(port_a_1[2]), .A2(port_b_1[2]), .ZN(N12) );
  AND2_X1 U10 ( .A1(port_a_1[1]), .A2(port_b_1[1]), .ZN(N13) );
  AND2_X1 U11 ( .A1(port_a_1[0]), .A2(port_b_1[0]), .ZN(N14) );
  NAND2_X1 U12 ( .A1(port_b_2[2]), .A2(port_a_1[2]), .ZN(n3) );
  XNOR2_X1 U13 ( .A(n3), .B(port_r[2]), .ZN(N15) );
  NAND2_X1 U14 ( .A1(port_b_2[1]), .A2(port_a_1[1]), .ZN(n4) );
  XNOR2_X1 U15 ( .A(n4), .B(port_r[2]), .ZN(N16) );
  NAND2_X1 U16 ( .A1(port_b_2[0]), .A2(port_a_1[0]), .ZN(n5) );
  XNOR2_X1 U17 ( .A(n5), .B(port_r[2]), .ZN(N17) );
  NAND2_X1 U18 ( .A1(port_a_2[2]), .A2(port_b_0[2]), .ZN(n6) );
  XNOR2_X1 U19 ( .A(n6), .B(port_r[1]), .ZN(N18) );
  NAND2_X1 U20 ( .A1(port_a_2[1]), .A2(port_b_0[1]), .ZN(n7) );
  XNOR2_X1 U21 ( .A(n7), .B(port_r[1]), .ZN(N19) );
  AND2_X1 U22 ( .A1(port_b_0[0]), .A2(port_a_0[0]), .ZN(N2) );
  NAND2_X1 U23 ( .A1(port_a_2[0]), .A2(port_b_0[0]), .ZN(n8) );
  XNOR2_X1 U24 ( .A(n8), .B(port_r[1]), .ZN(N20) );
  NAND2_X1 U25 ( .A1(port_b_1[2]), .A2(port_a_2[2]), .ZN(n9) );
  XNOR2_X1 U26 ( .A(n9), .B(port_r[2]), .ZN(N21) );
  NAND2_X1 U27 ( .A1(port_b_1[1]), .A2(port_a_2[1]), .ZN(n10) );
  XNOR2_X1 U28 ( .A(n10), .B(port_r[2]), .ZN(N22) );
  NAND2_X1 U29 ( .A1(port_b_1[0]), .A2(port_a_2[0]), .ZN(n11) );
  XNOR2_X1 U30 ( .A(n11), .B(port_r[2]), .ZN(N23) );
  AND2_X1 U31 ( .A1(port_b_2[2]), .A2(port_a_2[2]), .ZN(N24) );
  AND2_X1 U32 ( .A1(port_b_2[1]), .A2(port_a_2[1]), .ZN(N25) );
  AND2_X1 U33 ( .A1(port_b_2[0]), .A2(port_a_2[0]), .ZN(N26) );
  NAND2_X1 U34 ( .A1(port_a_0[2]), .A2(port_b_1[2]), .ZN(n12) );
  XNOR2_X1 U35 ( .A(n12), .B(port_r[0]), .ZN(N3) );
  NAND2_X1 U36 ( .A1(port_a_0[1]), .A2(port_b_1[1]), .ZN(n13) );
  XNOR2_X1 U37 ( .A(n13), .B(port_r[0]), .ZN(N4) );
  NAND2_X1 U38 ( .A1(port_a_0[0]), .A2(port_b_1[0]), .ZN(n14) );
  XNOR2_X1 U39 ( .A(n14), .B(port_r[0]), .ZN(N5) );
  NAND2_X1 U40 ( .A1(port_a_0[2]), .A2(port_b_2[2]), .ZN(n15) );
  XNOR2_X1 U41 ( .A(n15), .B(port_r[1]), .ZN(N6) );
  NAND2_X1 U42 ( .A1(port_a_0[1]), .A2(port_b_2[1]), .ZN(n16) );
  XNOR2_X1 U43 ( .A(n16), .B(port_r[1]), .ZN(N7) );
  NAND2_X1 U44 ( .A1(port_a_0[0]), .A2(port_b_2[0]), .ZN(n17) );
  XNOR2_X1 U45 ( .A(n17), .B(port_r[1]), .ZN(N8) );
  NAND2_X1 U46 ( .A1(port_b_0[2]), .A2(port_a_1[2]), .ZN(n18) );
  XNOR2_X1 U47 ( .A(n18), .B(port_r[0]), .ZN(N9) );
endmodule


module Detection ( port_u_0_0, port_u_0_1, port_u_0_2, port_u_1_0, port_u_1_1, 
        port_u_1_2, port_u_2_0, port_u_2_1, port_u_2_2, port_errorFlag_0, 
        port_errorFlag_1, port_errorFlag_2, clk, reset );
  input [2:0] port_u_0_0;
  input [2:0] port_u_0_1;
  input [2:0] port_u_0_2;
  input [2:0] port_u_1_0;
  input [2:0] port_u_1_1;
  input [2:0] port_u_1_2;
  input [2:0] port_u_2_0;
  input [2:0] port_u_2_1;
  input [2:0] port_u_2_2;
  output [0:0] port_errorFlag_0;
  output [0:0] port_errorFlag_1;
  output [0:0] port_errorFlag_2;
  input clk, reset;
  wire   n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48;
  wire   [5:0] t_0;
  wire   [5:0] t_1;
  wire   [5:0] t_2;

  DFF_X1 t_1_reg_5_ ( .D(n23), .CK(clk), .Q(t_1[5]), .QN() );
  DFF_X1 t_1_reg_4_ ( .D(n24), .CK(clk), .Q(n34), .QN() );
  DFF_X1 t_1_reg_3_ ( .D(n21), .CK(clk), .Q(n33), .QN() );
  DFF_X1 t_1_reg_2_ ( .D(n22), .CK(clk), .Q(t_1[2]), .QN() );
  DFF_X1 t_1_reg_1_ ( .D(n19), .CK(clk), .Q(t_1[1]), .QN() );
  DFF_X1 t_1_reg_0_ ( .D(n20), .CK(clk), .Q(t_1[0]), .QN() );
  DFF_X1 t_2_reg_5_ ( .D(n29), .CK(clk), .Q(t_2[5]), .QN() );
  DFF_X1 t_2_reg_4_ ( .D(n30), .CK(clk), .Q(n32), .QN() );
  DFF_X1 t_2_reg_3_ ( .D(n27), .CK(clk), .Q(n31), .QN() );
  DFF_X1 t_2_reg_2_ ( .D(n28), .CK(clk), .Q(t_2[2]), .QN() );
  DFF_X1 t_2_reg_1_ ( .D(n25), .CK(clk), .Q(t_2[1]), .QN() );
  DFF_X1 t_2_reg_0_ ( .D(n26), .CK(clk), .Q(t_2[0]), .QN() );
  DFF_X1 t_0_reg_5_ ( .D(n17), .CK(clk), .Q(t_0[5]), .QN() );
  DFF_X1 t_0_reg_4_ ( .D(n18), .CK(clk), .Q(n36), .QN() );
  DFF_X1 t_0_reg_3_ ( .D(n15), .CK(clk), .Q(n35), .QN() );
  DFF_X1 t_0_reg_2_ ( .D(n16), .CK(clk), .Q(t_0[2]), .QN() );
  DFF_X1 t_0_reg_1_ ( .D(n13), .CK(clk), .Q(t_0[1]), .QN() );
  DFF_X1 t_0_reg_0_ ( .D(n14), .CK(clk), .Q(t_0[0]), .QN() );
  NAND2_X1 U3 ( .A1(t_0[1]), .A2(t_0[0]), .ZN(n38) );
  NAND2_X1 U4 ( .A1(n36), .A2(t_0[5]), .ZN(n37) );
  OR2_X1 U5 ( .A1(n38), .A2(n37), .ZN(n40) );
  NAND2_X1 U6 ( .A1(t_0[2]), .A2(n35), .ZN(n39) );
  NOR2_X1 U7 ( .A1(n40), .A2(n39), .ZN(port_errorFlag_0[0]) );
  NAND2_X1 U8 ( .A1(t_1[1]), .A2(t_1[0]), .ZN(n42) );
  NAND2_X1 U9 ( .A1(n34), .A2(t_1[5]), .ZN(n41) );
  OR2_X1 U10 ( .A1(n42), .A2(n41), .ZN(n44) );
  NAND2_X1 U11 ( .A1(t_1[2]), .A2(n33), .ZN(n43) );
  NOR2_X1 U12 ( .A1(n44), .A2(n43), .ZN(port_errorFlag_1[0]) );
  NAND2_X1 U13 ( .A1(t_2[1]), .A2(t_2[0]), .ZN(n46) );
  NAND2_X1 U14 ( .A1(n32), .A2(t_2[5]), .ZN(n45) );
  OR2_X1 U15 ( .A1(n46), .A2(n45), .ZN(n48) );
  NAND2_X1 U16 ( .A1(t_2[2]), .A2(n31), .ZN(n47) );
  NOR2_X1 U17 ( .A1(n48), .A2(n47), .ZN(port_errorFlag_2[0]) );
  XNOR2_X1 U18 ( .A(port_u_0_0[0]), .B(port_u_0_0[2]), .ZN(n13) );
  XNOR2_X1 U19 ( .A(port_u_0_0[0]), .B(port_u_0_0[1]), .ZN(n14) );
  XNOR2_X1 U20 ( .A(port_u_0_1[0]), .B(port_u_0_1[2]), .ZN(n15) );
  XNOR2_X1 U21 ( .A(port_u_0_1[0]), .B(port_u_0_1[1]), .ZN(n16) );
  XNOR2_X1 U22 ( .A(port_u_0_2[0]), .B(port_u_0_2[2]), .ZN(n17) );
  XNOR2_X1 U23 ( .A(port_u_0_2[0]), .B(port_u_0_2[1]), .ZN(n18) );
  XNOR2_X1 U24 ( .A(port_u_1_0[0]), .B(port_u_1_0[2]), .ZN(n19) );
  XNOR2_X1 U25 ( .A(port_u_1_0[0]), .B(port_u_1_0[1]), .ZN(n20) );
  XNOR2_X1 U26 ( .A(port_u_1_1[0]), .B(port_u_1_1[2]), .ZN(n21) );
  XNOR2_X1 U27 ( .A(port_u_1_1[0]), .B(port_u_1_1[1]), .ZN(n22) );
  XNOR2_X1 U28 ( .A(port_u_1_2[0]), .B(port_u_1_2[2]), .ZN(n23) );
  XNOR2_X1 U29 ( .A(port_u_1_2[0]), .B(port_u_1_2[1]), .ZN(n24) );
  XNOR2_X1 U30 ( .A(port_u_2_0[0]), .B(port_u_2_0[2]), .ZN(n25) );
  XNOR2_X1 U31 ( .A(port_u_2_0[0]), .B(port_u_2_0[1]), .ZN(n26) );
  XNOR2_X1 U32 ( .A(port_u_2_1[0]), .B(port_u_2_1[2]), .ZN(n27) );
  XNOR2_X1 U33 ( .A(port_u_2_1[0]), .B(port_u_2_1[1]), .ZN(n28) );
  XNOR2_X1 U34 ( .A(port_u_2_2[0]), .B(port_u_2_2[2]), .ZN(n29) );
  XNOR2_X1 U35 ( .A(port_u_2_2[0]), .B(port_u_2_2[1]), .ZN(n30) );
endmodule


module Compression ( port_u_0_0, port_u_0_1, port_u_0_2, port_u_1_0, 
        port_u_1_1, port_u_1_2, port_u_2_0, port_u_2_1, port_u_2_2, port_c_0, 
        port_c_1, port_c_2 );
  input [2:0] port_u_0_0;
  input [2:0] port_u_0_1;
  input [2:0] port_u_0_2;
  input [2:0] port_u_1_0;
  input [2:0] port_u_1_1;
  input [2:0] port_u_1_2;
  input [2:0] port_u_2_0;
  input [2:0] port_u_2_1;
  input [2:0] port_u_2_2;
  output [2:0] port_c_0;
  output [2:0] port_c_1;
  output [2:0] port_c_2;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;

  XNOR2_X1 U1 ( .A(port_u_0_0[0]), .B(port_u_0_1[0]), .ZN(n1) );
  XNOR2_X1 U2 ( .A(n1), .B(port_u_0_2[0]), .ZN(port_c_0[0]) );
  XNOR2_X1 U3 ( .A(port_u_0_0[1]), .B(port_u_0_1[1]), .ZN(n2) );
  XNOR2_X1 U4 ( .A(n2), .B(port_u_0_2[1]), .ZN(port_c_0[1]) );
  XNOR2_X1 U5 ( .A(port_u_0_0[2]), .B(port_u_0_1[2]), .ZN(n3) );
  XNOR2_X1 U6 ( .A(n3), .B(port_u_0_2[2]), .ZN(port_c_0[2]) );
  XNOR2_X1 U7 ( .A(port_u_1_0[0]), .B(port_u_1_1[0]), .ZN(n4) );
  XNOR2_X1 U8 ( .A(n4), .B(port_u_1_2[0]), .ZN(port_c_1[0]) );
  XNOR2_X1 U9 ( .A(port_u_1_0[1]), .B(port_u_1_1[1]), .ZN(n5) );
  XNOR2_X1 U10 ( .A(n5), .B(port_u_1_2[1]), .ZN(port_c_1[1]) );
  XNOR2_X1 U11 ( .A(port_u_1_0[2]), .B(port_u_1_1[2]), .ZN(n6) );
  XNOR2_X1 U12 ( .A(n6), .B(port_u_1_2[2]), .ZN(port_c_1[2]) );
  XNOR2_X1 U13 ( .A(port_u_2_0[0]), .B(port_u_2_1[0]), .ZN(n7) );
  XNOR2_X1 U14 ( .A(n7), .B(port_u_2_2[0]), .ZN(port_c_2[0]) );
  XNOR2_X1 U15 ( .A(port_u_2_0[1]), .B(port_u_2_1[1]), .ZN(n8) );
  XNOR2_X1 U16 ( .A(n8), .B(port_u_2_2[1]), .ZN(port_c_2[1]) );
  XNOR2_X1 U17 ( .A(port_u_2_0[2]), .B(port_u_2_1[2]), .ZN(n9) );
  XNOR2_X1 U18 ( .A(n9), .B(port_u_2_2[2]), .ZN(port_c_2[2]) );
endmodule


module andSNINA ( port_a_0, port_a_1, port_a_2, port_b_0, port_b_1, port_b_2, 
        port_c_0, port_c_1, port_c_2, port_r, port_errorFlag_0, 
        port_errorFlag_1, port_errorFlag_2, clk, reset );
  input [2:0] port_a_0;
  input [2:0] port_a_1;
  input [2:0] port_a_2;
  input [2:0] port_b_0;
  input [2:0] port_b_1;
  input [2:0] port_b_2;
  output [2:0] port_c_0;
  output [2:0] port_c_1;
  output [2:0] port_c_2;
  input [2:0] port_r;
  output [0:0] port_errorFlag_0;
  output [0:0] port_errorFlag_1;
  output [0:0] port_errorFlag_2;
  input clk, reset;

  wire   [2:0] mul_port_c_0_0;
  wire   [2:0] mul_port_c_0_1;
  wire   [2:0] mul_port_c_0_2;
  wire   [2:0] mul_port_c_1_0;
  wire   [2:0] mul_port_c_1_1;
  wire   [2:0] mul_port_c_1_2;
  wire   [2:0] mul_port_c_2_0;
  wire   [2:0] mul_port_c_2_1;
  wire   [2:0] mul_port_c_2_2;
  wire   [2:0] comp_port_c_0;
  wire   [2:0] comp_port_c_1;
  wire   [2:0] comp_port_c_2;

  MultiplicationDetection mul ( .port_a_0(port_a_0), .port_a_1(port_a_1), 
        .port_a_2(port_a_2), .port_b_0(port_b_0), .port_b_1(port_b_1), 
        .port_b_2(port_b_2), .port_c_0_0(mul_port_c_0_0), .port_c_0_1(
        mul_port_c_0_1), .port_c_0_2(mul_port_c_0_2), .port_c_1_0(
        mul_port_c_1_0), .port_c_1_1(mul_port_c_1_1), .port_c_1_2(
        mul_port_c_1_2), .port_c_2_0(mul_port_c_2_0), .port_c_2_1(
        mul_port_c_2_1), .port_c_2_2(mul_port_c_2_2), .port_r(port_r), .clk(
        clk), .reset(1'b0) );
  Detection det ( .port_u_0_0(mul_port_c_0_0), .port_u_0_1(mul_port_c_0_1), 
        .port_u_0_2(mul_port_c_0_2), .port_u_1_0(mul_port_c_1_0), .port_u_1_1(
        mul_port_c_1_1), .port_u_1_2(mul_port_c_1_2), .port_u_2_0(
        mul_port_c_2_0), .port_u_2_1(mul_port_c_2_1), .port_u_2_2(
        mul_port_c_2_2), .port_errorFlag_0(port_errorFlag_0[0]), 
        .port_errorFlag_1(port_errorFlag_1[0]), .port_errorFlag_2(
        port_errorFlag_2[0]), .clk(clk), .reset(1'b0) );
  Compression comp ( .port_u_0_0(mul_port_c_0_0), .port_u_0_1(mul_port_c_0_1), 
        .port_u_0_2(mul_port_c_0_2), .port_u_1_0(mul_port_c_1_0), .port_u_1_1(
        mul_port_c_1_1), .port_u_1_2(mul_port_c_1_2), .port_u_2_0(
        mul_port_c_2_0), .port_u_2_1(mul_port_c_2_1), .port_u_2_2(
        mul_port_c_2_2), .port_c_0(comp_port_c_0), .port_c_1(comp_port_c_1), 
        .port_c_2(comp_port_c_2) );
  DFF_X1 result_0_reg_2_ ( .D(comp_port_c_0[2]), .CK(clk), .Q(port_c_0[2]), 
        .QN() );
  DFF_X1 result_0_reg_1_ ( .D(comp_port_c_0[1]), .CK(clk), .Q(port_c_0[1]), 
        .QN() );
  DFF_X1 result_0_reg_0_ ( .D(comp_port_c_0[0]), .CK(clk), .Q(port_c_0[0]), 
        .QN() );
  DFF_X1 result_1_reg_2_ ( .D(comp_port_c_1[2]), .CK(clk), .Q(port_c_1[2]), 
        .QN() );
  DFF_X1 result_1_reg_1_ ( .D(comp_port_c_1[1]), .CK(clk), .Q(port_c_1[1]), 
        .QN() );
  DFF_X1 result_1_reg_0_ ( .D(comp_port_c_1[0]), .CK(clk), .Q(port_c_1[0]), 
        .QN() );
  DFF_X1 result_2_reg_2_ ( .D(comp_port_c_2[2]), .CK(clk), .Q(port_c_2[2]), 
        .QN() );
  DFF_X1 result_2_reg_1_ ( .D(comp_port_c_2[1]), .CK(clk), .Q(port_c_2[1]), 
        .QN() );
  DFF_X1 result_2_reg_0_ ( .D(comp_port_c_2[0]), .CK(clk), .Q(port_c_2[0]), 
        .QN() );
endmodule

