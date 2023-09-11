
module FINIandDetection ( port_a, port_b, port_c, port_errorFlag );
  input [1:0] port_a;
  input [1:0] port_b;
  output [1:0] port_c;
  output [0:0] port_errorFlag;


  XNOR2_X1 U2 ( .A(port_c[1]), .B(port_c[0]), .ZN(port_errorFlag[0]) );
  AND2_X1 mul_U2 ( .A1(port_b[0]), .A2(port_a[0]), .ZN(port_c[0]) );
  AND2_X1 mul_U1 ( .A1(port_b[1]), .A2(port_a[1]), .ZN(port_c[1]) );
endmodule

