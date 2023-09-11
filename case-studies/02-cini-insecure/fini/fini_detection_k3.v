
module FINIandDetection ( port_a, port_b, port_c, port_errorFlag );
  input [3:0] port_a;
  input [3:0] port_b;
  output [3:0] port_c;
  output [0:0] port_errorFlag;
  wire   n5, n6, n7, n8, n9, n10, n11, n12;

  NOR2_X1 U6 ( .A1(n5), .A2(n6), .ZN(port_errorFlag[0]) );
  NAND2_X1 U7 ( .A1(n7), .A2(n8), .ZN(n6) );
  NAND2_X1 U8 ( .A1(port_c[1]), .A2(n9), .ZN(n8) );
  INV_X1 U9 ( .A(port_c[3]), .ZN(n9) );
  XNOR2_X1 U10 ( .A(port_c[0]), .B(port_c[2]), .ZN(n7) );
  NAND2_X1 U11 ( .A1(n10), .A2(n11), .ZN(n5) );
  OR2_X1 U12 ( .A1(n12), .A2(port_c[1]), .ZN(n11) );
  NAND2_X1 U13 ( .A1(port_c[3]), .A2(n12), .ZN(n10) );
  INV_X1 U14 ( .A(port_c[0]), .ZN(n12) );
  AND2_X1 mul_U4 ( .A1(port_b[0]), .A2(port_a[0]), .ZN(port_c[0]) );
  AND2_X1 mul_U3 ( .A1(port_b[1]), .A2(port_a[1]), .ZN(port_c[1]) );
  AND2_X1 mul_U2 ( .A1(port_b[2]), .A2(port_a[2]), .ZN(port_c[2]) );
  AND2_X1 mul_U1 ( .A1(port_b[3]), .A2(port_a[3]), .ZN(port_c[3]) );
endmodule

