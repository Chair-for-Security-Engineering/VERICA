
module FINIandDetection ( port_a, port_b, port_c, port_errorFlag );
  input [4:0] port_a;
  input [4:0] port_b;
  output [4:0] port_c;
  output [0:0] port_errorFlag;
  wire   n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18;

  NOR2_X1 U8 ( .A1(n7), .A2(n8), .ZN(port_errorFlag[0]) );
  NAND2_X1 U9 ( .A1(n9), .A2(n10), .ZN(n8) );
  NAND2_X1 U10 ( .A1(port_c[3]), .A2(n11), .ZN(n10) );
  INV_X1 U11 ( .A(port_c[4]), .ZN(n11) );
  NOR2_X1 U12 ( .A1(n12), .A2(n13), .ZN(n9) );
  NOR2_X1 U13 ( .A1(port_c[0]), .A2(n14), .ZN(n13) );
  NOR2_X1 U14 ( .A1(port_c[2]), .A2(port_c[1]), .ZN(n14) );
  NOR2_X1 U15 ( .A1(n15), .A2(n16), .ZN(n12) );
  AND2_X1 U16 ( .A1(port_c[1]), .A2(port_c[2]), .ZN(n15) );
  NAND2_X1 U17 ( .A1(n17), .A2(n18), .ZN(n7) );
  OR2_X1 U18 ( .A1(n16), .A2(port_c[3]), .ZN(n18) );
  NAND2_X1 U19 ( .A1(port_c[4]), .A2(n16), .ZN(n17) );
  INV_X1 U20 ( .A(port_c[0]), .ZN(n16) );
  AND2_X1 mul_U5 ( .A1(port_b[0]), .A2(port_a[0]), .ZN(port_c[0]) );
  AND2_X1 mul_U4 ( .A1(port_b[1]), .A2(port_a[1]), .ZN(port_c[1]) );
  AND2_X1 mul_U3 ( .A1(port_b[2]), .A2(port_a[2]), .ZN(port_c[2]) );
  AND2_X1 mul_U2 ( .A1(port_b[3]), .A2(port_a[3]), .ZN(port_c[3]) );
  AND2_X1 mul_U1 ( .A1(port_b[4]), .A2(port_a[4]), .ZN(port_c[4]) );
endmodule

