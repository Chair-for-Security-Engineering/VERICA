
module FINIandCorrection ( port_a, port_b, port_c );
  input [4:0] port_a;
  input [4:0] port_b;
  output [4:0] port_c;
  wire   cor_maj_5_n13, cor_maj_5_n12, cor_maj_5_n11, cor_maj_5_n10,
         cor_maj_5_n9, cor_maj_5_n8, cor_maj_5_n7, cor_maj_5_n6, cor_maj_5_n5,
         cor_maj_5_n4, cor_maj_5_n3, cor_maj_5_n2, cor_maj_5_n1, cor_maj_6_n13,
         cor_maj_6_n12, cor_maj_6_n11, cor_maj_6_n10, cor_maj_6_n9,
         cor_maj_6_n8, cor_maj_6_n7, cor_maj_6_n6, cor_maj_6_n5, cor_maj_6_n4,
         cor_maj_6_n3, cor_maj_6_n2, cor_maj_6_n1, cor_maj_7_n13,
         cor_maj_7_n12, cor_maj_7_n11, cor_maj_7_n10, cor_maj_7_n9,
         cor_maj_7_n8, cor_maj_7_n7, cor_maj_7_n6, cor_maj_7_n5, cor_maj_7_n4,
         cor_maj_7_n3, cor_maj_7_n2, cor_maj_7_n1, cor_maj_8_n13,
         cor_maj_8_n12, cor_maj_8_n11, cor_maj_8_n10, cor_maj_8_n9,
         cor_maj_8_n8, cor_maj_8_n7, cor_maj_8_n6, cor_maj_8_n5, cor_maj_8_n4,
         cor_maj_8_n3, cor_maj_8_n2, cor_maj_8_n1, cor_maj_9_n13,
         cor_maj_9_n12, cor_maj_9_n11, cor_maj_9_n10, cor_maj_9_n9,
         cor_maj_9_n8, cor_maj_9_n7, cor_maj_9_n6, cor_maj_9_n5, cor_maj_9_n4,
         cor_maj_9_n3, cor_maj_9_n2, cor_maj_9_n1;
  wire   [4:0] mul_port_c;

  AND2_X1 mul_U5 ( .A1(port_b[0]), .A2(port_a[0]), .ZN(mul_port_c[0]) );
  AND2_X1 mul_U4 ( .A1(port_b[1]), .A2(port_a[1]), .ZN(mul_port_c[1]) );
  AND2_X1 mul_U3 ( .A1(port_b[2]), .A2(port_a[2]), .ZN(mul_port_c[2]) );
  AND2_X1 mul_U2 ( .A1(port_b[3]), .A2(port_a[3]), .ZN(mul_port_c[3]) );
  AND2_X1 mul_U1 ( .A1(port_b[4]), .A2(port_a[4]), .ZN(mul_port_c[4]) );
  NAND2_X1 cor_maj_5_U15 ( .A1(mul_port_c[3]), .A2(mul_port_c[4]), .ZN(
        cor_maj_5_n12) );
  XOR2_X1 cor_maj_5_U14 ( .A(mul_port_c[3]), .B(mul_port_c[4]), .Z(
        cor_maj_5_n8) );
  XOR2_X1 cor_maj_5_U13 ( .A(mul_port_c[0]), .B(mul_port_c[1]), .Z(
        cor_maj_5_n11) );
  XOR2_X1 cor_maj_5_U12 ( .A(mul_port_c[2]), .B(cor_maj_5_n11), .Z(
        cor_maj_5_n7) );
  NAND2_X1 cor_maj_5_U11 ( .A1(cor_maj_5_n8), .A2(cor_maj_5_n7), .ZN(
        cor_maj_5_n13) );
  NAND2_X1 cor_maj_5_U10 ( .A1(cor_maj_5_n12), .A2(cor_maj_5_n13), .ZN(
        cor_maj_5_n6) );
  NAND2_X1 cor_maj_5_U9 ( .A1(mul_port_c[0]), .A2(mul_port_c[1]), .ZN(
        cor_maj_5_n9) );
  NAND2_X1 cor_maj_5_U8 ( .A1(mul_port_c[2]), .A2(cor_maj_5_n11), .ZN(
        cor_maj_5_n10) );
  NAND2_X1 cor_maj_5_U7 ( .A1(cor_maj_5_n9), .A2(cor_maj_5_n10), .ZN(
        cor_maj_5_n5) );
  NAND2_X1 cor_maj_5_U6 ( .A1(cor_maj_5_n6), .A2(cor_maj_5_n5), .ZN(
        cor_maj_5_n1) );
  XOR2_X1 cor_maj_5_U5 ( .A(cor_maj_5_n7), .B(cor_maj_5_n8), .Z(cor_maj_5_n3)
         );
  OR2_X1 cor_maj_5_U4 ( .A1(cor_maj_5_n5), .A2(cor_maj_5_n6), .ZN(cor_maj_5_n4) );
  NAND2_X1 cor_maj_5_U3 ( .A1(cor_maj_5_n3), .A2(cor_maj_5_n4), .ZN(
        cor_maj_5_n2) );
  NAND2_X1 cor_maj_5_U2 ( .A1(cor_maj_5_n1), .A2(cor_maj_5_n2), .ZN(port_c[0])
         );
  NAND2_X1 cor_maj_6_U15 ( .A1(mul_port_c[3]), .A2(mul_port_c[4]), .ZN(
        cor_maj_6_n12) );
  XOR2_X1 cor_maj_6_U14 ( .A(mul_port_c[3]), .B(mul_port_c[4]), .Z(
        cor_maj_6_n8) );
  XOR2_X1 cor_maj_6_U13 ( .A(mul_port_c[0]), .B(mul_port_c[1]), .Z(
        cor_maj_6_n11) );
  XOR2_X1 cor_maj_6_U12 ( .A(mul_port_c[2]), .B(cor_maj_6_n11), .Z(
        cor_maj_6_n7) );
  NAND2_X1 cor_maj_6_U11 ( .A1(cor_maj_6_n8), .A2(cor_maj_6_n7), .ZN(
        cor_maj_6_n13) );
  NAND2_X1 cor_maj_6_U10 ( .A1(cor_maj_6_n12), .A2(cor_maj_6_n13), .ZN(
        cor_maj_6_n6) );
  NAND2_X1 cor_maj_6_U9 ( .A1(mul_port_c[0]), .A2(mul_port_c[1]), .ZN(
        cor_maj_6_n9) );
  NAND2_X1 cor_maj_6_U8 ( .A1(mul_port_c[2]), .A2(cor_maj_6_n11), .ZN(
        cor_maj_6_n10) );
  NAND2_X1 cor_maj_6_U7 ( .A1(cor_maj_6_n9), .A2(cor_maj_6_n10), .ZN(
        cor_maj_6_n5) );
  NAND2_X1 cor_maj_6_U6 ( .A1(cor_maj_6_n6), .A2(cor_maj_6_n5), .ZN(
        cor_maj_6_n1) );
  XOR2_X1 cor_maj_6_U5 ( .A(cor_maj_6_n7), .B(cor_maj_6_n8), .Z(cor_maj_6_n3)
         );
  OR2_X1 cor_maj_6_U4 ( .A1(cor_maj_6_n5), .A2(cor_maj_6_n6), .ZN(cor_maj_6_n4) );
  NAND2_X1 cor_maj_6_U3 ( .A1(cor_maj_6_n3), .A2(cor_maj_6_n4), .ZN(
        cor_maj_6_n2) );
  NAND2_X1 cor_maj_6_U2 ( .A1(cor_maj_6_n1), .A2(cor_maj_6_n2), .ZN(port_c[1])
         );
  NAND2_X1 cor_maj_7_U15 ( .A1(mul_port_c[3]), .A2(mul_port_c[4]), .ZN(
        cor_maj_7_n12) );
  XOR2_X1 cor_maj_7_U14 ( .A(mul_port_c[3]), .B(mul_port_c[4]), .Z(
        cor_maj_7_n8) );
  XOR2_X1 cor_maj_7_U13 ( .A(mul_port_c[0]), .B(mul_port_c[1]), .Z(
        cor_maj_7_n11) );
  XOR2_X1 cor_maj_7_U12 ( .A(mul_port_c[2]), .B(cor_maj_7_n11), .Z(
        cor_maj_7_n7) );
  NAND2_X1 cor_maj_7_U11 ( .A1(cor_maj_7_n8), .A2(cor_maj_7_n7), .ZN(
        cor_maj_7_n13) );
  NAND2_X1 cor_maj_7_U10 ( .A1(cor_maj_7_n12), .A2(cor_maj_7_n13), .ZN(
        cor_maj_7_n6) );
  NAND2_X1 cor_maj_7_U9 ( .A1(mul_port_c[0]), .A2(mul_port_c[1]), .ZN(
        cor_maj_7_n9) );
  NAND2_X1 cor_maj_7_U8 ( .A1(mul_port_c[2]), .A2(cor_maj_7_n11), .ZN(
        cor_maj_7_n10) );
  NAND2_X1 cor_maj_7_U7 ( .A1(cor_maj_7_n9), .A2(cor_maj_7_n10), .ZN(
        cor_maj_7_n5) );
  NAND2_X1 cor_maj_7_U6 ( .A1(cor_maj_7_n6), .A2(cor_maj_7_n5), .ZN(
        cor_maj_7_n1) );
  XOR2_X1 cor_maj_7_U5 ( .A(cor_maj_7_n7), .B(cor_maj_7_n8), .Z(cor_maj_7_n3)
         );
  OR2_X1 cor_maj_7_U4 ( .A1(cor_maj_7_n5), .A2(cor_maj_7_n6), .ZN(cor_maj_7_n4) );
  NAND2_X1 cor_maj_7_U3 ( .A1(cor_maj_7_n3), .A2(cor_maj_7_n4), .ZN(
        cor_maj_7_n2) );
  NAND2_X1 cor_maj_7_U2 ( .A1(cor_maj_7_n1), .A2(cor_maj_7_n2), .ZN(port_c[2])
         );
  NAND2_X1 cor_maj_8_U15 ( .A1(mul_port_c[3]), .A2(mul_port_c[4]), .ZN(
        cor_maj_8_n12) );
  XOR2_X1 cor_maj_8_U14 ( .A(mul_port_c[3]), .B(mul_port_c[4]), .Z(
        cor_maj_8_n8) );
  XOR2_X1 cor_maj_8_U13 ( .A(mul_port_c[0]), .B(mul_port_c[1]), .Z(
        cor_maj_8_n11) );
  XOR2_X1 cor_maj_8_U12 ( .A(mul_port_c[2]), .B(cor_maj_8_n11), .Z(
        cor_maj_8_n7) );
  NAND2_X1 cor_maj_8_U11 ( .A1(cor_maj_8_n8), .A2(cor_maj_8_n7), .ZN(
        cor_maj_8_n13) );
  NAND2_X1 cor_maj_8_U10 ( .A1(cor_maj_8_n12), .A2(cor_maj_8_n13), .ZN(
        cor_maj_8_n6) );
  NAND2_X1 cor_maj_8_U9 ( .A1(mul_port_c[0]), .A2(mul_port_c[1]), .ZN(
        cor_maj_8_n9) );
  NAND2_X1 cor_maj_8_U8 ( .A1(mul_port_c[2]), .A2(cor_maj_8_n11), .ZN(
        cor_maj_8_n10) );
  NAND2_X1 cor_maj_8_U7 ( .A1(cor_maj_8_n9), .A2(cor_maj_8_n10), .ZN(
        cor_maj_8_n5) );
  NAND2_X1 cor_maj_8_U6 ( .A1(cor_maj_8_n6), .A2(cor_maj_8_n5), .ZN(
        cor_maj_8_n1) );
  XOR2_X1 cor_maj_8_U5 ( .A(cor_maj_8_n7), .B(cor_maj_8_n8), .Z(cor_maj_8_n3)
         );
  OR2_X1 cor_maj_8_U4 ( .A1(cor_maj_8_n5), .A2(cor_maj_8_n6), .ZN(cor_maj_8_n4) );
  NAND2_X1 cor_maj_8_U3 ( .A1(cor_maj_8_n3), .A2(cor_maj_8_n4), .ZN(
        cor_maj_8_n2) );
  NAND2_X1 cor_maj_8_U2 ( .A1(cor_maj_8_n1), .A2(cor_maj_8_n2), .ZN(port_c[3])
         );
  NAND2_X1 cor_maj_9_U15 ( .A1(mul_port_c[3]), .A2(mul_port_c[4]), .ZN(
        cor_maj_9_n12) );
  XOR2_X1 cor_maj_9_U14 ( .A(mul_port_c[3]), .B(mul_port_c[4]), .Z(
        cor_maj_9_n8) );
  XOR2_X1 cor_maj_9_U13 ( .A(mul_port_c[0]), .B(mul_port_c[1]), .Z(
        cor_maj_9_n11) );
  XOR2_X1 cor_maj_9_U12 ( .A(mul_port_c[2]), .B(cor_maj_9_n11), .Z(
        cor_maj_9_n7) );
  NAND2_X1 cor_maj_9_U11 ( .A1(cor_maj_9_n8), .A2(cor_maj_9_n7), .ZN(
        cor_maj_9_n13) );
  NAND2_X1 cor_maj_9_U10 ( .A1(cor_maj_9_n12), .A2(cor_maj_9_n13), .ZN(
        cor_maj_9_n6) );
  NAND2_X1 cor_maj_9_U9 ( .A1(mul_port_c[0]), .A2(mul_port_c[1]), .ZN(
        cor_maj_9_n9) );
  NAND2_X1 cor_maj_9_U8 ( .A1(mul_port_c[2]), .A2(cor_maj_9_n11), .ZN(
        cor_maj_9_n10) );
  NAND2_X1 cor_maj_9_U7 ( .A1(cor_maj_9_n9), .A2(cor_maj_9_n10), .ZN(
        cor_maj_9_n5) );
  NAND2_X1 cor_maj_9_U6 ( .A1(cor_maj_9_n6), .A2(cor_maj_9_n5), .ZN(
        cor_maj_9_n1) );
  XOR2_X1 cor_maj_9_U5 ( .A(cor_maj_9_n7), .B(cor_maj_9_n8), .Z(cor_maj_9_n3)
         );
  OR2_X1 cor_maj_9_U4 ( .A1(cor_maj_9_n5), .A2(cor_maj_9_n6), .ZN(cor_maj_9_n4) );
  NAND2_X1 cor_maj_9_U3 ( .A1(cor_maj_9_n3), .A2(cor_maj_9_n4), .ZN(
        cor_maj_9_n2) );
  NAND2_X1 cor_maj_9_U2 ( .A1(cor_maj_9_n1), .A2(cor_maj_9_n2), .ZN(port_c[4])
         );
endmodule

