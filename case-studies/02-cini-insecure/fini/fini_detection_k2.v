
module FINIandDetection ( port_a, port_b, port_c, port_errorFlag );
  input [2:0] port_a;
  input [2:0] port_b;
  output [2:0] port_c;
  output [0:0] port_errorFlag;
  wire   n3, n4;

  NOR2_X1 U4 ( .A1(n3), .A2(n4), .ZN(port_errorFlag[0]) );
  XOR2_X1 U5 ( .A(port_c[2]), .B(port_c[0]), .Z(n4) );
  XOR2_X1 U6 ( .A(port_c[1]), .B(port_c[0]), .Z(n3) );
  AND2_X1 mul_U3 ( .A1(port_b[0]), .A2(port_a[0]), .ZN(port_c[0]) );
  AND2_X1 mul_U2 ( .A1(port_b[1]), .A2(port_a[1]), .ZN(port_c[1]) );
  AND2_X1 mul_U1 ( .A1(port_b[2]), .A2(port_a[2]), .ZN(port_c[2]) );
endmodule

