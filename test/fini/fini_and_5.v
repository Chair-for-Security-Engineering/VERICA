
module FINIand ( port_a, port_b, port_c );
  input [4:0] port_a;
  input [4:0] port_b;
  output [4:0] port_c;


  AND2_X1 U6 ( .A1(port_b[4]), .A2(port_a[4]), .ZN(port_c[4]) );
  AND2_X1 U7 ( .A1(port_b[3]), .A2(port_a[3]), .ZN(port_c[3]) );
  AND2_X1 U8 ( .A1(port_b[2]), .A2(port_a[2]), .ZN(port_c[2]) );
  AND2_X1 U9 ( .A1(port_b[1]), .A2(port_a[1]), .ZN(port_c[1]) );
  AND2_X1 U10 ( .A1(port_b[0]), .A2(port_a[0]), .ZN(port_c[0]) );
endmodule

