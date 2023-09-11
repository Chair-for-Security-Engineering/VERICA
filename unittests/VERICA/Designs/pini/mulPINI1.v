module DOM ( port_a, port_b, port_c, port_r, clk, reset );
  input [1:0] port_a;
  input [1:0] port_b;
  output [1:0] port_c;
  input [0:0] port_r;
  input clk, reset;

  wire w0;
  wire w1;
  wire w2;
  wire w3;
  wire w4;
  wire w5;
  wire w6;
  wire w7;
  wire w8;
  wire w9;
  wire w10;
  wire w12;

  XOR2_X1 U0 ( .A(port_r[0]), .B(port_b[1]), .Z(w0) );
  AND2_X1 U1 ( .A1(port_a[0]), .A2(port_r[0]), .ZN(w1) );
  XOR2_X1 U2 ( .A(w1), .B(port_r[0]), .Z(w2) );
  AND2_X1 U1 ( .A1(port_a[0]), .A2(w0), .ZN(w3) );
  XOR2_X1 U0 ( .A(w2), .B(w3), .Z(w4) );
  XOR2_X1 U0 ( .A(port_b[0]), .B(port_r[0]), .Z(w5) );
  AND2_X1 U1 ( .A1(port_a[1]), .A2(port_r[0]), .ZN(w6) );
  XOR2_X1 U0 ( .A(w6), .B(port_r[0]), .Z(w7) );
  AND2_X1 U1 ( .A1(port_a[1]), .A2(w5), .ZN(w8) );
  XOR2_X1 U0 ( .A(w7), .B(w8), .Z(w9) );
  AND2_X1 U1 ( .A1(port_a[0]), .A2(port_b[0]), .ZN(w10) );
  XOR2_X1 U0 ( .A(w10), .B(w4), .Z(port_c[0]) );
  AND2_X1 U1 ( .A1(port_a[1]), .A2(port_b[1]), .ZN(w12) );
  XOR2_X1 U0 ( .A(w12), .B(w9), .Z(port_c[1]) );

endmodule

