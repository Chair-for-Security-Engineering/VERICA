
module FINIandDetection ( port_a, port_b, port_c, port_errorFlag );
  input [5:0] port_a;
  input [5:0] port_b;
  output [5:0] port_c;
  output [0:0] port_errorFlag;
  wire   n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22;

  NOR2_X1 U10 ( .A1(n9), .A2(n10), .ZN(port_errorFlag[0]) );
  NAND2_X1 U11 ( .A1(n11), .A2(n12), .ZN(n10) );
  NOR2_X1 U12 ( .A1(n13), .A2(n14), .ZN(n12) );
  NOR2_X1 U13 ( .A1(port_c[0]), .A2(n15), .ZN(n14) );
  NOR2_X1 U14 ( .A1(port_c[3]), .A2(port_c[2]), .ZN(n15) );
  NOR2_X1 U15 ( .A1(port_c[4]), .A2(n16), .ZN(n13) );
  NOR2_X1 U16 ( .A1(n17), .A2(n18), .ZN(n11) );
  NOR2_X1 U17 ( .A1(port_c[5]), .A2(n19), .ZN(n18) );
  INV_X1 U18 ( .A(port_c[4]), .ZN(n19) );
  AND2_X1 U19 ( .A1(n16), .A2(port_c[5]), .ZN(n17) );
  INV_X1 U20 ( .A(port_c[0]), .ZN(n16) );
  NAND2_X1 U21 ( .A1(n20), .A2(n21), .ZN(n9) );
  NAND2_X1 U22 ( .A1(port_c[0]), .A2(n22), .ZN(n21) );
  NAND2_X1 U23 ( .A1(port_c[3]), .A2(port_c[2]), .ZN(n22) );
  XNOR2_X1 U24 ( .A(port_c[0]), .B(port_c[1]), .ZN(n20) );
  AND2_X1 mul_U6 ( .A1(port_b[0]), .A2(port_a[0]), .ZN(port_c[0]) );
  AND2_X1 mul_U5 ( .A1(port_b[1]), .A2(port_a[1]), .ZN(port_c[1]) );
  AND2_X1 mul_U4 ( .A1(port_b[2]), .A2(port_a[2]), .ZN(port_c[2]) );
  AND2_X1 mul_U3 ( .A1(port_b[3]), .A2(port_a[3]), .ZN(port_c[3]) );
  AND2_X1 mul_U2 ( .A1(port_b[4]), .A2(port_a[4]), .ZN(port_c[4]) );
  AND2_X1 mul_U1 ( .A1(port_b[5]), .A2(port_a[5]), .ZN(port_c[5]) );
endmodule

