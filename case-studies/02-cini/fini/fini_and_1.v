
module FINIand ( port_a, port_b, port_c );
  input [0:0] port_a;
  input [0:0] port_b;
  output [0:0] port_c;


  AND2_X1 U2 ( .A1(port_b[0]), .A2(port_a[0]), .ZN(port_c[0]) );
endmodule

