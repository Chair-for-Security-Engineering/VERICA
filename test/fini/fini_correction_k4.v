
module FINIandCorrection ( port_a, port_b, port_c );
  input [8:0] port_a;
  input [8:0] port_b;
  output [8:0] port_c;
  wire   cor_maj_9_n31, cor_maj_9_n30, cor_maj_9_n29, cor_maj_9_n28,
         cor_maj_9_n27, cor_maj_9_n26, cor_maj_9_n25, cor_maj_9_n24,
         cor_maj_9_n23, cor_maj_9_n22, cor_maj_9_n21, cor_maj_9_n20,
         cor_maj_9_n19, cor_maj_9_n18, cor_maj_9_n17, cor_maj_9_n16,
         cor_maj_9_n15, cor_maj_9_n14, cor_maj_9_n13, cor_maj_9_n12,
         cor_maj_9_n11, cor_maj_9_n10, cor_maj_9_n9, cor_maj_9_n8,
         cor_maj_9_n7, cor_maj_9_n6, cor_maj_9_n5, cor_maj_9_n4, cor_maj_9_n3,
         cor_maj_9_n2, cor_maj_9_n1, cor_maj_10_n31, cor_maj_10_n30,
         cor_maj_10_n29, cor_maj_10_n28, cor_maj_10_n27, cor_maj_10_n26,
         cor_maj_10_n25, cor_maj_10_n24, cor_maj_10_n23, cor_maj_10_n22,
         cor_maj_10_n21, cor_maj_10_n20, cor_maj_10_n19, cor_maj_10_n18,
         cor_maj_10_n17, cor_maj_10_n16, cor_maj_10_n15, cor_maj_10_n14,
         cor_maj_10_n13, cor_maj_10_n12, cor_maj_10_n11, cor_maj_10_n10,
         cor_maj_10_n9, cor_maj_10_n8, cor_maj_10_n7, cor_maj_10_n6,
         cor_maj_10_n5, cor_maj_10_n4, cor_maj_10_n3, cor_maj_10_n2,
         cor_maj_10_n1, cor_maj_11_n31, cor_maj_11_n30, cor_maj_11_n29,
         cor_maj_11_n28, cor_maj_11_n27, cor_maj_11_n26, cor_maj_11_n25,
         cor_maj_11_n24, cor_maj_11_n23, cor_maj_11_n22, cor_maj_11_n21,
         cor_maj_11_n20, cor_maj_11_n19, cor_maj_11_n18, cor_maj_11_n17,
         cor_maj_11_n16, cor_maj_11_n15, cor_maj_11_n14, cor_maj_11_n13,
         cor_maj_11_n12, cor_maj_11_n11, cor_maj_11_n10, cor_maj_11_n9,
         cor_maj_11_n8, cor_maj_11_n7, cor_maj_11_n6, cor_maj_11_n5,
         cor_maj_11_n4, cor_maj_11_n3, cor_maj_11_n2, cor_maj_11_n1,
         cor_maj_12_n31, cor_maj_12_n30, cor_maj_12_n29, cor_maj_12_n28,
         cor_maj_12_n27, cor_maj_12_n26, cor_maj_12_n25, cor_maj_12_n24,
         cor_maj_12_n23, cor_maj_12_n22, cor_maj_12_n21, cor_maj_12_n20,
         cor_maj_12_n19, cor_maj_12_n18, cor_maj_12_n17, cor_maj_12_n16,
         cor_maj_12_n15, cor_maj_12_n14, cor_maj_12_n13, cor_maj_12_n12,
         cor_maj_12_n11, cor_maj_12_n10, cor_maj_12_n9, cor_maj_12_n8,
         cor_maj_12_n7, cor_maj_12_n6, cor_maj_12_n5, cor_maj_12_n4,
         cor_maj_12_n3, cor_maj_12_n2, cor_maj_12_n1, cor_maj_13_n31,
         cor_maj_13_n30, cor_maj_13_n29, cor_maj_13_n28, cor_maj_13_n27,
         cor_maj_13_n26, cor_maj_13_n25, cor_maj_13_n24, cor_maj_13_n23,
         cor_maj_13_n22, cor_maj_13_n21, cor_maj_13_n20, cor_maj_13_n19,
         cor_maj_13_n18, cor_maj_13_n17, cor_maj_13_n16, cor_maj_13_n15,
         cor_maj_13_n14, cor_maj_13_n13, cor_maj_13_n12, cor_maj_13_n11,
         cor_maj_13_n10, cor_maj_13_n9, cor_maj_13_n8, cor_maj_13_n7,
         cor_maj_13_n6, cor_maj_13_n5, cor_maj_13_n4, cor_maj_13_n3,
         cor_maj_13_n2, cor_maj_13_n1, cor_maj_14_n31, cor_maj_14_n30,
         cor_maj_14_n29, cor_maj_14_n28, cor_maj_14_n27, cor_maj_14_n26,
         cor_maj_14_n25, cor_maj_14_n24, cor_maj_14_n23, cor_maj_14_n22,
         cor_maj_14_n21, cor_maj_14_n20, cor_maj_14_n19, cor_maj_14_n18,
         cor_maj_14_n17, cor_maj_14_n16, cor_maj_14_n15, cor_maj_14_n14,
         cor_maj_14_n13, cor_maj_14_n12, cor_maj_14_n11, cor_maj_14_n10,
         cor_maj_14_n9, cor_maj_14_n8, cor_maj_14_n7, cor_maj_14_n6,
         cor_maj_14_n5, cor_maj_14_n4, cor_maj_14_n3, cor_maj_14_n2,
         cor_maj_14_n1, cor_maj_15_n31, cor_maj_15_n30, cor_maj_15_n29,
         cor_maj_15_n28, cor_maj_15_n27, cor_maj_15_n26, cor_maj_15_n25,
         cor_maj_15_n24, cor_maj_15_n23, cor_maj_15_n22, cor_maj_15_n21,
         cor_maj_15_n20, cor_maj_15_n19, cor_maj_15_n18, cor_maj_15_n17,
         cor_maj_15_n16, cor_maj_15_n15, cor_maj_15_n14, cor_maj_15_n13,
         cor_maj_15_n12, cor_maj_15_n11, cor_maj_15_n10, cor_maj_15_n9,
         cor_maj_15_n8, cor_maj_15_n7, cor_maj_15_n6, cor_maj_15_n5,
         cor_maj_15_n4, cor_maj_15_n3, cor_maj_15_n2, cor_maj_15_n1,
         cor_maj_16_n31, cor_maj_16_n30, cor_maj_16_n29, cor_maj_16_n28,
         cor_maj_16_n27, cor_maj_16_n26, cor_maj_16_n25, cor_maj_16_n24,
         cor_maj_16_n23, cor_maj_16_n22, cor_maj_16_n21, cor_maj_16_n20,
         cor_maj_16_n19, cor_maj_16_n18, cor_maj_16_n17, cor_maj_16_n16,
         cor_maj_16_n15, cor_maj_16_n14, cor_maj_16_n13, cor_maj_16_n12,
         cor_maj_16_n11, cor_maj_16_n10, cor_maj_16_n9, cor_maj_16_n8,
         cor_maj_16_n7, cor_maj_16_n6, cor_maj_16_n5, cor_maj_16_n4,
         cor_maj_16_n3, cor_maj_16_n2, cor_maj_16_n1, cor_maj_17_n31,
         cor_maj_17_n30, cor_maj_17_n29, cor_maj_17_n28, cor_maj_17_n27,
         cor_maj_17_n26, cor_maj_17_n25, cor_maj_17_n24, cor_maj_17_n23,
         cor_maj_17_n22, cor_maj_17_n21, cor_maj_17_n20, cor_maj_17_n19,
         cor_maj_17_n18, cor_maj_17_n17, cor_maj_17_n16, cor_maj_17_n15,
         cor_maj_17_n14, cor_maj_17_n13, cor_maj_17_n12, cor_maj_17_n11,
         cor_maj_17_n10, cor_maj_17_n9, cor_maj_17_n8, cor_maj_17_n7,
         cor_maj_17_n6, cor_maj_17_n5, cor_maj_17_n4, cor_maj_17_n3,
         cor_maj_17_n2, cor_maj_17_n1;
  wire   [8:0] mul_port_c;

  AND2_X1 mul_U9 ( .A1(port_b[0]), .A2(port_a[0]), .ZN(mul_port_c[0]) );
  AND2_X1 mul_U8 ( .A1(port_b[1]), .A2(port_a[1]), .ZN(mul_port_c[1]) );
  AND2_X1 mul_U7 ( .A1(port_b[2]), .A2(port_a[2]), .ZN(mul_port_c[2]) );
  AND2_X1 mul_U6 ( .A1(port_b[3]), .A2(port_a[3]), .ZN(mul_port_c[3]) );
  AND2_X1 mul_U5 ( .A1(port_b[4]), .A2(port_a[4]), .ZN(mul_port_c[4]) );
  AND2_X1 mul_U4 ( .A1(port_b[5]), .A2(port_a[5]), .ZN(mul_port_c[5]) );
  AND2_X1 mul_U3 ( .A1(port_b[6]), .A2(port_a[6]), .ZN(mul_port_c[6]) );
  AND2_X1 mul_U2 ( .A1(port_b[7]), .A2(port_a[7]), .ZN(mul_port_c[7]) );
  AND2_X1 mul_U1 ( .A1(port_b[8]), .A2(port_a[8]), .ZN(mul_port_c[8]) );
  XOR2_X1 cor_maj_9_U33 ( .A(mul_port_c[0]), .B(mul_port_c[1]), .Z(
        cor_maj_9_n24) );
  XOR2_X1 cor_maj_9_U32 ( .A(mul_port_c[2]), .B(cor_maj_9_n24), .Z(
        cor_maj_9_n30) );
  XOR2_X1 cor_maj_9_U31 ( .A(mul_port_c[3]), .B(mul_port_c[4]), .Z(
        cor_maj_9_n21) );
  XOR2_X1 cor_maj_9_U30 ( .A(mul_port_c[5]), .B(cor_maj_9_n21), .Z(
        cor_maj_9_n31) );
  NAND2_X1 cor_maj_9_U29 ( .A1(cor_maj_9_n30), .A2(cor_maj_9_n31), .ZN(
        cor_maj_9_n28) );
  XOR2_X1 cor_maj_9_U28 ( .A(mul_port_c[6]), .B(mul_port_c[7]), .Z(
        cor_maj_9_n27) );
  XOR2_X1 cor_maj_9_U27 ( .A(mul_port_c[8]), .B(cor_maj_9_n27), .Z(
        cor_maj_9_n11) );
  XOR2_X1 cor_maj_9_U26 ( .A(cor_maj_9_n30), .B(cor_maj_9_n31), .Z(
        cor_maj_9_n10) );
  NAND2_X1 cor_maj_9_U25 ( .A1(cor_maj_9_n11), .A2(cor_maj_9_n10), .ZN(
        cor_maj_9_n29) );
  NAND2_X1 cor_maj_9_U24 ( .A1(cor_maj_9_n28), .A2(cor_maj_9_n29), .ZN(
        cor_maj_9_n8) );
  NAND2_X1 cor_maj_9_U23 ( .A1(mul_port_c[6]), .A2(mul_port_c[7]), .ZN(
        cor_maj_9_n25) );
  NAND2_X1 cor_maj_9_U22 ( .A1(mul_port_c[8]), .A2(cor_maj_9_n27), .ZN(
        cor_maj_9_n26) );
  NAND2_X1 cor_maj_9_U21 ( .A1(cor_maj_9_n25), .A2(cor_maj_9_n26), .ZN(
        cor_maj_9_n16) );
  NAND2_X1 cor_maj_9_U20 ( .A1(mul_port_c[0]), .A2(mul_port_c[1]), .ZN(
        cor_maj_9_n22) );
  NAND2_X1 cor_maj_9_U19 ( .A1(mul_port_c[2]), .A2(cor_maj_9_n24), .ZN(
        cor_maj_9_n23) );
  NAND2_X1 cor_maj_9_U18 ( .A1(cor_maj_9_n22), .A2(cor_maj_9_n23), .ZN(
        cor_maj_9_n17) );
  NAND2_X1 cor_maj_9_U17 ( .A1(mul_port_c[3]), .A2(mul_port_c[4]), .ZN(
        cor_maj_9_n19) );
  NAND2_X1 cor_maj_9_U16 ( .A1(mul_port_c[5]), .A2(cor_maj_9_n21), .ZN(
        cor_maj_9_n20) );
  NAND2_X1 cor_maj_9_U15 ( .A1(cor_maj_9_n19), .A2(cor_maj_9_n20), .ZN(
        cor_maj_9_n18) );
  XOR2_X1 cor_maj_9_U14 ( .A(cor_maj_9_n17), .B(cor_maj_9_n18), .Z(
        cor_maj_9_n15) );
  XOR2_X1 cor_maj_9_U13 ( .A(cor_maj_9_n16), .B(cor_maj_9_n15), .Z(
        cor_maj_9_n7) );
  OR2_X1 cor_maj_9_U12 ( .A1(cor_maj_9_n8), .A2(cor_maj_9_n7), .ZN(
        cor_maj_9_n12) );
  NAND2_X1 cor_maj_9_U11 ( .A1(cor_maj_9_n17), .A2(cor_maj_9_n18), .ZN(
        cor_maj_9_n13) );
  NAND2_X1 cor_maj_9_U10 ( .A1(cor_maj_9_n15), .A2(cor_maj_9_n16), .ZN(
        cor_maj_9_n14) );
  NAND2_X1 cor_maj_9_U9 ( .A1(cor_maj_9_n13), .A2(cor_maj_9_n14), .ZN(
        cor_maj_9_n9) );
  NAND2_X1 cor_maj_9_U8 ( .A1(cor_maj_9_n12), .A2(cor_maj_9_n9), .ZN(
        cor_maj_9_n1) );
  XOR2_X1 cor_maj_9_U7 ( .A(cor_maj_9_n10), .B(cor_maj_9_n11), .Z(cor_maj_9_n3) );
  INV_X1 cor_maj_9_U6 ( .A(cor_maj_9_n9), .ZN(cor_maj_9_n5) );
  NAND2_X1 cor_maj_9_U5 ( .A1(cor_maj_9_n7), .A2(cor_maj_9_n8), .ZN(
        cor_maj_9_n6) );
  NAND2_X1 cor_maj_9_U4 ( .A1(cor_maj_9_n5), .A2(cor_maj_9_n6), .ZN(
        cor_maj_9_n4) );
  NAND2_X1 cor_maj_9_U3 ( .A1(cor_maj_9_n3), .A2(cor_maj_9_n4), .ZN(
        cor_maj_9_n2) );
  NAND2_X1 cor_maj_9_U2 ( .A1(cor_maj_9_n1), .A2(cor_maj_9_n2), .ZN(port_c[0])
         );
  XOR2_X1 cor_maj_10_U33 ( .A(mul_port_c[0]), .B(mul_port_c[1]), .Z(
        cor_maj_10_n24) );
  XOR2_X1 cor_maj_10_U32 ( .A(mul_port_c[2]), .B(cor_maj_10_n24), .Z(
        cor_maj_10_n30) );
  XOR2_X1 cor_maj_10_U31 ( .A(mul_port_c[3]), .B(mul_port_c[4]), .Z(
        cor_maj_10_n21) );
  XOR2_X1 cor_maj_10_U30 ( .A(mul_port_c[5]), .B(cor_maj_10_n21), .Z(
        cor_maj_10_n31) );
  NAND2_X1 cor_maj_10_U29 ( .A1(cor_maj_10_n30), .A2(cor_maj_10_n31), .ZN(
        cor_maj_10_n28) );
  XOR2_X1 cor_maj_10_U28 ( .A(mul_port_c[6]), .B(mul_port_c[7]), .Z(
        cor_maj_10_n27) );
  XOR2_X1 cor_maj_10_U27 ( .A(mul_port_c[8]), .B(cor_maj_10_n27), .Z(
        cor_maj_10_n11) );
  XOR2_X1 cor_maj_10_U26 ( .A(cor_maj_10_n30), .B(cor_maj_10_n31), .Z(
        cor_maj_10_n10) );
  NAND2_X1 cor_maj_10_U25 ( .A1(cor_maj_10_n11), .A2(cor_maj_10_n10), .ZN(
        cor_maj_10_n29) );
  NAND2_X1 cor_maj_10_U24 ( .A1(cor_maj_10_n28), .A2(cor_maj_10_n29), .ZN(
        cor_maj_10_n8) );
  NAND2_X1 cor_maj_10_U23 ( .A1(mul_port_c[6]), .A2(mul_port_c[7]), .ZN(
        cor_maj_10_n25) );
  NAND2_X1 cor_maj_10_U22 ( .A1(mul_port_c[8]), .A2(cor_maj_10_n27), .ZN(
        cor_maj_10_n26) );
  NAND2_X1 cor_maj_10_U21 ( .A1(cor_maj_10_n25), .A2(cor_maj_10_n26), .ZN(
        cor_maj_10_n16) );
  NAND2_X1 cor_maj_10_U20 ( .A1(mul_port_c[0]), .A2(mul_port_c[1]), .ZN(
        cor_maj_10_n22) );
  NAND2_X1 cor_maj_10_U19 ( .A1(mul_port_c[2]), .A2(cor_maj_10_n24), .ZN(
        cor_maj_10_n23) );
  NAND2_X1 cor_maj_10_U18 ( .A1(cor_maj_10_n22), .A2(cor_maj_10_n23), .ZN(
        cor_maj_10_n17) );
  NAND2_X1 cor_maj_10_U17 ( .A1(mul_port_c[3]), .A2(mul_port_c[4]), .ZN(
        cor_maj_10_n19) );
  NAND2_X1 cor_maj_10_U16 ( .A1(mul_port_c[5]), .A2(cor_maj_10_n21), .ZN(
        cor_maj_10_n20) );
  NAND2_X1 cor_maj_10_U15 ( .A1(cor_maj_10_n19), .A2(cor_maj_10_n20), .ZN(
        cor_maj_10_n18) );
  XOR2_X1 cor_maj_10_U14 ( .A(cor_maj_10_n17), .B(cor_maj_10_n18), .Z(
        cor_maj_10_n15) );
  XOR2_X1 cor_maj_10_U13 ( .A(cor_maj_10_n16), .B(cor_maj_10_n15), .Z(
        cor_maj_10_n7) );
  OR2_X1 cor_maj_10_U12 ( .A1(cor_maj_10_n8), .A2(cor_maj_10_n7), .ZN(
        cor_maj_10_n12) );
  NAND2_X1 cor_maj_10_U11 ( .A1(cor_maj_10_n17), .A2(cor_maj_10_n18), .ZN(
        cor_maj_10_n13) );
  NAND2_X1 cor_maj_10_U10 ( .A1(cor_maj_10_n15), .A2(cor_maj_10_n16), .ZN(
        cor_maj_10_n14) );
  NAND2_X1 cor_maj_10_U9 ( .A1(cor_maj_10_n13), .A2(cor_maj_10_n14), .ZN(
        cor_maj_10_n9) );
  NAND2_X1 cor_maj_10_U8 ( .A1(cor_maj_10_n12), .A2(cor_maj_10_n9), .ZN(
        cor_maj_10_n1) );
  XOR2_X1 cor_maj_10_U7 ( .A(cor_maj_10_n10), .B(cor_maj_10_n11), .Z(
        cor_maj_10_n3) );
  INV_X1 cor_maj_10_U6 ( .A(cor_maj_10_n9), .ZN(cor_maj_10_n5) );
  NAND2_X1 cor_maj_10_U5 ( .A1(cor_maj_10_n7), .A2(cor_maj_10_n8), .ZN(
        cor_maj_10_n6) );
  NAND2_X1 cor_maj_10_U4 ( .A1(cor_maj_10_n5), .A2(cor_maj_10_n6), .ZN(
        cor_maj_10_n4) );
  NAND2_X1 cor_maj_10_U3 ( .A1(cor_maj_10_n3), .A2(cor_maj_10_n4), .ZN(
        cor_maj_10_n2) );
  NAND2_X1 cor_maj_10_U2 ( .A1(cor_maj_10_n1), .A2(cor_maj_10_n2), .ZN(
        port_c[1]) );
  XOR2_X1 cor_maj_11_U33 ( .A(mul_port_c[0]), .B(mul_port_c[1]), .Z(
        cor_maj_11_n24) );
  XOR2_X1 cor_maj_11_U32 ( .A(mul_port_c[2]), .B(cor_maj_11_n24), .Z(
        cor_maj_11_n30) );
  XOR2_X1 cor_maj_11_U31 ( .A(mul_port_c[3]), .B(mul_port_c[4]), .Z(
        cor_maj_11_n21) );
  XOR2_X1 cor_maj_11_U30 ( .A(mul_port_c[5]), .B(cor_maj_11_n21), .Z(
        cor_maj_11_n31) );
  NAND2_X1 cor_maj_11_U29 ( .A1(cor_maj_11_n30), .A2(cor_maj_11_n31), .ZN(
        cor_maj_11_n28) );
  XOR2_X1 cor_maj_11_U28 ( .A(mul_port_c[6]), .B(mul_port_c[7]), .Z(
        cor_maj_11_n27) );
  XOR2_X1 cor_maj_11_U27 ( .A(mul_port_c[8]), .B(cor_maj_11_n27), .Z(
        cor_maj_11_n11) );
  XOR2_X1 cor_maj_11_U26 ( .A(cor_maj_11_n30), .B(cor_maj_11_n31), .Z(
        cor_maj_11_n10) );
  NAND2_X1 cor_maj_11_U25 ( .A1(cor_maj_11_n11), .A2(cor_maj_11_n10), .ZN(
        cor_maj_11_n29) );
  NAND2_X1 cor_maj_11_U24 ( .A1(cor_maj_11_n28), .A2(cor_maj_11_n29), .ZN(
        cor_maj_11_n8) );
  NAND2_X1 cor_maj_11_U23 ( .A1(mul_port_c[6]), .A2(mul_port_c[7]), .ZN(
        cor_maj_11_n25) );
  NAND2_X1 cor_maj_11_U22 ( .A1(mul_port_c[8]), .A2(cor_maj_11_n27), .ZN(
        cor_maj_11_n26) );
  NAND2_X1 cor_maj_11_U21 ( .A1(cor_maj_11_n25), .A2(cor_maj_11_n26), .ZN(
        cor_maj_11_n16) );
  NAND2_X1 cor_maj_11_U20 ( .A1(mul_port_c[0]), .A2(mul_port_c[1]), .ZN(
        cor_maj_11_n22) );
  NAND2_X1 cor_maj_11_U19 ( .A1(mul_port_c[2]), .A2(cor_maj_11_n24), .ZN(
        cor_maj_11_n23) );
  NAND2_X1 cor_maj_11_U18 ( .A1(cor_maj_11_n22), .A2(cor_maj_11_n23), .ZN(
        cor_maj_11_n17) );
  NAND2_X1 cor_maj_11_U17 ( .A1(mul_port_c[3]), .A2(mul_port_c[4]), .ZN(
        cor_maj_11_n19) );
  NAND2_X1 cor_maj_11_U16 ( .A1(mul_port_c[5]), .A2(cor_maj_11_n21), .ZN(
        cor_maj_11_n20) );
  NAND2_X1 cor_maj_11_U15 ( .A1(cor_maj_11_n19), .A2(cor_maj_11_n20), .ZN(
        cor_maj_11_n18) );
  XOR2_X1 cor_maj_11_U14 ( .A(cor_maj_11_n17), .B(cor_maj_11_n18), .Z(
        cor_maj_11_n15) );
  XOR2_X1 cor_maj_11_U13 ( .A(cor_maj_11_n16), .B(cor_maj_11_n15), .Z(
        cor_maj_11_n7) );
  OR2_X1 cor_maj_11_U12 ( .A1(cor_maj_11_n8), .A2(cor_maj_11_n7), .ZN(
        cor_maj_11_n12) );
  NAND2_X1 cor_maj_11_U11 ( .A1(cor_maj_11_n17), .A2(cor_maj_11_n18), .ZN(
        cor_maj_11_n13) );
  NAND2_X1 cor_maj_11_U10 ( .A1(cor_maj_11_n15), .A2(cor_maj_11_n16), .ZN(
        cor_maj_11_n14) );
  NAND2_X1 cor_maj_11_U9 ( .A1(cor_maj_11_n13), .A2(cor_maj_11_n14), .ZN(
        cor_maj_11_n9) );
  NAND2_X1 cor_maj_11_U8 ( .A1(cor_maj_11_n12), .A2(cor_maj_11_n9), .ZN(
        cor_maj_11_n1) );
  XOR2_X1 cor_maj_11_U7 ( .A(cor_maj_11_n10), .B(cor_maj_11_n11), .Z(
        cor_maj_11_n3) );
  INV_X1 cor_maj_11_U6 ( .A(cor_maj_11_n9), .ZN(cor_maj_11_n5) );
  NAND2_X1 cor_maj_11_U5 ( .A1(cor_maj_11_n7), .A2(cor_maj_11_n8), .ZN(
        cor_maj_11_n6) );
  NAND2_X1 cor_maj_11_U4 ( .A1(cor_maj_11_n5), .A2(cor_maj_11_n6), .ZN(
        cor_maj_11_n4) );
  NAND2_X1 cor_maj_11_U3 ( .A1(cor_maj_11_n3), .A2(cor_maj_11_n4), .ZN(
        cor_maj_11_n2) );
  NAND2_X1 cor_maj_11_U2 ( .A1(cor_maj_11_n1), .A2(cor_maj_11_n2), .ZN(
        port_c[2]) );
  XOR2_X1 cor_maj_12_U33 ( .A(mul_port_c[0]), .B(mul_port_c[1]), .Z(
        cor_maj_12_n24) );
  XOR2_X1 cor_maj_12_U32 ( .A(mul_port_c[2]), .B(cor_maj_12_n24), .Z(
        cor_maj_12_n30) );
  XOR2_X1 cor_maj_12_U31 ( .A(mul_port_c[3]), .B(mul_port_c[4]), .Z(
        cor_maj_12_n21) );
  XOR2_X1 cor_maj_12_U30 ( .A(mul_port_c[5]), .B(cor_maj_12_n21), .Z(
        cor_maj_12_n31) );
  NAND2_X1 cor_maj_12_U29 ( .A1(cor_maj_12_n30), .A2(cor_maj_12_n31), .ZN(
        cor_maj_12_n28) );
  XOR2_X1 cor_maj_12_U28 ( .A(mul_port_c[6]), .B(mul_port_c[7]), .Z(
        cor_maj_12_n27) );
  XOR2_X1 cor_maj_12_U27 ( .A(mul_port_c[8]), .B(cor_maj_12_n27), .Z(
        cor_maj_12_n11) );
  XOR2_X1 cor_maj_12_U26 ( .A(cor_maj_12_n30), .B(cor_maj_12_n31), .Z(
        cor_maj_12_n10) );
  NAND2_X1 cor_maj_12_U25 ( .A1(cor_maj_12_n11), .A2(cor_maj_12_n10), .ZN(
        cor_maj_12_n29) );
  NAND2_X1 cor_maj_12_U24 ( .A1(cor_maj_12_n28), .A2(cor_maj_12_n29), .ZN(
        cor_maj_12_n8) );
  NAND2_X1 cor_maj_12_U23 ( .A1(mul_port_c[6]), .A2(mul_port_c[7]), .ZN(
        cor_maj_12_n25) );
  NAND2_X1 cor_maj_12_U22 ( .A1(mul_port_c[8]), .A2(cor_maj_12_n27), .ZN(
        cor_maj_12_n26) );
  NAND2_X1 cor_maj_12_U21 ( .A1(cor_maj_12_n25), .A2(cor_maj_12_n26), .ZN(
        cor_maj_12_n16) );
  NAND2_X1 cor_maj_12_U20 ( .A1(mul_port_c[0]), .A2(mul_port_c[1]), .ZN(
        cor_maj_12_n22) );
  NAND2_X1 cor_maj_12_U19 ( .A1(mul_port_c[2]), .A2(cor_maj_12_n24), .ZN(
        cor_maj_12_n23) );
  NAND2_X1 cor_maj_12_U18 ( .A1(cor_maj_12_n22), .A2(cor_maj_12_n23), .ZN(
        cor_maj_12_n17) );
  NAND2_X1 cor_maj_12_U17 ( .A1(mul_port_c[3]), .A2(mul_port_c[4]), .ZN(
        cor_maj_12_n19) );
  NAND2_X1 cor_maj_12_U16 ( .A1(mul_port_c[5]), .A2(cor_maj_12_n21), .ZN(
        cor_maj_12_n20) );
  NAND2_X1 cor_maj_12_U15 ( .A1(cor_maj_12_n19), .A2(cor_maj_12_n20), .ZN(
        cor_maj_12_n18) );
  XOR2_X1 cor_maj_12_U14 ( .A(cor_maj_12_n17), .B(cor_maj_12_n18), .Z(
        cor_maj_12_n15) );
  XOR2_X1 cor_maj_12_U13 ( .A(cor_maj_12_n16), .B(cor_maj_12_n15), .Z(
        cor_maj_12_n7) );
  OR2_X1 cor_maj_12_U12 ( .A1(cor_maj_12_n8), .A2(cor_maj_12_n7), .ZN(
        cor_maj_12_n12) );
  NAND2_X1 cor_maj_12_U11 ( .A1(cor_maj_12_n17), .A2(cor_maj_12_n18), .ZN(
        cor_maj_12_n13) );
  NAND2_X1 cor_maj_12_U10 ( .A1(cor_maj_12_n15), .A2(cor_maj_12_n16), .ZN(
        cor_maj_12_n14) );
  NAND2_X1 cor_maj_12_U9 ( .A1(cor_maj_12_n13), .A2(cor_maj_12_n14), .ZN(
        cor_maj_12_n9) );
  NAND2_X1 cor_maj_12_U8 ( .A1(cor_maj_12_n12), .A2(cor_maj_12_n9), .ZN(
        cor_maj_12_n1) );
  XOR2_X1 cor_maj_12_U7 ( .A(cor_maj_12_n10), .B(cor_maj_12_n11), .Z(
        cor_maj_12_n3) );
  INV_X1 cor_maj_12_U6 ( .A(cor_maj_12_n9), .ZN(cor_maj_12_n5) );
  NAND2_X1 cor_maj_12_U5 ( .A1(cor_maj_12_n7), .A2(cor_maj_12_n8), .ZN(
        cor_maj_12_n6) );
  NAND2_X1 cor_maj_12_U4 ( .A1(cor_maj_12_n5), .A2(cor_maj_12_n6), .ZN(
        cor_maj_12_n4) );
  NAND2_X1 cor_maj_12_U3 ( .A1(cor_maj_12_n3), .A2(cor_maj_12_n4), .ZN(
        cor_maj_12_n2) );
  NAND2_X1 cor_maj_12_U2 ( .A1(cor_maj_12_n1), .A2(cor_maj_12_n2), .ZN(
        port_c[3]) );
  XOR2_X1 cor_maj_13_U33 ( .A(mul_port_c[0]), .B(mul_port_c[1]), .Z(
        cor_maj_13_n24) );
  XOR2_X1 cor_maj_13_U32 ( .A(mul_port_c[2]), .B(cor_maj_13_n24), .Z(
        cor_maj_13_n30) );
  XOR2_X1 cor_maj_13_U31 ( .A(mul_port_c[3]), .B(mul_port_c[4]), .Z(
        cor_maj_13_n21) );
  XOR2_X1 cor_maj_13_U30 ( .A(mul_port_c[5]), .B(cor_maj_13_n21), .Z(
        cor_maj_13_n31) );
  NAND2_X1 cor_maj_13_U29 ( .A1(cor_maj_13_n30), .A2(cor_maj_13_n31), .ZN(
        cor_maj_13_n28) );
  XOR2_X1 cor_maj_13_U28 ( .A(mul_port_c[6]), .B(mul_port_c[7]), .Z(
        cor_maj_13_n27) );
  XOR2_X1 cor_maj_13_U27 ( .A(mul_port_c[8]), .B(cor_maj_13_n27), .Z(
        cor_maj_13_n11) );
  XOR2_X1 cor_maj_13_U26 ( .A(cor_maj_13_n30), .B(cor_maj_13_n31), .Z(
        cor_maj_13_n10) );
  NAND2_X1 cor_maj_13_U25 ( .A1(cor_maj_13_n11), .A2(cor_maj_13_n10), .ZN(
        cor_maj_13_n29) );
  NAND2_X1 cor_maj_13_U24 ( .A1(cor_maj_13_n28), .A2(cor_maj_13_n29), .ZN(
        cor_maj_13_n8) );
  NAND2_X1 cor_maj_13_U23 ( .A1(mul_port_c[6]), .A2(mul_port_c[7]), .ZN(
        cor_maj_13_n25) );
  NAND2_X1 cor_maj_13_U22 ( .A1(mul_port_c[8]), .A2(cor_maj_13_n27), .ZN(
        cor_maj_13_n26) );
  NAND2_X1 cor_maj_13_U21 ( .A1(cor_maj_13_n25), .A2(cor_maj_13_n26), .ZN(
        cor_maj_13_n16) );
  NAND2_X1 cor_maj_13_U20 ( .A1(mul_port_c[0]), .A2(mul_port_c[1]), .ZN(
        cor_maj_13_n22) );
  NAND2_X1 cor_maj_13_U19 ( .A1(mul_port_c[2]), .A2(cor_maj_13_n24), .ZN(
        cor_maj_13_n23) );
  NAND2_X1 cor_maj_13_U18 ( .A1(cor_maj_13_n22), .A2(cor_maj_13_n23), .ZN(
        cor_maj_13_n17) );
  NAND2_X1 cor_maj_13_U17 ( .A1(mul_port_c[3]), .A2(mul_port_c[4]), .ZN(
        cor_maj_13_n19) );
  NAND2_X1 cor_maj_13_U16 ( .A1(mul_port_c[5]), .A2(cor_maj_13_n21), .ZN(
        cor_maj_13_n20) );
  NAND2_X1 cor_maj_13_U15 ( .A1(cor_maj_13_n19), .A2(cor_maj_13_n20), .ZN(
        cor_maj_13_n18) );
  XOR2_X1 cor_maj_13_U14 ( .A(cor_maj_13_n17), .B(cor_maj_13_n18), .Z(
        cor_maj_13_n15) );
  XOR2_X1 cor_maj_13_U13 ( .A(cor_maj_13_n16), .B(cor_maj_13_n15), .Z(
        cor_maj_13_n7) );
  OR2_X1 cor_maj_13_U12 ( .A1(cor_maj_13_n8), .A2(cor_maj_13_n7), .ZN(
        cor_maj_13_n12) );
  NAND2_X1 cor_maj_13_U11 ( .A1(cor_maj_13_n17), .A2(cor_maj_13_n18), .ZN(
        cor_maj_13_n13) );
  NAND2_X1 cor_maj_13_U10 ( .A1(cor_maj_13_n15), .A2(cor_maj_13_n16), .ZN(
        cor_maj_13_n14) );
  NAND2_X1 cor_maj_13_U9 ( .A1(cor_maj_13_n13), .A2(cor_maj_13_n14), .ZN(
        cor_maj_13_n9) );
  NAND2_X1 cor_maj_13_U8 ( .A1(cor_maj_13_n12), .A2(cor_maj_13_n9), .ZN(
        cor_maj_13_n1) );
  XOR2_X1 cor_maj_13_U7 ( .A(cor_maj_13_n10), .B(cor_maj_13_n11), .Z(
        cor_maj_13_n3) );
  INV_X1 cor_maj_13_U6 ( .A(cor_maj_13_n9), .ZN(cor_maj_13_n5) );
  NAND2_X1 cor_maj_13_U5 ( .A1(cor_maj_13_n7), .A2(cor_maj_13_n8), .ZN(
        cor_maj_13_n6) );
  NAND2_X1 cor_maj_13_U4 ( .A1(cor_maj_13_n5), .A2(cor_maj_13_n6), .ZN(
        cor_maj_13_n4) );
  NAND2_X1 cor_maj_13_U3 ( .A1(cor_maj_13_n3), .A2(cor_maj_13_n4), .ZN(
        cor_maj_13_n2) );
  NAND2_X1 cor_maj_13_U2 ( .A1(cor_maj_13_n1), .A2(cor_maj_13_n2), .ZN(
        port_c[4]) );
  XOR2_X1 cor_maj_14_U33 ( .A(mul_port_c[0]), .B(mul_port_c[1]), .Z(
        cor_maj_14_n24) );
  XOR2_X1 cor_maj_14_U32 ( .A(mul_port_c[2]), .B(cor_maj_14_n24), .Z(
        cor_maj_14_n30) );
  XOR2_X1 cor_maj_14_U31 ( .A(mul_port_c[3]), .B(mul_port_c[4]), .Z(
        cor_maj_14_n21) );
  XOR2_X1 cor_maj_14_U30 ( .A(mul_port_c[5]), .B(cor_maj_14_n21), .Z(
        cor_maj_14_n31) );
  NAND2_X1 cor_maj_14_U29 ( .A1(cor_maj_14_n30), .A2(cor_maj_14_n31), .ZN(
        cor_maj_14_n28) );
  XOR2_X1 cor_maj_14_U28 ( .A(mul_port_c[6]), .B(mul_port_c[7]), .Z(
        cor_maj_14_n27) );
  XOR2_X1 cor_maj_14_U27 ( .A(mul_port_c[8]), .B(cor_maj_14_n27), .Z(
        cor_maj_14_n11) );
  XOR2_X1 cor_maj_14_U26 ( .A(cor_maj_14_n30), .B(cor_maj_14_n31), .Z(
        cor_maj_14_n10) );
  NAND2_X1 cor_maj_14_U25 ( .A1(cor_maj_14_n11), .A2(cor_maj_14_n10), .ZN(
        cor_maj_14_n29) );
  NAND2_X1 cor_maj_14_U24 ( .A1(cor_maj_14_n28), .A2(cor_maj_14_n29), .ZN(
        cor_maj_14_n8) );
  NAND2_X1 cor_maj_14_U23 ( .A1(mul_port_c[6]), .A2(mul_port_c[7]), .ZN(
        cor_maj_14_n25) );
  NAND2_X1 cor_maj_14_U22 ( .A1(mul_port_c[8]), .A2(cor_maj_14_n27), .ZN(
        cor_maj_14_n26) );
  NAND2_X1 cor_maj_14_U21 ( .A1(cor_maj_14_n25), .A2(cor_maj_14_n26), .ZN(
        cor_maj_14_n16) );
  NAND2_X1 cor_maj_14_U20 ( .A1(mul_port_c[0]), .A2(mul_port_c[1]), .ZN(
        cor_maj_14_n22) );
  NAND2_X1 cor_maj_14_U19 ( .A1(mul_port_c[2]), .A2(cor_maj_14_n24), .ZN(
        cor_maj_14_n23) );
  NAND2_X1 cor_maj_14_U18 ( .A1(cor_maj_14_n22), .A2(cor_maj_14_n23), .ZN(
        cor_maj_14_n17) );
  NAND2_X1 cor_maj_14_U17 ( .A1(mul_port_c[3]), .A2(mul_port_c[4]), .ZN(
        cor_maj_14_n19) );
  NAND2_X1 cor_maj_14_U16 ( .A1(mul_port_c[5]), .A2(cor_maj_14_n21), .ZN(
        cor_maj_14_n20) );
  NAND2_X1 cor_maj_14_U15 ( .A1(cor_maj_14_n19), .A2(cor_maj_14_n20), .ZN(
        cor_maj_14_n18) );
  XOR2_X1 cor_maj_14_U14 ( .A(cor_maj_14_n17), .B(cor_maj_14_n18), .Z(
        cor_maj_14_n15) );
  XOR2_X1 cor_maj_14_U13 ( .A(cor_maj_14_n16), .B(cor_maj_14_n15), .Z(
        cor_maj_14_n7) );
  OR2_X1 cor_maj_14_U12 ( .A1(cor_maj_14_n8), .A2(cor_maj_14_n7), .ZN(
        cor_maj_14_n12) );
  NAND2_X1 cor_maj_14_U11 ( .A1(cor_maj_14_n17), .A2(cor_maj_14_n18), .ZN(
        cor_maj_14_n13) );
  NAND2_X1 cor_maj_14_U10 ( .A1(cor_maj_14_n15), .A2(cor_maj_14_n16), .ZN(
        cor_maj_14_n14) );
  NAND2_X1 cor_maj_14_U9 ( .A1(cor_maj_14_n13), .A2(cor_maj_14_n14), .ZN(
        cor_maj_14_n9) );
  NAND2_X1 cor_maj_14_U8 ( .A1(cor_maj_14_n12), .A2(cor_maj_14_n9), .ZN(
        cor_maj_14_n1) );
  XOR2_X1 cor_maj_14_U7 ( .A(cor_maj_14_n10), .B(cor_maj_14_n11), .Z(
        cor_maj_14_n3) );
  INV_X1 cor_maj_14_U6 ( .A(cor_maj_14_n9), .ZN(cor_maj_14_n5) );
  NAND2_X1 cor_maj_14_U5 ( .A1(cor_maj_14_n7), .A2(cor_maj_14_n8), .ZN(
        cor_maj_14_n6) );
  NAND2_X1 cor_maj_14_U4 ( .A1(cor_maj_14_n5), .A2(cor_maj_14_n6), .ZN(
        cor_maj_14_n4) );
  NAND2_X1 cor_maj_14_U3 ( .A1(cor_maj_14_n3), .A2(cor_maj_14_n4), .ZN(
        cor_maj_14_n2) );
  NAND2_X1 cor_maj_14_U2 ( .A1(cor_maj_14_n1), .A2(cor_maj_14_n2), .ZN(
        port_c[5]) );
  XOR2_X1 cor_maj_15_U33 ( .A(mul_port_c[0]), .B(mul_port_c[1]), .Z(
        cor_maj_15_n24) );
  XOR2_X1 cor_maj_15_U32 ( .A(mul_port_c[2]), .B(cor_maj_15_n24), .Z(
        cor_maj_15_n30) );
  XOR2_X1 cor_maj_15_U31 ( .A(mul_port_c[3]), .B(mul_port_c[4]), .Z(
        cor_maj_15_n21) );
  XOR2_X1 cor_maj_15_U30 ( .A(mul_port_c[5]), .B(cor_maj_15_n21), .Z(
        cor_maj_15_n31) );
  NAND2_X1 cor_maj_15_U29 ( .A1(cor_maj_15_n30), .A2(cor_maj_15_n31), .ZN(
        cor_maj_15_n28) );
  XOR2_X1 cor_maj_15_U28 ( .A(mul_port_c[6]), .B(mul_port_c[7]), .Z(
        cor_maj_15_n27) );
  XOR2_X1 cor_maj_15_U27 ( .A(mul_port_c[8]), .B(cor_maj_15_n27), .Z(
        cor_maj_15_n11) );
  XOR2_X1 cor_maj_15_U26 ( .A(cor_maj_15_n30), .B(cor_maj_15_n31), .Z(
        cor_maj_15_n10) );
  NAND2_X1 cor_maj_15_U25 ( .A1(cor_maj_15_n11), .A2(cor_maj_15_n10), .ZN(
        cor_maj_15_n29) );
  NAND2_X1 cor_maj_15_U24 ( .A1(cor_maj_15_n28), .A2(cor_maj_15_n29), .ZN(
        cor_maj_15_n8) );
  NAND2_X1 cor_maj_15_U23 ( .A1(mul_port_c[6]), .A2(mul_port_c[7]), .ZN(
        cor_maj_15_n25) );
  NAND2_X1 cor_maj_15_U22 ( .A1(mul_port_c[8]), .A2(cor_maj_15_n27), .ZN(
        cor_maj_15_n26) );
  NAND2_X1 cor_maj_15_U21 ( .A1(cor_maj_15_n25), .A2(cor_maj_15_n26), .ZN(
        cor_maj_15_n16) );
  NAND2_X1 cor_maj_15_U20 ( .A1(mul_port_c[0]), .A2(mul_port_c[1]), .ZN(
        cor_maj_15_n22) );
  NAND2_X1 cor_maj_15_U19 ( .A1(mul_port_c[2]), .A2(cor_maj_15_n24), .ZN(
        cor_maj_15_n23) );
  NAND2_X1 cor_maj_15_U18 ( .A1(cor_maj_15_n22), .A2(cor_maj_15_n23), .ZN(
        cor_maj_15_n17) );
  NAND2_X1 cor_maj_15_U17 ( .A1(mul_port_c[3]), .A2(mul_port_c[4]), .ZN(
        cor_maj_15_n19) );
  NAND2_X1 cor_maj_15_U16 ( .A1(mul_port_c[5]), .A2(cor_maj_15_n21), .ZN(
        cor_maj_15_n20) );
  NAND2_X1 cor_maj_15_U15 ( .A1(cor_maj_15_n19), .A2(cor_maj_15_n20), .ZN(
        cor_maj_15_n18) );
  XOR2_X1 cor_maj_15_U14 ( .A(cor_maj_15_n17), .B(cor_maj_15_n18), .Z(
        cor_maj_15_n15) );
  XOR2_X1 cor_maj_15_U13 ( .A(cor_maj_15_n16), .B(cor_maj_15_n15), .Z(
        cor_maj_15_n7) );
  OR2_X1 cor_maj_15_U12 ( .A1(cor_maj_15_n8), .A2(cor_maj_15_n7), .ZN(
        cor_maj_15_n12) );
  NAND2_X1 cor_maj_15_U11 ( .A1(cor_maj_15_n17), .A2(cor_maj_15_n18), .ZN(
        cor_maj_15_n13) );
  NAND2_X1 cor_maj_15_U10 ( .A1(cor_maj_15_n15), .A2(cor_maj_15_n16), .ZN(
        cor_maj_15_n14) );
  NAND2_X1 cor_maj_15_U9 ( .A1(cor_maj_15_n13), .A2(cor_maj_15_n14), .ZN(
        cor_maj_15_n9) );
  NAND2_X1 cor_maj_15_U8 ( .A1(cor_maj_15_n12), .A2(cor_maj_15_n9), .ZN(
        cor_maj_15_n1) );
  XOR2_X1 cor_maj_15_U7 ( .A(cor_maj_15_n10), .B(cor_maj_15_n11), .Z(
        cor_maj_15_n3) );
  INV_X1 cor_maj_15_U6 ( .A(cor_maj_15_n9), .ZN(cor_maj_15_n5) );
  NAND2_X1 cor_maj_15_U5 ( .A1(cor_maj_15_n7), .A2(cor_maj_15_n8), .ZN(
        cor_maj_15_n6) );
  NAND2_X1 cor_maj_15_U4 ( .A1(cor_maj_15_n5), .A2(cor_maj_15_n6), .ZN(
        cor_maj_15_n4) );
  NAND2_X1 cor_maj_15_U3 ( .A1(cor_maj_15_n3), .A2(cor_maj_15_n4), .ZN(
        cor_maj_15_n2) );
  NAND2_X1 cor_maj_15_U2 ( .A1(cor_maj_15_n1), .A2(cor_maj_15_n2), .ZN(
        port_c[6]) );
  XOR2_X1 cor_maj_16_U33 ( .A(mul_port_c[0]), .B(mul_port_c[1]), .Z(
        cor_maj_16_n24) );
  XOR2_X1 cor_maj_16_U32 ( .A(mul_port_c[2]), .B(cor_maj_16_n24), .Z(
        cor_maj_16_n30) );
  XOR2_X1 cor_maj_16_U31 ( .A(mul_port_c[3]), .B(mul_port_c[4]), .Z(
        cor_maj_16_n21) );
  XOR2_X1 cor_maj_16_U30 ( .A(mul_port_c[5]), .B(cor_maj_16_n21), .Z(
        cor_maj_16_n31) );
  NAND2_X1 cor_maj_16_U29 ( .A1(cor_maj_16_n30), .A2(cor_maj_16_n31), .ZN(
        cor_maj_16_n28) );
  XOR2_X1 cor_maj_16_U28 ( .A(mul_port_c[6]), .B(mul_port_c[7]), .Z(
        cor_maj_16_n27) );
  XOR2_X1 cor_maj_16_U27 ( .A(mul_port_c[8]), .B(cor_maj_16_n27), .Z(
        cor_maj_16_n11) );
  XOR2_X1 cor_maj_16_U26 ( .A(cor_maj_16_n30), .B(cor_maj_16_n31), .Z(
        cor_maj_16_n10) );
  NAND2_X1 cor_maj_16_U25 ( .A1(cor_maj_16_n11), .A2(cor_maj_16_n10), .ZN(
        cor_maj_16_n29) );
  NAND2_X1 cor_maj_16_U24 ( .A1(cor_maj_16_n28), .A2(cor_maj_16_n29), .ZN(
        cor_maj_16_n8) );
  NAND2_X1 cor_maj_16_U23 ( .A1(mul_port_c[6]), .A2(mul_port_c[7]), .ZN(
        cor_maj_16_n25) );
  NAND2_X1 cor_maj_16_U22 ( .A1(mul_port_c[8]), .A2(cor_maj_16_n27), .ZN(
        cor_maj_16_n26) );
  NAND2_X1 cor_maj_16_U21 ( .A1(cor_maj_16_n25), .A2(cor_maj_16_n26), .ZN(
        cor_maj_16_n16) );
  NAND2_X1 cor_maj_16_U20 ( .A1(mul_port_c[0]), .A2(mul_port_c[1]), .ZN(
        cor_maj_16_n22) );
  NAND2_X1 cor_maj_16_U19 ( .A1(mul_port_c[2]), .A2(cor_maj_16_n24), .ZN(
        cor_maj_16_n23) );
  NAND2_X1 cor_maj_16_U18 ( .A1(cor_maj_16_n22), .A2(cor_maj_16_n23), .ZN(
        cor_maj_16_n17) );
  NAND2_X1 cor_maj_16_U17 ( .A1(mul_port_c[3]), .A2(mul_port_c[4]), .ZN(
        cor_maj_16_n19) );
  NAND2_X1 cor_maj_16_U16 ( .A1(mul_port_c[5]), .A2(cor_maj_16_n21), .ZN(
        cor_maj_16_n20) );
  NAND2_X1 cor_maj_16_U15 ( .A1(cor_maj_16_n19), .A2(cor_maj_16_n20), .ZN(
        cor_maj_16_n18) );
  XOR2_X1 cor_maj_16_U14 ( .A(cor_maj_16_n17), .B(cor_maj_16_n18), .Z(
        cor_maj_16_n15) );
  XOR2_X1 cor_maj_16_U13 ( .A(cor_maj_16_n16), .B(cor_maj_16_n15), .Z(
        cor_maj_16_n7) );
  OR2_X1 cor_maj_16_U12 ( .A1(cor_maj_16_n8), .A2(cor_maj_16_n7), .ZN(
        cor_maj_16_n12) );
  NAND2_X1 cor_maj_16_U11 ( .A1(cor_maj_16_n17), .A2(cor_maj_16_n18), .ZN(
        cor_maj_16_n13) );
  NAND2_X1 cor_maj_16_U10 ( .A1(cor_maj_16_n15), .A2(cor_maj_16_n16), .ZN(
        cor_maj_16_n14) );
  NAND2_X1 cor_maj_16_U9 ( .A1(cor_maj_16_n13), .A2(cor_maj_16_n14), .ZN(
        cor_maj_16_n9) );
  NAND2_X1 cor_maj_16_U8 ( .A1(cor_maj_16_n12), .A2(cor_maj_16_n9), .ZN(
        cor_maj_16_n1) );
  XOR2_X1 cor_maj_16_U7 ( .A(cor_maj_16_n10), .B(cor_maj_16_n11), .Z(
        cor_maj_16_n3) );
  INV_X1 cor_maj_16_U6 ( .A(cor_maj_16_n9), .ZN(cor_maj_16_n5) );
  NAND2_X1 cor_maj_16_U5 ( .A1(cor_maj_16_n7), .A2(cor_maj_16_n8), .ZN(
        cor_maj_16_n6) );
  NAND2_X1 cor_maj_16_U4 ( .A1(cor_maj_16_n5), .A2(cor_maj_16_n6), .ZN(
        cor_maj_16_n4) );
  NAND2_X1 cor_maj_16_U3 ( .A1(cor_maj_16_n3), .A2(cor_maj_16_n4), .ZN(
        cor_maj_16_n2) );
  NAND2_X1 cor_maj_16_U2 ( .A1(cor_maj_16_n1), .A2(cor_maj_16_n2), .ZN(
        port_c[7]) );
  XOR2_X1 cor_maj_17_U33 ( .A(mul_port_c[0]), .B(mul_port_c[1]), .Z(
        cor_maj_17_n24) );
  XOR2_X1 cor_maj_17_U32 ( .A(mul_port_c[2]), .B(cor_maj_17_n24), .Z(
        cor_maj_17_n30) );
  XOR2_X1 cor_maj_17_U31 ( .A(mul_port_c[3]), .B(mul_port_c[4]), .Z(
        cor_maj_17_n21) );
  XOR2_X1 cor_maj_17_U30 ( .A(mul_port_c[5]), .B(cor_maj_17_n21), .Z(
        cor_maj_17_n31) );
  NAND2_X1 cor_maj_17_U29 ( .A1(cor_maj_17_n30), .A2(cor_maj_17_n31), .ZN(
        cor_maj_17_n28) );
  XOR2_X1 cor_maj_17_U28 ( .A(mul_port_c[6]), .B(mul_port_c[7]), .Z(
        cor_maj_17_n27) );
  XOR2_X1 cor_maj_17_U27 ( .A(mul_port_c[8]), .B(cor_maj_17_n27), .Z(
        cor_maj_17_n11) );
  XOR2_X1 cor_maj_17_U26 ( .A(cor_maj_17_n30), .B(cor_maj_17_n31), .Z(
        cor_maj_17_n10) );
  NAND2_X1 cor_maj_17_U25 ( .A1(cor_maj_17_n11), .A2(cor_maj_17_n10), .ZN(
        cor_maj_17_n29) );
  NAND2_X1 cor_maj_17_U24 ( .A1(cor_maj_17_n28), .A2(cor_maj_17_n29), .ZN(
        cor_maj_17_n8) );
  NAND2_X1 cor_maj_17_U23 ( .A1(mul_port_c[6]), .A2(mul_port_c[7]), .ZN(
        cor_maj_17_n25) );
  NAND2_X1 cor_maj_17_U22 ( .A1(mul_port_c[8]), .A2(cor_maj_17_n27), .ZN(
        cor_maj_17_n26) );
  NAND2_X1 cor_maj_17_U21 ( .A1(cor_maj_17_n25), .A2(cor_maj_17_n26), .ZN(
        cor_maj_17_n16) );
  NAND2_X1 cor_maj_17_U20 ( .A1(mul_port_c[0]), .A2(mul_port_c[1]), .ZN(
        cor_maj_17_n22) );
  NAND2_X1 cor_maj_17_U19 ( .A1(mul_port_c[2]), .A2(cor_maj_17_n24), .ZN(
        cor_maj_17_n23) );
  NAND2_X1 cor_maj_17_U18 ( .A1(cor_maj_17_n22), .A2(cor_maj_17_n23), .ZN(
        cor_maj_17_n17) );
  NAND2_X1 cor_maj_17_U17 ( .A1(mul_port_c[3]), .A2(mul_port_c[4]), .ZN(
        cor_maj_17_n19) );
  NAND2_X1 cor_maj_17_U16 ( .A1(mul_port_c[5]), .A2(cor_maj_17_n21), .ZN(
        cor_maj_17_n20) );
  NAND2_X1 cor_maj_17_U15 ( .A1(cor_maj_17_n19), .A2(cor_maj_17_n20), .ZN(
        cor_maj_17_n18) );
  XOR2_X1 cor_maj_17_U14 ( .A(cor_maj_17_n17), .B(cor_maj_17_n18), .Z(
        cor_maj_17_n15) );
  XOR2_X1 cor_maj_17_U13 ( .A(cor_maj_17_n16), .B(cor_maj_17_n15), .Z(
        cor_maj_17_n7) );
  OR2_X1 cor_maj_17_U12 ( .A1(cor_maj_17_n8), .A2(cor_maj_17_n7), .ZN(
        cor_maj_17_n12) );
  NAND2_X1 cor_maj_17_U11 ( .A1(cor_maj_17_n17), .A2(cor_maj_17_n18), .ZN(
        cor_maj_17_n13) );
  NAND2_X1 cor_maj_17_U10 ( .A1(cor_maj_17_n15), .A2(cor_maj_17_n16), .ZN(
        cor_maj_17_n14) );
  NAND2_X1 cor_maj_17_U9 ( .A1(cor_maj_17_n13), .A2(cor_maj_17_n14), .ZN(
        cor_maj_17_n9) );
  NAND2_X1 cor_maj_17_U8 ( .A1(cor_maj_17_n12), .A2(cor_maj_17_n9), .ZN(
        cor_maj_17_n1) );
  XOR2_X1 cor_maj_17_U7 ( .A(cor_maj_17_n10), .B(cor_maj_17_n11), .Z(
        cor_maj_17_n3) );
  INV_X1 cor_maj_17_U6 ( .A(cor_maj_17_n9), .ZN(cor_maj_17_n5) );
  NAND2_X1 cor_maj_17_U5 ( .A1(cor_maj_17_n7), .A2(cor_maj_17_n8), .ZN(
        cor_maj_17_n6) );
  NAND2_X1 cor_maj_17_U4 ( .A1(cor_maj_17_n5), .A2(cor_maj_17_n6), .ZN(
        cor_maj_17_n4) );
  NAND2_X1 cor_maj_17_U3 ( .A1(cor_maj_17_n3), .A2(cor_maj_17_n4), .ZN(
        cor_maj_17_n2) );
  NAND2_X1 cor_maj_17_U2 ( .A1(cor_maj_17_n1), .A2(cor_maj_17_n2), .ZN(
        port_c[8]) );
endmodule

