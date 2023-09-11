
module FINIandCorrection ( port_a, port_b, port_c );
  input [2:0] port_a;
  input [2:0] port_b;
  output [2:0] port_c;
  wire   cor_maj_3_n3, cor_maj_3_n2, cor_maj_3_n1, cor_maj_4_n3, cor_maj_4_n2,
         cor_maj_4_n1, cor_maj_5_n3, cor_maj_5_n2, cor_maj_5_n1;
  wire   [2:0] mul_port_c;

  AND2_X1 mul_U3 ( .A1(port_b[0]), .A2(port_a[0]), .ZN(mul_port_c[0]) );
  AND2_X1 mul_U2 ( .A1(port_b[1]), .A2(port_a[1]), .ZN(mul_port_c[1]) );
  AND2_X1 mul_U1 ( .A1(port_b[2]), .A2(port_a[2]), .ZN(mul_port_c[2]) );
  NAND2_X1 cor_maj_3_U4 ( .A1(mul_port_c[1]), .A2(mul_port_c[0]), .ZN(
        cor_maj_3_n1) );
  OR2_X1 cor_maj_3_U3 ( .A1(mul_port_c[1]), .A2(mul_port_c[0]), .ZN(
        cor_maj_3_n3) );
  NAND2_X1 cor_maj_3_U2 ( .A1(mul_port_c[2]), .A2(cor_maj_3_n3), .ZN(
        cor_maj_3_n2) );
  NAND2_X1 cor_maj_3_U1 ( .A1(cor_maj_3_n1), .A2(cor_maj_3_n2), .ZN(port_c[0])
         );
  NAND2_X1 cor_maj_4_U4 ( .A1(mul_port_c[1]), .A2(mul_port_c[0]), .ZN(
        cor_maj_4_n1) );
  OR2_X1 cor_maj_4_U3 ( .A1(mul_port_c[1]), .A2(mul_port_c[0]), .ZN(
        cor_maj_4_n3) );
  NAND2_X1 cor_maj_4_U2 ( .A1(mul_port_c[2]), .A2(cor_maj_4_n3), .ZN(
        cor_maj_4_n2) );
  NAND2_X1 cor_maj_4_U1 ( .A1(cor_maj_4_n1), .A2(cor_maj_4_n2), .ZN(port_c[1])
         );
  NAND2_X1 cor_maj_5_U4 ( .A1(mul_port_c[1]), .A2(mul_port_c[0]), .ZN(
        cor_maj_5_n1) );
  OR2_X1 cor_maj_5_U3 ( .A1(mul_port_c[1]), .A2(mul_port_c[0]), .ZN(
        cor_maj_5_n3) );
  NAND2_X1 cor_maj_5_U2 ( .A1(mul_port_c[2]), .A2(cor_maj_5_n3), .ZN(
        cor_maj_5_n2) );
  NAND2_X1 cor_maj_5_U1 ( .A1(cor_maj_5_n1), .A2(cor_maj_5_n2), .ZN(port_c[2])
         );
endmodule

