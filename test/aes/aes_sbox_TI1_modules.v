/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : O-2018.06-SP4
// Date      : Mon Jun 14 10:53:46 2021
/////////////////////////////////////////////////////////////


module lin_map_SHARES3 ( A, Z );
  input [23:0] A;
  output [23:0] Z;
  wire   n1, n2, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n22;
  assign Z[18] = A[16];
  assign Z[10] = A[8];
  assign Z[2] = A[0];

  XOR2_X1 U1 ( .A(n13), .B(n12), .Z(n1) );
  XNOR2_X1 U2 ( .A(A[9]), .B(Z[9]), .ZN(n2) );
  INV_X1 U3 ( .A(n2), .ZN(Z[13]) );
  INV_X1 U4 ( .A(n1), .ZN(Z[19]) );
  XNOR2_X2 U5 ( .A(n16), .B(A[23]), .ZN(Z[23]) );
  XOR2_X2 U6 ( .A(Z[9]), .B(A[12]), .Z(Z[14]) );
  XNOR2_X2 U7 ( .A(n19), .B(n18), .ZN(Z[0]) );
  XNOR2_X1 U8 ( .A(A[14]), .B(A[8]), .ZN(n10) );
  XNOR2_X2 U9 ( .A(A[13]), .B(n10), .ZN(Z[9]) );
  XNOR2_X1 U10 ( .A(A[6]), .B(A[0]), .ZN(n19) );
  XNOR2_X2 U11 ( .A(A[5]), .B(n19), .ZN(Z[1]) );
  XOR2_X2 U12 ( .A(A[7]), .B(Z[1]), .Z(Z[4]) );
  XNOR2_X1 U13 ( .A(A[22]), .B(A[16]), .ZN(n22) );
  XNOR2_X2 U14 ( .A(A[21]), .B(n22), .ZN(Z[17]) );
  XOR2_X1 U15 ( .A(A[9]), .B(A[11]), .Z(n8) );
  XOR2_X1 U16 ( .A(n8), .B(A[12]), .Z(n6) );
  XNOR2_X1 U17 ( .A(A[8]), .B(A[15]), .ZN(n5) );
  XNOR2_X1 U18 ( .A(n6), .B(n5), .ZN(Z[11]) );
  XNOR2_X1 U19 ( .A(Z[13]), .B(A[10]), .ZN(n7) );
  XNOR2_X1 U20 ( .A(n7), .B(A[15]), .ZN(Z[15]) );
  XOR2_X1 U21 ( .A(Z[9]), .B(A[15]), .Z(Z[12]) );
  XOR2_X1 U22 ( .A(A[10]), .B(n8), .Z(n9) );
  XNOR2_X1 U23 ( .A(n10), .B(n9), .ZN(Z[8]) );
  XNOR2_X1 U24 ( .A(Z[4]), .B(A[2]), .ZN(n11) );
  XNOR2_X1 U25 ( .A(n11), .B(A[1]), .ZN(Z[7]) );
  XOR2_X1 U26 ( .A(Z[1]), .B(A[1]), .Z(Z[5]) );
  XOR2_X1 U27 ( .A(A[17]), .B(A[19]), .Z(n20) );
  XOR2_X1 U28 ( .A(n20), .B(A[20]), .Z(n13) );
  XNOR2_X1 U29 ( .A(A[16]), .B(A[23]), .ZN(n12) );
  XOR2_X1 U30 ( .A(Z[1]), .B(A[4]), .Z(Z[6]) );
  XOR2_X1 U31 ( .A(Z[17]), .B(A[23]), .Z(Z[20]) );
  XOR2_X1 U32 ( .A(Z[17]), .B(A[20]), .Z(Z[22]) );
  XOR2_X1 U33 ( .A(A[1]), .B(A[3]), .Z(n17) );
  XOR2_X1 U34 ( .A(n17), .B(A[4]), .Z(n15) );
  XNOR2_X1 U35 ( .A(A[7]), .B(A[0]), .ZN(n14) );
  XNOR2_X1 U36 ( .A(n15), .B(n14), .ZN(Z[3]) );
  XOR2_X1 U37 ( .A(A[17]), .B(Z[17]), .Z(Z[21]) );
  XNOR2_X1 U38 ( .A(Z[21]), .B(A[18]), .ZN(n16) );
  XOR2_X1 U39 ( .A(A[2]), .B(n17), .Z(n18) );
  XOR2_X1 U40 ( .A(A[18]), .B(n20), .Z(n21) );
  XNOR2_X1 U41 ( .A(n22), .B(n21), .ZN(Z[16]) );
endmodule


module GF_SQ_2_SHARES3_0 ( A, Q );
  input [5:0] A;
  output [5:0] Q;

  assign Q[5] = A[4];
  assign Q[4] = A[5];
  assign Q[3] = A[2];
  assign Q[2] = A[3];
  assign Q[1] = A[0];
  assign Q[0] = A[1];

endmodule


module GF_SCLW2_2_SHARES3_0 ( A, Q );
  input [5:0] A;
  output [5:0] Q;

  assign Q[5] = A[4];
  assign Q[3] = A[2];
  assign Q[1] = A[0];

  XOR2_X1 U1 ( .A(A[3]), .B(A[2]), .Z(Q[2]) );
  XOR2_X1 U2 ( .A(A[5]), .B(A[4]), .Z(Q[4]) );
  XOR2_X1 U3 ( .A(A[1]), .B(A[0]), .Z(Q[0]) );
endmodule


module GF_SQ_2_SHARES3_3 ( A, Q );
  input [5:0] A;
  output [5:0] Q;

  assign Q[5] = A[4];
  assign Q[4] = A[5];
  assign Q[3] = A[2];
  assign Q[2] = A[3];
  assign Q[1] = A[0];
  assign Q[0] = A[1];

endmodule


module GF_SQ_SCL_4_SHARES3 ( A, Q );
  input [11:0] A;
  output [11:0] Q;

  wire   [5:0] sA;
  wire   [5:0] aw;

  GF_SQ_2_SHARES3_0 sAsq ( .A(sA), .Q({Q[11:10], Q[7:6], Q[3:2]}) );
  GF_SCLW2_2_SHARES3_0 NxGamma ( .A({A[9:8], A[5:4], A[1:0]}), .Q(aw) );
  GF_SQ_2_SHARES3_3 awsq ( .A(aw), .Q({Q[9:8], Q[5:4], Q[1:0]}) );
  XOR2_X1 U1 ( .A(A[5]), .B(A[7]), .Z(sA[3]) );
  XOR2_X1 U2 ( .A(A[1]), .B(A[3]), .Z(sA[1]) );
  XOR2_X1 U3 ( .A(A[11]), .B(A[9]), .Z(sA[5]) );
  XOR2_X1 U4 ( .A(A[0]), .B(A[2]), .Z(sA[0]) );
  XOR2_X1 U5 ( .A(A[4]), .B(A[6]), .Z(sA[2]) );
  XOR2_X1 U6 ( .A(A[10]), .B(A[8]), .Z(sA[4]) );
endmodule


module s_GF_MULS_2_SHARES3_0 ( A, B, Q );
  input [5:0] A;
  input [5:0] B;
  output [5:0] Q;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79;

  NAND2_X1 U1 ( .A1(A[0]), .A2(B[1]), .ZN(n2) );
  NAND2_X1 U2 ( .A1(B[0]), .A2(A[1]), .ZN(n1) );
  XOR2_X1 U3 ( .A(n2), .B(n1), .Z(n42) );
  NAND2_X1 U4 ( .A1(A[0]), .A2(B[3]), .ZN(n9) );
  XNOR2_X1 U5 ( .A(B[2]), .B(B[1]), .ZN(n3) );
  NAND2_X1 U6 ( .A1(n3), .A2(A[1]), .ZN(n7) );
  NAND2_X1 U7 ( .A1(B[0]), .A2(A[3]), .ZN(n5) );
  NAND2_X1 U8 ( .A1(A[2]), .A2(B[1]), .ZN(n4) );
  XOR2_X1 U9 ( .A(n5), .B(n4), .Z(n6) );
  XNOR2_X1 U10 ( .A(n7), .B(n6), .ZN(n8) );
  XNOR2_X1 U11 ( .A(n9), .B(n8), .ZN(n65) );
  NAND2_X1 U12 ( .A1(B[3]), .A2(A[3]), .ZN(n31) );
  NAND2_X1 U13 ( .A1(B[2]), .A2(A[2]), .ZN(n64) );
  XOR2_X1 U14 ( .A(n31), .B(n64), .Z(n70) );
  XOR2_X1 U15 ( .A(n65), .B(n70), .Z(n11) );
  NAND2_X1 U16 ( .A1(A[0]), .A2(B[2]), .ZN(n10) );
  XNOR2_X1 U17 ( .A(n11), .B(n10), .ZN(n12) );
  XOR2_X1 U18 ( .A(n42), .B(n12), .Z(n15) );
  XOR2_X1 U19 ( .A(A[0]), .B(A[2]), .Z(n13) );
  NAND2_X1 U20 ( .A1(n13), .A2(B[0]), .ZN(n14) );
  XNOR2_X1 U21 ( .A(n15), .B(n14), .ZN(Q[5]) );
  INV_X1 U22 ( .A(B[4]), .ZN(n34) );
  NAND2_X1 U23 ( .A1(n34), .A2(A[4]), .ZN(n19) );
  NAND2_X1 U24 ( .A1(B[4]), .A2(A[2]), .ZN(n17) );
  NAND2_X1 U25 ( .A1(A[3]), .A2(B[2]), .ZN(n16) );
  XOR2_X1 U26 ( .A(n17), .B(n16), .Z(n18) );
  XNOR2_X1 U27 ( .A(n19), .B(n18), .ZN(n26) );
  XNOR2_X1 U28 ( .A(B[2]), .B(B[5]), .ZN(n20) );
  NAND2_X1 U29 ( .A1(n20), .A2(A[5]), .ZN(n24) );
  NAND2_X1 U30 ( .A1(A[2]), .A2(B[3]), .ZN(n22) );
  NAND2_X1 U31 ( .A1(A[4]), .A2(B[2]), .ZN(n21) );
  XOR2_X1 U32 ( .A(n22), .B(n21), .Z(n23) );
  XNOR2_X1 U33 ( .A(n24), .B(n23), .ZN(n25) );
  XNOR2_X1 U34 ( .A(n26), .B(n25), .ZN(n33) );
  NAND2_X1 U35 ( .A1(A[4]), .A2(B[3]), .ZN(n30) );
  NAND2_X1 U36 ( .A1(B[4]), .A2(A[3]), .ZN(n28) );
  NAND2_X1 U37 ( .A1(B[5]), .A2(A[2]), .ZN(n27) );
  XOR2_X1 U38 ( .A(n28), .B(n27), .Z(n29) );
  XNOR2_X1 U39 ( .A(n30), .B(n29), .ZN(n79) );
  XNOR2_X1 U40 ( .A(n31), .B(n79), .ZN(n32) );
  XNOR2_X1 U41 ( .A(n33), .B(n32), .ZN(Q[1]) );
  NAND2_X1 U42 ( .A1(A[4]), .A2(B[1]), .ZN(n41) );
  XNOR2_X1 U43 ( .A(A[1]), .B(A[5]), .ZN(n35) );
  NOR2_X1 U44 ( .A1(n35), .A2(n34), .ZN(n39) );
  XOR2_X1 U45 ( .A(B[0]), .B(B[5]), .Z(n50) );
  NAND2_X1 U46 ( .A1(n50), .A2(A[5]), .ZN(n37) );
  NAND2_X1 U47 ( .A1(B[5]), .A2(A[0]), .ZN(n36) );
  XNOR2_X1 U48 ( .A(n37), .B(n36), .ZN(n38) );
  XNOR2_X1 U49 ( .A(n39), .B(n38), .ZN(n40) );
  XNOR2_X1 U50 ( .A(n41), .B(n40), .ZN(n52) );
  XNOR2_X1 U51 ( .A(n42), .B(n52), .ZN(n49) );
  XNOR2_X1 U52 ( .A(B[0]), .B(B[4]), .ZN(n47) );
  NAND2_X1 U53 ( .A1(A[5]), .A2(B[1]), .ZN(n45) );
  INV_X1 U54 ( .A(B[5]), .ZN(n43) );
  NAND2_X1 U55 ( .A1(A[1]), .A2(n43), .ZN(n44) );
  XOR2_X1 U56 ( .A(n45), .B(n44), .Z(n46) );
  XNOR2_X1 U57 ( .A(n47), .B(n46), .ZN(n48) );
  XNOR2_X1 U58 ( .A(n49), .B(n48), .ZN(Q[2]) );
  INV_X1 U59 ( .A(A[4]), .ZN(n51) );
  NOR2_X1 U60 ( .A1(n51), .A2(n50), .ZN(n59) );
  XOR2_X1 U61 ( .A(A[5]), .B(n52), .Z(n55) );
  INV_X1 U62 ( .A(B[1]), .ZN(n53) );
  NAND2_X1 U63 ( .A1(A[1]), .A2(n53), .ZN(n54) );
  XNOR2_X1 U64 ( .A(n55), .B(n54), .ZN(n57) );
  NAND2_X1 U65 ( .A1(B[4]), .A2(A[0]), .ZN(n56) );
  XOR2_X1 U66 ( .A(n57), .B(n56), .Z(n58) );
  XNOR2_X1 U67 ( .A(n59), .B(n58), .ZN(Q[3]) );
  XOR2_X1 U68 ( .A(A[1]), .B(A[2]), .Z(n60) );
  NAND2_X1 U69 ( .A1(n60), .A2(B[3]), .ZN(n62) );
  NAND2_X1 U70 ( .A1(A[3]), .A2(B[1]), .ZN(n61) );
  XOR2_X1 U71 ( .A(n62), .B(n61), .Z(n63) );
  XNOR2_X1 U72 ( .A(n64), .B(n63), .ZN(n67) );
  XNOR2_X1 U73 ( .A(B[0]), .B(n65), .ZN(n66) );
  XNOR2_X1 U74 ( .A(n67), .B(n66), .ZN(Q[4]) );
  NAND2_X1 U75 ( .A1(B[5]), .A2(A[3]), .ZN(n69) );
  NAND2_X1 U76 ( .A1(A[5]), .A2(B[3]), .ZN(n68) );
  XOR2_X1 U77 ( .A(n69), .B(n68), .Z(n74) );
  XOR2_X1 U78 ( .A(B[4]), .B(n70), .Z(n72) );
  NAND2_X1 U79 ( .A1(B[5]), .A2(A[4]), .ZN(n71) );
  XNOR2_X1 U80 ( .A(n72), .B(n71), .ZN(n73) );
  XOR2_X1 U81 ( .A(n74), .B(n73), .Z(n77) );
  XOR2_X1 U82 ( .A(A[3]), .B(A[5]), .Z(n75) );
  NAND2_X1 U83 ( .A1(n75), .A2(B[2]), .ZN(n76) );
  XNOR2_X1 U84 ( .A(n77), .B(n76), .ZN(n78) );
  XOR2_X1 U85 ( .A(n79), .B(n78), .Z(Q[0]) );
endmodule


module XOR_n_n2_0 ( A, B, Q );
  input [1:0] A;
  input [1:0] B;
  output [1:0] Q;


  XOR2_X1 U1 ( .A(A[1]), .B(B[1]), .Z(Q[1]) );
  XOR2_X1 U2 ( .A(A[0]), .B(B[0]), .Z(Q[0]) );
endmodule


module XOR_n_n2_21 ( A, B, Q );
  input [1:0] A;
  input [1:0] B;
  output [1:0] Q;


  XOR2_X1 U1 ( .A(A[1]), .B(B[1]), .Z(Q[1]) );
  XOR2_X1 U2 ( .A(A[0]), .B(B[0]), .Z(Q[0]) );
endmodule


module XOR_n_n4_0 ( A, B, Q );
  input [3:0] A;
  input [3:0] B;
  output [3:0] Q;


  XOR2_X1 U1 ( .A(A[0]), .B(B[0]), .Z(Q[0]) );
  XOR2_X1 U2 ( .A(A[1]), .B(B[1]), .Z(Q[1]) );
  XOR2_X1 U3 ( .A(A[2]), .B(B[2]), .Z(Q[2]) );
  XOR2_X1 U4 ( .A(A[3]), .B(B[3]), .Z(Q[3]) );
endmodule


module AddMask_1_SHARES3_NumberOfBits2_0 ( A, NewMask, Q );
  input [5:0] A;
  input [3:0] NewMask;
  output [5:0] Q;

  wire   [1:0] MaskXOR;

  XOR_n_n2_0 MaskXORInst ( .A(NewMask[1:0]), .B(NewMask[3:2]), .Q(MaskXOR) );
  XOR_n_n2_21 XORInst1 ( .A(A[5:4]), .B(MaskXOR), .Q(Q[5:4]) );
  XOR_n_n4_0 XORInst2 ( .A(A[3:0]), .B(NewMask), .Q(Q[3:0]) );
endmodule


module s_GF_MULS_2_SHARES3_11 ( A, B, Q );
  input [5:0] A;
  input [5:0] B;
  output [5:0] Q;
  wire   n207, n208, n209, n210, n211, n212, n213, n214, n215, n216, n217,
         n218, n219, n220, n221, n222, n223, n224, n225, n226, n227, n228,
         n229, n230, n231, n232, n233, n234, n235, n236, n237, n238, n239,
         n240, n241, n242, n243, n244, n245, n246, n247, n248, n249, n250,
         n251, n252, n253, n254, n255, n256, n257, n258, n259, n260, n261,
         n262, n263, n264, n265, n266, n267, n268, n269, n270, n271, n272,
         n273, n274, n275, n276, n277, n278, n279, n280, n281, n282, n283,
         n284;

  NAND2_X1 U1 ( .A1(A[0]), .A2(B[1]), .ZN(n208) );
  NAND2_X1 U2 ( .A1(B[0]), .A2(A[1]), .ZN(n207) );
  XOR2_X1 U3 ( .A(n208), .B(n207), .Z(n244) );
  NAND2_X1 U4 ( .A1(A[0]), .A2(B[2]), .ZN(n210) );
  NAND2_X1 U5 ( .A1(B[3]), .A2(A[3]), .ZN(n209) );
  XOR2_X1 U6 ( .A(n210), .B(n209), .Z(n211) );
  XOR2_X1 U7 ( .A(n244), .B(n211), .Z(n214) );
  XOR2_X1 U8 ( .A(A[2]), .B(A[0]), .Z(n212) );
  NAND2_X1 U9 ( .A1(n212), .A2(B[0]), .ZN(n213) );
  XNOR2_X1 U10 ( .A(n214), .B(n213), .ZN(n223) );
  XNOR2_X1 U11 ( .A(B[2]), .B(B[1]), .ZN(n216) );
  NAND2_X1 U12 ( .A1(n216), .A2(A[1]), .ZN(n220) );
  INV_X1 U13 ( .A(A[2]), .ZN(n215) );
  NOR2_X1 U14 ( .A1(n216), .A2(n215), .ZN(n218) );
  NAND2_X1 U15 ( .A1(A[3]), .A2(B[0]), .ZN(n217) );
  XNOR2_X1 U16 ( .A(n218), .B(n217), .ZN(n219) );
  XNOR2_X1 U17 ( .A(n220), .B(n219), .ZN(n222) );
  NAND2_X1 U18 ( .A1(A[0]), .A2(B[3]), .ZN(n221) );
  XOR2_X1 U19 ( .A(n222), .B(n221), .Z(n269) );
  XNOR2_X1 U20 ( .A(n223), .B(n269), .ZN(Q[5]) );
  XOR2_X1 U21 ( .A(B[4]), .B(B[3]), .Z(n224) );
  NAND2_X1 U22 ( .A1(n224), .A2(A[3]), .ZN(n228) );
  NAND2_X1 U23 ( .A1(B[5]), .A2(A[2]), .ZN(n226) );
  NAND2_X1 U24 ( .A1(A[4]), .A2(B[3]), .ZN(n225) );
  XOR2_X1 U25 ( .A(n226), .B(n225), .Z(n227) );
  XNOR2_X1 U26 ( .A(n228), .B(n227), .ZN(n284) );
  NAND2_X1 U27 ( .A1(B[4]), .A2(A[2]), .ZN(n230) );
  INV_X1 U28 ( .A(B[4]), .ZN(n253) );
  NAND2_X1 U29 ( .A1(A[4]), .A2(n253), .ZN(n229) );
  NAND2_X1 U30 ( .A1(n230), .A2(n229), .ZN(n233) );
  XNOR2_X1 U31 ( .A(A[3]), .B(A[5]), .ZN(n273) );
  XNOR2_X1 U32 ( .A(A[4]), .B(n273), .ZN(n231) );
  NAND2_X1 U33 ( .A1(n231), .A2(B[2]), .ZN(n232) );
  XNOR2_X1 U34 ( .A(n233), .B(n232), .ZN(n235) );
  NAND2_X1 U35 ( .A1(B[3]), .A2(A[2]), .ZN(n265) );
  INV_X1 U36 ( .A(B[5]), .ZN(n242) );
  NAND2_X1 U37 ( .A1(A[5]), .A2(n242), .ZN(n252) );
  XOR2_X1 U38 ( .A(n265), .B(n252), .Z(n234) );
  XNOR2_X1 U39 ( .A(n235), .B(n234), .ZN(n236) );
  XNOR2_X1 U40 ( .A(n284), .B(n236), .ZN(Q[1]) );
  XNOR2_X1 U41 ( .A(n253), .B(B[0]), .ZN(n237) );
  NAND2_X1 U42 ( .A1(n237), .A2(A[5]), .ZN(n241) );
  NAND2_X1 U43 ( .A1(B[1]), .A2(A[4]), .ZN(n239) );
  NAND2_X1 U44 ( .A1(A[0]), .A2(B[5]), .ZN(n238) );
  XOR2_X1 U45 ( .A(n239), .B(n238), .Z(n240) );
  XNOR2_X1 U46 ( .A(n241), .B(n240), .ZN(n264) );
  XNOR2_X1 U47 ( .A(n242), .B(B[1]), .ZN(n243) );
  NAND2_X1 U48 ( .A1(n243), .A2(A[5]), .ZN(n247) );
  NAND2_X1 U49 ( .A1(A[1]), .A2(B[5]), .ZN(n245) );
  XNOR2_X1 U50 ( .A(n245), .B(n244), .ZN(n246) );
  XNOR2_X1 U51 ( .A(n247), .B(n246), .ZN(n248) );
  XNOR2_X1 U52 ( .A(B[0]), .B(n248), .ZN(n250) );
  NOR2_X1 U53 ( .A1(B[4]), .A2(A[1]), .ZN(n249) );
  XNOR2_X1 U54 ( .A(n250), .B(n249), .ZN(n251) );
  XNOR2_X1 U55 ( .A(n264), .B(n251), .ZN(Q[2]) );
  NAND2_X1 U56 ( .A1(B[5]), .A2(A[4]), .ZN(n276) );
  NAND2_X1 U57 ( .A1(n276), .A2(n252), .ZN(n262) );
  XNOR2_X1 U58 ( .A(A[1]), .B(A[0]), .ZN(n254) );
  NOR2_X1 U59 ( .A1(n254), .A2(n253), .ZN(n260) );
  INV_X1 U60 ( .A(B[1]), .ZN(n255) );
  NAND2_X1 U61 ( .A1(n255), .A2(A[1]), .ZN(n258) );
  INV_X1 U62 ( .A(B[0]), .ZN(n256) );
  NAND2_X1 U63 ( .A1(n256), .A2(A[4]), .ZN(n257) );
  XNOR2_X1 U64 ( .A(n258), .B(n257), .ZN(n259) );
  XNOR2_X1 U65 ( .A(n260), .B(n259), .ZN(n261) );
  XNOR2_X1 U66 ( .A(n262), .B(n261), .ZN(n263) );
  XNOR2_X1 U67 ( .A(n264), .B(n263), .ZN(Q[3]) );
  XNOR2_X1 U68 ( .A(n265), .B(B[0]), .ZN(n267) );
  NAND2_X1 U69 ( .A1(A[3]), .A2(B[1]), .ZN(n266) );
  XNOR2_X1 U70 ( .A(n267), .B(n266), .ZN(n268) );
  XNOR2_X1 U71 ( .A(n269), .B(n268), .ZN(n271) );
  NAND2_X1 U72 ( .A1(A[1]), .A2(B[3]), .ZN(n270) );
  XNOR2_X1 U73 ( .A(n271), .B(n270), .ZN(Q[4]) );
  INV_X1 U74 ( .A(B[2]), .ZN(n272) );
  NOR2_X1 U75 ( .A1(n273), .A2(n272), .ZN(n275) );
  NAND2_X1 U76 ( .A1(B[3]), .A2(A[5]), .ZN(n274) );
  XNOR2_X1 U77 ( .A(n275), .B(n274), .ZN(n279) );
  NAND2_X1 U78 ( .A1(B[5]), .A2(A[3]), .ZN(n277) );
  XNOR2_X1 U79 ( .A(n277), .B(n276), .ZN(n278) );
  XNOR2_X1 U80 ( .A(n279), .B(n278), .ZN(n280) );
  XNOR2_X1 U81 ( .A(B[4]), .B(n280), .ZN(n282) );
  NAND2_X1 U82 ( .A1(A[2]), .A2(B[2]), .ZN(n281) );
  XNOR2_X1 U83 ( .A(n282), .B(n281), .ZN(n283) );
  XNOR2_X1 U84 ( .A(n284), .B(n283), .ZN(Q[0]) );
endmodule


module XOR_n_n2_20 ( A, B, Q );
  input [1:0] A;
  input [1:0] B;
  output [1:0] Q;


  XOR2_X1 U1 ( .A(A[1]), .B(B[1]), .Z(Q[1]) );
  XOR2_X1 U2 ( .A(A[0]), .B(B[0]), .Z(Q[0]) );
endmodule


module XOR_n_n2_19 ( A, B, Q );
  input [1:0] A;
  input [1:0] B;
  output [1:0] Q;


  XOR2_X1 U1 ( .A(A[1]), .B(B[1]), .Z(Q[1]) );
  XOR2_X1 U2 ( .A(A[0]), .B(B[0]), .Z(Q[0]) );
endmodule


module XOR_n_n4_12 ( A, B, Q );
  input [3:0] A;
  input [3:0] B;
  output [3:0] Q;


  XOR2_X1 U1 ( .A(A[0]), .B(B[0]), .Z(Q[0]) );
  XOR2_X1 U2 ( .A(A[1]), .B(B[1]), .Z(Q[1]) );
  XOR2_X1 U3 ( .A(A[2]), .B(B[2]), .Z(Q[2]) );
  XOR2_X1 U4 ( .A(A[3]), .B(B[3]), .Z(Q[3]) );
endmodule


module AddMask_1_SHARES3_NumberOfBits2_10 ( A, NewMask, Q );
  input [5:0] A;
  input [3:0] NewMask;
  output [5:0] Q;

  wire   [1:0] MaskXOR;

  XOR_n_n2_20 MaskXORInst ( .A(NewMask[1:0]), .B(NewMask[3:2]), .Q(MaskXOR) );
  XOR_n_n2_19 XORInst1 ( .A(A[5:4]), .B(MaskXOR), .Q(Q[5:4]) );
  XOR_n_n4_12 XORInst2 ( .A(A[3:0]), .B(NewMask), .Q(Q[3:0]) );
endmodule


module s_GF_MULS_2_SHARES3_10 ( A, B, Q );
  input [5:0] A;
  input [5:0] B;
  output [5:0] Q;
  wire   n207, n208, n209, n210, n211, n212, n213, n214, n215, n216, n217,
         n218, n219, n220, n221, n222, n223, n224, n225, n226, n227, n228,
         n229, n230, n231, n232, n233, n234, n235, n236, n237, n238, n239,
         n240, n241, n242, n243, n244, n245, n246, n247, n248, n249, n250,
         n251, n252, n253, n254, n255, n256, n257, n258, n259, n260, n261,
         n262, n263, n264, n265, n266, n267, n268, n269, n270, n271, n272,
         n273, n274, n275, n276, n277, n278, n279, n280, n281, n282, n283,
         n284;

  NAND2_X1 U1 ( .A1(A[0]), .A2(B[1]), .ZN(n208) );
  NAND2_X1 U2 ( .A1(B[0]), .A2(A[1]), .ZN(n207) );
  XOR2_X1 U3 ( .A(n208), .B(n207), .Z(n244) );
  NAND2_X1 U4 ( .A1(A[0]), .A2(B[2]), .ZN(n210) );
  NAND2_X1 U5 ( .A1(B[3]), .A2(A[3]), .ZN(n209) );
  XOR2_X1 U6 ( .A(n210), .B(n209), .Z(n211) );
  XOR2_X1 U7 ( .A(n244), .B(n211), .Z(n214) );
  XOR2_X1 U8 ( .A(A[2]), .B(A[0]), .Z(n212) );
  NAND2_X1 U9 ( .A1(n212), .A2(B[0]), .ZN(n213) );
  XNOR2_X1 U10 ( .A(n214), .B(n213), .ZN(n223) );
  XNOR2_X1 U11 ( .A(B[2]), .B(B[1]), .ZN(n216) );
  NAND2_X1 U12 ( .A1(n216), .A2(A[1]), .ZN(n220) );
  INV_X1 U13 ( .A(A[2]), .ZN(n215) );
  NOR2_X1 U14 ( .A1(n216), .A2(n215), .ZN(n218) );
  NAND2_X1 U15 ( .A1(A[3]), .A2(B[0]), .ZN(n217) );
  XNOR2_X1 U16 ( .A(n218), .B(n217), .ZN(n219) );
  XNOR2_X1 U17 ( .A(n220), .B(n219), .ZN(n222) );
  NAND2_X1 U18 ( .A1(A[0]), .A2(B[3]), .ZN(n221) );
  XOR2_X1 U19 ( .A(n222), .B(n221), .Z(n269) );
  XNOR2_X1 U20 ( .A(n223), .B(n269), .ZN(Q[5]) );
  XOR2_X1 U21 ( .A(B[4]), .B(B[3]), .Z(n224) );
  NAND2_X1 U22 ( .A1(n224), .A2(A[3]), .ZN(n228) );
  NAND2_X1 U23 ( .A1(B[5]), .A2(A[2]), .ZN(n226) );
  NAND2_X1 U24 ( .A1(A[4]), .A2(B[3]), .ZN(n225) );
  XOR2_X1 U25 ( .A(n226), .B(n225), .Z(n227) );
  XNOR2_X1 U26 ( .A(n228), .B(n227), .ZN(n284) );
  NAND2_X1 U27 ( .A1(B[4]), .A2(A[2]), .ZN(n230) );
  INV_X1 U28 ( .A(B[4]), .ZN(n253) );
  NAND2_X1 U29 ( .A1(A[4]), .A2(n253), .ZN(n229) );
  NAND2_X1 U30 ( .A1(n230), .A2(n229), .ZN(n233) );
  XNOR2_X1 U31 ( .A(A[3]), .B(A[5]), .ZN(n273) );
  XNOR2_X1 U32 ( .A(A[4]), .B(n273), .ZN(n231) );
  NAND2_X1 U33 ( .A1(n231), .A2(B[2]), .ZN(n232) );
  XNOR2_X1 U34 ( .A(n233), .B(n232), .ZN(n235) );
  NAND2_X1 U35 ( .A1(B[3]), .A2(A[2]), .ZN(n265) );
  INV_X1 U36 ( .A(B[5]), .ZN(n242) );
  NAND2_X1 U37 ( .A1(A[5]), .A2(n242), .ZN(n252) );
  XOR2_X1 U38 ( .A(n265), .B(n252), .Z(n234) );
  XNOR2_X1 U39 ( .A(n235), .B(n234), .ZN(n236) );
  XNOR2_X1 U40 ( .A(n284), .B(n236), .ZN(Q[1]) );
  XNOR2_X1 U41 ( .A(n253), .B(B[0]), .ZN(n237) );
  NAND2_X1 U42 ( .A1(n237), .A2(A[5]), .ZN(n241) );
  NAND2_X1 U43 ( .A1(B[1]), .A2(A[4]), .ZN(n239) );
  NAND2_X1 U44 ( .A1(A[0]), .A2(B[5]), .ZN(n238) );
  XOR2_X1 U45 ( .A(n239), .B(n238), .Z(n240) );
  XNOR2_X1 U46 ( .A(n241), .B(n240), .ZN(n264) );
  XNOR2_X1 U47 ( .A(n242), .B(B[1]), .ZN(n243) );
  NAND2_X1 U48 ( .A1(n243), .A2(A[5]), .ZN(n247) );
  NAND2_X1 U49 ( .A1(A[1]), .A2(B[5]), .ZN(n245) );
  XNOR2_X1 U50 ( .A(n245), .B(n244), .ZN(n246) );
  XNOR2_X1 U51 ( .A(n247), .B(n246), .ZN(n248) );
  XNOR2_X1 U52 ( .A(B[0]), .B(n248), .ZN(n250) );
  NOR2_X1 U53 ( .A1(B[4]), .A2(A[1]), .ZN(n249) );
  XNOR2_X1 U54 ( .A(n250), .B(n249), .ZN(n251) );
  XNOR2_X1 U55 ( .A(n264), .B(n251), .ZN(Q[2]) );
  NAND2_X1 U56 ( .A1(B[5]), .A2(A[4]), .ZN(n276) );
  NAND2_X1 U57 ( .A1(n276), .A2(n252), .ZN(n262) );
  XNOR2_X1 U58 ( .A(A[1]), .B(A[0]), .ZN(n254) );
  NOR2_X1 U59 ( .A1(n254), .A2(n253), .ZN(n260) );
  INV_X1 U60 ( .A(B[1]), .ZN(n255) );
  NAND2_X1 U61 ( .A1(n255), .A2(A[1]), .ZN(n258) );
  INV_X1 U62 ( .A(B[0]), .ZN(n256) );
  NAND2_X1 U63 ( .A1(n256), .A2(A[4]), .ZN(n257) );
  XNOR2_X1 U64 ( .A(n258), .B(n257), .ZN(n259) );
  XNOR2_X1 U65 ( .A(n260), .B(n259), .ZN(n261) );
  XNOR2_X1 U66 ( .A(n262), .B(n261), .ZN(n263) );
  XNOR2_X1 U67 ( .A(n264), .B(n263), .ZN(Q[3]) );
  XNOR2_X1 U68 ( .A(n265), .B(B[0]), .ZN(n267) );
  NAND2_X1 U69 ( .A1(A[3]), .A2(B[1]), .ZN(n266) );
  XNOR2_X1 U70 ( .A(n267), .B(n266), .ZN(n268) );
  XNOR2_X1 U71 ( .A(n269), .B(n268), .ZN(n271) );
  NAND2_X1 U72 ( .A1(A[1]), .A2(B[3]), .ZN(n270) );
  XNOR2_X1 U73 ( .A(n271), .B(n270), .ZN(Q[4]) );
  INV_X1 U74 ( .A(B[2]), .ZN(n272) );
  NOR2_X1 U75 ( .A1(n273), .A2(n272), .ZN(n275) );
  NAND2_X1 U76 ( .A1(B[3]), .A2(A[5]), .ZN(n274) );
  XNOR2_X1 U77 ( .A(n275), .B(n274), .ZN(n279) );
  NAND2_X1 U78 ( .A1(B[5]), .A2(A[3]), .ZN(n277) );
  XNOR2_X1 U79 ( .A(n277), .B(n276), .ZN(n278) );
  XNOR2_X1 U80 ( .A(n279), .B(n278), .ZN(n280) );
  XNOR2_X1 U81 ( .A(B[4]), .B(n280), .ZN(n282) );
  NAND2_X1 U82 ( .A1(A[2]), .A2(B[2]), .ZN(n281) );
  XNOR2_X1 U83 ( .A(n282), .B(n281), .ZN(n283) );
  XNOR2_X1 U84 ( .A(n284), .B(n283), .ZN(Q[0]) );
endmodule


module XOR_n_n2_18 ( A, B, Q );
  input [1:0] A;
  input [1:0] B;
  output [1:0] Q;


  XOR2_X1 U1 ( .A(A[1]), .B(B[1]), .Z(Q[1]) );
  XOR2_X1 U2 ( .A(A[0]), .B(B[0]), .Z(Q[0]) );
endmodule


module XOR_n_n2_17 ( A, B, Q );
  input [1:0] A;
  input [1:0] B;
  output [1:0] Q;


  XOR2_X1 U1 ( .A(A[1]), .B(B[1]), .Z(Q[1]) );
  XOR2_X1 U2 ( .A(A[0]), .B(B[0]), .Z(Q[0]) );
endmodule


module XOR_n_n4_11 ( A, B, Q );
  input [3:0] A;
  input [3:0] B;
  output [3:0] Q;


  XOR2_X1 U1 ( .A(A[0]), .B(B[0]), .Z(Q[0]) );
  XOR2_X1 U2 ( .A(A[1]), .B(B[1]), .Z(Q[1]) );
  XOR2_X1 U3 ( .A(A[2]), .B(B[2]), .Z(Q[2]) );
  XOR2_X1 U4 ( .A(A[3]), .B(B[3]), .Z(Q[3]) );
endmodule


module AddMask_1_SHARES3_NumberOfBits2_9 ( A, NewMask, Q );
  input [5:0] A;
  input [3:0] NewMask;
  output [5:0] Q;

  wire   [1:0] MaskXOR;

  XOR_n_n2_18 MaskXORInst ( .A(NewMask[1:0]), .B(NewMask[3:2]), .Q(MaskXOR) );
  XOR_n_n2_17 XORInst1 ( .A(A[5:4]), .B(MaskXOR), .Q(Q[5:4]) );
  XOR_n_n4_11 XORInst2 ( .A(A[3:0]), .B(NewMask), .Q(Q[3:0]) );
endmodule


module GF_MULS_4_NewMask_1_SHARES3_0 ( A, B, NewMask1, NewMask2, NewMask3, ph, 
        p, pl );
  input [11:0] A;
  input [11:0] B;
  input [3:0] NewMask1;
  input [3:0] NewMask2;
  input [3:0] NewMask3;
  output [5:0] ph;
  output [5:0] p;
  output [5:0] pl;

  wire   [5:0] sA;
  wire   [5:0] sB;
  wire   [5:0] Orig_ph;
  wire   [5:0] Orig_p;
  wire   [5:0] Orig_pl;

  s_GF_MULS_2_SHARES3_0 himul ( .A({A[11:10], A[7:6], A[3:2]}), .B({B[11:10], 
        B[7:6], B[3:2]}), .Q(Orig_ph) );
  AddMask_1_SHARES3_NumberOfBits2_0 AddNewMaskph ( .A(Orig_ph), .NewMask(
        NewMask1), .Q(ph) );
  s_GF_MULS_2_SHARES3_11 summul ( .A(sA), .B(sB), .Q(Orig_p) );
  AddMask_1_SHARES3_NumberOfBits2_10 AddNewMaskp ( .A(Orig_p), .NewMask(
        NewMask2), .Q(p) );
  s_GF_MULS_2_SHARES3_10 lowmul ( .A({A[9:8], A[5:4], A[1:0]}), .B({B[9:8], 
        B[5:4], B[1:0]}), .Q(Orig_pl) );
  AddMask_1_SHARES3_NumberOfBits2_9 AddNewMaskpl ( .A(Orig_pl), .NewMask(
        NewMask3), .Q(pl) );
  XOR2_X1 U1 ( .A(A[5]), .B(A[7]), .Z(sA[3]) );
  XOR2_X1 U2 ( .A(A[11]), .B(A[9]), .Z(sA[5]) );
  XOR2_X1 U3 ( .A(B[10]), .B(B[8]), .Z(sB[4]) );
  XOR2_X1 U4 ( .A(A[1]), .B(A[3]), .Z(sA[1]) );
  XOR2_X1 U5 ( .A(A[10]), .B(A[8]), .Z(sA[4]) );
  XOR2_X1 U6 ( .A(A[4]), .B(A[6]), .Z(sA[2]) );
  XOR2_X1 U7 ( .A(B[5]), .B(B[7]), .Z(sB[3]) );
  XOR2_X1 U8 ( .A(A[0]), .B(A[2]), .Z(sA[0]) );
  XOR2_X1 U9 ( .A(B[11]), .B(B[9]), .Z(sB[5]) );
  XOR2_X1 U10 ( .A(B[1]), .B(B[3]), .Z(sB[1]) );
  XOR2_X1 U11 ( .A(B[0]), .B(B[2]), .Z(sB[0]) );
  XOR2_X1 U12 ( .A(B[4]), .B(B[6]), .Z(sB[2]) );
endmodule


module sharedSbox_f1_SHARES3 ( A, NewMask1, NewMask2, NewMask3, Zh, Zl, ab2, 
        ph, p, pl );
  input [23:0] A;
  input [3:0] NewMask1;
  input [3:0] NewMask2;
  input [3:0] NewMask3;
  output [11:0] Zh;
  output [11:0] Zl;
  output [11:0] ab2;
  output [5:0] ph;
  output [5:0] p;
  output [5:0] pl;

  wire   [11:0] sZ;

  lin_map_SHARES3 linearMapping ( .A(A), .Z({Zh[11:8], Zl[11:8], Zh[7:4], 
        Zl[7:4], Zh[3:0], Zl[3:0]}) );
  GF_SQ_SCL_4_SHARES3 abSQ ( .A(sZ), .Q(ab2) );
  GF_MULS_4_NewMask_1_SHARES3_0 phpplmul ( .A(Zh), .B(Zl), .NewMask1(NewMask1), 
        .NewMask2(NewMask2), .NewMask3(NewMask3), .ph(ph), .p(p), .pl(pl) );
  XOR2_X1 U1 ( .A(Zh[0]), .B(Zl[0]), .Z(sZ[0]) );
  XOR2_X1 U2 ( .A(Zh[4]), .B(Zl[4]), .Z(sZ[4]) );
  XOR2_X1 U3 ( .A(Zh[8]), .B(Zl[8]), .Z(sZ[8]) );
  XOR2_X1 U4 ( .A(Zh[1]), .B(Zl[1]), .Z(sZ[1]) );
  XOR2_X1 U5 ( .A(Zh[5]), .B(Zl[5]), .Z(sZ[5]) );
  XOR2_X1 U6 ( .A(Zh[9]), .B(Zl[9]), .Z(sZ[9]) );
  XOR2_X1 U7 ( .A(Zh[7]), .B(Zl[7]), .Z(sZ[7]) );
  XOR2_X1 U8 ( .A(Zh[3]), .B(Zl[3]), .Z(sZ[3]) );
  XOR2_X1 U9 ( .A(Zh[11]), .B(Zl[11]), .Z(sZ[11]) );
  XOR2_X1 U10 ( .A(Zh[2]), .B(Zl[2]), .Z(sZ[2]) );
  XOR2_X1 U11 ( .A(Zh[6]), .B(Zl[6]), .Z(sZ[6]) );
  XOR2_X1 U12 ( .A(Zh[10]), .B(Zl[10]), .Z(sZ[10]) );
endmodule


module ff_NBITS54 ( clk, D, Q );
  input [53:0] D;
  output [53:0] Q;
  input clk;


  DFF_X1 s_current_state_reg_53_ ( .D(D[53]), .CK(clk), .Q(Q[53]), .QN() );
  DFF_X1 s_current_state_reg_52_ ( .D(D[52]), .CK(clk), .Q(Q[52]), .QN() );
  DFF_X1 s_current_state_reg_51_ ( .D(D[51]), .CK(clk), .Q(Q[51]), .QN() );
  DFF_X1 s_current_state_reg_50_ ( .D(D[50]), .CK(clk), .Q(Q[50]), .QN() );
  DFF_X1 s_current_state_reg_49_ ( .D(D[49]), .CK(clk), .Q(Q[49]), .QN() );
  DFF_X1 s_current_state_reg_48_ ( .D(D[48]), .CK(clk), .Q(Q[48]), .QN() );
  DFF_X1 s_current_state_reg_47_ ( .D(D[47]), .CK(clk), .Q(Q[47]), .QN() );
  DFF_X1 s_current_state_reg_46_ ( .D(D[46]), .CK(clk), .Q(Q[46]), .QN() );
  DFF_X1 s_current_state_reg_45_ ( .D(D[45]), .CK(clk), .Q(Q[45]), .QN() );
  DFF_X1 s_current_state_reg_44_ ( .D(D[44]), .CK(clk), .Q(Q[44]), .QN() );
  DFF_X1 s_current_state_reg_43_ ( .D(D[43]), .CK(clk), .Q(Q[43]), .QN() );
  DFF_X1 s_current_state_reg_42_ ( .D(D[42]), .CK(clk), .Q(Q[42]), .QN() );
  DFF_X1 s_current_state_reg_41_ ( .D(D[41]), .CK(clk), .Q(Q[41]), .QN() );
  DFF_X1 s_current_state_reg_40_ ( .D(D[40]), .CK(clk), .Q(Q[40]), .QN() );
  DFF_X1 s_current_state_reg_39_ ( .D(D[39]), .CK(clk), .Q(Q[39]), .QN() );
  DFF_X1 s_current_state_reg_38_ ( .D(D[38]), .CK(clk), .Q(Q[38]), .QN() );
  DFF_X1 s_current_state_reg_37_ ( .D(D[37]), .CK(clk), .Q(Q[37]), .QN() );
  DFF_X1 s_current_state_reg_36_ ( .D(D[36]), .CK(clk), .Q(Q[36]), .QN() );
  DFF_X1 s_current_state_reg_35_ ( .D(D[35]), .CK(clk), .Q(Q[35]), .QN() );
  DFF_X1 s_current_state_reg_34_ ( .D(D[34]), .CK(clk), .Q(Q[34]), .QN() );
  DFF_X1 s_current_state_reg_33_ ( .D(D[33]), .CK(clk), .Q(Q[33]), .QN() );
  DFF_X1 s_current_state_reg_32_ ( .D(D[32]), .CK(clk), .Q(Q[32]), .QN() );
  DFF_X1 s_current_state_reg_31_ ( .D(D[31]), .CK(clk), .Q(Q[31]), .QN() );
  DFF_X1 s_current_state_reg_30_ ( .D(D[30]), .CK(clk), .Q(Q[30]), .QN() );
  DFF_X1 s_current_state_reg_29_ ( .D(D[29]), .CK(clk), .Q(Q[29]), .QN() );
  DFF_X1 s_current_state_reg_28_ ( .D(D[28]), .CK(clk), .Q(Q[28]), .QN() );
  DFF_X1 s_current_state_reg_27_ ( .D(D[27]), .CK(clk), .Q(Q[27]), .QN() );
  DFF_X1 s_current_state_reg_26_ ( .D(D[26]), .CK(clk), .Q(Q[26]), .QN() );
  DFF_X1 s_current_state_reg_25_ ( .D(D[25]), .CK(clk), .Q(Q[25]), .QN() );
  DFF_X1 s_current_state_reg_24_ ( .D(D[24]), .CK(clk), .Q(Q[24]), .QN() );
  DFF_X1 s_current_state_reg_23_ ( .D(D[23]), .CK(clk), .Q(Q[23]), .QN() );
  DFF_X1 s_current_state_reg_22_ ( .D(D[22]), .CK(clk), .Q(Q[22]), .QN() );
  DFF_X1 s_current_state_reg_21_ ( .D(D[21]), .CK(clk), .Q(Q[21]), .QN() );
  DFF_X1 s_current_state_reg_20_ ( .D(D[20]), .CK(clk), .Q(Q[20]), .QN() );
  DFF_X1 s_current_state_reg_19_ ( .D(D[19]), .CK(clk), .Q(Q[19]), .QN() );
  DFF_X1 s_current_state_reg_18_ ( .D(D[18]), .CK(clk), .Q(Q[18]), .QN() );
  DFF_X1 s_current_state_reg_17_ ( .D(D[17]), .CK(clk), .Q(Q[17]), .QN() );
  DFF_X1 s_current_state_reg_16_ ( .D(D[16]), .CK(clk), .Q(Q[16]), .QN() );
  DFF_X1 s_current_state_reg_15_ ( .D(D[15]), .CK(clk), .Q(Q[15]), .QN() );
  DFF_X1 s_current_state_reg_14_ ( .D(D[14]), .CK(clk), .Q(Q[14]), .QN() );
  DFF_X1 s_current_state_reg_13_ ( .D(D[13]), .CK(clk), .Q(Q[13]), .QN() );
  DFF_X1 s_current_state_reg_12_ ( .D(D[12]), .CK(clk), .Q(Q[12]), .QN() );
  DFF_X1 s_current_state_reg_11_ ( .D(D[11]), .CK(clk), .Q(Q[11]), .QN() );
  DFF_X1 s_current_state_reg_10_ ( .D(D[10]), .CK(clk), .Q(Q[10]), .QN() );
  DFF_X1 s_current_state_reg_9_ ( .D(D[9]), .CK(clk), .Q(Q[9]), .QN() );
  DFF_X1 s_current_state_reg_8_ ( .D(D[8]), .CK(clk), .Q(Q[8]), .QN() );
  DFF_X1 s_current_state_reg_7_ ( .D(D[7]), .CK(clk), .Q(Q[7]), .QN() );
  DFF_X1 s_current_state_reg_6_ ( .D(D[6]), .CK(clk), .Q(Q[6]), .QN() );
  DFF_X1 s_current_state_reg_5_ ( .D(D[5]), .CK(clk), .Q(Q[5]), .QN() );
  DFF_X1 s_current_state_reg_4_ ( .D(D[4]), .CK(clk), .Q(Q[4]), .QN() );
  DFF_X1 s_current_state_reg_3_ ( .D(D[3]), .CK(clk), .Q(Q[3]), .QN() );
  DFF_X1 s_current_state_reg_2_ ( .D(D[2]), .CK(clk), .Q(Q[2]), .QN() );
  DFF_X1 s_current_state_reg_1_ ( .D(D[1]), .CK(clk), .Q(Q[1]), .QN() );
  DFF_X1 s_current_state_reg_0_ ( .D(D[0]), .CK(clk), .Q(Q[0]), .QN() );
endmodule


module GF_SCLW2_2_SHARES3_4 ( A, Q );
  input [5:0] A;
  output [5:0] Q;

  assign Q[5] = A[4];
  assign Q[3] = A[2];
  assign Q[1] = A[0];

  XOR2_X1 U1 ( .A(A[1]), .B(A[0]), .Z(Q[0]) );
  XOR2_X1 U2 ( .A(A[3]), .B(A[2]), .Z(Q[2]) );
  XOR2_X1 U3 ( .A(A[5]), .B(A[4]), .Z(Q[4]) );
endmodule


module GF_MULS_4_NewMask_2_SHARES3_0 ( ph, p, pl, Q );
  input [5:0] ph;
  input [5:0] p;
  input [5:0] pl;
  output [11:0] Q;

  wire   [5:0] pw2;

  GF_SCLW2_2_SHARES3_4 NxGAMMA ( .A(p), .Q(pw2) );
  XOR2_X1 U1 ( .A(pw2[1]), .B(ph[1]), .Z(Q[3]) );
  XOR2_X1 U2 ( .A(pw2[5]), .B(ph[5]), .Z(Q[11]) );
  XOR2_X1 U3 ( .A(pw2[4]), .B(pl[4]), .Z(Q[8]) );
  XOR2_X1 U4 ( .A(pw2[3]), .B(ph[3]), .Z(Q[7]) );
  XOR2_X1 U5 ( .A(pw2[4]), .B(ph[4]), .Z(Q[10]) );
  XOR2_X1 U6 ( .A(pw2[2]), .B(ph[2]), .Z(Q[6]) );
  XOR2_X1 U7 ( .A(pw2[3]), .B(pl[3]), .Z(Q[5]) );
  XOR2_X1 U8 ( .A(pw2[0]), .B(ph[0]), .Z(Q[2]) );
  XOR2_X1 U9 ( .A(pw2[0]), .B(pl[0]), .Z(Q[0]) );
  XOR2_X1 U10 ( .A(pw2[5]), .B(pl[5]), .Z(Q[9]) );
  XOR2_X1 U11 ( .A(pw2[2]), .B(pl[2]), .Z(Q[4]) );
  XOR2_X1 U12 ( .A(pw2[1]), .B(pl[1]), .Z(Q[1]) );
endmodule


module s_GF_MULS_2_SHARES3_9 ( A, B, Q );
  input [5:0] A;
  input [5:0] B;
  output [5:0] Q;
  wire   n207, n208, n209, n210, n211, n212, n213, n214, n215, n216, n217,
         n218, n219, n220, n221, n222, n223, n224, n225, n226, n227, n228,
         n229, n230, n231, n232, n233, n234, n235, n236, n237, n238, n239,
         n240, n241, n242, n243, n244, n245, n246, n247, n248, n249, n250,
         n251, n252, n253, n254, n255, n256, n257, n258, n259, n260, n261,
         n262, n263, n264, n265, n266, n267, n268, n269, n270, n271, n272,
         n273, n274, n275, n276, n277, n278, n279, n280, n281, n282, n283,
         n284;

  NAND2_X1 U1 ( .A1(A[0]), .A2(B[1]), .ZN(n208) );
  NAND2_X1 U2 ( .A1(B[0]), .A2(A[1]), .ZN(n207) );
  XOR2_X1 U3 ( .A(n208), .B(n207), .Z(n244) );
  NAND2_X1 U4 ( .A1(A[0]), .A2(B[2]), .ZN(n210) );
  NAND2_X1 U5 ( .A1(B[3]), .A2(A[3]), .ZN(n209) );
  XOR2_X1 U6 ( .A(n210), .B(n209), .Z(n211) );
  XOR2_X1 U7 ( .A(n244), .B(n211), .Z(n214) );
  XOR2_X1 U8 ( .A(A[2]), .B(A[0]), .Z(n212) );
  NAND2_X1 U9 ( .A1(n212), .A2(B[0]), .ZN(n213) );
  XNOR2_X1 U10 ( .A(n214), .B(n213), .ZN(n223) );
  XNOR2_X1 U11 ( .A(B[2]), .B(B[1]), .ZN(n216) );
  NAND2_X1 U12 ( .A1(n216), .A2(A[1]), .ZN(n220) );
  INV_X1 U13 ( .A(A[2]), .ZN(n215) );
  NOR2_X1 U14 ( .A1(n216), .A2(n215), .ZN(n218) );
  NAND2_X1 U15 ( .A1(A[3]), .A2(B[0]), .ZN(n217) );
  XNOR2_X1 U16 ( .A(n218), .B(n217), .ZN(n219) );
  XNOR2_X1 U17 ( .A(n220), .B(n219), .ZN(n222) );
  NAND2_X1 U18 ( .A1(A[0]), .A2(B[3]), .ZN(n221) );
  XOR2_X1 U19 ( .A(n222), .B(n221), .Z(n269) );
  XNOR2_X1 U20 ( .A(n223), .B(n269), .ZN(Q[5]) );
  XOR2_X1 U21 ( .A(B[4]), .B(B[3]), .Z(n224) );
  NAND2_X1 U22 ( .A1(n224), .A2(A[3]), .ZN(n228) );
  NAND2_X1 U23 ( .A1(B[5]), .A2(A[2]), .ZN(n226) );
  NAND2_X1 U24 ( .A1(A[4]), .A2(B[3]), .ZN(n225) );
  XOR2_X1 U25 ( .A(n226), .B(n225), .Z(n227) );
  XNOR2_X1 U26 ( .A(n228), .B(n227), .ZN(n284) );
  NAND2_X1 U27 ( .A1(B[4]), .A2(A[2]), .ZN(n230) );
  INV_X1 U28 ( .A(B[4]), .ZN(n253) );
  NAND2_X1 U29 ( .A1(A[4]), .A2(n253), .ZN(n229) );
  NAND2_X1 U30 ( .A1(n230), .A2(n229), .ZN(n233) );
  XNOR2_X1 U31 ( .A(A[3]), .B(A[5]), .ZN(n273) );
  XNOR2_X1 U32 ( .A(A[4]), .B(n273), .ZN(n231) );
  NAND2_X1 U33 ( .A1(n231), .A2(B[2]), .ZN(n232) );
  XNOR2_X1 U34 ( .A(n233), .B(n232), .ZN(n235) );
  NAND2_X1 U35 ( .A1(B[3]), .A2(A[2]), .ZN(n265) );
  INV_X1 U36 ( .A(B[5]), .ZN(n242) );
  NAND2_X1 U37 ( .A1(A[5]), .A2(n242), .ZN(n252) );
  XOR2_X1 U38 ( .A(n265), .B(n252), .Z(n234) );
  XNOR2_X1 U39 ( .A(n235), .B(n234), .ZN(n236) );
  XNOR2_X1 U40 ( .A(n284), .B(n236), .ZN(Q[1]) );
  XNOR2_X1 U41 ( .A(n253), .B(B[0]), .ZN(n237) );
  NAND2_X1 U42 ( .A1(n237), .A2(A[5]), .ZN(n241) );
  NAND2_X1 U43 ( .A1(B[1]), .A2(A[4]), .ZN(n239) );
  NAND2_X1 U44 ( .A1(A[0]), .A2(B[5]), .ZN(n238) );
  XOR2_X1 U45 ( .A(n239), .B(n238), .Z(n240) );
  XNOR2_X1 U46 ( .A(n241), .B(n240), .ZN(n264) );
  XNOR2_X1 U47 ( .A(n242), .B(B[1]), .ZN(n243) );
  NAND2_X1 U48 ( .A1(n243), .A2(A[5]), .ZN(n247) );
  NAND2_X1 U49 ( .A1(A[1]), .A2(B[5]), .ZN(n245) );
  XNOR2_X1 U50 ( .A(n245), .B(n244), .ZN(n246) );
  XNOR2_X1 U51 ( .A(n247), .B(n246), .ZN(n248) );
  XNOR2_X1 U52 ( .A(B[0]), .B(n248), .ZN(n250) );
  NOR2_X1 U53 ( .A1(B[4]), .A2(A[1]), .ZN(n249) );
  XNOR2_X1 U54 ( .A(n250), .B(n249), .ZN(n251) );
  XNOR2_X1 U55 ( .A(n264), .B(n251), .ZN(Q[2]) );
  NAND2_X1 U56 ( .A1(B[5]), .A2(A[4]), .ZN(n276) );
  NAND2_X1 U57 ( .A1(n276), .A2(n252), .ZN(n262) );
  XNOR2_X1 U58 ( .A(A[1]), .B(A[0]), .ZN(n254) );
  NOR2_X1 U59 ( .A1(n254), .A2(n253), .ZN(n260) );
  INV_X1 U60 ( .A(B[1]), .ZN(n255) );
  NAND2_X1 U61 ( .A1(n255), .A2(A[1]), .ZN(n258) );
  INV_X1 U62 ( .A(B[0]), .ZN(n256) );
  NAND2_X1 U63 ( .A1(n256), .A2(A[4]), .ZN(n257) );
  XNOR2_X1 U64 ( .A(n258), .B(n257), .ZN(n259) );
  XNOR2_X1 U65 ( .A(n260), .B(n259), .ZN(n261) );
  XNOR2_X1 U66 ( .A(n262), .B(n261), .ZN(n263) );
  XNOR2_X1 U67 ( .A(n264), .B(n263), .ZN(Q[3]) );
  XNOR2_X1 U68 ( .A(n265), .B(B[0]), .ZN(n267) );
  NAND2_X1 U69 ( .A1(A[3]), .A2(B[1]), .ZN(n266) );
  XNOR2_X1 U70 ( .A(n267), .B(n266), .ZN(n268) );
  XNOR2_X1 U71 ( .A(n269), .B(n268), .ZN(n271) );
  NAND2_X1 U72 ( .A1(A[1]), .A2(B[3]), .ZN(n270) );
  XNOR2_X1 U73 ( .A(n271), .B(n270), .ZN(Q[4]) );
  INV_X1 U74 ( .A(B[2]), .ZN(n272) );
  NOR2_X1 U75 ( .A1(n273), .A2(n272), .ZN(n275) );
  NAND2_X1 U76 ( .A1(B[3]), .A2(A[5]), .ZN(n274) );
  XNOR2_X1 U77 ( .A(n275), .B(n274), .ZN(n279) );
  NAND2_X1 U78 ( .A1(B[5]), .A2(A[3]), .ZN(n277) );
  XNOR2_X1 U79 ( .A(n277), .B(n276), .ZN(n278) );
  XNOR2_X1 U80 ( .A(n279), .B(n278), .ZN(n280) );
  XNOR2_X1 U81 ( .A(B[4]), .B(n280), .ZN(n282) );
  NAND2_X1 U82 ( .A1(A[2]), .A2(B[2]), .ZN(n281) );
  XNOR2_X1 U83 ( .A(n282), .B(n281), .ZN(n283) );
  XNOR2_X1 U84 ( .A(n284), .B(n283), .ZN(Q[0]) );
endmodule


module XOR_n_n2_16 ( A, B, Q );
  input [1:0] A;
  input [1:0] B;
  output [1:0] Q;


  XOR2_X1 U1 ( .A(A[1]), .B(B[1]), .Z(Q[1]) );
  XOR2_X1 U2 ( .A(A[0]), .B(B[0]), .Z(Q[0]) );
endmodule


module XOR_n_n2_15 ( A, B, Q );
  input [1:0] A;
  input [1:0] B;
  output [1:0] Q;


  XOR2_X1 U1 ( .A(A[1]), .B(B[1]), .Z(Q[1]) );
  XOR2_X1 U2 ( .A(A[0]), .B(B[0]), .Z(Q[0]) );
endmodule


module XOR_n_n4_10 ( A, B, Q );
  input [3:0] A;
  input [3:0] B;
  output [3:0] Q;


  XOR2_X1 U1 ( .A(A[0]), .B(B[0]), .Z(Q[0]) );
  XOR2_X1 U2 ( .A(A[1]), .B(B[1]), .Z(Q[1]) );
  XOR2_X1 U3 ( .A(A[2]), .B(B[2]), .Z(Q[2]) );
  XOR2_X1 U4 ( .A(A[3]), .B(B[3]), .Z(Q[3]) );
endmodule


module AddMask_1_SHARES3_NumberOfBits2_8 ( A, NewMask, Q );
  input [5:0] A;
  input [3:0] NewMask;
  output [5:0] Q;

  wire   [1:0] MaskXOR;

  XOR_n_n2_16 MaskXORInst ( .A(NewMask[1:0]), .B(NewMask[3:2]), .Q(MaskXOR) );
  XOR_n_n2_15 XORInst1 ( .A(A[5:4]), .B(MaskXOR), .Q(Q[5:4]) );
  XOR_n_n4_10 XORInst2 ( .A(A[3:0]), .B(NewMask), .Q(Q[3:0]) );
endmodule


module GF_SQ_2_SHARES3_2 ( A, Q );
  input [5:0] A;
  output [5:0] Q;

  assign Q[5] = A[4];
  assign Q[4] = A[5];
  assign Q[3] = A[2];
  assign Q[2] = A[3];
  assign Q[1] = A[0];
  assign Q[0] = A[1];

endmodule


module GF_SCLW2_2_SHARES3_3 ( A, Q );
  input [5:0] A;
  output [5:0] Q;

  assign Q[5] = A[4];
  assign Q[3] = A[2];
  assign Q[1] = A[0];

  XOR2_X1 U1 ( .A(A[1]), .B(A[0]), .Z(Q[0]) );
  XOR2_X1 U2 ( .A(A[3]), .B(A[2]), .Z(Q[2]) );
  XOR2_X1 U3 ( .A(A[5]), .B(A[4]), .Z(Q[4]) );
endmodule


module XOR_n_n2_14 ( A, B, Q );
  input [1:0] A;
  input [1:0] B;
  output [1:0] Q;


  XOR2_X1 U1 ( .A(A[1]), .B(B[1]), .Z(Q[1]) );
  XOR2_X1 U2 ( .A(A[0]), .B(B[0]), .Z(Q[0]) );
endmodule


module XOR_n_n2_13 ( A, B, Q );
  input [1:0] A;
  input [1:0] B;
  output [1:0] Q;


  XOR2_X1 U1 ( .A(A[1]), .B(B[1]), .Z(Q[1]) );
  XOR2_X1 U2 ( .A(A[0]), .B(B[0]), .Z(Q[0]) );
endmodule


module XOR_n_n4_9 ( A, B, Q );
  input [3:0] A;
  input [3:0] B;
  output [3:0] Q;


  XOR2_X1 U1 ( .A(A[1]), .B(B[1]), .Z(Q[1]) );
  XOR2_X1 U2 ( .A(A[3]), .B(B[3]), .Z(Q[3]) );
  XOR2_X1 U3 ( .A(A[0]), .B(B[0]), .Z(Q[0]) );
  XOR2_X1 U4 ( .A(A[2]), .B(B[2]), .Z(Q[2]) );
endmodule


module AddMask_1_SHARES3_NumberOfBits2_7 ( A, NewMask, Q );
  input [5:0] A;
  input [3:0] NewMask;
  output [5:0] Q;

  wire   [1:0] MaskXOR;

  XOR_n_n2_14 MaskXORInst ( .A(NewMask[1:0]), .B(NewMask[3:2]), .Q(MaskXOR) );
  XOR_n_n2_13 XORInst1 ( .A(A[5:4]), .B(MaskXOR), .Q(Q[5:4]) );
  XOR_n_n4_9 XORInst2 ( .A(A[3:0]), .B(NewMask), .Q(Q[3:0]) );
endmodule


module GF_INV_4_1_SHARES3 ( A, NewMask1, NewMask2, gamma1, sA2N, ab, gamma0 );
  input [11:0] A;
  input [3:0] NewMask1;
  input [3:0] NewMask2;
  output [5:0] gamma1;
  output [5:0] sA2N;
  output [5:0] ab;
  output [5:0] gamma0;

  wire   [5:0] Orig_ab;
  wire   [5:0] sA;
  wire   [5:0] sA2;
  wire   [5:0] Orig_sA2N;
  assign gamma1[5] = A[11];
  assign gamma1[4] = A[10];
  assign gamma1[3] = A[7];
  assign gamma1[2] = A[6];
  assign gamma1[1] = A[3];
  assign gamma1[0] = A[2];
  assign gamma0[5] = A[9];
  assign gamma0[4] = A[8];
  assign gamma0[3] = A[5];
  assign gamma0[2] = A[4];
  assign gamma0[1] = A[1];
  assign gamma0[0] = A[0];

  s_GF_MULS_2_SHARES3_9 mul ( .A({A[11:10], A[7:6], A[3:2]}), .B({A[9:8], 
        A[5:4], A[1:0]}), .Q(Orig_ab) );
  AddMask_1_SHARES3_NumberOfBits2_8 AddNewMaskab ( .A(Orig_ab), .NewMask(
        NewMask1), .Q(ab) );
  GF_SQ_2_SHARES3_2 SQ ( .A(sA), .Q(sA2) );
  GF_SCLW2_2_SHARES3_3 NxGAMMA ( .A(sA2), .Q(Orig_sA2N) );
  AddMask_1_SHARES3_NumberOfBits2_7 AddNewMasksA2N ( .A(Orig_sA2N), .NewMask(
        NewMask2), .Q(sA2N) );
  XOR2_X1 U1 ( .A(A[5]), .B(A[7]), .Z(sA[3]) );
  XOR2_X1 U2 ( .A(A[9]), .B(A[11]), .Z(sA[5]) );
  XOR2_X1 U3 ( .A(A[1]), .B(A[3]), .Z(sA[1]) );
  XOR2_X1 U4 ( .A(A[0]), .B(A[2]), .Z(sA[0]) );
  XOR2_X1 U5 ( .A(A[4]), .B(A[6]), .Z(sA[2]) );
  XOR2_X1 U6 ( .A(A[8]), .B(A[10]), .Z(sA[4]) );
endmodule


module sharedSbox_f2_SHARES3 ( Zhin, Zlin, ab2, ph, p, pl, NewMasksA2N, 
        NewMaskab, Zhout, Zlout, gamma1, sA2N, ab, gamma0 );
  input [11:0] Zhin;
  input [11:0] Zlin;
  input [11:0] ab2;
  input [5:0] ph;
  input [5:0] p;
  input [5:0] pl;
  input [3:0] NewMasksA2N;
  input [3:0] NewMaskab;
  output [11:0] Zhout;
  output [11:0] Zlout;
  output [5:0] gamma1;
  output [5:0] sA2N;
  output [5:0] ab;
  output [5:0] gamma0;

  wire   [11:0] abin;
  wire   [11:0] ab2abin;
  assign Zhout[11] = Zhin[11];
  assign Zhout[10] = Zhin[10];
  assign Zhout[9] = Zhin[9];
  assign Zhout[8] = Zhin[8];
  assign Zhout[7] = Zhin[7];
  assign Zhout[6] = Zhin[6];
  assign Zhout[5] = Zhin[5];
  assign Zhout[4] = Zhin[4];
  assign Zhout[3] = Zhin[3];
  assign Zhout[2] = Zhin[2];
  assign Zhout[1] = Zhin[1];
  assign Zhout[0] = Zhin[0];
  assign Zlout[11] = Zlin[11];
  assign Zlout[10] = Zlin[10];
  assign Zlout[9] = Zlin[9];
  assign Zlout[8] = Zlin[8];
  assign Zlout[7] = Zlin[7];
  assign Zlout[6] = Zlin[6];
  assign Zlout[5] = Zlin[5];
  assign Zlout[4] = Zlin[4];
  assign Zlout[3] = Zlin[3];
  assign Zlout[2] = Zlin[2];
  assign Zlout[1] = Zlin[1];
  assign Zlout[0] = Zlin[0];

  GF_MULS_4_NewMask_2_SHARES3_0 abmul ( .ph(ph), .p(p), .pl(pl), .Q(abin) );
  GF_INV_4_1_SHARES3 dinv_1 ( .A(ab2abin), .NewMask1(NewMasksA2N), .NewMask2(
        NewMaskab), .gamma1(gamma1), .sA2N(sA2N), .ab(ab), .gamma0(gamma0) );
  XOR2_X1 U1 ( .A(ab2[9]), .B(abin[9]), .Z(ab2abin[9]) );
  XOR2_X1 U2 ( .A(ab2[5]), .B(abin[5]), .Z(ab2abin[5]) );
  XOR2_X1 U3 ( .A(ab2[0]), .B(abin[0]), .Z(ab2abin[0]) );
  XOR2_X1 U4 ( .A(ab2[7]), .B(abin[7]), .Z(ab2abin[7]) );
  XOR2_X1 U5 ( .A(ab2[3]), .B(abin[3]), .Z(ab2abin[3]) );
  XOR2_X1 U6 ( .A(ab2[1]), .B(abin[1]), .Z(ab2abin[1]) );
  XOR2_X1 U7 ( .A(ab2[8]), .B(abin[8]), .Z(ab2abin[8]) );
  XOR2_X1 U8 ( .A(ab2[4]), .B(abin[4]), .Z(ab2abin[4]) );
  XOR2_X1 U9 ( .A(ab2[2]), .B(abin[2]), .Z(ab2abin[2]) );
  XOR2_X1 U10 ( .A(ab2[6]), .B(abin[6]), .Z(ab2abin[6]) );
  XOR2_X1 U11 ( .A(ab2[10]), .B(abin[10]), .Z(ab2abin[10]) );
  XOR2_X1 U12 ( .A(ab2[11]), .B(abin[11]), .Z(ab2abin[11]) );
endmodule


module ff_NBITS48 ( clk, D, Q );
  input [47:0] D;
  output [47:0] Q;
  input clk;


  DFF_X1 s_current_state_reg_47_ ( .D(D[47]), .CK(clk), .Q(Q[47]), .QN() );
  DFF_X1 s_current_state_reg_46_ ( .D(D[46]), .CK(clk), .Q(Q[46]), .QN() );
  DFF_X1 s_current_state_reg_45_ ( .D(D[45]), .CK(clk), .Q(Q[45]), .QN() );
  DFF_X1 s_current_state_reg_44_ ( .D(D[44]), .CK(clk), .Q(Q[44]), .QN() );
  DFF_X1 s_current_state_reg_43_ ( .D(D[43]), .CK(clk), .Q(Q[43]), .QN() );
  DFF_X1 s_current_state_reg_42_ ( .D(D[42]), .CK(clk), .Q(Q[42]), .QN() );
  DFF_X1 s_current_state_reg_41_ ( .D(D[41]), .CK(clk), .Q(Q[41]), .QN() );
  DFF_X1 s_current_state_reg_40_ ( .D(D[40]), .CK(clk), .Q(Q[40]), .QN() );
  DFF_X1 s_current_state_reg_39_ ( .D(D[39]), .CK(clk), .Q(Q[39]), .QN() );
  DFF_X1 s_current_state_reg_38_ ( .D(D[38]), .CK(clk), .Q(Q[38]), .QN() );
  DFF_X1 s_current_state_reg_37_ ( .D(D[37]), .CK(clk), .Q(Q[37]), .QN() );
  DFF_X1 s_current_state_reg_36_ ( .D(D[36]), .CK(clk), .Q(Q[36]), .QN() );
  DFF_X1 s_current_state_reg_35_ ( .D(D[35]), .CK(clk), .Q(Q[35]), .QN() );
  DFF_X1 s_current_state_reg_34_ ( .D(D[34]), .CK(clk), .Q(Q[34]), .QN() );
  DFF_X1 s_current_state_reg_33_ ( .D(D[33]), .CK(clk), .Q(Q[33]), .QN() );
  DFF_X1 s_current_state_reg_32_ ( .D(D[32]), .CK(clk), .Q(Q[32]), .QN() );
  DFF_X1 s_current_state_reg_31_ ( .D(D[31]), .CK(clk), .Q(Q[31]), .QN() );
  DFF_X1 s_current_state_reg_30_ ( .D(D[30]), .CK(clk), .Q(Q[30]), .QN() );
  DFF_X1 s_current_state_reg_29_ ( .D(D[29]), .CK(clk), .Q(Q[29]), .QN() );
  DFF_X1 s_current_state_reg_28_ ( .D(D[28]), .CK(clk), .Q(Q[28]), .QN() );
  DFF_X1 s_current_state_reg_27_ ( .D(D[27]), .CK(clk), .Q(Q[27]), .QN() );
  DFF_X1 s_current_state_reg_26_ ( .D(D[26]), .CK(clk), .Q(Q[26]), .QN() );
  DFF_X1 s_current_state_reg_25_ ( .D(D[25]), .CK(clk), .Q(Q[25]), .QN() );
  DFF_X1 s_current_state_reg_24_ ( .D(D[24]), .CK(clk), .Q(Q[24]), .QN() );
  DFF_X1 s_current_state_reg_23_ ( .D(D[23]), .CK(clk), .Q(Q[23]), .QN() );
  DFF_X1 s_current_state_reg_22_ ( .D(D[22]), .CK(clk), .Q(Q[22]), .QN() );
  DFF_X1 s_current_state_reg_21_ ( .D(D[21]), .CK(clk), .Q(Q[21]), .QN() );
  DFF_X1 s_current_state_reg_20_ ( .D(D[20]), .CK(clk), .Q(Q[20]), .QN() );
  DFF_X1 s_current_state_reg_19_ ( .D(D[19]), .CK(clk), .Q(Q[19]), .QN() );
  DFF_X1 s_current_state_reg_18_ ( .D(D[18]), .CK(clk), .Q(Q[18]), .QN() );
  DFF_X1 s_current_state_reg_17_ ( .D(D[17]), .CK(clk), .Q(Q[17]), .QN() );
  DFF_X1 s_current_state_reg_16_ ( .D(D[16]), .CK(clk), .Q(Q[16]), .QN() );
  DFF_X1 s_current_state_reg_15_ ( .D(D[15]), .CK(clk), .Q(Q[15]), .QN() );
  DFF_X1 s_current_state_reg_14_ ( .D(D[14]), .CK(clk), .Q(Q[14]), .QN() );
  DFF_X1 s_current_state_reg_13_ ( .D(D[13]), .CK(clk), .Q(Q[13]), .QN() );
  DFF_X1 s_current_state_reg_12_ ( .D(D[12]), .CK(clk), .Q(Q[12]), .QN() );
  DFF_X1 s_current_state_reg_11_ ( .D(D[11]), .CK(clk), .Q(Q[11]), .QN() );
  DFF_X1 s_current_state_reg_10_ ( .D(D[10]), .CK(clk), .Q(Q[10]), .QN() );
  DFF_X1 s_current_state_reg_9_ ( .D(D[9]), .CK(clk), .Q(Q[9]), .QN() );
  DFF_X1 s_current_state_reg_8_ ( .D(D[8]), .CK(clk), .Q(Q[8]), .QN() );
  DFF_X1 s_current_state_reg_7_ ( .D(D[7]), .CK(clk), .Q(Q[7]), .QN() );
  DFF_X1 s_current_state_reg_6_ ( .D(D[6]), .CK(clk), .Q(Q[6]), .QN() );
  DFF_X1 s_current_state_reg_5_ ( .D(D[5]), .CK(clk), .Q(Q[5]), .QN() );
  DFF_X1 s_current_state_reg_4_ ( .D(D[4]), .CK(clk), .Q(Q[4]), .QN() );
  DFF_X1 s_current_state_reg_3_ ( .D(D[3]), .CK(clk), .Q(Q[3]), .QN() );
  DFF_X1 s_current_state_reg_2_ ( .D(D[2]), .CK(clk), .Q(Q[2]), .QN() );
  DFF_X1 s_current_state_reg_1_ ( .D(D[1]), .CK(clk), .Q(Q[1]), .QN() );
  DFF_X1 s_current_state_reg_0_ ( .D(D[0]), .CK(clk), .Q(Q[0]), .QN() );
endmodule


module GF_SQ_2_SHARES3_1 ( A, Q );
  input [5:0] A;
  output [5:0] Q;

  assign Q[5] = A[4];
  assign Q[4] = A[5];
  assign Q[3] = A[2];
  assign Q[2] = A[3];
  assign Q[1] = A[0];
  assign Q[0] = A[1];

endmodule


module s_GF_MULS_2_SHARES3_8 ( A, B, Q );
  input [5:0] A;
  input [5:0] B;
  output [5:0] Q;
  wire   n205, n206, n207, n208, n209, n210, n211, n212, n213, n214, n215,
         n216, n217, n218, n219, n220, n221, n222, n223, n224, n225, n226,
         n227, n228, n229, n230, n231, n232, n233, n234, n235, n236, n237,
         n238, n239, n240, n241, n242, n243, n244, n245, n246, n247, n248,
         n249, n250, n251, n252, n253, n254, n255, n256, n257, n258, n259,
         n260, n261, n262, n263, n264, n265, n266, n267, n268, n269, n270,
         n271, n272, n273, n274, n275, n276, n277, n278, n279, n280, n281,
         n282;

  NAND2_X1 U1 ( .A1(A[0]), .A2(B[1]), .ZN(n206) );
  NAND2_X1 U2 ( .A1(B[0]), .A2(A[1]), .ZN(n205) );
  XOR2_X1 U3 ( .A(n206), .B(n205), .Z(n242) );
  NAND2_X1 U4 ( .A1(A[0]), .A2(B[2]), .ZN(n208) );
  NAND2_X1 U5 ( .A1(B[3]), .A2(A[3]), .ZN(n207) );
  XOR2_X1 U6 ( .A(n208), .B(n207), .Z(n209) );
  XOR2_X1 U7 ( .A(n242), .B(n209), .Z(n212) );
  XOR2_X1 U8 ( .A(A[2]), .B(A[0]), .Z(n210) );
  NAND2_X1 U9 ( .A1(n210), .A2(B[0]), .ZN(n211) );
  XNOR2_X1 U10 ( .A(n212), .B(n211), .ZN(n221) );
  XNOR2_X1 U11 ( .A(B[2]), .B(B[1]), .ZN(n214) );
  NAND2_X1 U12 ( .A1(n214), .A2(A[1]), .ZN(n218) );
  INV_X1 U13 ( .A(A[2]), .ZN(n213) );
  NOR2_X1 U14 ( .A1(n214), .A2(n213), .ZN(n216) );
  NAND2_X1 U15 ( .A1(A[3]), .A2(B[0]), .ZN(n215) );
  XNOR2_X1 U16 ( .A(n216), .B(n215), .ZN(n217) );
  XNOR2_X1 U17 ( .A(n218), .B(n217), .ZN(n220) );
  NAND2_X1 U18 ( .A1(A[0]), .A2(B[3]), .ZN(n219) );
  XOR2_X1 U19 ( .A(n220), .B(n219), .Z(n267) );
  XNOR2_X1 U20 ( .A(n221), .B(n267), .ZN(Q[5]) );
  XOR2_X1 U21 ( .A(B[4]), .B(B[3]), .Z(n222) );
  NAND2_X1 U22 ( .A1(n222), .A2(A[3]), .ZN(n226) );
  NAND2_X1 U23 ( .A1(B[5]), .A2(A[2]), .ZN(n224) );
  NAND2_X1 U24 ( .A1(A[4]), .A2(B[3]), .ZN(n223) );
  XOR2_X1 U25 ( .A(n224), .B(n223), .Z(n225) );
  XNOR2_X1 U26 ( .A(n226), .B(n225), .ZN(n282) );
  NAND2_X1 U27 ( .A1(B[4]), .A2(A[2]), .ZN(n228) );
  INV_X1 U28 ( .A(B[4]), .ZN(n251) );
  NAND2_X1 U29 ( .A1(A[4]), .A2(n251), .ZN(n227) );
  NAND2_X1 U30 ( .A1(n228), .A2(n227), .ZN(n231) );
  XNOR2_X1 U31 ( .A(A[3]), .B(A[5]), .ZN(n271) );
  XNOR2_X1 U32 ( .A(A[4]), .B(n271), .ZN(n229) );
  NAND2_X1 U33 ( .A1(n229), .A2(B[2]), .ZN(n230) );
  XNOR2_X1 U34 ( .A(n231), .B(n230), .ZN(n233) );
  NAND2_X1 U35 ( .A1(B[3]), .A2(A[2]), .ZN(n263) );
  INV_X1 U36 ( .A(B[5]), .ZN(n240) );
  NAND2_X1 U37 ( .A1(A[5]), .A2(n240), .ZN(n250) );
  XOR2_X1 U38 ( .A(n263), .B(n250), .Z(n232) );
  XNOR2_X1 U39 ( .A(n233), .B(n232), .ZN(n234) );
  XNOR2_X1 U40 ( .A(n282), .B(n234), .ZN(Q[1]) );
  XNOR2_X1 U41 ( .A(n251), .B(B[0]), .ZN(n235) );
  NAND2_X1 U42 ( .A1(n235), .A2(A[5]), .ZN(n239) );
  NAND2_X1 U43 ( .A1(B[1]), .A2(A[4]), .ZN(n237) );
  NAND2_X1 U44 ( .A1(A[0]), .A2(B[5]), .ZN(n236) );
  XOR2_X1 U45 ( .A(n237), .B(n236), .Z(n238) );
  XNOR2_X1 U46 ( .A(n239), .B(n238), .ZN(n262) );
  XNOR2_X1 U47 ( .A(n240), .B(B[1]), .ZN(n241) );
  NAND2_X1 U48 ( .A1(n241), .A2(A[5]), .ZN(n245) );
  NAND2_X1 U49 ( .A1(A[1]), .A2(B[5]), .ZN(n243) );
  XNOR2_X1 U50 ( .A(n243), .B(n242), .ZN(n244) );
  XNOR2_X1 U51 ( .A(n245), .B(n244), .ZN(n246) );
  XNOR2_X1 U52 ( .A(B[0]), .B(n246), .ZN(n248) );
  NOR2_X1 U53 ( .A1(B[4]), .A2(A[1]), .ZN(n247) );
  XNOR2_X1 U54 ( .A(n248), .B(n247), .ZN(n249) );
  XNOR2_X1 U55 ( .A(n262), .B(n249), .ZN(Q[2]) );
  NAND2_X1 U56 ( .A1(B[5]), .A2(A[4]), .ZN(n274) );
  NAND2_X1 U57 ( .A1(n274), .A2(n250), .ZN(n260) );
  XNOR2_X1 U58 ( .A(A[1]), .B(A[0]), .ZN(n252) );
  NOR2_X1 U59 ( .A1(n252), .A2(n251), .ZN(n258) );
  INV_X1 U60 ( .A(B[1]), .ZN(n253) );
  NAND2_X1 U61 ( .A1(n253), .A2(A[1]), .ZN(n256) );
  INV_X1 U62 ( .A(B[0]), .ZN(n254) );
  NAND2_X1 U63 ( .A1(n254), .A2(A[4]), .ZN(n255) );
  XNOR2_X1 U64 ( .A(n256), .B(n255), .ZN(n257) );
  XNOR2_X1 U65 ( .A(n258), .B(n257), .ZN(n259) );
  XNOR2_X1 U66 ( .A(n260), .B(n259), .ZN(n261) );
  XNOR2_X1 U67 ( .A(n262), .B(n261), .ZN(Q[3]) );
  XNOR2_X1 U68 ( .A(n263), .B(B[0]), .ZN(n265) );
  NAND2_X1 U69 ( .A1(A[3]), .A2(B[1]), .ZN(n264) );
  XNOR2_X1 U70 ( .A(n265), .B(n264), .ZN(n266) );
  XNOR2_X1 U71 ( .A(n267), .B(n266), .ZN(n269) );
  NAND2_X1 U72 ( .A1(A[1]), .A2(B[3]), .ZN(n268) );
  XNOR2_X1 U73 ( .A(n269), .B(n268), .ZN(Q[4]) );
  INV_X1 U74 ( .A(B[2]), .ZN(n270) );
  NOR2_X1 U75 ( .A1(n271), .A2(n270), .ZN(n273) );
  NAND2_X1 U76 ( .A1(B[3]), .A2(A[5]), .ZN(n272) );
  XNOR2_X1 U77 ( .A(n273), .B(n272), .ZN(n277) );
  NAND2_X1 U78 ( .A1(B[5]), .A2(A[3]), .ZN(n275) );
  XNOR2_X1 U79 ( .A(n275), .B(n274), .ZN(n276) );
  XNOR2_X1 U80 ( .A(n277), .B(n276), .ZN(n278) );
  XNOR2_X1 U81 ( .A(B[4]), .B(n278), .ZN(n280) );
  NAND2_X1 U82 ( .A1(A[2]), .A2(B[2]), .ZN(n279) );
  XNOR2_X1 U83 ( .A(n280), .B(n279), .ZN(n281) );
  XNOR2_X1 U84 ( .A(n282), .B(n281), .ZN(Q[0]) );
endmodule


module s_GF_MULS_2_SHARES3_7 ( A, B, Q );
  input [5:0] A;
  input [5:0] B;
  output [5:0] Q;
  wire   n207, n208, n209, n210, n211, n212, n213, n214, n215, n216, n217,
         n218, n219, n220, n221, n222, n223, n224, n225, n226, n227, n228,
         n229, n230, n231, n232, n233, n234, n235, n236, n237, n238, n239,
         n240, n241, n242, n243, n244, n245, n246, n247, n248, n249, n250,
         n251, n252, n253, n254, n255, n256, n257, n258, n259, n260, n261,
         n262, n263, n264, n265, n266, n267, n268, n269, n270, n271, n272,
         n273, n274, n275, n276, n277, n278, n279, n280, n281, n282, n283,
         n284;

  NAND2_X1 U1 ( .A1(A[0]), .A2(B[1]), .ZN(n208) );
  NAND2_X1 U2 ( .A1(B[0]), .A2(A[1]), .ZN(n207) );
  XOR2_X1 U3 ( .A(n208), .B(n207), .Z(n244) );
  NAND2_X1 U4 ( .A1(A[0]), .A2(B[2]), .ZN(n210) );
  NAND2_X1 U5 ( .A1(B[3]), .A2(A[3]), .ZN(n209) );
  XOR2_X1 U6 ( .A(n210), .B(n209), .Z(n211) );
  XOR2_X1 U7 ( .A(n244), .B(n211), .Z(n214) );
  XOR2_X1 U8 ( .A(A[2]), .B(A[0]), .Z(n212) );
  NAND2_X1 U9 ( .A1(n212), .A2(B[0]), .ZN(n213) );
  XNOR2_X1 U10 ( .A(n214), .B(n213), .ZN(n223) );
  XNOR2_X1 U11 ( .A(B[2]), .B(B[1]), .ZN(n216) );
  NAND2_X1 U12 ( .A1(n216), .A2(A[1]), .ZN(n220) );
  INV_X1 U13 ( .A(A[2]), .ZN(n215) );
  NOR2_X1 U14 ( .A1(n216), .A2(n215), .ZN(n218) );
  NAND2_X1 U15 ( .A1(A[3]), .A2(B[0]), .ZN(n217) );
  XNOR2_X1 U16 ( .A(n218), .B(n217), .ZN(n219) );
  XNOR2_X1 U17 ( .A(n220), .B(n219), .ZN(n222) );
  NAND2_X1 U18 ( .A1(A[0]), .A2(B[3]), .ZN(n221) );
  XOR2_X1 U19 ( .A(n222), .B(n221), .Z(n269) );
  XNOR2_X1 U20 ( .A(n223), .B(n269), .ZN(Q[5]) );
  XOR2_X1 U21 ( .A(B[4]), .B(B[3]), .Z(n224) );
  NAND2_X1 U22 ( .A1(n224), .A2(A[3]), .ZN(n228) );
  NAND2_X1 U23 ( .A1(B[5]), .A2(A[2]), .ZN(n226) );
  NAND2_X1 U24 ( .A1(A[4]), .A2(B[3]), .ZN(n225) );
  XOR2_X1 U25 ( .A(n226), .B(n225), .Z(n227) );
  XNOR2_X1 U26 ( .A(n228), .B(n227), .ZN(n284) );
  NAND2_X1 U27 ( .A1(B[4]), .A2(A[2]), .ZN(n230) );
  INV_X1 U28 ( .A(B[4]), .ZN(n253) );
  NAND2_X1 U29 ( .A1(A[4]), .A2(n253), .ZN(n229) );
  NAND2_X1 U30 ( .A1(n230), .A2(n229), .ZN(n233) );
  XNOR2_X1 U31 ( .A(A[3]), .B(A[5]), .ZN(n273) );
  XNOR2_X1 U32 ( .A(A[4]), .B(n273), .ZN(n231) );
  NAND2_X1 U33 ( .A1(n231), .A2(B[2]), .ZN(n232) );
  XNOR2_X1 U34 ( .A(n233), .B(n232), .ZN(n235) );
  NAND2_X1 U35 ( .A1(B[3]), .A2(A[2]), .ZN(n265) );
  INV_X1 U36 ( .A(B[5]), .ZN(n242) );
  NAND2_X1 U37 ( .A1(A[5]), .A2(n242), .ZN(n252) );
  XOR2_X1 U38 ( .A(n265), .B(n252), .Z(n234) );
  XNOR2_X1 U39 ( .A(n235), .B(n234), .ZN(n236) );
  XNOR2_X1 U40 ( .A(n284), .B(n236), .ZN(Q[1]) );
  XNOR2_X1 U41 ( .A(n253), .B(B[0]), .ZN(n237) );
  NAND2_X1 U42 ( .A1(n237), .A2(A[5]), .ZN(n241) );
  NAND2_X1 U43 ( .A1(B[1]), .A2(A[4]), .ZN(n239) );
  NAND2_X1 U44 ( .A1(A[0]), .A2(B[5]), .ZN(n238) );
  XOR2_X1 U45 ( .A(n239), .B(n238), .Z(n240) );
  XNOR2_X1 U46 ( .A(n241), .B(n240), .ZN(n264) );
  XNOR2_X1 U47 ( .A(n242), .B(B[1]), .ZN(n243) );
  NAND2_X1 U48 ( .A1(n243), .A2(A[5]), .ZN(n247) );
  NAND2_X1 U49 ( .A1(A[1]), .A2(B[5]), .ZN(n245) );
  XNOR2_X1 U50 ( .A(n245), .B(n244), .ZN(n246) );
  XNOR2_X1 U51 ( .A(n247), .B(n246), .ZN(n248) );
  XNOR2_X1 U52 ( .A(B[0]), .B(n248), .ZN(n250) );
  NOR2_X1 U53 ( .A1(B[4]), .A2(A[1]), .ZN(n249) );
  XNOR2_X1 U54 ( .A(n250), .B(n249), .ZN(n251) );
  XNOR2_X1 U55 ( .A(n264), .B(n251), .ZN(Q[2]) );
  NAND2_X1 U56 ( .A1(B[5]), .A2(A[4]), .ZN(n276) );
  NAND2_X1 U57 ( .A1(n276), .A2(n252), .ZN(n262) );
  XNOR2_X1 U58 ( .A(A[1]), .B(A[0]), .ZN(n254) );
  NOR2_X1 U59 ( .A1(n254), .A2(n253), .ZN(n260) );
  INV_X1 U60 ( .A(B[1]), .ZN(n255) );
  NAND2_X1 U61 ( .A1(n255), .A2(A[1]), .ZN(n258) );
  INV_X1 U62 ( .A(B[0]), .ZN(n256) );
  NAND2_X1 U63 ( .A1(n256), .A2(A[4]), .ZN(n257) );
  XNOR2_X1 U64 ( .A(n258), .B(n257), .ZN(n259) );
  XNOR2_X1 U65 ( .A(n260), .B(n259), .ZN(n261) );
  XNOR2_X1 U66 ( .A(n262), .B(n261), .ZN(n263) );
  XNOR2_X1 U67 ( .A(n264), .B(n263), .ZN(Q[3]) );
  XNOR2_X1 U68 ( .A(n265), .B(B[0]), .ZN(n267) );
  NAND2_X1 U69 ( .A1(A[3]), .A2(B[1]), .ZN(n266) );
  XNOR2_X1 U70 ( .A(n267), .B(n266), .ZN(n268) );
  XNOR2_X1 U71 ( .A(n269), .B(n268), .ZN(n271) );
  NAND2_X1 U72 ( .A1(A[1]), .A2(B[3]), .ZN(n270) );
  XNOR2_X1 U73 ( .A(n271), .B(n270), .ZN(Q[4]) );
  INV_X1 U74 ( .A(B[2]), .ZN(n272) );
  NOR2_X1 U75 ( .A1(n273), .A2(n272), .ZN(n275) );
  NAND2_X1 U76 ( .A1(B[3]), .A2(A[5]), .ZN(n274) );
  XNOR2_X1 U77 ( .A(n275), .B(n274), .ZN(n279) );
  NAND2_X1 U78 ( .A1(B[5]), .A2(A[3]), .ZN(n277) );
  XNOR2_X1 U79 ( .A(n277), .B(n276), .ZN(n278) );
  XNOR2_X1 U80 ( .A(n279), .B(n278), .ZN(n280) );
  XNOR2_X1 U81 ( .A(B[4]), .B(n280), .ZN(n282) );
  NAND2_X1 U82 ( .A1(A[2]), .A2(B[2]), .ZN(n281) );
  XNOR2_X1 U83 ( .A(n282), .B(n281), .ZN(n283) );
  XNOR2_X1 U84 ( .A(n284), .B(n283), .ZN(Q[0]) );
endmodule


module XOR_n_n4_8 ( A, B, Q );
  input [3:0] A;
  input [3:0] B;
  output [3:0] Q;


  XOR2_X1 U1 ( .A(A[3]), .B(B[3]), .Z(Q[3]) );
  XOR2_X1 U2 ( .A(A[0]), .B(B[0]), .Z(Q[0]) );
  XOR2_X1 U3 ( .A(A[1]), .B(B[1]), .Z(Q[1]) );
  XOR2_X1 U4 ( .A(A[2]), .B(B[2]), .Z(Q[2]) );
endmodule


module XOR_n_n4_7 ( A, B, Q );
  input [3:0] A;
  input [3:0] B;
  output [3:0] Q;


  XOR2_X1 U1 ( .A(A[3]), .B(B[3]), .Z(Q[3]) );
  XOR2_X1 U2 ( .A(A[0]), .B(B[0]), .Z(Q[0]) );
  XOR2_X1 U3 ( .A(A[1]), .B(B[1]), .Z(Q[1]) );
  XOR2_X1 U4 ( .A(A[2]), .B(B[2]), .Z(Q[2]) );
endmodule


module XOR_n_n8 ( A, B, Q );
  input [7:0] A;
  input [7:0] B;
  output [7:0] Q;


  XOR2_X1 U1 ( .A(A[0]), .B(B[0]), .Z(Q[0]) );
  XOR2_X1 U2 ( .A(A[1]), .B(B[1]), .Z(Q[1]) );
  XOR2_X1 U3 ( .A(A[2]), .B(B[2]), .Z(Q[2]) );
  XOR2_X1 U4 ( .A(A[3]), .B(B[3]), .Z(Q[3]) );
  XOR2_X1 U5 ( .A(A[4]), .B(B[4]), .Z(Q[4]) );
  XOR2_X1 U6 ( .A(A[5]), .B(B[5]), .Z(Q[5]) );
  XOR2_X1 U7 ( .A(A[6]), .B(B[6]), .Z(Q[6]) );
  XOR2_X1 U8 ( .A(A[7]), .B(B[7]), .Z(Q[7]) );
endmodule


module AddMask_1_SHARES3_NumberOfBits4 ( A, NewMask, Q );
  input [11:0] A;
  input [7:0] NewMask;
  output [11:0] Q;

  wire   [3:0] MaskXOR;

  XOR_n_n4_8 MaskXORInst ( .A(NewMask[3:0]), .B(NewMask[7:4]), .Q(MaskXOR) );
  XOR_n_n4_7 XORInst1 ( .A(A[11:8]), .B(MaskXOR), .Q(Q[11:8]) );
  XOR_n_n8 XORInst2 ( .A(A[7:0]), .B(NewMask), .Q(Q[7:0]) );
endmodule


module GF_INV_4_2_SHARES3 ( gamma1, sA2N, ab, gamma0, NewMaskQ, Q );
  input [5:0] gamma1;
  input [5:0] sA2N;
  input [5:0] ab;
  input [5:0] gamma0;
  input [7:0] NewMaskQ;
  output [11:0] Q;
  wire   n1, n2, n3, n4, n5, n6, n7, n8;
  wire   [2:1] absA2N;
  wire   [5:0] d;
  wire   [5:0] pl;
  wire   [5:0] ph;

  GF_SQ_2_SHARES3_1 sASQ ( .A({n7, n5, n6, absA2N, n8}), .Q(d) );
  s_GF_MULS_2_SHARES3_8 himul ( .A(gamma1), .B(d), .Q(pl) );
  s_GF_MULS_2_SHARES3_7 lowmul ( .A(d), .B(gamma0), .Q(ph) );
  AddMask_1_SHARES3_NumberOfBits4 AddNewMaskQ ( .A({ph[5:4], pl[5:4], ph[3:2], 
        pl[3:2], ph[1:0], pl[1:0]}), .NewMask(NewMaskQ), .Q(Q) );
  XNOR2_X1 U1 ( .A(ab[0]), .B(sA2N[0]), .ZN(n1) );
  XNOR2_X1 U2 ( .A(ab[4]), .B(sA2N[4]), .ZN(n2) );
  XNOR2_X1 U3 ( .A(ab[5]), .B(sA2N[5]), .ZN(n3) );
  XNOR2_X1 U4 ( .A(ab[3]), .B(sA2N[3]), .ZN(n4) );
  INV_X1 U5 ( .A(n2), .ZN(n5) );
  INV_X1 U6 ( .A(n4), .ZN(n6) );
  INV_X1 U7 ( .A(n3), .ZN(n7) );
  INV_X1 U8 ( .A(n1), .ZN(n8) );
  XOR2_X2 U9 ( .A(ab[2]), .B(sA2N[2]), .Z(absA2N[2]) );
  XOR2_X2 U10 ( .A(ab[1]), .B(sA2N[1]), .Z(absA2N[1]) );
endmodule


module sharedSbox_f3_SHARES3 ( Zhin, Zlin, gamma1, sA2N, ab, gamma0, NewMaskQ, 
        Zhout, Zlout, muld );
  input [11:0] Zhin;
  input [11:0] Zlin;
  input [5:0] gamma1;
  input [5:0] sA2N;
  input [5:0] ab;
  input [5:0] gamma0;
  input [7:0] NewMaskQ;
  output [11:0] Zhout;
  output [11:0] Zlout;
  output [11:0] muld;

  assign Zhout[11] = Zhin[11];
  assign Zhout[10] = Zhin[10];
  assign Zhout[9] = Zhin[9];
  assign Zhout[8] = Zhin[8];
  assign Zhout[7] = Zhin[7];
  assign Zhout[6] = Zhin[6];
  assign Zhout[5] = Zhin[5];
  assign Zhout[4] = Zhin[4];
  assign Zhout[3] = Zhin[3];
  assign Zhout[2] = Zhin[2];
  assign Zhout[1] = Zhin[1];
  assign Zhout[0] = Zhin[0];
  assign Zlout[11] = Zlin[11];
  assign Zlout[10] = Zlin[10];
  assign Zlout[9] = Zlin[9];
  assign Zlout[8] = Zlin[8];
  assign Zlout[7] = Zlin[7];
  assign Zlout[6] = Zlin[6];
  assign Zlout[5] = Zlin[5];
  assign Zlout[4] = Zlin[4];
  assign Zlout[3] = Zlin[3];
  assign Zlout[2] = Zlin[2];
  assign Zlout[1] = Zlin[1];
  assign Zlout[0] = Zlin[0];

  GF_INV_4_2_SHARES3 dinv_2 ( .gamma1(gamma1), .sA2N(sA2N), .ab(ab), .gamma0(
        gamma0), .NewMaskQ(NewMaskQ), .Q(muld) );
endmodule


module ff_NBITS36_0 ( clk, D, Q );
  input [35:0] D;
  output [35:0] Q;
  input clk;


  DFF_X1 s_current_state_reg_35_ ( .D(D[35]), .CK(clk), .Q(Q[35]), .QN() );
  DFF_X1 s_current_state_reg_34_ ( .D(D[34]), .CK(clk), .Q(Q[34]), .QN() );
  DFF_X1 s_current_state_reg_33_ ( .D(D[33]), .CK(clk), .Q(Q[33]), .QN() );
  DFF_X1 s_current_state_reg_32_ ( .D(D[32]), .CK(clk), .Q(Q[32]), .QN() );
  DFF_X1 s_current_state_reg_31_ ( .D(D[31]), .CK(clk), .Q(Q[31]), .QN() );
  DFF_X1 s_current_state_reg_30_ ( .D(D[30]), .CK(clk), .Q(Q[30]), .QN() );
  DFF_X1 s_current_state_reg_29_ ( .D(D[29]), .CK(clk), .Q(Q[29]), .QN() );
  DFF_X1 s_current_state_reg_28_ ( .D(D[28]), .CK(clk), .Q(Q[28]), .QN() );
  DFF_X1 s_current_state_reg_27_ ( .D(D[27]), .CK(clk), .Q(Q[27]), .QN() );
  DFF_X1 s_current_state_reg_26_ ( .D(D[26]), .CK(clk), .Q(Q[26]), .QN() );
  DFF_X1 s_current_state_reg_25_ ( .D(D[25]), .CK(clk), .Q(Q[25]), .QN() );
  DFF_X1 s_current_state_reg_24_ ( .D(D[24]), .CK(clk), .Q(Q[24]), .QN() );
  DFF_X1 s_current_state_reg_23_ ( .D(D[23]), .CK(clk), .Q(Q[23]), .QN() );
  DFF_X1 s_current_state_reg_22_ ( .D(D[22]), .CK(clk), .Q(Q[22]), .QN() );
  DFF_X1 s_current_state_reg_21_ ( .D(D[21]), .CK(clk), .Q(Q[21]), .QN() );
  DFF_X1 s_current_state_reg_20_ ( .D(D[20]), .CK(clk), .Q(Q[20]), .QN() );
  DFF_X1 s_current_state_reg_19_ ( .D(D[19]), .CK(clk), .Q(Q[19]), .QN() );
  DFF_X1 s_current_state_reg_18_ ( .D(D[18]), .CK(clk), .Q(Q[18]), .QN() );
  DFF_X1 s_current_state_reg_17_ ( .D(D[17]), .CK(clk), .Q(Q[17]), .QN() );
  DFF_X1 s_current_state_reg_16_ ( .D(D[16]), .CK(clk), .Q(Q[16]), .QN() );
  DFF_X1 s_current_state_reg_15_ ( .D(D[15]), .CK(clk), .Q(Q[15]), .QN() );
  DFF_X1 s_current_state_reg_14_ ( .D(D[14]), .CK(clk), .Q(Q[14]), .QN() );
  DFF_X1 s_current_state_reg_13_ ( .D(D[13]), .CK(clk), .Q(Q[13]), .QN() );
  DFF_X1 s_current_state_reg_12_ ( .D(D[12]), .CK(clk), .Q(Q[12]), .QN() );
  DFF_X1 s_current_state_reg_11_ ( .D(D[11]), .CK(clk), .Q(Q[11]), .QN() );
  DFF_X1 s_current_state_reg_10_ ( .D(D[10]), .CK(clk), .Q(Q[10]), .QN() );
  DFF_X1 s_current_state_reg_9_ ( .D(D[9]), .CK(clk), .Q(Q[9]), .QN() );
  DFF_X1 s_current_state_reg_8_ ( .D(D[8]), .CK(clk), .Q(Q[8]), .QN() );
  DFF_X1 s_current_state_reg_7_ ( .D(D[7]), .CK(clk), .Q(Q[7]), .QN() );
  DFF_X1 s_current_state_reg_6_ ( .D(D[6]), .CK(clk), .Q(Q[6]), .QN() );
  DFF_X1 s_current_state_reg_5_ ( .D(D[5]), .CK(clk), .Q(Q[5]), .QN() );
  DFF_X1 s_current_state_reg_4_ ( .D(D[4]), .CK(clk), .Q(Q[4]), .QN() );
  DFF_X1 s_current_state_reg_3_ ( .D(D[3]), .CK(clk), .Q(Q[3]), .QN() );
  DFF_X1 s_current_state_reg_2_ ( .D(D[2]), .CK(clk), .Q(Q[2]), .QN() );
  DFF_X1 s_current_state_reg_1_ ( .D(D[1]), .CK(clk), .Q(Q[1]), .QN() );
  DFF_X1 s_current_state_reg_0_ ( .D(D[0]), .CK(clk), .Q(Q[0]), .QN() );
endmodule


module s_GF_MULS_2_SHARES3_6 ( A, B, Q );
  input [5:0] A;
  input [5:0] B;
  output [5:0] Q;
  wire   n205, n206, n207, n208, n209, n210, n211, n212, n213, n214, n215,
         n216, n217, n218, n219, n220, n221, n222, n223, n224, n225, n226,
         n227, n228, n229, n230, n231, n232, n233, n234, n235, n236, n237,
         n238, n239, n240, n241, n242, n243, n244, n245, n246, n247, n248,
         n249, n250, n251, n252, n253, n254, n255, n256, n257, n258, n259,
         n260, n261, n262, n263, n264, n265, n266, n267, n268, n269, n270,
         n271, n272, n273, n274, n275, n276, n277, n278, n279, n280, n281,
         n282;

  NAND2_X1 U1 ( .A1(A[0]), .A2(B[1]), .ZN(n206) );
  NAND2_X1 U2 ( .A1(B[0]), .A2(A[1]), .ZN(n205) );
  XOR2_X1 U3 ( .A(n206), .B(n205), .Z(n242) );
  NAND2_X1 U4 ( .A1(A[0]), .A2(B[2]), .ZN(n208) );
  NAND2_X1 U5 ( .A1(B[3]), .A2(A[3]), .ZN(n207) );
  XOR2_X1 U6 ( .A(n208), .B(n207), .Z(n209) );
  XOR2_X1 U7 ( .A(n242), .B(n209), .Z(n212) );
  XOR2_X1 U8 ( .A(A[2]), .B(A[0]), .Z(n210) );
  NAND2_X1 U9 ( .A1(n210), .A2(B[0]), .ZN(n211) );
  XNOR2_X1 U10 ( .A(n212), .B(n211), .ZN(n221) );
  XNOR2_X1 U11 ( .A(B[2]), .B(B[1]), .ZN(n214) );
  NAND2_X1 U12 ( .A1(n214), .A2(A[1]), .ZN(n218) );
  INV_X1 U13 ( .A(A[2]), .ZN(n213) );
  NOR2_X1 U14 ( .A1(n214), .A2(n213), .ZN(n216) );
  NAND2_X1 U15 ( .A1(A[3]), .A2(B[0]), .ZN(n215) );
  XNOR2_X1 U16 ( .A(n216), .B(n215), .ZN(n217) );
  XNOR2_X1 U17 ( .A(n218), .B(n217), .ZN(n220) );
  NAND2_X1 U18 ( .A1(A[0]), .A2(B[3]), .ZN(n219) );
  XOR2_X1 U19 ( .A(n220), .B(n219), .Z(n267) );
  XNOR2_X1 U20 ( .A(n221), .B(n267), .ZN(Q[5]) );
  XOR2_X1 U21 ( .A(B[4]), .B(B[3]), .Z(n222) );
  NAND2_X1 U22 ( .A1(n222), .A2(A[3]), .ZN(n226) );
  NAND2_X1 U23 ( .A1(B[5]), .A2(A[2]), .ZN(n224) );
  NAND2_X1 U24 ( .A1(A[4]), .A2(B[3]), .ZN(n223) );
  XOR2_X1 U25 ( .A(n224), .B(n223), .Z(n225) );
  XNOR2_X1 U26 ( .A(n226), .B(n225), .ZN(n282) );
  NAND2_X1 U27 ( .A1(B[4]), .A2(A[2]), .ZN(n228) );
  INV_X1 U28 ( .A(B[4]), .ZN(n251) );
  NAND2_X1 U29 ( .A1(A[4]), .A2(n251), .ZN(n227) );
  NAND2_X1 U30 ( .A1(n228), .A2(n227), .ZN(n231) );
  XNOR2_X1 U31 ( .A(A[3]), .B(A[5]), .ZN(n271) );
  XNOR2_X1 U32 ( .A(A[4]), .B(n271), .ZN(n229) );
  NAND2_X1 U33 ( .A1(n229), .A2(B[2]), .ZN(n230) );
  XNOR2_X1 U34 ( .A(n231), .B(n230), .ZN(n233) );
  NAND2_X1 U35 ( .A1(B[3]), .A2(A[2]), .ZN(n263) );
  INV_X1 U36 ( .A(B[5]), .ZN(n240) );
  NAND2_X1 U37 ( .A1(A[5]), .A2(n240), .ZN(n250) );
  XOR2_X1 U38 ( .A(n263), .B(n250), .Z(n232) );
  XNOR2_X1 U39 ( .A(n233), .B(n232), .ZN(n234) );
  XNOR2_X1 U40 ( .A(n282), .B(n234), .ZN(Q[1]) );
  XNOR2_X1 U41 ( .A(n251), .B(B[0]), .ZN(n235) );
  NAND2_X1 U42 ( .A1(n235), .A2(A[5]), .ZN(n239) );
  NAND2_X1 U43 ( .A1(B[1]), .A2(A[4]), .ZN(n237) );
  NAND2_X1 U44 ( .A1(A[0]), .A2(B[5]), .ZN(n236) );
  XOR2_X1 U45 ( .A(n237), .B(n236), .Z(n238) );
  XNOR2_X1 U46 ( .A(n239), .B(n238), .ZN(n262) );
  XNOR2_X1 U47 ( .A(n240), .B(B[1]), .ZN(n241) );
  NAND2_X1 U48 ( .A1(n241), .A2(A[5]), .ZN(n245) );
  NAND2_X1 U49 ( .A1(A[1]), .A2(B[5]), .ZN(n243) );
  XNOR2_X1 U50 ( .A(n243), .B(n242), .ZN(n244) );
  XNOR2_X1 U51 ( .A(n245), .B(n244), .ZN(n246) );
  XNOR2_X1 U52 ( .A(B[0]), .B(n246), .ZN(n248) );
  NOR2_X1 U53 ( .A1(B[4]), .A2(A[1]), .ZN(n247) );
  XNOR2_X1 U54 ( .A(n248), .B(n247), .ZN(n249) );
  XNOR2_X1 U55 ( .A(n262), .B(n249), .ZN(Q[2]) );
  NAND2_X1 U56 ( .A1(B[5]), .A2(A[4]), .ZN(n274) );
  NAND2_X1 U57 ( .A1(n274), .A2(n250), .ZN(n260) );
  XNOR2_X1 U58 ( .A(A[1]), .B(A[0]), .ZN(n252) );
  NOR2_X1 U59 ( .A1(n252), .A2(n251), .ZN(n258) );
  INV_X1 U60 ( .A(B[1]), .ZN(n253) );
  NAND2_X1 U61 ( .A1(n253), .A2(A[1]), .ZN(n256) );
  INV_X1 U62 ( .A(B[0]), .ZN(n254) );
  NAND2_X1 U63 ( .A1(n254), .A2(A[4]), .ZN(n255) );
  XNOR2_X1 U64 ( .A(n256), .B(n255), .ZN(n257) );
  XNOR2_X1 U65 ( .A(n258), .B(n257), .ZN(n259) );
  XNOR2_X1 U66 ( .A(n260), .B(n259), .ZN(n261) );
  XNOR2_X1 U67 ( .A(n262), .B(n261), .ZN(Q[3]) );
  XNOR2_X1 U68 ( .A(n263), .B(B[0]), .ZN(n265) );
  NAND2_X1 U69 ( .A1(A[3]), .A2(B[1]), .ZN(n264) );
  XNOR2_X1 U70 ( .A(n265), .B(n264), .ZN(n266) );
  XNOR2_X1 U71 ( .A(n267), .B(n266), .ZN(n269) );
  NAND2_X1 U72 ( .A1(A[1]), .A2(B[3]), .ZN(n268) );
  XNOR2_X1 U73 ( .A(n269), .B(n268), .ZN(Q[4]) );
  INV_X1 U74 ( .A(B[2]), .ZN(n270) );
  NOR2_X1 U75 ( .A1(n271), .A2(n270), .ZN(n273) );
  NAND2_X1 U76 ( .A1(B[3]), .A2(A[5]), .ZN(n272) );
  XNOR2_X1 U77 ( .A(n273), .B(n272), .ZN(n277) );
  NAND2_X1 U78 ( .A1(B[5]), .A2(A[3]), .ZN(n275) );
  XNOR2_X1 U79 ( .A(n275), .B(n274), .ZN(n276) );
  XNOR2_X1 U80 ( .A(n277), .B(n276), .ZN(n278) );
  XNOR2_X1 U81 ( .A(B[4]), .B(n278), .ZN(n280) );
  NAND2_X1 U82 ( .A1(A[2]), .A2(B[2]), .ZN(n279) );
  XNOR2_X1 U83 ( .A(n280), .B(n279), .ZN(n281) );
  XNOR2_X1 U84 ( .A(n282), .B(n281), .ZN(Q[0]) );
endmodule


module XOR_n_n2_12 ( A, B, Q );
  input [1:0] A;
  input [1:0] B;
  output [1:0] Q;


  XOR2_X1 U1 ( .A(A[0]), .B(B[0]), .Z(Q[0]) );
  XOR2_X1 U2 ( .A(A[1]), .B(B[1]), .Z(Q[1]) );
endmodule


module XOR_n_n2_11 ( A, B, Q );
  input [1:0] A;
  input [1:0] B;
  output [1:0] Q;


  XOR2_X1 U1 ( .A(A[0]), .B(B[0]), .Z(Q[0]) );
  XOR2_X1 U2 ( .A(A[1]), .B(B[1]), .Z(Q[1]) );
endmodule


module XOR_n_n4_6 ( A, B, Q );
  input [3:0] A;
  input [3:0] B;
  output [3:0] Q;


  XOR2_X1 U1 ( .A(A[0]), .B(B[0]), .Z(Q[0]) );
  XOR2_X1 U2 ( .A(A[1]), .B(B[1]), .Z(Q[1]) );
  XOR2_X1 U3 ( .A(A[2]), .B(B[2]), .Z(Q[2]) );
  XOR2_X1 U4 ( .A(A[3]), .B(B[3]), .Z(Q[3]) );
endmodule


module AddMask_1_SHARES3_NumberOfBits2_6 ( A, NewMask, Q );
  input [5:0] A;
  input [3:0] NewMask;
  output [5:0] Q;

  wire   [1:0] MaskXOR;

  XOR_n_n2_12 MaskXORInst ( .A(NewMask[1:0]), .B(NewMask[3:2]), .Q(MaskXOR) );
  XOR_n_n2_11 XORInst1 ( .A(A[5:4]), .B(MaskXOR), .Q(Q[5:4]) );
  XOR_n_n4_6 XORInst2 ( .A(A[3:0]), .B(NewMask), .Q(Q[3:0]) );
endmodule


module s_GF_MULS_2_SHARES3_5 ( A, B, Q );
  input [5:0] A;
  input [5:0] B;
  output [5:0] Q;
  wire   n207, n208, n209, n210, n211, n212, n213, n214, n215, n216, n217,
         n218, n219, n220, n221, n222, n223, n224, n225, n226, n227, n228,
         n229, n230, n231, n232, n233, n234, n235, n236, n237, n238, n239,
         n240, n241, n242, n243, n244, n245, n246, n247, n248, n249, n250,
         n251, n252, n253, n254, n255, n256, n257, n258, n259, n260, n261,
         n262, n263, n264, n265, n266, n267, n268, n269, n270, n271, n272,
         n273, n274, n275, n276, n277, n278, n279, n280, n281, n282, n283,
         n284;

  NAND2_X1 U1 ( .A1(A[0]), .A2(B[1]), .ZN(n208) );
  NAND2_X1 U2 ( .A1(B[0]), .A2(A[1]), .ZN(n207) );
  XOR2_X1 U3 ( .A(n208), .B(n207), .Z(n244) );
  NAND2_X1 U4 ( .A1(A[0]), .A2(B[2]), .ZN(n210) );
  NAND2_X1 U5 ( .A1(B[3]), .A2(A[3]), .ZN(n209) );
  XOR2_X1 U6 ( .A(n210), .B(n209), .Z(n211) );
  XOR2_X1 U7 ( .A(n244), .B(n211), .Z(n214) );
  XOR2_X1 U8 ( .A(A[2]), .B(A[0]), .Z(n212) );
  NAND2_X1 U9 ( .A1(n212), .A2(B[0]), .ZN(n213) );
  XNOR2_X1 U10 ( .A(n214), .B(n213), .ZN(n223) );
  XNOR2_X1 U11 ( .A(B[2]), .B(B[1]), .ZN(n216) );
  NAND2_X1 U12 ( .A1(n216), .A2(A[1]), .ZN(n220) );
  INV_X1 U13 ( .A(A[2]), .ZN(n215) );
  NOR2_X1 U14 ( .A1(n216), .A2(n215), .ZN(n218) );
  NAND2_X1 U15 ( .A1(A[3]), .A2(B[0]), .ZN(n217) );
  XNOR2_X1 U16 ( .A(n218), .B(n217), .ZN(n219) );
  XNOR2_X1 U17 ( .A(n220), .B(n219), .ZN(n222) );
  NAND2_X1 U18 ( .A1(A[0]), .A2(B[3]), .ZN(n221) );
  XOR2_X1 U19 ( .A(n222), .B(n221), .Z(n269) );
  XNOR2_X1 U20 ( .A(n223), .B(n269), .ZN(Q[5]) );
  XOR2_X1 U21 ( .A(B[4]), .B(B[3]), .Z(n224) );
  NAND2_X1 U22 ( .A1(n224), .A2(A[3]), .ZN(n228) );
  NAND2_X1 U23 ( .A1(B[5]), .A2(A[2]), .ZN(n226) );
  NAND2_X1 U24 ( .A1(A[4]), .A2(B[3]), .ZN(n225) );
  XOR2_X1 U25 ( .A(n226), .B(n225), .Z(n227) );
  XNOR2_X1 U26 ( .A(n228), .B(n227), .ZN(n284) );
  NAND2_X1 U27 ( .A1(B[4]), .A2(A[2]), .ZN(n230) );
  INV_X1 U28 ( .A(B[4]), .ZN(n253) );
  NAND2_X1 U29 ( .A1(A[4]), .A2(n253), .ZN(n229) );
  NAND2_X1 U30 ( .A1(n230), .A2(n229), .ZN(n233) );
  XNOR2_X1 U31 ( .A(A[3]), .B(A[5]), .ZN(n273) );
  XNOR2_X1 U32 ( .A(A[4]), .B(n273), .ZN(n231) );
  NAND2_X1 U33 ( .A1(n231), .A2(B[2]), .ZN(n232) );
  XNOR2_X1 U34 ( .A(n233), .B(n232), .ZN(n235) );
  NAND2_X1 U35 ( .A1(B[3]), .A2(A[2]), .ZN(n265) );
  INV_X1 U36 ( .A(B[5]), .ZN(n242) );
  NAND2_X1 U37 ( .A1(A[5]), .A2(n242), .ZN(n252) );
  XOR2_X1 U38 ( .A(n265), .B(n252), .Z(n234) );
  XNOR2_X1 U39 ( .A(n235), .B(n234), .ZN(n236) );
  XNOR2_X1 U40 ( .A(n284), .B(n236), .ZN(Q[1]) );
  XNOR2_X1 U41 ( .A(n253), .B(B[0]), .ZN(n237) );
  NAND2_X1 U42 ( .A1(n237), .A2(A[5]), .ZN(n241) );
  NAND2_X1 U43 ( .A1(B[1]), .A2(A[4]), .ZN(n239) );
  NAND2_X1 U44 ( .A1(A[0]), .A2(B[5]), .ZN(n238) );
  XOR2_X1 U45 ( .A(n239), .B(n238), .Z(n240) );
  XNOR2_X1 U46 ( .A(n241), .B(n240), .ZN(n264) );
  XNOR2_X1 U47 ( .A(n242), .B(B[1]), .ZN(n243) );
  NAND2_X1 U48 ( .A1(n243), .A2(A[5]), .ZN(n247) );
  NAND2_X1 U49 ( .A1(A[1]), .A2(B[5]), .ZN(n245) );
  XNOR2_X1 U50 ( .A(n245), .B(n244), .ZN(n246) );
  XNOR2_X1 U51 ( .A(n247), .B(n246), .ZN(n248) );
  XNOR2_X1 U52 ( .A(B[0]), .B(n248), .ZN(n250) );
  NOR2_X1 U53 ( .A1(B[4]), .A2(A[1]), .ZN(n249) );
  XNOR2_X1 U54 ( .A(n250), .B(n249), .ZN(n251) );
  XNOR2_X1 U55 ( .A(n264), .B(n251), .ZN(Q[2]) );
  NAND2_X1 U56 ( .A1(B[5]), .A2(A[4]), .ZN(n276) );
  NAND2_X1 U57 ( .A1(n276), .A2(n252), .ZN(n262) );
  XNOR2_X1 U58 ( .A(A[1]), .B(A[0]), .ZN(n254) );
  NOR2_X1 U59 ( .A1(n254), .A2(n253), .ZN(n260) );
  INV_X1 U60 ( .A(B[1]), .ZN(n255) );
  NAND2_X1 U61 ( .A1(n255), .A2(A[1]), .ZN(n258) );
  INV_X1 U62 ( .A(B[0]), .ZN(n256) );
  NAND2_X1 U63 ( .A1(n256), .A2(A[4]), .ZN(n257) );
  XNOR2_X1 U64 ( .A(n258), .B(n257), .ZN(n259) );
  XNOR2_X1 U65 ( .A(n260), .B(n259), .ZN(n261) );
  XNOR2_X1 U66 ( .A(n262), .B(n261), .ZN(n263) );
  XNOR2_X1 U67 ( .A(n264), .B(n263), .ZN(Q[3]) );
  XNOR2_X1 U68 ( .A(n265), .B(B[0]), .ZN(n267) );
  NAND2_X1 U69 ( .A1(A[3]), .A2(B[1]), .ZN(n266) );
  XNOR2_X1 U70 ( .A(n267), .B(n266), .ZN(n268) );
  XNOR2_X1 U71 ( .A(n269), .B(n268), .ZN(n271) );
  NAND2_X1 U72 ( .A1(A[1]), .A2(B[3]), .ZN(n270) );
  XNOR2_X1 U73 ( .A(n271), .B(n270), .ZN(Q[4]) );
  INV_X1 U74 ( .A(B[2]), .ZN(n272) );
  NOR2_X1 U75 ( .A1(n273), .A2(n272), .ZN(n275) );
  NAND2_X1 U76 ( .A1(B[3]), .A2(A[5]), .ZN(n274) );
  XNOR2_X1 U77 ( .A(n275), .B(n274), .ZN(n279) );
  NAND2_X1 U78 ( .A1(B[5]), .A2(A[3]), .ZN(n277) );
  XNOR2_X1 U79 ( .A(n277), .B(n276), .ZN(n278) );
  XNOR2_X1 U80 ( .A(n279), .B(n278), .ZN(n280) );
  XNOR2_X1 U81 ( .A(B[4]), .B(n280), .ZN(n282) );
  NAND2_X1 U82 ( .A1(A[2]), .A2(B[2]), .ZN(n281) );
  XNOR2_X1 U83 ( .A(n282), .B(n281), .ZN(n283) );
  XNOR2_X1 U84 ( .A(n284), .B(n283), .ZN(Q[0]) );
endmodule


module XOR_n_n2_10 ( A, B, Q );
  input [1:0] A;
  input [1:0] B;
  output [1:0] Q;


  XOR2_X1 U1 ( .A(A[1]), .B(B[1]), .Z(Q[1]) );
  XOR2_X1 U2 ( .A(A[0]), .B(B[0]), .Z(Q[0]) );
endmodule


module XOR_n_n2_9 ( A, B, Q );
  input [1:0] A;
  input [1:0] B;
  output [1:0] Q;


  XOR2_X1 U1 ( .A(A[1]), .B(B[1]), .Z(Q[1]) );
  XOR2_X1 U2 ( .A(A[0]), .B(B[0]), .Z(Q[0]) );
endmodule


module XOR_n_n4_5 ( A, B, Q );
  input [3:0] A;
  input [3:0] B;
  output [3:0] Q;


  XOR2_X1 U1 ( .A(A[0]), .B(B[0]), .Z(Q[0]) );
  XOR2_X1 U2 ( .A(A[1]), .B(B[1]), .Z(Q[1]) );
  XOR2_X1 U3 ( .A(A[2]), .B(B[2]), .Z(Q[2]) );
  XOR2_X1 U4 ( .A(A[3]), .B(B[3]), .Z(Q[3]) );
endmodule


module AddMask_1_SHARES3_NumberOfBits2_5 ( A, NewMask, Q );
  input [5:0] A;
  input [3:0] NewMask;
  output [5:0] Q;

  wire   [1:0] MaskXOR;

  XOR_n_n2_10 MaskXORInst ( .A(NewMask[1:0]), .B(NewMask[3:2]), .Q(MaskXOR) );
  XOR_n_n2_9 XORInst1 ( .A(A[5:4]), .B(MaskXOR), .Q(Q[5:4]) );
  XOR_n_n4_5 XORInst2 ( .A(A[3:0]), .B(NewMask), .Q(Q[3:0]) );
endmodule


module s_GF_MULS_2_SHARES3_4 ( A, B, Q );
  input [5:0] A;
  input [5:0] B;
  output [5:0] Q;
  wire   n205, n206, n207, n208, n209, n210, n211, n212, n213, n214, n215,
         n216, n217, n218, n219, n220, n221, n222, n223, n224, n225, n226,
         n227, n228, n229, n230, n231, n232, n233, n234, n235, n236, n237,
         n238, n239, n240, n241, n242, n243, n244, n245, n246, n247, n248,
         n249, n250, n251, n252, n253, n254, n255, n256, n257, n258, n259,
         n260, n261, n262, n263, n264, n265, n266, n267, n268, n269, n270,
         n271, n272, n273, n274, n275, n276, n277, n278, n279, n280, n281,
         n282;

  NAND2_X1 U1 ( .A1(A[0]), .A2(B[1]), .ZN(n206) );
  NAND2_X1 U2 ( .A1(B[0]), .A2(A[1]), .ZN(n205) );
  XOR2_X1 U3 ( .A(n206), .B(n205), .Z(n242) );
  NAND2_X1 U4 ( .A1(A[0]), .A2(B[2]), .ZN(n208) );
  NAND2_X1 U5 ( .A1(B[3]), .A2(A[3]), .ZN(n207) );
  XOR2_X1 U6 ( .A(n208), .B(n207), .Z(n209) );
  XOR2_X1 U7 ( .A(n242), .B(n209), .Z(n212) );
  XOR2_X1 U8 ( .A(A[2]), .B(A[0]), .Z(n210) );
  NAND2_X1 U9 ( .A1(n210), .A2(B[0]), .ZN(n211) );
  XNOR2_X1 U10 ( .A(n212), .B(n211), .ZN(n221) );
  XNOR2_X1 U11 ( .A(B[2]), .B(B[1]), .ZN(n214) );
  NAND2_X1 U12 ( .A1(n214), .A2(A[1]), .ZN(n218) );
  INV_X1 U13 ( .A(A[2]), .ZN(n213) );
  NOR2_X1 U14 ( .A1(n214), .A2(n213), .ZN(n216) );
  NAND2_X1 U15 ( .A1(A[3]), .A2(B[0]), .ZN(n215) );
  XNOR2_X1 U16 ( .A(n216), .B(n215), .ZN(n217) );
  XNOR2_X1 U17 ( .A(n218), .B(n217), .ZN(n220) );
  NAND2_X1 U18 ( .A1(A[0]), .A2(B[3]), .ZN(n219) );
  XOR2_X1 U19 ( .A(n220), .B(n219), .Z(n267) );
  XNOR2_X1 U20 ( .A(n221), .B(n267), .ZN(Q[5]) );
  XOR2_X1 U21 ( .A(B[4]), .B(B[3]), .Z(n222) );
  NAND2_X1 U22 ( .A1(n222), .A2(A[3]), .ZN(n226) );
  NAND2_X1 U23 ( .A1(B[5]), .A2(A[2]), .ZN(n224) );
  NAND2_X1 U24 ( .A1(A[4]), .A2(B[3]), .ZN(n223) );
  XOR2_X1 U25 ( .A(n224), .B(n223), .Z(n225) );
  XNOR2_X1 U26 ( .A(n226), .B(n225), .ZN(n282) );
  NAND2_X1 U27 ( .A1(B[4]), .A2(A[2]), .ZN(n228) );
  INV_X1 U28 ( .A(B[4]), .ZN(n251) );
  NAND2_X1 U29 ( .A1(A[4]), .A2(n251), .ZN(n227) );
  NAND2_X1 U30 ( .A1(n228), .A2(n227), .ZN(n231) );
  XNOR2_X1 U31 ( .A(A[3]), .B(A[5]), .ZN(n271) );
  XNOR2_X1 U32 ( .A(A[4]), .B(n271), .ZN(n229) );
  NAND2_X1 U33 ( .A1(n229), .A2(B[2]), .ZN(n230) );
  XNOR2_X1 U34 ( .A(n231), .B(n230), .ZN(n233) );
  NAND2_X1 U35 ( .A1(B[3]), .A2(A[2]), .ZN(n263) );
  INV_X1 U36 ( .A(B[5]), .ZN(n240) );
  NAND2_X1 U37 ( .A1(A[5]), .A2(n240), .ZN(n250) );
  XOR2_X1 U38 ( .A(n263), .B(n250), .Z(n232) );
  XNOR2_X1 U39 ( .A(n233), .B(n232), .ZN(n234) );
  XNOR2_X1 U40 ( .A(n282), .B(n234), .ZN(Q[1]) );
  XNOR2_X1 U41 ( .A(n251), .B(B[0]), .ZN(n235) );
  NAND2_X1 U42 ( .A1(n235), .A2(A[5]), .ZN(n239) );
  NAND2_X1 U43 ( .A1(B[1]), .A2(A[4]), .ZN(n237) );
  NAND2_X1 U44 ( .A1(A[0]), .A2(B[5]), .ZN(n236) );
  XOR2_X1 U45 ( .A(n237), .B(n236), .Z(n238) );
  XNOR2_X1 U46 ( .A(n239), .B(n238), .ZN(n262) );
  XNOR2_X1 U47 ( .A(n240), .B(B[1]), .ZN(n241) );
  NAND2_X1 U48 ( .A1(n241), .A2(A[5]), .ZN(n245) );
  NAND2_X1 U49 ( .A1(A[1]), .A2(B[5]), .ZN(n243) );
  XNOR2_X1 U50 ( .A(n243), .B(n242), .ZN(n244) );
  XNOR2_X1 U51 ( .A(n245), .B(n244), .ZN(n246) );
  XNOR2_X1 U52 ( .A(B[0]), .B(n246), .ZN(n248) );
  NOR2_X1 U53 ( .A1(B[4]), .A2(A[1]), .ZN(n247) );
  XNOR2_X1 U54 ( .A(n248), .B(n247), .ZN(n249) );
  XNOR2_X1 U55 ( .A(n262), .B(n249), .ZN(Q[2]) );
  NAND2_X1 U56 ( .A1(B[5]), .A2(A[4]), .ZN(n274) );
  NAND2_X1 U57 ( .A1(n274), .A2(n250), .ZN(n260) );
  XNOR2_X1 U58 ( .A(A[1]), .B(A[0]), .ZN(n252) );
  NOR2_X1 U59 ( .A1(n252), .A2(n251), .ZN(n258) );
  INV_X1 U60 ( .A(B[1]), .ZN(n253) );
  NAND2_X1 U61 ( .A1(n253), .A2(A[1]), .ZN(n256) );
  INV_X1 U62 ( .A(B[0]), .ZN(n254) );
  NAND2_X1 U63 ( .A1(n254), .A2(A[4]), .ZN(n255) );
  XNOR2_X1 U64 ( .A(n256), .B(n255), .ZN(n257) );
  XNOR2_X1 U65 ( .A(n258), .B(n257), .ZN(n259) );
  XNOR2_X1 U66 ( .A(n260), .B(n259), .ZN(n261) );
  XNOR2_X1 U67 ( .A(n262), .B(n261), .ZN(Q[3]) );
  XNOR2_X1 U68 ( .A(n263), .B(B[0]), .ZN(n265) );
  NAND2_X1 U69 ( .A1(A[3]), .A2(B[1]), .ZN(n264) );
  XNOR2_X1 U70 ( .A(n265), .B(n264), .ZN(n266) );
  XNOR2_X1 U71 ( .A(n267), .B(n266), .ZN(n269) );
  NAND2_X1 U72 ( .A1(A[1]), .A2(B[3]), .ZN(n268) );
  XNOR2_X1 U73 ( .A(n269), .B(n268), .ZN(Q[4]) );
  INV_X1 U74 ( .A(B[2]), .ZN(n270) );
  NOR2_X1 U75 ( .A1(n271), .A2(n270), .ZN(n273) );
  NAND2_X1 U76 ( .A1(B[3]), .A2(A[5]), .ZN(n272) );
  XNOR2_X1 U77 ( .A(n273), .B(n272), .ZN(n277) );
  NAND2_X1 U78 ( .A1(B[5]), .A2(A[3]), .ZN(n275) );
  XNOR2_X1 U79 ( .A(n275), .B(n274), .ZN(n276) );
  XNOR2_X1 U80 ( .A(n277), .B(n276), .ZN(n278) );
  XNOR2_X1 U81 ( .A(B[4]), .B(n278), .ZN(n280) );
  NAND2_X1 U82 ( .A1(A[2]), .A2(B[2]), .ZN(n279) );
  XNOR2_X1 U83 ( .A(n280), .B(n279), .ZN(n281) );
  XNOR2_X1 U84 ( .A(n282), .B(n281), .ZN(Q[0]) );
endmodule


module XOR_n_n2_8 ( A, B, Q );
  input [1:0] A;
  input [1:0] B;
  output [1:0] Q;


  XOR2_X1 U1 ( .A(A[0]), .B(B[0]), .Z(Q[0]) );
  XOR2_X1 U2 ( .A(A[1]), .B(B[1]), .Z(Q[1]) );
endmodule


module XOR_n_n2_7 ( A, B, Q );
  input [1:0] A;
  input [1:0] B;
  output [1:0] Q;


  XOR2_X1 U1 ( .A(A[0]), .B(B[0]), .Z(Q[0]) );
  XOR2_X1 U2 ( .A(A[1]), .B(B[1]), .Z(Q[1]) );
endmodule


module XOR_n_n4_4 ( A, B, Q );
  input [3:0] A;
  input [3:0] B;
  output [3:0] Q;


  XOR2_X1 U1 ( .A(A[0]), .B(B[0]), .Z(Q[0]) );
  XOR2_X1 U2 ( .A(A[1]), .B(B[1]), .Z(Q[1]) );
  XOR2_X1 U3 ( .A(A[2]), .B(B[2]), .Z(Q[2]) );
  XOR2_X1 U4 ( .A(A[3]), .B(B[3]), .Z(Q[3]) );
endmodule


module AddMask_1_SHARES3_NumberOfBits2_4 ( A, NewMask, Q );
  input [5:0] A;
  input [3:0] NewMask;
  output [5:0] Q;

  wire   [1:0] MaskXOR;

  XOR_n_n2_8 MaskXORInst ( .A(NewMask[1:0]), .B(NewMask[3:2]), .Q(MaskXOR) );
  XOR_n_n2_7 XORInst1 ( .A(A[5:4]), .B(MaskXOR), .Q(Q[5:4]) );
  XOR_n_n4_4 XORInst2 ( .A(A[3:0]), .B(NewMask), .Q(Q[3:0]) );
endmodule


module GF_MULS_4_NewMask_1_SHARES3_2 ( A, B, NewMask1, NewMask2, NewMask3, ph, 
        p, pl );
  input [11:0] A;
  input [11:0] B;
  input [3:0] NewMask1;
  input [3:0] NewMask2;
  input [3:0] NewMask3;
  output [5:0] ph;
  output [5:0] p;
  output [5:0] pl;

  wire   [5:0] sA;
  wire   [5:0] sB;
  wire   [5:0] Orig_ph;
  wire   [5:0] Orig_p;
  wire   [5:0] Orig_pl;

  s_GF_MULS_2_SHARES3_6 himul ( .A({A[11:10], A[7:6], A[3:2]}), .B({B[11:10], 
        B[7:6], B[3:2]}), .Q(Orig_ph) );
  AddMask_1_SHARES3_NumberOfBits2_6 AddNewMaskph ( .A(Orig_ph), .NewMask(
        NewMask1), .Q(ph) );
  s_GF_MULS_2_SHARES3_5 summul ( .A(sA), .B(sB), .Q(Orig_p) );
  AddMask_1_SHARES3_NumberOfBits2_5 AddNewMaskp ( .A(Orig_p), .NewMask(
        NewMask2), .Q(p) );
  s_GF_MULS_2_SHARES3_4 lowmul ( .A({A[9:8], A[5:4], A[1:0]}), .B({B[9:8], 
        B[5:4], B[1:0]}), .Q(Orig_pl) );
  AddMask_1_SHARES3_NumberOfBits2_4 AddNewMaskpl ( .A(Orig_pl), .NewMask(
        NewMask3), .Q(pl) );
  XOR2_X1 U1 ( .A(B[5]), .B(B[7]), .Z(sB[3]) );
  XOR2_X1 U2 ( .A(A[4]), .B(A[6]), .Z(sA[2]) );
  XOR2_X1 U3 ( .A(A[11]), .B(A[9]), .Z(sA[5]) );
  XOR2_X1 U4 ( .A(B[10]), .B(B[8]), .Z(sB[4]) );
  XOR2_X1 U5 ( .A(A[10]), .B(A[8]), .Z(sA[4]) );
  XOR2_X1 U6 ( .A(A[5]), .B(A[7]), .Z(sA[3]) );
  XOR2_X1 U7 ( .A(A[1]), .B(A[3]), .Z(sA[1]) );
  XOR2_X1 U8 ( .A(A[0]), .B(A[2]), .Z(sA[0]) );
  XOR2_X1 U9 ( .A(B[0]), .B(B[2]), .Z(sB[0]) );
  XOR2_X1 U10 ( .A(B[11]), .B(B[9]), .Z(sB[5]) );
  XOR2_X1 U11 ( .A(B[4]), .B(B[6]), .Z(sB[2]) );
  XOR2_X1 U12 ( .A(B[1]), .B(B[3]), .Z(sB[1]) );
endmodule


module s_GF_MULS_2_SHARES3_3 ( A, B, Q );
  input [5:0] A;
  input [5:0] B;
  output [5:0] Q;
  wire   n207, n208, n209, n210, n211, n212, n213, n214, n215, n216, n217,
         n218, n219, n220, n221, n222, n223, n224, n225, n226, n227, n228,
         n229, n230, n231, n232, n233, n234, n235, n236, n237, n238, n239,
         n240, n241, n242, n243, n244, n245, n246, n247, n248, n249, n250,
         n251, n252, n253, n254, n255, n256, n257, n258, n259, n260, n261,
         n262, n263, n264, n265, n266, n267, n268, n269, n270, n271, n272,
         n273, n274, n275, n276, n277, n278, n279, n280, n281, n282, n283,
         n284;

  NAND2_X1 U1 ( .A1(A[0]), .A2(B[1]), .ZN(n208) );
  NAND2_X1 U2 ( .A1(B[0]), .A2(A[1]), .ZN(n207) );
  XOR2_X1 U3 ( .A(n208), .B(n207), .Z(n244) );
  NAND2_X1 U4 ( .A1(A[0]), .A2(B[2]), .ZN(n210) );
  NAND2_X1 U5 ( .A1(B[3]), .A2(A[3]), .ZN(n209) );
  XOR2_X1 U6 ( .A(n210), .B(n209), .Z(n211) );
  XOR2_X1 U7 ( .A(n244), .B(n211), .Z(n214) );
  XOR2_X1 U8 ( .A(A[2]), .B(A[0]), .Z(n212) );
  NAND2_X1 U9 ( .A1(n212), .A2(B[0]), .ZN(n213) );
  XNOR2_X1 U10 ( .A(n214), .B(n213), .ZN(n223) );
  XNOR2_X1 U11 ( .A(B[2]), .B(B[1]), .ZN(n216) );
  NAND2_X1 U12 ( .A1(n216), .A2(A[1]), .ZN(n220) );
  INV_X1 U13 ( .A(A[2]), .ZN(n215) );
  NOR2_X1 U14 ( .A1(n216), .A2(n215), .ZN(n218) );
  NAND2_X1 U15 ( .A1(A[3]), .A2(B[0]), .ZN(n217) );
  XNOR2_X1 U16 ( .A(n218), .B(n217), .ZN(n219) );
  XNOR2_X1 U17 ( .A(n220), .B(n219), .ZN(n222) );
  NAND2_X1 U18 ( .A1(A[0]), .A2(B[3]), .ZN(n221) );
  XOR2_X1 U19 ( .A(n222), .B(n221), .Z(n269) );
  XNOR2_X1 U20 ( .A(n223), .B(n269), .ZN(Q[5]) );
  XOR2_X1 U21 ( .A(B[4]), .B(B[3]), .Z(n224) );
  NAND2_X1 U22 ( .A1(n224), .A2(A[3]), .ZN(n228) );
  NAND2_X1 U23 ( .A1(B[5]), .A2(A[2]), .ZN(n226) );
  NAND2_X1 U24 ( .A1(A[4]), .A2(B[3]), .ZN(n225) );
  XOR2_X1 U25 ( .A(n226), .B(n225), .Z(n227) );
  XNOR2_X1 U26 ( .A(n228), .B(n227), .ZN(n284) );
  NAND2_X1 U27 ( .A1(B[4]), .A2(A[2]), .ZN(n230) );
  INV_X1 U28 ( .A(B[4]), .ZN(n253) );
  NAND2_X1 U29 ( .A1(A[4]), .A2(n253), .ZN(n229) );
  NAND2_X1 U30 ( .A1(n230), .A2(n229), .ZN(n233) );
  XNOR2_X1 U31 ( .A(A[3]), .B(A[5]), .ZN(n273) );
  XNOR2_X1 U32 ( .A(A[4]), .B(n273), .ZN(n231) );
  NAND2_X1 U33 ( .A1(n231), .A2(B[2]), .ZN(n232) );
  XNOR2_X1 U34 ( .A(n233), .B(n232), .ZN(n235) );
  NAND2_X1 U35 ( .A1(B[3]), .A2(A[2]), .ZN(n265) );
  INV_X1 U36 ( .A(B[5]), .ZN(n242) );
  NAND2_X1 U37 ( .A1(A[5]), .A2(n242), .ZN(n252) );
  XOR2_X1 U38 ( .A(n265), .B(n252), .Z(n234) );
  XNOR2_X1 U39 ( .A(n235), .B(n234), .ZN(n236) );
  XNOR2_X1 U40 ( .A(n284), .B(n236), .ZN(Q[1]) );
  XNOR2_X1 U41 ( .A(n253), .B(B[0]), .ZN(n237) );
  NAND2_X1 U42 ( .A1(n237), .A2(A[5]), .ZN(n241) );
  NAND2_X1 U43 ( .A1(B[1]), .A2(A[4]), .ZN(n239) );
  NAND2_X1 U44 ( .A1(A[0]), .A2(B[5]), .ZN(n238) );
  XOR2_X1 U45 ( .A(n239), .B(n238), .Z(n240) );
  XNOR2_X1 U46 ( .A(n241), .B(n240), .ZN(n264) );
  XNOR2_X1 U47 ( .A(n242), .B(B[1]), .ZN(n243) );
  NAND2_X1 U48 ( .A1(n243), .A2(A[5]), .ZN(n247) );
  NAND2_X1 U49 ( .A1(A[1]), .A2(B[5]), .ZN(n245) );
  XNOR2_X1 U50 ( .A(n245), .B(n244), .ZN(n246) );
  XNOR2_X1 U51 ( .A(n247), .B(n246), .ZN(n248) );
  XNOR2_X1 U52 ( .A(B[0]), .B(n248), .ZN(n250) );
  NOR2_X1 U53 ( .A1(B[4]), .A2(A[1]), .ZN(n249) );
  XNOR2_X1 U54 ( .A(n250), .B(n249), .ZN(n251) );
  XNOR2_X1 U55 ( .A(n264), .B(n251), .ZN(Q[2]) );
  NAND2_X1 U56 ( .A1(B[5]), .A2(A[4]), .ZN(n276) );
  NAND2_X1 U57 ( .A1(n276), .A2(n252), .ZN(n262) );
  XNOR2_X1 U58 ( .A(A[1]), .B(A[0]), .ZN(n254) );
  NOR2_X1 U59 ( .A1(n254), .A2(n253), .ZN(n260) );
  INV_X1 U60 ( .A(B[1]), .ZN(n255) );
  NAND2_X1 U61 ( .A1(n255), .A2(A[1]), .ZN(n258) );
  INV_X1 U62 ( .A(B[0]), .ZN(n256) );
  NAND2_X1 U63 ( .A1(n256), .A2(A[4]), .ZN(n257) );
  XNOR2_X1 U64 ( .A(n258), .B(n257), .ZN(n259) );
  XNOR2_X1 U65 ( .A(n260), .B(n259), .ZN(n261) );
  XNOR2_X1 U66 ( .A(n262), .B(n261), .ZN(n263) );
  XNOR2_X1 U67 ( .A(n264), .B(n263), .ZN(Q[3]) );
  XNOR2_X1 U68 ( .A(n265), .B(B[0]), .ZN(n267) );
  NAND2_X1 U69 ( .A1(A[3]), .A2(B[1]), .ZN(n266) );
  XNOR2_X1 U70 ( .A(n267), .B(n266), .ZN(n268) );
  XNOR2_X1 U71 ( .A(n269), .B(n268), .ZN(n271) );
  NAND2_X1 U72 ( .A1(A[1]), .A2(B[3]), .ZN(n270) );
  XNOR2_X1 U73 ( .A(n271), .B(n270), .ZN(Q[4]) );
  INV_X1 U74 ( .A(B[2]), .ZN(n272) );
  NOR2_X1 U75 ( .A1(n273), .A2(n272), .ZN(n275) );
  NAND2_X1 U76 ( .A1(B[3]), .A2(A[5]), .ZN(n274) );
  XNOR2_X1 U77 ( .A(n275), .B(n274), .ZN(n279) );
  NAND2_X1 U78 ( .A1(B[5]), .A2(A[3]), .ZN(n277) );
  XNOR2_X1 U79 ( .A(n277), .B(n276), .ZN(n278) );
  XNOR2_X1 U80 ( .A(n279), .B(n278), .ZN(n280) );
  XNOR2_X1 U81 ( .A(B[4]), .B(n280), .ZN(n282) );
  NAND2_X1 U82 ( .A1(A[2]), .A2(B[2]), .ZN(n281) );
  XNOR2_X1 U83 ( .A(n282), .B(n281), .ZN(n283) );
  XNOR2_X1 U84 ( .A(n284), .B(n283), .ZN(Q[0]) );
endmodule


module XOR_n_n2_6 ( A, B, Q );
  input [1:0] A;
  input [1:0] B;
  output [1:0] Q;


  XOR2_X1 U1 ( .A(A[0]), .B(B[0]), .Z(Q[0]) );
  XOR2_X1 U2 ( .A(A[1]), .B(B[1]), .Z(Q[1]) );
endmodule


module XOR_n_n2_5 ( A, B, Q );
  input [1:0] A;
  input [1:0] B;
  output [1:0] Q;


  XOR2_X1 U1 ( .A(A[0]), .B(B[0]), .Z(Q[0]) );
  XOR2_X1 U2 ( .A(A[1]), .B(B[1]), .Z(Q[1]) );
endmodule


module XOR_n_n4_3 ( A, B, Q );
  input [3:0] A;
  input [3:0] B;
  output [3:0] Q;


  XOR2_X1 U1 ( .A(A[0]), .B(B[0]), .Z(Q[0]) );
  XOR2_X1 U2 ( .A(A[1]), .B(B[1]), .Z(Q[1]) );
  XOR2_X1 U3 ( .A(A[2]), .B(B[2]), .Z(Q[2]) );
  XOR2_X1 U4 ( .A(A[3]), .B(B[3]), .Z(Q[3]) );
endmodule


module AddMask_1_SHARES3_NumberOfBits2_3 ( A, NewMask, Q );
  input [5:0] A;
  input [3:0] NewMask;
  output [5:0] Q;

  wire   [1:0] MaskXOR;

  XOR_n_n2_6 MaskXORInst ( .A(NewMask[1:0]), .B(NewMask[3:2]), .Q(MaskXOR) );
  XOR_n_n2_5 XORInst1 ( .A(A[5:4]), .B(MaskXOR), .Q(Q[5:4]) );
  XOR_n_n4_3 XORInst2 ( .A(A[3:0]), .B(NewMask), .Q(Q[3:0]) );
endmodule


module s_GF_MULS_2_SHARES3_2 ( A, B, Q );
  input [5:0] A;
  input [5:0] B;
  output [5:0] Q;
  wire   n207, n208, n209, n210, n211, n212, n213, n214, n215, n216, n217,
         n218, n219, n220, n221, n222, n223, n224, n225, n226, n227, n228,
         n229, n230, n231, n232, n233, n234, n235, n236, n237, n238, n239,
         n240, n241, n242, n243, n244, n245, n246, n247, n248, n249, n250,
         n251, n252, n253, n254, n255, n256, n257, n258, n259, n260, n261,
         n262, n263, n264, n265, n266, n267, n268, n269, n270, n271, n272,
         n273, n274, n275, n276, n277, n278, n279, n280, n281, n282, n283,
         n284;

  NAND2_X1 U1 ( .A1(A[0]), .A2(B[1]), .ZN(n208) );
  NAND2_X1 U2 ( .A1(B[0]), .A2(A[1]), .ZN(n207) );
  XOR2_X1 U3 ( .A(n208), .B(n207), .Z(n244) );
  NAND2_X1 U4 ( .A1(A[0]), .A2(B[2]), .ZN(n210) );
  NAND2_X1 U5 ( .A1(B[3]), .A2(A[3]), .ZN(n209) );
  XOR2_X1 U6 ( .A(n210), .B(n209), .Z(n211) );
  XOR2_X1 U7 ( .A(n244), .B(n211), .Z(n214) );
  XOR2_X1 U8 ( .A(A[2]), .B(A[0]), .Z(n212) );
  NAND2_X1 U9 ( .A1(n212), .A2(B[0]), .ZN(n213) );
  XNOR2_X1 U10 ( .A(n214), .B(n213), .ZN(n223) );
  XNOR2_X1 U11 ( .A(B[2]), .B(B[1]), .ZN(n216) );
  NAND2_X1 U12 ( .A1(n216), .A2(A[1]), .ZN(n220) );
  INV_X1 U13 ( .A(A[2]), .ZN(n215) );
  NOR2_X1 U14 ( .A1(n216), .A2(n215), .ZN(n218) );
  NAND2_X1 U15 ( .A1(A[3]), .A2(B[0]), .ZN(n217) );
  XNOR2_X1 U16 ( .A(n218), .B(n217), .ZN(n219) );
  XNOR2_X1 U17 ( .A(n220), .B(n219), .ZN(n222) );
  NAND2_X1 U18 ( .A1(A[0]), .A2(B[3]), .ZN(n221) );
  XOR2_X1 U19 ( .A(n222), .B(n221), .Z(n269) );
  XNOR2_X1 U20 ( .A(n223), .B(n269), .ZN(Q[5]) );
  XOR2_X1 U21 ( .A(B[4]), .B(B[3]), .Z(n224) );
  NAND2_X1 U22 ( .A1(n224), .A2(A[3]), .ZN(n228) );
  NAND2_X1 U23 ( .A1(B[5]), .A2(A[2]), .ZN(n226) );
  NAND2_X1 U24 ( .A1(A[4]), .A2(B[3]), .ZN(n225) );
  XOR2_X1 U25 ( .A(n226), .B(n225), .Z(n227) );
  XNOR2_X1 U26 ( .A(n228), .B(n227), .ZN(n284) );
  NAND2_X1 U27 ( .A1(B[4]), .A2(A[2]), .ZN(n230) );
  INV_X1 U28 ( .A(B[4]), .ZN(n253) );
  NAND2_X1 U29 ( .A1(A[4]), .A2(n253), .ZN(n229) );
  NAND2_X1 U30 ( .A1(n230), .A2(n229), .ZN(n233) );
  XNOR2_X1 U31 ( .A(A[3]), .B(A[5]), .ZN(n273) );
  XNOR2_X1 U32 ( .A(A[4]), .B(n273), .ZN(n231) );
  NAND2_X1 U33 ( .A1(n231), .A2(B[2]), .ZN(n232) );
  XNOR2_X1 U34 ( .A(n233), .B(n232), .ZN(n235) );
  NAND2_X1 U35 ( .A1(B[3]), .A2(A[2]), .ZN(n265) );
  INV_X1 U36 ( .A(B[5]), .ZN(n242) );
  NAND2_X1 U37 ( .A1(A[5]), .A2(n242), .ZN(n252) );
  XOR2_X1 U38 ( .A(n265), .B(n252), .Z(n234) );
  XNOR2_X1 U39 ( .A(n235), .B(n234), .ZN(n236) );
  XNOR2_X1 U40 ( .A(n284), .B(n236), .ZN(Q[1]) );
  XNOR2_X1 U41 ( .A(n253), .B(B[0]), .ZN(n237) );
  NAND2_X1 U42 ( .A1(n237), .A2(A[5]), .ZN(n241) );
  NAND2_X1 U43 ( .A1(B[1]), .A2(A[4]), .ZN(n239) );
  NAND2_X1 U44 ( .A1(A[0]), .A2(B[5]), .ZN(n238) );
  XOR2_X1 U45 ( .A(n239), .B(n238), .Z(n240) );
  XNOR2_X1 U46 ( .A(n241), .B(n240), .ZN(n264) );
  XNOR2_X1 U47 ( .A(n242), .B(B[1]), .ZN(n243) );
  NAND2_X1 U48 ( .A1(n243), .A2(A[5]), .ZN(n247) );
  NAND2_X1 U49 ( .A1(A[1]), .A2(B[5]), .ZN(n245) );
  XNOR2_X1 U50 ( .A(n245), .B(n244), .ZN(n246) );
  XNOR2_X1 U51 ( .A(n247), .B(n246), .ZN(n248) );
  XNOR2_X1 U52 ( .A(B[0]), .B(n248), .ZN(n250) );
  NOR2_X1 U53 ( .A1(B[4]), .A2(A[1]), .ZN(n249) );
  XNOR2_X1 U54 ( .A(n250), .B(n249), .ZN(n251) );
  XNOR2_X1 U55 ( .A(n264), .B(n251), .ZN(Q[2]) );
  NAND2_X1 U56 ( .A1(B[5]), .A2(A[4]), .ZN(n276) );
  NAND2_X1 U57 ( .A1(n276), .A2(n252), .ZN(n262) );
  XNOR2_X1 U58 ( .A(A[1]), .B(A[0]), .ZN(n254) );
  NOR2_X1 U59 ( .A1(n254), .A2(n253), .ZN(n260) );
  INV_X1 U60 ( .A(B[1]), .ZN(n255) );
  NAND2_X1 U61 ( .A1(n255), .A2(A[1]), .ZN(n258) );
  INV_X1 U62 ( .A(B[0]), .ZN(n256) );
  NAND2_X1 U63 ( .A1(n256), .A2(A[4]), .ZN(n257) );
  XNOR2_X1 U64 ( .A(n258), .B(n257), .ZN(n259) );
  XNOR2_X1 U65 ( .A(n260), .B(n259), .ZN(n261) );
  XNOR2_X1 U66 ( .A(n262), .B(n261), .ZN(n263) );
  XNOR2_X1 U67 ( .A(n264), .B(n263), .ZN(Q[3]) );
  XNOR2_X1 U68 ( .A(n265), .B(B[0]), .ZN(n267) );
  NAND2_X1 U69 ( .A1(A[3]), .A2(B[1]), .ZN(n266) );
  XNOR2_X1 U70 ( .A(n267), .B(n266), .ZN(n268) );
  XNOR2_X1 U71 ( .A(n269), .B(n268), .ZN(n271) );
  NAND2_X1 U72 ( .A1(A[1]), .A2(B[3]), .ZN(n270) );
  XNOR2_X1 U73 ( .A(n271), .B(n270), .ZN(Q[4]) );
  INV_X1 U74 ( .A(B[2]), .ZN(n272) );
  NOR2_X1 U75 ( .A1(n273), .A2(n272), .ZN(n275) );
  NAND2_X1 U76 ( .A1(B[3]), .A2(A[5]), .ZN(n274) );
  XNOR2_X1 U77 ( .A(n275), .B(n274), .ZN(n279) );
  NAND2_X1 U78 ( .A1(B[5]), .A2(A[3]), .ZN(n277) );
  XNOR2_X1 U79 ( .A(n277), .B(n276), .ZN(n278) );
  XNOR2_X1 U80 ( .A(n279), .B(n278), .ZN(n280) );
  XNOR2_X1 U81 ( .A(B[4]), .B(n280), .ZN(n282) );
  NAND2_X1 U82 ( .A1(A[2]), .A2(B[2]), .ZN(n281) );
  XNOR2_X1 U83 ( .A(n282), .B(n281), .ZN(n283) );
  XNOR2_X1 U84 ( .A(n284), .B(n283), .ZN(Q[0]) );
endmodule


module XOR_n_n2_4 ( A, B, Q );
  input [1:0] A;
  input [1:0] B;
  output [1:0] Q;


  XOR2_X1 U1 ( .A(A[1]), .B(B[1]), .Z(Q[1]) );
  XOR2_X1 U2 ( .A(A[0]), .B(B[0]), .Z(Q[0]) );
endmodule


module XOR_n_n2_3 ( A, B, Q );
  input [1:0] A;
  input [1:0] B;
  output [1:0] Q;


  XOR2_X1 U1 ( .A(A[1]), .B(B[1]), .Z(Q[1]) );
  XOR2_X1 U2 ( .A(A[0]), .B(B[0]), .Z(Q[0]) );
endmodule


module XOR_n_n4_2 ( A, B, Q );
  input [3:0] A;
  input [3:0] B;
  output [3:0] Q;


  XOR2_X1 U1 ( .A(A[0]), .B(B[0]), .Z(Q[0]) );
  XOR2_X1 U2 ( .A(A[1]), .B(B[1]), .Z(Q[1]) );
  XOR2_X1 U3 ( .A(A[2]), .B(B[2]), .Z(Q[2]) );
  XOR2_X1 U4 ( .A(A[3]), .B(B[3]), .Z(Q[3]) );
endmodule


module AddMask_1_SHARES3_NumberOfBits2_2 ( A, NewMask, Q );
  input [5:0] A;
  input [3:0] NewMask;
  output [5:0] Q;

  wire   [1:0] MaskXOR;

  XOR_n_n2_4 MaskXORInst ( .A(NewMask[1:0]), .B(NewMask[3:2]), .Q(MaskXOR) );
  XOR_n_n2_3 XORInst1 ( .A(A[5:4]), .B(MaskXOR), .Q(Q[5:4]) );
  XOR_n_n4_2 XORInst2 ( .A(A[3:0]), .B(NewMask), .Q(Q[3:0]) );
endmodule


module s_GF_MULS_2_SHARES3_1 ( A, B, Q );
  input [5:0] A;
  input [5:0] B;
  output [5:0] Q;
  wire   n207, n208, n209, n210, n211, n212, n213, n214, n215, n216, n217,
         n218, n219, n220, n221, n222, n223, n224, n225, n226, n227, n228,
         n229, n230, n231, n232, n233, n234, n235, n236, n237, n238, n239,
         n240, n241, n242, n243, n244, n245, n246, n247, n248, n249, n250,
         n251, n252, n253, n254, n255, n256, n257, n258, n259, n260, n261,
         n262, n263, n264, n265, n266, n267, n268, n269, n270, n271, n272,
         n273, n274, n275, n276, n277, n278, n279, n280, n281, n282, n283,
         n284;

  NAND2_X1 U1 ( .A1(A[0]), .A2(B[1]), .ZN(n208) );
  NAND2_X1 U2 ( .A1(B[0]), .A2(A[1]), .ZN(n207) );
  XOR2_X1 U3 ( .A(n208), .B(n207), .Z(n244) );
  NAND2_X1 U4 ( .A1(A[0]), .A2(B[2]), .ZN(n210) );
  NAND2_X1 U5 ( .A1(B[3]), .A2(A[3]), .ZN(n209) );
  XOR2_X1 U6 ( .A(n210), .B(n209), .Z(n211) );
  XOR2_X1 U7 ( .A(n244), .B(n211), .Z(n214) );
  XOR2_X1 U8 ( .A(A[2]), .B(A[0]), .Z(n212) );
  NAND2_X1 U9 ( .A1(n212), .A2(B[0]), .ZN(n213) );
  XNOR2_X1 U10 ( .A(n214), .B(n213), .ZN(n223) );
  XNOR2_X1 U11 ( .A(B[2]), .B(B[1]), .ZN(n216) );
  NAND2_X1 U12 ( .A1(n216), .A2(A[1]), .ZN(n220) );
  INV_X1 U13 ( .A(A[2]), .ZN(n215) );
  NOR2_X1 U14 ( .A1(n216), .A2(n215), .ZN(n218) );
  NAND2_X1 U15 ( .A1(A[3]), .A2(B[0]), .ZN(n217) );
  XNOR2_X1 U16 ( .A(n218), .B(n217), .ZN(n219) );
  XNOR2_X1 U17 ( .A(n220), .B(n219), .ZN(n222) );
  NAND2_X1 U18 ( .A1(A[0]), .A2(B[3]), .ZN(n221) );
  XOR2_X1 U19 ( .A(n222), .B(n221), .Z(n269) );
  XNOR2_X1 U20 ( .A(n223), .B(n269), .ZN(Q[5]) );
  XOR2_X1 U21 ( .A(B[4]), .B(B[3]), .Z(n224) );
  NAND2_X1 U22 ( .A1(n224), .A2(A[3]), .ZN(n228) );
  NAND2_X1 U23 ( .A1(B[5]), .A2(A[2]), .ZN(n226) );
  NAND2_X1 U24 ( .A1(A[4]), .A2(B[3]), .ZN(n225) );
  XOR2_X1 U25 ( .A(n226), .B(n225), .Z(n227) );
  XNOR2_X1 U26 ( .A(n228), .B(n227), .ZN(n284) );
  NAND2_X1 U27 ( .A1(B[4]), .A2(A[2]), .ZN(n230) );
  INV_X1 U28 ( .A(B[4]), .ZN(n253) );
  NAND2_X1 U29 ( .A1(A[4]), .A2(n253), .ZN(n229) );
  NAND2_X1 U30 ( .A1(n230), .A2(n229), .ZN(n233) );
  XNOR2_X1 U31 ( .A(A[3]), .B(A[5]), .ZN(n273) );
  XNOR2_X1 U32 ( .A(A[4]), .B(n273), .ZN(n231) );
  NAND2_X1 U33 ( .A1(n231), .A2(B[2]), .ZN(n232) );
  XNOR2_X1 U34 ( .A(n233), .B(n232), .ZN(n235) );
  NAND2_X1 U35 ( .A1(B[3]), .A2(A[2]), .ZN(n265) );
  INV_X1 U36 ( .A(B[5]), .ZN(n242) );
  NAND2_X1 U37 ( .A1(A[5]), .A2(n242), .ZN(n252) );
  XOR2_X1 U38 ( .A(n265), .B(n252), .Z(n234) );
  XNOR2_X1 U39 ( .A(n235), .B(n234), .ZN(n236) );
  XNOR2_X1 U40 ( .A(n284), .B(n236), .ZN(Q[1]) );
  XNOR2_X1 U41 ( .A(n253), .B(B[0]), .ZN(n237) );
  NAND2_X1 U42 ( .A1(n237), .A2(A[5]), .ZN(n241) );
  NAND2_X1 U43 ( .A1(B[1]), .A2(A[4]), .ZN(n239) );
  NAND2_X1 U44 ( .A1(A[0]), .A2(B[5]), .ZN(n238) );
  XOR2_X1 U45 ( .A(n239), .B(n238), .Z(n240) );
  XNOR2_X1 U46 ( .A(n241), .B(n240), .ZN(n264) );
  XNOR2_X1 U47 ( .A(n242), .B(B[1]), .ZN(n243) );
  NAND2_X1 U48 ( .A1(n243), .A2(A[5]), .ZN(n247) );
  NAND2_X1 U49 ( .A1(A[1]), .A2(B[5]), .ZN(n245) );
  XNOR2_X1 U50 ( .A(n245), .B(n244), .ZN(n246) );
  XNOR2_X1 U51 ( .A(n247), .B(n246), .ZN(n248) );
  XNOR2_X1 U52 ( .A(B[0]), .B(n248), .ZN(n250) );
  NOR2_X1 U53 ( .A1(B[4]), .A2(A[1]), .ZN(n249) );
  XNOR2_X1 U54 ( .A(n250), .B(n249), .ZN(n251) );
  XNOR2_X1 U55 ( .A(n264), .B(n251), .ZN(Q[2]) );
  NAND2_X1 U56 ( .A1(B[5]), .A2(A[4]), .ZN(n276) );
  NAND2_X1 U57 ( .A1(n276), .A2(n252), .ZN(n262) );
  XNOR2_X1 U58 ( .A(A[1]), .B(A[0]), .ZN(n254) );
  NOR2_X1 U59 ( .A1(n254), .A2(n253), .ZN(n260) );
  INV_X1 U60 ( .A(B[1]), .ZN(n255) );
  NAND2_X1 U61 ( .A1(n255), .A2(A[1]), .ZN(n258) );
  INV_X1 U62 ( .A(B[0]), .ZN(n256) );
  NAND2_X1 U63 ( .A1(n256), .A2(A[4]), .ZN(n257) );
  XNOR2_X1 U64 ( .A(n258), .B(n257), .ZN(n259) );
  XNOR2_X1 U65 ( .A(n260), .B(n259), .ZN(n261) );
  XNOR2_X1 U66 ( .A(n262), .B(n261), .ZN(n263) );
  XNOR2_X1 U67 ( .A(n264), .B(n263), .ZN(Q[3]) );
  XNOR2_X1 U68 ( .A(n265), .B(B[0]), .ZN(n267) );
  NAND2_X1 U69 ( .A1(A[3]), .A2(B[1]), .ZN(n266) );
  XNOR2_X1 U70 ( .A(n267), .B(n266), .ZN(n268) );
  XNOR2_X1 U71 ( .A(n269), .B(n268), .ZN(n271) );
  NAND2_X1 U72 ( .A1(A[1]), .A2(B[3]), .ZN(n270) );
  XNOR2_X1 U73 ( .A(n271), .B(n270), .ZN(Q[4]) );
  INV_X1 U74 ( .A(B[2]), .ZN(n272) );
  NOR2_X1 U75 ( .A1(n273), .A2(n272), .ZN(n275) );
  NAND2_X1 U76 ( .A1(B[3]), .A2(A[5]), .ZN(n274) );
  XNOR2_X1 U77 ( .A(n275), .B(n274), .ZN(n279) );
  NAND2_X1 U78 ( .A1(B[5]), .A2(A[3]), .ZN(n277) );
  XNOR2_X1 U79 ( .A(n277), .B(n276), .ZN(n278) );
  XNOR2_X1 U80 ( .A(n279), .B(n278), .ZN(n280) );
  XNOR2_X1 U81 ( .A(B[4]), .B(n280), .ZN(n282) );
  NAND2_X1 U82 ( .A1(A[2]), .A2(B[2]), .ZN(n281) );
  XNOR2_X1 U83 ( .A(n282), .B(n281), .ZN(n283) );
  XNOR2_X1 U84 ( .A(n284), .B(n283), .ZN(Q[0]) );
endmodule


module XOR_n_n2_2 ( A, B, Q );
  input [1:0] A;
  input [1:0] B;
  output [1:0] Q;


  XOR2_X1 U1 ( .A(A[0]), .B(B[0]), .Z(Q[0]) );
  XOR2_X1 U2 ( .A(A[1]), .B(B[1]), .Z(Q[1]) );
endmodule


module XOR_n_n2_1 ( A, B, Q );
  input [1:0] A;
  input [1:0] B;
  output [1:0] Q;


  XOR2_X1 U1 ( .A(A[0]), .B(B[0]), .Z(Q[0]) );
  XOR2_X1 U2 ( .A(A[1]), .B(B[1]), .Z(Q[1]) );
endmodule


module XOR_n_n4_1 ( A, B, Q );
  input [3:0] A;
  input [3:0] B;
  output [3:0] Q;


  XOR2_X1 U1 ( .A(A[0]), .B(B[0]), .Z(Q[0]) );
  XOR2_X1 U2 ( .A(A[1]), .B(B[1]), .Z(Q[1]) );
  XOR2_X1 U3 ( .A(A[2]), .B(B[2]), .Z(Q[2]) );
  XOR2_X1 U4 ( .A(A[3]), .B(B[3]), .Z(Q[3]) );
endmodule


module AddMask_1_SHARES3_NumberOfBits2_1 ( A, NewMask, Q );
  input [5:0] A;
  input [3:0] NewMask;
  output [5:0] Q;

  wire   [1:0] MaskXOR;

  XOR_n_n2_2 MaskXORInst ( .A(NewMask[1:0]), .B(NewMask[3:2]), .Q(MaskXOR) );
  XOR_n_n2_1 XORInst1 ( .A(A[5:4]), .B(MaskXOR), .Q(Q[5:4]) );
  XOR_n_n4_1 XORInst2 ( .A(A[3:0]), .B(NewMask), .Q(Q[3:0]) );
endmodule


module GF_MULS_4_NewMask_1_SHARES3_1 ( A, B, NewMask1, NewMask2, NewMask3, ph, 
        p, pl );
  input [11:0] A;
  input [11:0] B;
  input [3:0] NewMask1;
  input [3:0] NewMask2;
  input [3:0] NewMask3;
  output [5:0] ph;
  output [5:0] p;
  output [5:0] pl;

  wire   [5:0] sA;
  wire   [5:0] sB;
  wire   [5:0] Orig_ph;
  wire   [5:0] Orig_p;
  wire   [5:0] Orig_pl;

  s_GF_MULS_2_SHARES3_3 himul ( .A({A[11:10], A[7:6], A[3:2]}), .B({B[11:10], 
        B[7:6], B[3:2]}), .Q(Orig_ph) );
  AddMask_1_SHARES3_NumberOfBits2_3 AddNewMaskph ( .A(Orig_ph), .NewMask(
        NewMask1), .Q(ph) );
  s_GF_MULS_2_SHARES3_2 summul ( .A(sA), .B(sB), .Q(Orig_p) );
  AddMask_1_SHARES3_NumberOfBits2_2 AddNewMaskp ( .A(Orig_p), .NewMask(
        NewMask2), .Q(p) );
  s_GF_MULS_2_SHARES3_1 lowmul ( .A({A[9:8], A[5:4], A[1:0]}), .B({B[9:8], 
        B[5:4], B[1:0]}), .Q(Orig_pl) );
  AddMask_1_SHARES3_NumberOfBits2_1 AddNewMaskpl ( .A(Orig_pl), .NewMask(
        NewMask3), .Q(pl) );
  XOR2_X1 U1 ( .A(B[5]), .B(B[7]), .Z(sB[3]) );
  XOR2_X1 U2 ( .A(A[4]), .B(A[6]), .Z(sA[2]) );
  XOR2_X1 U3 ( .A(A[11]), .B(A[9]), .Z(sA[5]) );
  XOR2_X1 U4 ( .A(B[10]), .B(B[8]), .Z(sB[4]) );
  XOR2_X1 U5 ( .A(A[10]), .B(A[8]), .Z(sA[4]) );
  XOR2_X1 U6 ( .A(A[5]), .B(A[7]), .Z(sA[3]) );
  XOR2_X1 U7 ( .A(A[1]), .B(A[3]), .Z(sA[1]) );
  XOR2_X1 U8 ( .A(A[0]), .B(A[2]), .Z(sA[0]) );
  XOR2_X1 U9 ( .A(B[0]), .B(B[2]), .Z(sB[0]) );
  XOR2_X1 U10 ( .A(B[11]), .B(B[9]), .Z(sB[5]) );
  XOR2_X1 U11 ( .A(B[4]), .B(B[6]), .Z(sB[2]) );
  XOR2_X1 U12 ( .A(B[1]), .B(B[3]), .Z(sB[1]) );
endmodule


module sharedSbox_f4_SHARES3 ( Zhin, Zlin, muld, NewMask_H1, NewMask_H2, 
        NewMask_H3, NewMask_L1, NewMask_L2, NewMask_L3, ph_H, p_H, pl_H, ph_L, 
        p_L, pl_L );
  input [11:0] Zhin;
  input [11:0] Zlin;
  input [11:0] muld;
  input [3:0] NewMask_H1;
  input [3:0] NewMask_H2;
  input [3:0] NewMask_H3;
  input [3:0] NewMask_L1;
  input [3:0] NewMask_L2;
  input [3:0] NewMask_L3;
  output [5:0] ph_H;
  output [5:0] p_H;
  output [5:0] pl_H;
  output [5:0] ph_L;
  output [5:0] p_L;
  output [5:0] pl_L;


  GF_MULS_4_NewMask_1_SHARES3_2 multd_L ( .A(Zhin), .B(muld), .NewMask1(
        NewMask_L1), .NewMask2(NewMask_L2), .NewMask3(NewMask_L3), .ph(ph_L), 
        .p(p_L), .pl(pl_L) );
  GF_MULS_4_NewMask_1_SHARES3_1 multd_H ( .A(muld), .B(Zlin), .NewMask1(
        NewMask_H1), .NewMask2(NewMask_H2), .NewMask3(NewMask_H3), .ph(ph_H), 
        .p(p_H), .pl(pl_H) );
endmodule


module ff_NBITS36_1 ( clk, D, Q );
  input [35:0] D;
  output [35:0] Q;
  input clk;


  DFF_X1 s_current_state_reg_35_ ( .D(D[35]), .CK(clk), .Q(Q[35]), .QN() );
  DFF_X1 s_current_state_reg_34_ ( .D(D[34]), .CK(clk), .Q(Q[34]), .QN() );
  DFF_X1 s_current_state_reg_33_ ( .D(D[33]), .CK(clk), .Q(Q[33]), .QN() );
  DFF_X1 s_current_state_reg_32_ ( .D(D[32]), .CK(clk), .Q(Q[32]), .QN() );
  DFF_X1 s_current_state_reg_31_ ( .D(D[31]), .CK(clk), .Q(Q[31]), .QN() );
  DFF_X1 s_current_state_reg_30_ ( .D(D[30]), .CK(clk), .Q(Q[30]), .QN() );
  DFF_X1 s_current_state_reg_29_ ( .D(D[29]), .CK(clk), .Q(Q[29]), .QN() );
  DFF_X1 s_current_state_reg_28_ ( .D(D[28]), .CK(clk), .Q(Q[28]), .QN() );
  DFF_X1 s_current_state_reg_27_ ( .D(D[27]), .CK(clk), .Q(Q[27]), .QN() );
  DFF_X1 s_current_state_reg_26_ ( .D(D[26]), .CK(clk), .Q(Q[26]), .QN() );
  DFF_X1 s_current_state_reg_25_ ( .D(D[25]), .CK(clk), .Q(Q[25]), .QN() );
  DFF_X1 s_current_state_reg_24_ ( .D(D[24]), .CK(clk), .Q(Q[24]), .QN() );
  DFF_X1 s_current_state_reg_23_ ( .D(D[23]), .CK(clk), .Q(Q[23]), .QN() );
  DFF_X1 s_current_state_reg_22_ ( .D(D[22]), .CK(clk), .Q(Q[22]), .QN() );
  DFF_X1 s_current_state_reg_21_ ( .D(D[21]), .CK(clk), .Q(Q[21]), .QN() );
  DFF_X1 s_current_state_reg_20_ ( .D(D[20]), .CK(clk), .Q(Q[20]), .QN() );
  DFF_X1 s_current_state_reg_19_ ( .D(D[19]), .CK(clk), .Q(Q[19]), .QN() );
  DFF_X1 s_current_state_reg_18_ ( .D(D[18]), .CK(clk), .Q(Q[18]), .QN() );
  DFF_X1 s_current_state_reg_17_ ( .D(D[17]), .CK(clk), .Q(Q[17]), .QN() );
  DFF_X1 s_current_state_reg_16_ ( .D(D[16]), .CK(clk), .Q(Q[16]), .QN() );
  DFF_X1 s_current_state_reg_15_ ( .D(D[15]), .CK(clk), .Q(Q[15]), .QN() );
  DFF_X1 s_current_state_reg_14_ ( .D(D[14]), .CK(clk), .Q(Q[14]), .QN() );
  DFF_X1 s_current_state_reg_13_ ( .D(D[13]), .CK(clk), .Q(Q[13]), .QN() );
  DFF_X1 s_current_state_reg_12_ ( .D(D[12]), .CK(clk), .Q(Q[12]), .QN() );
  DFF_X1 s_current_state_reg_11_ ( .D(D[11]), .CK(clk), .Q(Q[11]), .QN() );
  DFF_X1 s_current_state_reg_10_ ( .D(D[10]), .CK(clk), .Q(Q[10]), .QN() );
  DFF_X1 s_current_state_reg_9_ ( .D(D[9]), .CK(clk), .Q(Q[9]), .QN() );
  DFF_X1 s_current_state_reg_8_ ( .D(D[8]), .CK(clk), .Q(Q[8]), .QN() );
  DFF_X1 s_current_state_reg_7_ ( .D(D[7]), .CK(clk), .Q(Q[7]), .QN() );
  DFF_X1 s_current_state_reg_6_ ( .D(D[6]), .CK(clk), .Q(Q[6]), .QN() );
  DFF_X1 s_current_state_reg_5_ ( .D(D[5]), .CK(clk), .Q(Q[5]), .QN() );
  DFF_X1 s_current_state_reg_4_ ( .D(D[4]), .CK(clk), .Q(Q[4]), .QN() );
  DFF_X1 s_current_state_reg_3_ ( .D(D[3]), .CK(clk), .Q(Q[3]), .QN() );
  DFF_X1 s_current_state_reg_2_ ( .D(D[2]), .CK(clk), .Q(Q[2]), .QN() );
  DFF_X1 s_current_state_reg_1_ ( .D(D[1]), .CK(clk), .Q(Q[1]), .QN() );
  DFF_X1 s_current_state_reg_0_ ( .D(D[0]), .CK(clk), .Q(Q[0]), .QN() );
endmodule


module GF_SCLW2_2_SHARES3_2 ( A, Q );
  input [5:0] A;
  output [5:0] Q;

  assign Q[5] = A[4];
  assign Q[3] = A[2];
  assign Q[1] = A[0];

  XOR2_X1 U1 ( .A(A[1]), .B(A[0]), .Z(Q[0]) );
  XOR2_X1 U2 ( .A(A[3]), .B(A[2]), .Z(Q[2]) );
  XOR2_X1 U3 ( .A(A[5]), .B(A[4]), .Z(Q[4]) );
endmodule


module GF_MULS_4_NewMask_2_SHARES3_2 ( ph, p, pl, Q );
  input [5:0] ph;
  input [5:0] p;
  input [5:0] pl;
  output [11:0] Q;

  wire   [5:0] pw2;

  GF_SCLW2_2_SHARES3_2 NxGAMMA ( .A(p), .Q(pw2) );
  XOR2_X1 U1 ( .A(pw2[0]), .B(ph[0]), .Z(Q[2]) );
  XOR2_X1 U2 ( .A(pw2[3]), .B(pl[3]), .Z(Q[5]) );
  XOR2_X1 U3 ( .A(pw2[0]), .B(pl[0]), .Z(Q[0]) );
  XOR2_X1 U4 ( .A(pw2[5]), .B(pl[5]), .Z(Q[9]) );
  XOR2_X1 U5 ( .A(pw2[4]), .B(pl[4]), .Z(Q[8]) );
  XOR2_X1 U6 ( .A(pw2[2]), .B(ph[2]), .Z(Q[6]) );
  XOR2_X1 U7 ( .A(pw2[4]), .B(ph[4]), .Z(Q[10]) );
  XOR2_X1 U8 ( .A(pw2[1]), .B(pl[1]), .Z(Q[1]) );
  XOR2_X1 U9 ( .A(pw2[1]), .B(ph[1]), .Z(Q[3]) );
  XOR2_X1 U10 ( .A(pw2[3]), .B(ph[3]), .Z(Q[7]) );
  XOR2_X1 U11 ( .A(pw2[5]), .B(ph[5]), .Z(Q[11]) );
  XOR2_X1 U12 ( .A(pw2[2]), .B(pl[2]), .Z(Q[4]) );
endmodule


module GF_SCLW2_2_SHARES3_1 ( A, Q );
  input [5:0] A;
  output [5:0] Q;

  assign Q[5] = A[4];
  assign Q[3] = A[2];
  assign Q[1] = A[0];

  XOR2_X1 U1 ( .A(A[1]), .B(A[0]), .Z(Q[0]) );
  XOR2_X1 U2 ( .A(A[3]), .B(A[2]), .Z(Q[2]) );
  XOR2_X1 U3 ( .A(A[5]), .B(A[4]), .Z(Q[4]) );
endmodule


module GF_MULS_4_NewMask_2_SHARES3_1 ( ph, p, pl, Q );
  input [5:0] ph;
  input [5:0] p;
  input [5:0] pl;
  output [11:0] Q;

  wire   [5:0] pw2;

  GF_SCLW2_2_SHARES3_1 NxGAMMA ( .A(p), .Q(pw2) );
  XOR2_X1 U1 ( .A(pw2[1]), .B(pl[1]), .Z(Q[1]) );
  XOR2_X1 U2 ( .A(pw2[1]), .B(ph[1]), .Z(Q[3]) );
  XOR2_X1 U3 ( .A(pw2[3]), .B(pl[3]), .Z(Q[5]) );
  XOR2_X1 U4 ( .A(pw2[3]), .B(ph[3]), .Z(Q[7]) );
  XOR2_X1 U5 ( .A(pw2[5]), .B(ph[5]), .Z(Q[11]) );
  XOR2_X1 U6 ( .A(pw2[5]), .B(pl[5]), .Z(Q[9]) );
  XOR2_X1 U7 ( .A(pw2[0]), .B(pl[0]), .Z(Q[0]) );
  XOR2_X1 U8 ( .A(pw2[2]), .B(pl[2]), .Z(Q[4]) );
  XOR2_X1 U9 ( .A(pw2[4]), .B(pl[4]), .Z(Q[8]) );
  XOR2_X1 U10 ( .A(pw2[0]), .B(ph[0]), .Z(Q[2]) );
  XOR2_X1 U11 ( .A(pw2[2]), .B(ph[2]), .Z(Q[6]) );
  XOR2_X1 U12 ( .A(pw2[4]), .B(ph[4]), .Z(Q[10]) );
endmodule


module inv_lin_map_SHARES3 ( C, Q );
  input [23:0] C;
  output [23:0] Q;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;

  XNOR2_X1 U1 ( .A(C[3]), .B(C[7]), .ZN(Q[6]) );
  XNOR2_X1 U2 ( .A(C[11]), .B(C[15]), .ZN(Q[14]) );
  XNOR2_X1 U3 ( .A(C[19]), .B(C[23]), .ZN(Q[22]) );
  XOR2_X1 U4 ( .A(C[21]), .B(C[20]), .Z(n1) );
  XNOR2_X1 U5 ( .A(C[17]), .B(n1), .ZN(Q[17]) );
  XOR2_X1 U6 ( .A(C[13]), .B(C[12]), .Z(n2) );
  XNOR2_X1 U7 ( .A(C[9]), .B(n2), .ZN(Q[9]) );
  XNOR2_X1 U8 ( .A(C[6]), .B(C[0]), .ZN(Q[5]) );
  XOR2_X1 U9 ( .A(C[5]), .B(C[3]), .Z(Q[7]) );
  XOR2_X1 U10 ( .A(Q[7]), .B(C[2]), .Z(n3) );
  XNOR2_X1 U11 ( .A(Q[5]), .B(n3), .ZN(Q[2]) );
  XOR2_X1 U12 ( .A(Q[7]), .B(C[7]), .Z(Q[4]) );
  XNOR2_X1 U13 ( .A(C[6]), .B(C[4]), .ZN(n4) );
  XNOR2_X1 U14 ( .A(n4), .B(Q[4]), .ZN(Q[3]) );
  XNOR2_X1 U15 ( .A(C[14]), .B(C[8]), .ZN(Q[13]) );
  XOR2_X1 U16 ( .A(C[13]), .B(C[11]), .Z(Q[15]) );
  XOR2_X1 U17 ( .A(Q[15]), .B(C[10]), .Z(n5) );
  XNOR2_X1 U18 ( .A(Q[13]), .B(n5), .ZN(Q[10]) );
  XOR2_X1 U19 ( .A(Q[15]), .B(C[15]), .Z(Q[12]) );
  XNOR2_X1 U20 ( .A(C[14]), .B(C[12]), .ZN(n8) );
  XNOR2_X1 U21 ( .A(Q[12]), .B(n8), .ZN(Q[11]) );
  XNOR2_X1 U22 ( .A(C[22]), .B(C[16]), .ZN(Q[21]) );
  XOR2_X1 U23 ( .A(C[21]), .B(C[19]), .Z(Q[23]) );
  XOR2_X1 U24 ( .A(Q[23]), .B(C[18]), .Z(n6) );
  XNOR2_X1 U25 ( .A(Q[21]), .B(n6), .ZN(Q[18]) );
  XOR2_X1 U26 ( .A(Q[23]), .B(C[23]), .Z(Q[20]) );
  XNOR2_X1 U27 ( .A(C[22]), .B(C[20]), .ZN(n9) );
  XNOR2_X1 U28 ( .A(Q[20]), .B(n9), .ZN(Q[19]) );
  XOR2_X1 U29 ( .A(C[4]), .B(C[1]), .Z(n7) );
  XNOR2_X1 U30 ( .A(C[5]), .B(n7), .ZN(Q[1]) );
  XNOR2_X1 U31 ( .A(C[6]), .B(n7), .ZN(Q[0]) );
  XOR2_X1 U32 ( .A(C[9]), .B(n8), .Z(Q[8]) );
  XOR2_X1 U33 ( .A(C[17]), .B(n9), .Z(Q[16]) );
endmodule


module sharedSbox_f5_SHARES3 ( ph_H, p_H, pl_H, ph_L, p_L, pl_L, Q );
  input [5:0] ph_H;
  input [5:0] p_H;
  input [5:0] pl_H;
  input [5:0] ph_L;
  input [5:0] p_L;
  input [5:0] pl_L;
  output [23:0] Q;

  wire   [11:0] ph;
  wire   [11:0] pl;

  GF_MULS_4_NewMask_2_SHARES3_2 phwillwin ( .ph(ph_H), .p(p_H), .pl(pl_H), .Q(
        ph) );
  GF_MULS_4_NewMask_2_SHARES3_1 plwillwin ( .ph(ph_L), .p(p_L), .pl(pl_L), .Q(
        pl) );
  inv_lin_map_SHARES3 invlinearMapping ( .C({ph[11:8], pl[11:8], ph[7:4], 
        pl[7:4], ph[3:0], pl[3:0]}), .Q(Q) );
endmodule


module sharedSbox_PL ( clk, PRNGQ, A, Q );
  input [51:0] PRNGQ;
  input [23:0] A;
  output [23:0] Q;
  input clk;

  wire   [11:0] Zh_f1;
  wire   [11:0] Zl_f1;
  wire   [11:0] ab2;
  wire   [5:0] ph;
  wire   [5:0] p;
  wire   [5:0] pl;
  wire   [53:0] FF1_out;
  wire   [11:0] Zh_f2;
  wire   [11:0] Zl_f2;
  wire   [5:0] gamma1;
  wire   [5:0] sA2N;
  wire   [5:0] ab;
  wire   [5:0] gamma0;
  wire   [47:0] FF2_out;
  wire   [11:0] Zh_f3;
  wire   [11:0] Zl_f3;
  wire   [11:0] muld;
  wire   [35:0] FF3_out;
  wire   [5:0] ph_H;
  wire   [5:0] p_H;
  wire   [5:0] pl_H;
  wire   [5:0] ph_L;
  wire   [5:0] p_L;
  wire   [5:0] pl_L;
  wire   [35:0] FF4_out;

  sharedSbox_f1_SHARES3 Inst_f1 ( .A(A), .NewMask1(PRNGQ[3:0]), .NewMask2(
        PRNGQ[7:4]), .NewMask3(PRNGQ[11:8]), .Zh(Zh_f1), .Zl(Zl_f1), .ab2(ab2), 
        .ph(ph), .p(p), .pl(pl) );
  ff_NBITS54 PL_1 ( .clk(clk), .D({Zh_f1, Zl_f1, ab2, ph, p, pl}), .Q(FF1_out)
         );
  sharedSbox_f2_SHARES3 Inst_f2 ( .Zhin(FF1_out[53:42]), .Zlin(FF1_out[41:30]), 
        .ab2(FF1_out[29:18]), .ph(FF1_out[17:12]), .p(FF1_out[11:6]), .pl(
        FF1_out[5:0]), .NewMasksA2N(PRNGQ[15:12]), .NewMaskab(PRNGQ[19:16]), 
        .Zhout(Zh_f2), .Zlout(Zl_f2), .gamma1(gamma1), .sA2N(sA2N), .ab(ab), 
        .gamma0(gamma0) );
  ff_NBITS48 PL_2 ( .clk(clk), .D({Zh_f2, Zl_f2, gamma1, sA2N, ab, gamma0}), 
        .Q(FF2_out) );
  sharedSbox_f3_SHARES3 Inst_f3 ( .Zhin(FF2_out[47:36]), .Zlin(FF2_out[35:24]), 
        .gamma1(FF2_out[23:18]), .sA2N(FF2_out[17:12]), .ab(FF2_out[11:6]), 
        .gamma0(FF2_out[5:0]), .NewMaskQ({PRNGQ[27:26], PRNGQ[23:22], 
        PRNGQ[25:24], PRNGQ[21:20]}), .Zhout(Zh_f3), .Zlout(Zl_f3), .muld(muld) );
  ff_NBITS36_0 PL_3 ( .clk(clk), .D({Zh_f3, Zl_f3, muld}), .Q(FF3_out) );
  sharedSbox_f4_SHARES3 Inst_f4 ( .Zhin(FF3_out[35:24]), .Zlin(FF3_out[23:12]), 
        .muld(FF3_out[11:0]), .NewMask_H1(PRNGQ[31:28]), .NewMask_H2(
        PRNGQ[35:32]), .NewMask_H3(PRNGQ[39:36]), .NewMask_L1(PRNGQ[43:40]), 
        .NewMask_L2(PRNGQ[47:44]), .NewMask_L3(PRNGQ[51:48]), .ph_H(ph_H), 
        .p_H(p_H), .pl_H(pl_H), .ph_L(ph_L), .p_L(p_L), .pl_L(pl_L) );
  ff_NBITS36_1 PL_4 ( .clk(clk), .D({ph_H, p_H, pl_H, ph_L, p_L, pl_L}), .Q(
        FF4_out) );
  sharedSbox_f5_SHARES3 Inst_f5 ( .ph_H(FF4_out[35:30]), .p_H(FF4_out[29:24]), 
        .pl_H(FF4_out[23:18]), .ph_L(FF4_out[17:12]), .p_L(FF4_out[11:6]), 
        .pl_L(FF4_out[5:0]), .Q(Q) );
endmodule