
module FINIandCorrection ( port_a, port_b, port_c );
  input [6:0] port_a;
  input [6:0] port_b;
  output [6:0] port_c;
  wire   cor_maj_7_n19, cor_maj_7_n18, cor_maj_7_n17, cor_maj_7_n16,
         cor_maj_7_n15, cor_maj_7_n14, cor_maj_7_n13, cor_maj_7_n12,
         cor_maj_7_n11, cor_maj_7_n10, cor_maj_7_n9, cor_maj_7_n8,
         cor_maj_7_n7, cor_maj_7_n6, cor_maj_7_n5, cor_maj_7_n4, cor_maj_7_n3,
         cor_maj_7_n2, cor_maj_7_n1, cor_maj_8_n19, cor_maj_8_n18,
         cor_maj_8_n17, cor_maj_8_n16, cor_maj_8_n15, cor_maj_8_n14,
         cor_maj_8_n13, cor_maj_8_n12, cor_maj_8_n11, cor_maj_8_n10,
         cor_maj_8_n9, cor_maj_8_n8, cor_maj_8_n7, cor_maj_8_n6, cor_maj_8_n5,
         cor_maj_8_n4, cor_maj_8_n3, cor_maj_8_n2, cor_maj_8_n1, cor_maj_9_n19,
         cor_maj_9_n18, cor_maj_9_n17, cor_maj_9_n16, cor_maj_9_n15,
         cor_maj_9_n14, cor_maj_9_n13, cor_maj_9_n12, cor_maj_9_n11,
         cor_maj_9_n10, cor_maj_9_n9, cor_maj_9_n8, cor_maj_9_n7, cor_maj_9_n6,
         cor_maj_9_n5, cor_maj_9_n4, cor_maj_9_n3, cor_maj_9_n2, cor_maj_9_n1,
         cor_maj_10_n19, cor_maj_10_n18, cor_maj_10_n17, cor_maj_10_n16,
         cor_maj_10_n15, cor_maj_10_n14, cor_maj_10_n13, cor_maj_10_n12,
         cor_maj_10_n11, cor_maj_10_n10, cor_maj_10_n9, cor_maj_10_n8,
         cor_maj_10_n7, cor_maj_10_n6, cor_maj_10_n5, cor_maj_10_n4,
         cor_maj_10_n3, cor_maj_10_n2, cor_maj_10_n1, cor_maj_11_n19,
         cor_maj_11_n18, cor_maj_11_n17, cor_maj_11_n16, cor_maj_11_n15,
         cor_maj_11_n14, cor_maj_11_n13, cor_maj_11_n12, cor_maj_11_n11,
         cor_maj_11_n10, cor_maj_11_n9, cor_maj_11_n8, cor_maj_11_n7,
         cor_maj_11_n6, cor_maj_11_n5, cor_maj_11_n4, cor_maj_11_n3,
         cor_maj_11_n2, cor_maj_11_n1, cor_maj_12_n19, cor_maj_12_n18,
         cor_maj_12_n17, cor_maj_12_n16, cor_maj_12_n15, cor_maj_12_n14,
         cor_maj_12_n13, cor_maj_12_n12, cor_maj_12_n11, cor_maj_12_n10,
         cor_maj_12_n9, cor_maj_12_n8, cor_maj_12_n7, cor_maj_12_n6,
         cor_maj_12_n5, cor_maj_12_n4, cor_maj_12_n3, cor_maj_12_n2,
         cor_maj_12_n1, cor_maj_13_n19, cor_maj_13_n18, cor_maj_13_n17,
         cor_maj_13_n16, cor_maj_13_n15, cor_maj_13_n14, cor_maj_13_n13,
         cor_maj_13_n12, cor_maj_13_n11, cor_maj_13_n10, cor_maj_13_n9,
         cor_maj_13_n8, cor_maj_13_n7, cor_maj_13_n6, cor_maj_13_n5,
         cor_maj_13_n4, cor_maj_13_n3, cor_maj_13_n2, cor_maj_13_n1;
  wire   [6:0] mul_port_c;

  AND2_X1 mul_U7 ( .A1(port_b[0]), .A2(port_a[0]), .ZN(mul_port_c[0]) );
  AND2_X1 mul_U6 ( .A1(port_b[1]), .A2(port_a[1]), .ZN(mul_port_c[1]) );
  AND2_X1 mul_U5 ( .A1(port_b[3]), .A2(port_a[3]), .ZN(mul_port_c[3]) );
  AND2_X1 mul_U4 ( .A1(port_b[4]), .A2(port_a[4]), .ZN(mul_port_c[4]) );
  AND2_X1 mul_U3 ( .A1(port_b[6]), .A2(port_a[6]), .ZN(mul_port_c[6]) );
  AND2_X1 mul_U2 ( .A1(port_b[2]), .A2(port_a[2]), .ZN(mul_port_c[2]) );
  AND2_X1 mul_U1 ( .A1(port_b[5]), .A2(port_a[5]), .ZN(mul_port_c[5]) );
  NAND2_X1 cor_maj_7_U21 ( .A1(mul_port_c[0]), .A2(mul_port_c[1]), .ZN(
        cor_maj_7_n18) );
  XOR2_X1 cor_maj_7_U20 ( .A(mul_port_c[0]), .B(mul_port_c[1]), .Z(
        cor_maj_7_n12) );
  NAND2_X1 cor_maj_7_U19 ( .A1(mul_port_c[2]), .A2(cor_maj_7_n12), .ZN(
        cor_maj_7_n19) );
  NAND2_X1 cor_maj_7_U18 ( .A1(cor_maj_7_n18), .A2(cor_maj_7_n19), .ZN(
        cor_maj_7_n6) );
  NAND2_X1 cor_maj_7_U17 ( .A1(mul_port_c[3]), .A2(mul_port_c[4]), .ZN(
        cor_maj_7_n16) );
  XOR2_X1 cor_maj_7_U16 ( .A(mul_port_c[3]), .B(mul_port_c[4]), .Z(
        cor_maj_7_n13) );
  NAND2_X1 cor_maj_7_U15 ( .A1(mul_port_c[5]), .A2(cor_maj_7_n13), .ZN(
        cor_maj_7_n17) );
  NAND2_X1 cor_maj_7_U14 ( .A1(cor_maj_7_n16), .A2(cor_maj_7_n17), .ZN(
        cor_maj_7_n5) );
  NAND2_X1 cor_maj_7_U13 ( .A1(cor_maj_7_n6), .A2(cor_maj_7_n5), .ZN(
        cor_maj_7_n1) );
  XOR2_X1 cor_maj_7_U12 ( .A(mul_port_c[5]), .B(cor_maj_7_n13), .Z(
        cor_maj_7_n14) );
  XOR2_X1 cor_maj_7_U11 ( .A(mul_port_c[2]), .B(cor_maj_7_n12), .Z(
        cor_maj_7_n15) );
  NAND2_X1 cor_maj_7_U10 ( .A1(cor_maj_7_n14), .A2(cor_maj_7_n15), .ZN(
        cor_maj_7_n7) );
  XNOR2_X1 cor_maj_7_U9 ( .A(mul_port_c[5]), .B(cor_maj_7_n13), .ZN(
        cor_maj_7_n10) );
  XNOR2_X1 cor_maj_7_U8 ( .A(mul_port_c[2]), .B(cor_maj_7_n12), .ZN(
        cor_maj_7_n11) );
  NAND2_X1 cor_maj_7_U7 ( .A1(cor_maj_7_n10), .A2(cor_maj_7_n11), .ZN(
        cor_maj_7_n9) );
  NAND2_X1 cor_maj_7_U6 ( .A1(mul_port_c[6]), .A2(cor_maj_7_n9), .ZN(
        cor_maj_7_n8) );
  NAND2_X1 cor_maj_7_U5 ( .A1(cor_maj_7_n7), .A2(cor_maj_7_n8), .ZN(
        cor_maj_7_n3) );
  OR2_X1 cor_maj_7_U4 ( .A1(cor_maj_7_n5), .A2(cor_maj_7_n6), .ZN(cor_maj_7_n4) );
  NAND2_X1 cor_maj_7_U3 ( .A1(cor_maj_7_n3), .A2(cor_maj_7_n4), .ZN(
        cor_maj_7_n2) );
  NAND2_X1 cor_maj_7_U2 ( .A1(cor_maj_7_n1), .A2(cor_maj_7_n2), .ZN(port_c[0])
         );
  NAND2_X1 cor_maj_8_U21 ( .A1(mul_port_c[0]), .A2(mul_port_c[1]), .ZN(
        cor_maj_8_n18) );
  XOR2_X1 cor_maj_8_U20 ( .A(mul_port_c[0]), .B(mul_port_c[1]), .Z(
        cor_maj_8_n12) );
  NAND2_X1 cor_maj_8_U19 ( .A1(mul_port_c[2]), .A2(cor_maj_8_n12), .ZN(
        cor_maj_8_n19) );
  NAND2_X1 cor_maj_8_U18 ( .A1(cor_maj_8_n18), .A2(cor_maj_8_n19), .ZN(
        cor_maj_8_n6) );
  NAND2_X1 cor_maj_8_U17 ( .A1(mul_port_c[3]), .A2(mul_port_c[4]), .ZN(
        cor_maj_8_n16) );
  XOR2_X1 cor_maj_8_U16 ( .A(mul_port_c[3]), .B(mul_port_c[4]), .Z(
        cor_maj_8_n13) );
  NAND2_X1 cor_maj_8_U15 ( .A1(mul_port_c[5]), .A2(cor_maj_8_n13), .ZN(
        cor_maj_8_n17) );
  NAND2_X1 cor_maj_8_U14 ( .A1(cor_maj_8_n16), .A2(cor_maj_8_n17), .ZN(
        cor_maj_8_n5) );
  NAND2_X1 cor_maj_8_U13 ( .A1(cor_maj_8_n6), .A2(cor_maj_8_n5), .ZN(
        cor_maj_8_n1) );
  XOR2_X1 cor_maj_8_U12 ( .A(mul_port_c[5]), .B(cor_maj_8_n13), .Z(
        cor_maj_8_n14) );
  XOR2_X1 cor_maj_8_U11 ( .A(mul_port_c[2]), .B(cor_maj_8_n12), .Z(
        cor_maj_8_n15) );
  NAND2_X1 cor_maj_8_U10 ( .A1(cor_maj_8_n14), .A2(cor_maj_8_n15), .ZN(
        cor_maj_8_n7) );
  XNOR2_X1 cor_maj_8_U9 ( .A(mul_port_c[5]), .B(cor_maj_8_n13), .ZN(
        cor_maj_8_n10) );
  XNOR2_X1 cor_maj_8_U8 ( .A(mul_port_c[2]), .B(cor_maj_8_n12), .ZN(
        cor_maj_8_n11) );
  NAND2_X1 cor_maj_8_U7 ( .A1(cor_maj_8_n10), .A2(cor_maj_8_n11), .ZN(
        cor_maj_8_n9) );
  NAND2_X1 cor_maj_8_U6 ( .A1(mul_port_c[6]), .A2(cor_maj_8_n9), .ZN(
        cor_maj_8_n8) );
  NAND2_X1 cor_maj_8_U5 ( .A1(cor_maj_8_n7), .A2(cor_maj_8_n8), .ZN(
        cor_maj_8_n3) );
  OR2_X1 cor_maj_8_U4 ( .A1(cor_maj_8_n5), .A2(cor_maj_8_n6), .ZN(cor_maj_8_n4) );
  NAND2_X1 cor_maj_8_U3 ( .A1(cor_maj_8_n3), .A2(cor_maj_8_n4), .ZN(
        cor_maj_8_n2) );
  NAND2_X1 cor_maj_8_U2 ( .A1(cor_maj_8_n1), .A2(cor_maj_8_n2), .ZN(port_c[1])
         );
  NAND2_X1 cor_maj_9_U21 ( .A1(mul_port_c[0]), .A2(mul_port_c[1]), .ZN(
        cor_maj_9_n18) );
  XOR2_X1 cor_maj_9_U20 ( .A(mul_port_c[0]), .B(mul_port_c[1]), .Z(
        cor_maj_9_n12) );
  NAND2_X1 cor_maj_9_U19 ( .A1(mul_port_c[2]), .A2(cor_maj_9_n12), .ZN(
        cor_maj_9_n19) );
  NAND2_X1 cor_maj_9_U18 ( .A1(cor_maj_9_n18), .A2(cor_maj_9_n19), .ZN(
        cor_maj_9_n6) );
  NAND2_X1 cor_maj_9_U17 ( .A1(mul_port_c[3]), .A2(mul_port_c[4]), .ZN(
        cor_maj_9_n16) );
  XOR2_X1 cor_maj_9_U16 ( .A(mul_port_c[3]), .B(mul_port_c[4]), .Z(
        cor_maj_9_n13) );
  NAND2_X1 cor_maj_9_U15 ( .A1(mul_port_c[5]), .A2(cor_maj_9_n13), .ZN(
        cor_maj_9_n17) );
  NAND2_X1 cor_maj_9_U14 ( .A1(cor_maj_9_n16), .A2(cor_maj_9_n17), .ZN(
        cor_maj_9_n5) );
  NAND2_X1 cor_maj_9_U13 ( .A1(cor_maj_9_n6), .A2(cor_maj_9_n5), .ZN(
        cor_maj_9_n1) );
  XOR2_X1 cor_maj_9_U12 ( .A(mul_port_c[5]), .B(cor_maj_9_n13), .Z(
        cor_maj_9_n14) );
  XOR2_X1 cor_maj_9_U11 ( .A(mul_port_c[2]), .B(cor_maj_9_n12), .Z(
        cor_maj_9_n15) );
  NAND2_X1 cor_maj_9_U10 ( .A1(cor_maj_9_n14), .A2(cor_maj_9_n15), .ZN(
        cor_maj_9_n7) );
  XNOR2_X1 cor_maj_9_U9 ( .A(mul_port_c[5]), .B(cor_maj_9_n13), .ZN(
        cor_maj_9_n10) );
  XNOR2_X1 cor_maj_9_U8 ( .A(mul_port_c[2]), .B(cor_maj_9_n12), .ZN(
        cor_maj_9_n11) );
  NAND2_X1 cor_maj_9_U7 ( .A1(cor_maj_9_n10), .A2(cor_maj_9_n11), .ZN(
        cor_maj_9_n9) );
  NAND2_X1 cor_maj_9_U6 ( .A1(mul_port_c[6]), .A2(cor_maj_9_n9), .ZN(
        cor_maj_9_n8) );
  NAND2_X1 cor_maj_9_U5 ( .A1(cor_maj_9_n7), .A2(cor_maj_9_n8), .ZN(
        cor_maj_9_n3) );
  OR2_X1 cor_maj_9_U4 ( .A1(cor_maj_9_n5), .A2(cor_maj_9_n6), .ZN(cor_maj_9_n4) );
  NAND2_X1 cor_maj_9_U3 ( .A1(cor_maj_9_n3), .A2(cor_maj_9_n4), .ZN(
        cor_maj_9_n2) );
  NAND2_X1 cor_maj_9_U2 ( .A1(cor_maj_9_n1), .A2(cor_maj_9_n2), .ZN(port_c[2])
         );
  NAND2_X1 cor_maj_10_U21 ( .A1(mul_port_c[0]), .A2(mul_port_c[1]), .ZN(
        cor_maj_10_n18) );
  XOR2_X1 cor_maj_10_U20 ( .A(mul_port_c[0]), .B(mul_port_c[1]), .Z(
        cor_maj_10_n12) );
  NAND2_X1 cor_maj_10_U19 ( .A1(mul_port_c[2]), .A2(cor_maj_10_n12), .ZN(
        cor_maj_10_n19) );
  NAND2_X1 cor_maj_10_U18 ( .A1(cor_maj_10_n18), .A2(cor_maj_10_n19), .ZN(
        cor_maj_10_n6) );
  NAND2_X1 cor_maj_10_U17 ( .A1(mul_port_c[3]), .A2(mul_port_c[4]), .ZN(
        cor_maj_10_n16) );
  XOR2_X1 cor_maj_10_U16 ( .A(mul_port_c[3]), .B(mul_port_c[4]), .Z(
        cor_maj_10_n13) );
  NAND2_X1 cor_maj_10_U15 ( .A1(mul_port_c[5]), .A2(cor_maj_10_n13), .ZN(
        cor_maj_10_n17) );
  NAND2_X1 cor_maj_10_U14 ( .A1(cor_maj_10_n16), .A2(cor_maj_10_n17), .ZN(
        cor_maj_10_n5) );
  NAND2_X1 cor_maj_10_U13 ( .A1(cor_maj_10_n6), .A2(cor_maj_10_n5), .ZN(
        cor_maj_10_n1) );
  XOR2_X1 cor_maj_10_U12 ( .A(mul_port_c[5]), .B(cor_maj_10_n13), .Z(
        cor_maj_10_n14) );
  XOR2_X1 cor_maj_10_U11 ( .A(mul_port_c[2]), .B(cor_maj_10_n12), .Z(
        cor_maj_10_n15) );
  NAND2_X1 cor_maj_10_U10 ( .A1(cor_maj_10_n14), .A2(cor_maj_10_n15), .ZN(
        cor_maj_10_n7) );
  XNOR2_X1 cor_maj_10_U9 ( .A(mul_port_c[5]), .B(cor_maj_10_n13), .ZN(
        cor_maj_10_n10) );
  XNOR2_X1 cor_maj_10_U8 ( .A(mul_port_c[2]), .B(cor_maj_10_n12), .ZN(
        cor_maj_10_n11) );
  NAND2_X1 cor_maj_10_U7 ( .A1(cor_maj_10_n10), .A2(cor_maj_10_n11), .ZN(
        cor_maj_10_n9) );
  NAND2_X1 cor_maj_10_U6 ( .A1(mul_port_c[6]), .A2(cor_maj_10_n9), .ZN(
        cor_maj_10_n8) );
  NAND2_X1 cor_maj_10_U5 ( .A1(cor_maj_10_n7), .A2(cor_maj_10_n8), .ZN(
        cor_maj_10_n3) );
  OR2_X1 cor_maj_10_U4 ( .A1(cor_maj_10_n5), .A2(cor_maj_10_n6), .ZN(
        cor_maj_10_n4) );
  NAND2_X1 cor_maj_10_U3 ( .A1(cor_maj_10_n3), .A2(cor_maj_10_n4), .ZN(
        cor_maj_10_n2) );
  NAND2_X1 cor_maj_10_U2 ( .A1(cor_maj_10_n1), .A2(cor_maj_10_n2), .ZN(
        port_c[3]) );
  NAND2_X1 cor_maj_11_U21 ( .A1(mul_port_c[0]), .A2(mul_port_c[1]), .ZN(
        cor_maj_11_n18) );
  XOR2_X1 cor_maj_11_U20 ( .A(mul_port_c[0]), .B(mul_port_c[1]), .Z(
        cor_maj_11_n12) );
  NAND2_X1 cor_maj_11_U19 ( .A1(mul_port_c[2]), .A2(cor_maj_11_n12), .ZN(
        cor_maj_11_n19) );
  NAND2_X1 cor_maj_11_U18 ( .A1(cor_maj_11_n18), .A2(cor_maj_11_n19), .ZN(
        cor_maj_11_n6) );
  NAND2_X1 cor_maj_11_U17 ( .A1(mul_port_c[3]), .A2(mul_port_c[4]), .ZN(
        cor_maj_11_n16) );
  XOR2_X1 cor_maj_11_U16 ( .A(mul_port_c[3]), .B(mul_port_c[4]), .Z(
        cor_maj_11_n13) );
  NAND2_X1 cor_maj_11_U15 ( .A1(mul_port_c[5]), .A2(cor_maj_11_n13), .ZN(
        cor_maj_11_n17) );
  NAND2_X1 cor_maj_11_U14 ( .A1(cor_maj_11_n16), .A2(cor_maj_11_n17), .ZN(
        cor_maj_11_n5) );
  NAND2_X1 cor_maj_11_U13 ( .A1(cor_maj_11_n6), .A2(cor_maj_11_n5), .ZN(
        cor_maj_11_n1) );
  XOR2_X1 cor_maj_11_U12 ( .A(mul_port_c[5]), .B(cor_maj_11_n13), .Z(
        cor_maj_11_n14) );
  XOR2_X1 cor_maj_11_U11 ( .A(mul_port_c[2]), .B(cor_maj_11_n12), .Z(
        cor_maj_11_n15) );
  NAND2_X1 cor_maj_11_U10 ( .A1(cor_maj_11_n14), .A2(cor_maj_11_n15), .ZN(
        cor_maj_11_n7) );
  XNOR2_X1 cor_maj_11_U9 ( .A(mul_port_c[5]), .B(cor_maj_11_n13), .ZN(
        cor_maj_11_n10) );
  XNOR2_X1 cor_maj_11_U8 ( .A(mul_port_c[2]), .B(cor_maj_11_n12), .ZN(
        cor_maj_11_n11) );
  NAND2_X1 cor_maj_11_U7 ( .A1(cor_maj_11_n10), .A2(cor_maj_11_n11), .ZN(
        cor_maj_11_n9) );
  NAND2_X1 cor_maj_11_U6 ( .A1(mul_port_c[6]), .A2(cor_maj_11_n9), .ZN(
        cor_maj_11_n8) );
  NAND2_X1 cor_maj_11_U5 ( .A1(cor_maj_11_n7), .A2(cor_maj_11_n8), .ZN(
        cor_maj_11_n3) );
  OR2_X1 cor_maj_11_U4 ( .A1(cor_maj_11_n5), .A2(cor_maj_11_n6), .ZN(
        cor_maj_11_n4) );
  NAND2_X1 cor_maj_11_U3 ( .A1(cor_maj_11_n3), .A2(cor_maj_11_n4), .ZN(
        cor_maj_11_n2) );
  NAND2_X1 cor_maj_11_U2 ( .A1(cor_maj_11_n1), .A2(cor_maj_11_n2), .ZN(
        port_c[4]) );
  NAND2_X1 cor_maj_12_U21 ( .A1(mul_port_c[0]), .A2(mul_port_c[1]), .ZN(
        cor_maj_12_n18) );
  XOR2_X1 cor_maj_12_U20 ( .A(mul_port_c[0]), .B(mul_port_c[1]), .Z(
        cor_maj_12_n12) );
  NAND2_X1 cor_maj_12_U19 ( .A1(mul_port_c[2]), .A2(cor_maj_12_n12), .ZN(
        cor_maj_12_n19) );
  NAND2_X1 cor_maj_12_U18 ( .A1(cor_maj_12_n18), .A2(cor_maj_12_n19), .ZN(
        cor_maj_12_n6) );
  NAND2_X1 cor_maj_12_U17 ( .A1(mul_port_c[3]), .A2(mul_port_c[4]), .ZN(
        cor_maj_12_n16) );
  XOR2_X1 cor_maj_12_U16 ( .A(mul_port_c[3]), .B(mul_port_c[4]), .Z(
        cor_maj_12_n13) );
  NAND2_X1 cor_maj_12_U15 ( .A1(mul_port_c[5]), .A2(cor_maj_12_n13), .ZN(
        cor_maj_12_n17) );
  NAND2_X1 cor_maj_12_U14 ( .A1(cor_maj_12_n16), .A2(cor_maj_12_n17), .ZN(
        cor_maj_12_n5) );
  NAND2_X1 cor_maj_12_U13 ( .A1(cor_maj_12_n6), .A2(cor_maj_12_n5), .ZN(
        cor_maj_12_n1) );
  XOR2_X1 cor_maj_12_U12 ( .A(mul_port_c[5]), .B(cor_maj_12_n13), .Z(
        cor_maj_12_n14) );
  XOR2_X1 cor_maj_12_U11 ( .A(mul_port_c[2]), .B(cor_maj_12_n12), .Z(
        cor_maj_12_n15) );
  NAND2_X1 cor_maj_12_U10 ( .A1(cor_maj_12_n14), .A2(cor_maj_12_n15), .ZN(
        cor_maj_12_n7) );
  XNOR2_X1 cor_maj_12_U9 ( .A(mul_port_c[5]), .B(cor_maj_12_n13), .ZN(
        cor_maj_12_n10) );
  XNOR2_X1 cor_maj_12_U8 ( .A(mul_port_c[2]), .B(cor_maj_12_n12), .ZN(
        cor_maj_12_n11) );
  NAND2_X1 cor_maj_12_U7 ( .A1(cor_maj_12_n10), .A2(cor_maj_12_n11), .ZN(
        cor_maj_12_n9) );
  NAND2_X1 cor_maj_12_U6 ( .A1(mul_port_c[6]), .A2(cor_maj_12_n9), .ZN(
        cor_maj_12_n8) );
  NAND2_X1 cor_maj_12_U5 ( .A1(cor_maj_12_n7), .A2(cor_maj_12_n8), .ZN(
        cor_maj_12_n3) );
  OR2_X1 cor_maj_12_U4 ( .A1(cor_maj_12_n5), .A2(cor_maj_12_n6), .ZN(
        cor_maj_12_n4) );
  NAND2_X1 cor_maj_12_U3 ( .A1(cor_maj_12_n3), .A2(cor_maj_12_n4), .ZN(
        cor_maj_12_n2) );
  NAND2_X1 cor_maj_12_U2 ( .A1(cor_maj_12_n1), .A2(cor_maj_12_n2), .ZN(
        port_c[5]) );
  NAND2_X1 cor_maj_13_U21 ( .A1(mul_port_c[0]), .A2(mul_port_c[1]), .ZN(
        cor_maj_13_n18) );
  XOR2_X1 cor_maj_13_U20 ( .A(mul_port_c[0]), .B(mul_port_c[1]), .Z(
        cor_maj_13_n12) );
  NAND2_X1 cor_maj_13_U19 ( .A1(mul_port_c[2]), .A2(cor_maj_13_n12), .ZN(
        cor_maj_13_n19) );
  NAND2_X1 cor_maj_13_U18 ( .A1(cor_maj_13_n18), .A2(cor_maj_13_n19), .ZN(
        cor_maj_13_n6) );
  NAND2_X1 cor_maj_13_U17 ( .A1(mul_port_c[3]), .A2(mul_port_c[4]), .ZN(
        cor_maj_13_n16) );
  XOR2_X1 cor_maj_13_U16 ( .A(mul_port_c[3]), .B(mul_port_c[4]), .Z(
        cor_maj_13_n13) );
  NAND2_X1 cor_maj_13_U15 ( .A1(mul_port_c[5]), .A2(cor_maj_13_n13), .ZN(
        cor_maj_13_n17) );
  NAND2_X1 cor_maj_13_U14 ( .A1(cor_maj_13_n16), .A2(cor_maj_13_n17), .ZN(
        cor_maj_13_n5) );
  NAND2_X1 cor_maj_13_U13 ( .A1(cor_maj_13_n6), .A2(cor_maj_13_n5), .ZN(
        cor_maj_13_n1) );
  XOR2_X1 cor_maj_13_U12 ( .A(mul_port_c[5]), .B(cor_maj_13_n13), .Z(
        cor_maj_13_n14) );
  XOR2_X1 cor_maj_13_U11 ( .A(mul_port_c[2]), .B(cor_maj_13_n12), .Z(
        cor_maj_13_n15) );
  NAND2_X1 cor_maj_13_U10 ( .A1(cor_maj_13_n14), .A2(cor_maj_13_n15), .ZN(
        cor_maj_13_n7) );
  XNOR2_X1 cor_maj_13_U9 ( .A(mul_port_c[5]), .B(cor_maj_13_n13), .ZN(
        cor_maj_13_n10) );
  XNOR2_X1 cor_maj_13_U8 ( .A(mul_port_c[2]), .B(cor_maj_13_n12), .ZN(
        cor_maj_13_n11) );
  NAND2_X1 cor_maj_13_U7 ( .A1(cor_maj_13_n10), .A2(cor_maj_13_n11), .ZN(
        cor_maj_13_n9) );
  NAND2_X1 cor_maj_13_U6 ( .A1(mul_port_c[6]), .A2(cor_maj_13_n9), .ZN(
        cor_maj_13_n8) );
  NAND2_X1 cor_maj_13_U5 ( .A1(cor_maj_13_n7), .A2(cor_maj_13_n8), .ZN(
        cor_maj_13_n3) );
  OR2_X1 cor_maj_13_U4 ( .A1(cor_maj_13_n5), .A2(cor_maj_13_n6), .ZN(
        cor_maj_13_n4) );
  NAND2_X1 cor_maj_13_U3 ( .A1(cor_maj_13_n3), .A2(cor_maj_13_n4), .ZN(
        cor_maj_13_n2) );
  NAND2_X1 cor_maj_13_U2 ( .A1(cor_maj_13_n1), .A2(cor_maj_13_n2), .ZN(
        port_c[6]) );
endmodule

