
module and_isw ( port_a_0, port_a_1, port_b_0, port_b_1, port_r_0, port_c_0, 
        port_c_1 );
  input port_a_0, port_a_1, port_b_0, port_b_1, port_r_0;
  output port_c_0, port_c_1;
  wire   c0, c1, c2, c3, c4, c5;

  AND2_X1 U0 ( .A1(port_a_0), .A2(port_b_0), .ZN(c0) );
  XOR2_X1 U1 ( .A(port_r_0), .B(c0), .Z(port_c_0) );
  
  AND2_X1 U4 ( .A1(port_a_1), .A2(port_b_1), .ZN(c1) );
  XOR2_X1 U1 ( .A(port_r_0), .B(c1), .Z(c2) );
  AND2_X1 U2 ( .A1(port_a_0), .A2(port_b_1), .ZN(c3) );
  XOR2_X1 U1 ( .A(c2), .B(c3), .Z(c4) );
  AND2_X1 U3 ( .A1(port_a_1), .A2(port_b_0), .ZN(c5) );
  XOR2_X1 U1 ( .A(c4), .B(c5), .Z(port_c_1) );
endmodule