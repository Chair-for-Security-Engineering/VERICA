
module CINI ( io_a_0, io_a_1, io_a_2, io_a_3, io_b_0, io_b_1, io_b_2, io_b_3, 
        io_c_0, io_c_1, io_c_2, io_c_3, io_rand, clk, reset );
  input [2:0] io_a_0;
  input [2:0] io_a_1;
  input [2:0] io_a_2;
  input [2:0] io_a_3;
  input [2:0] io_b_0;
  input [2:0] io_b_1;
  input [2:0] io_b_2;
  input [2:0] io_b_3;
  output [2:0] io_c_0;
  output [2:0] io_c_1;
  output [2:0] io_c_2;
  output [2:0] io_c_3;
  input [5:0] io_rand;
  input clk, reset;
  wire   simpleNot_36_port_z, simpleNot_37_port_z, simpleNot_38_port_z,
         simpleNot_39_port_z, simpleNot_40_port_z, simpleNot_41_port_z,
         simpleNot_42_port_z, simpleNot_43_port_z, simpleNot_44_port_z,
         simpleNot_45_port_z, simpleNot_46_port_z, simpleNot_47_port_z,
         simpleNot_48_port_z, simpleNot_49_port_z, simpleNot_50_port_z,
         simpleNot_51_port_z, simpleNot_52_port_z, simpleNot_53_port_z,
         simpleNot_54_port_z, simpleNot_55_port_z, simpleNot_56_port_z,
         simpleNot_57_port_z, simpleNot_58_port_z, simpleNot_59_port_z,
         simpleNot_60_port_z, simpleNot_61_port_z, simpleNot_62_port_z,
         simpleNot_63_port_z, simpleNot_64_port_z, simpleNot_65_port_z,
         simpleNot_66_port_z, simpleNot_67_port_z, simpleNot_68_port_z,
         simpleNot_69_port_z, simpleNot_70_port_z, simpleNot_71_port_z,
         simpleXor_36_port_z, simpleXor_37_port_z, simpleXor_38_port_z,
         simpleXor_39_port_z, simpleXor_40_port_z, simpleXor_41_port_z,
         simpleXor_42_port_z, simpleXor_43_port_z, simpleXor_44_port_z,
         simpleXor_45_port_z, simpleXor_46_port_z, simpleXor_47_port_z,
         simpleXor_48_port_z, simpleXor_49_port_z, simpleXor_50_port_z,
         simpleXor_51_port_z, simpleXor_52_port_z, simpleXor_53_port_z,
         simpleXor_54_port_z, simpleXor_55_port_z, simpleXor_56_port_z,
         simpleXor_57_port_z, simpleXor_58_port_z, simpleXor_59_port_z,
         simpleXor_60_port_z, simpleXor_61_port_z, simpleXor_62_port_z,
         simpleXor_63_port_z, simpleXor_64_port_z, simpleXor_65_port_z,
         simpleXor_66_port_z, simpleXor_67_port_z, simpleXor_68_port_z,
         simpleXor_69_port_z, simpleXor_70_port_z, simpleXor_71_port_z,
         n_zz_io_c_0_0_, n_zz_io_c_1_0_, n_zz_io_c_2_0_, n_zz_io_c_3_0_,
         n_zz_io_c_0_5_0_, n_zz_io_c_1_5_0_, n_zz_io_c_2_5_0_,
         n_zz_io_c_3_5_0_, n_zz_io_c_0_10_0_, n_zz_io_c_1_10_0_,
         n_zz_io_c_2_10_0_, n_zz_io_c_3_10_0_, N0, N1, N2, N3, N4, N5, N6, N7,
         N8, N9, N10, N11, N12, N13, N14, N15, N16, N17, N18, N19, N20, N21,
         N22, N23, N24, N25, N26, N27, N28, N29, N30, N31, N32, N33, N34, N35,
         N36, N37, N38, N39, N40, N41, N42, N43, N44, N45, N46, N47, N48, N49,
         N50, N51, N52, N53, N54, N55, N56, N57, N58, N59, N60, N61, N62, N63,
         N64, N65, N66, N67, N68, N69, N70, N71, N72, N73, N74, N75, N76, N77,
         N78, N79, N80, N81, N82, N83, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         cor_maj_71_port_o, cor_maj_70_port_o, cor_maj_69_port_o,
         cor_maj_68_port_o, cor_maj_67_port_o, cor_maj_66_port_o,
         cor_maj_65_port_o, cor_maj_64_port_o, cor_maj_63_port_o,
         cor_maj_62_port_o, cor_maj_61_port_o, cor_maj_60_port_o,
         cor_maj_59_port_o, cor_maj_58_port_o, cor_maj_57_port_o,
         cor_maj_56_port_o, cor_maj_55_port_o, cor_maj_54_port_o,
         cor_maj_53_port_o, cor_maj_52_port_o, cor_maj_51_port_o,
         cor_maj_50_port_o, cor_maj_49_port_o, cor_maj_48_port_o,
         cor_maj_47_port_o, cor_maj_46_port_o, cor_maj_45_port_o,
         cor_maj_44_port_o, cor_maj_43_port_o, cor_maj_42_port_o,
         cor_maj_41_port_o, cor_maj_40_port_o, cor_maj_39_port_o,
         cor_maj_38_port_o, cor_maj_37_port_o, cor_maj_36_port_o,
         cor_maj_36_n3, cor_maj_36_n2, cor_maj_36_n1, cor_maj_37_n6,
         cor_maj_37_n5, cor_maj_37_n4, cor_maj_38_n6, cor_maj_38_n5,
         cor_maj_38_n4, cor_maj_39_n6, cor_maj_39_n5, cor_maj_39_n4,
         cor_maj_40_n6, cor_maj_40_n5, cor_maj_40_n4, cor_maj_41_n6,
         cor_maj_41_n5, cor_maj_41_n4, cor_maj_42_n6, cor_maj_42_n5,
         cor_maj_42_n4, cor_maj_43_n6, cor_maj_43_n5, cor_maj_43_n4,
         cor_maj_44_n6, cor_maj_44_n5, cor_maj_44_n4, cor_maj_45_n6,
         cor_maj_45_n5, cor_maj_45_n4, cor_maj_46_n6, cor_maj_46_n5,
         cor_maj_46_n4, cor_maj_47_n6, cor_maj_47_n5, cor_maj_47_n4,
         cor_maj_48_n6, cor_maj_48_n5, cor_maj_48_n4, cor_maj_49_n6,
         cor_maj_49_n5, cor_maj_49_n4, cor_maj_50_n6, cor_maj_50_n5,
         cor_maj_50_n4, cor_maj_51_n6, cor_maj_51_n5, cor_maj_51_n4,
         cor_maj_52_n6, cor_maj_52_n5, cor_maj_52_n4, cor_maj_53_n6,
         cor_maj_53_n5, cor_maj_53_n4, cor_maj_54_n6, cor_maj_54_n5,
         cor_maj_54_n4, cor_maj_55_n6, cor_maj_55_n5, cor_maj_55_n4,
         cor_maj_56_n6, cor_maj_56_n5, cor_maj_56_n4, cor_maj_57_n6,
         cor_maj_57_n5, cor_maj_57_n4, cor_maj_58_n6, cor_maj_58_n5,
         cor_maj_58_n4, cor_maj_59_n6, cor_maj_59_n5, cor_maj_59_n4,
         cor_maj_60_n6, cor_maj_60_n5, cor_maj_60_n4, cor_maj_61_n6,
         cor_maj_61_n5, cor_maj_61_n4, cor_maj_62_n6, cor_maj_62_n5,
         cor_maj_62_n4, cor_maj_63_n6, cor_maj_63_n5, cor_maj_63_n4,
         cor_maj_64_n6, cor_maj_64_n5, cor_maj_64_n4, cor_maj_65_n6,
         cor_maj_65_n5, cor_maj_65_n4, cor_maj_66_n6, cor_maj_66_n5,
         cor_maj_66_n4, cor_maj_67_n6, cor_maj_67_n5, cor_maj_67_n4,
         cor_maj_68_n6, cor_maj_68_n5, cor_maj_68_n4, cor_maj_69_n6,
         cor_maj_69_n5, cor_maj_69_n4, cor_maj_70_n6, cor_maj_70_n5,
         cor_maj_70_n4, cor_maj_71_n6, cor_maj_71_n5, cor_maj_71_n4;
  wire   [2:0] v_1_0_1;
  wire   [2:0] v_1_0_2;
  wire   [2:0] v_1_0_3;
  wire   [2:0] v_1_1_0;
  wire   [2:0] v_1_1_2;
  wire   [2:0] v_1_1_3;
  wire   [2:0] v_1_2_0;
  wire   [2:0] v_1_2_1;
  wire   [2:0] v_1_2_3;
  wire   [2:0] v_1_3_0;
  wire   [2:0] v_1_3_1;
  wire   [2:0] v_1_3_2;
  wire   [2:0] cor_port_v_0_1;
  wire   [2:0] cor_port_v_0_2;
  wire   [2:0] cor_port_v_0_3;
  wire   [2:0] cor_port_v_1_0;
  wire   [2:0] cor_port_v_1_2;
  wire   [2:0] cor_port_v_1_3;
  wire   [2:0] cor_port_v_2_0;
  wire   [2:0] cor_port_v_2_1;
  wire   [2:0] cor_port_v_2_3;
  wire   [2:0] cor_port_v_3_0;
  wire   [2:0] cor_port_v_3_1;
  wire   [2:0] cor_port_v_3_2;
  wire   [3:1] n_zz_io_c_0_4;
  wire   [2:0] u_0_1;
  wire   [2:0] u_0_2;
  wire   [2:0] u_0_3;
  wire   [3:1] n_zz_io_c_1_4;
  wire   [2:0] u_1_0;
  wire   [2:0] u_1_2;
  wire   [2:0] u_1_3;
  wire   [3:1] n_zz_io_c_2_4;
  wire   [2:0] u_2_0;
  wire   [2:0] u_2_1;
  wire   [2:0] u_2_3;
  wire   [3:1] n_zz_io_c_3_4;
  wire   [2:0] u_3_0;
  wire   [2:0] u_3_1;
  wire   [2:0] u_3_2;
  wire   [3:1] n_zz_io_c_0_9;
  wire   [3:1] n_zz_io_c_1_9;
  wire   [3:1] n_zz_io_c_2_9;
  wire   [3:1] n_zz_io_c_3_9;
  wire   [3:1] n_zz_io_c_0_14;
  wire   [3:1] n_zz_io_c_1_14;
  wire   [3:1] n_zz_io_c_2_14;
  wire   [3:1] n_zz_io_c_3_14;
  wire   [2:0] rand_reg_0;
  wire   [2:0] rand_reg_1;
  wire   [2:0] rand_reg_2;
  wire   [2:0] rand_reg_6;
  wire   [2:0] rand_reg_3;
  wire   [2:0] rand_reg_4;
  wire   [2:0] rand_reg_7;
  wire   [2:0] rand_reg_9;
  wire   [2:0] rand_reg_5;
  wire   [2:0] rand_reg_8;
  wire   [2:0] rand_reg_10;
  wire   [2:0] rand_reg_11;
  wire   [2:0] b_reg_0;
  wire   [2:0] b_reg_1;
  wire   [2:0] b_reg_2;
  wire   [2:0] b_reg_3;

  DFF_X1 b_reg_1_reg_2_ ( .D(io_b_1[2]), .CK(clk), .Q(b_reg_1[2]), .QN() );
  DFF_X1 b_reg_1_reg_1_ ( .D(io_b_1[1]), .CK(clk), .Q(b_reg_1[1]), .QN() );
  DFF_X1 b_reg_1_reg_0_ ( .D(io_b_1[0]), .CK(clk), .Q(b_reg_1[0]), .QN() );
  DFF_X1 b_reg_2_reg_2_ ( .D(io_b_2[2]), .CK(clk), .Q(b_reg_2[2]), .QN() );
  DFF_X1 b_reg_2_reg_1_ ( .D(io_b_2[1]), .CK(clk), .Q(b_reg_2[1]), .QN() );
  DFF_X1 b_reg_2_reg_0_ ( .D(io_b_2[0]), .CK(clk), .Q(b_reg_2[0]), .QN() );
  DFF_X1 b_reg_3_reg_2_ ( .D(io_b_3[2]), .CK(clk), .Q(b_reg_3[2]), .QN() );
  DFF_X1 b_reg_3_reg_1_ ( .D(io_b_3[1]), .CK(clk), .Q(b_reg_3[1]), .QN() );
  DFF_X1 b_reg_3_reg_0_ ( .D(io_b_3[0]), .CK(clk), .Q(b_reg_3[0]), .QN() );
  DFF_X1 u_zz_io_c_3_14_reg_3_ ( .D(N83), .CK(clk), .Q(n_zz_io_c_3_14[3]), 
        .QN() );
  DFF_X1 u_zz_io_c_3_14_reg_2_ ( .D(N82), .CK(clk), .Q(n_zz_io_c_3_14[2]), 
        .QN() );
  DFF_X1 u_zz_io_c_3_14_reg_1_ ( .D(N81), .CK(clk), .Q(n_zz_io_c_3_14[1]), 
        .QN() );
  DFF_X1 u_zz_io_c_3_14_reg_0_ ( .D(N80), .CK(clk), .Q(n_zz_io_c_3_10_0_), 
        .QN() );
  DFF_X1 u_zz_io_c_2_14_reg_3_ ( .D(N79), .CK(clk), .Q(n_zz_io_c_2_14[3]), 
        .QN() );
  DFF_X1 u_zz_io_c_2_14_reg_2_ ( .D(N78), .CK(clk), .Q(n_zz_io_c_2_14[2]), 
        .QN() );
  DFF_X1 u_zz_io_c_2_14_reg_1_ ( .D(N77), .CK(clk), .Q(n_zz_io_c_2_14[1]), 
        .QN() );
  DFF_X1 u_zz_io_c_2_14_reg_0_ ( .D(N76), .CK(clk), .Q(n_zz_io_c_2_10_0_), 
        .QN() );
  DFF_X1 u_zz_io_c_1_14_reg_3_ ( .D(N75), .CK(clk), .Q(n_zz_io_c_1_14[3]), 
        .QN() );
  DFF_X1 u_zz_io_c_1_14_reg_2_ ( .D(N74), .CK(clk), .Q(n_zz_io_c_1_14[2]), 
        .QN() );
  DFF_X1 u_zz_io_c_1_14_reg_1_ ( .D(N73), .CK(clk), .Q(n_zz_io_c_1_14[1]), 
        .QN() );
  DFF_X1 u_zz_io_c_1_14_reg_0_ ( .D(N72), .CK(clk), .Q(n_zz_io_c_1_10_0_), 
        .QN() );
  DFF_X1 rand_reg_5_reg_2_ ( .D(io_rand[5]), .CK(clk), .Q(rand_reg_5[2]), 
        .QN() );
  DFF_X1 rand_reg_5_reg_1_ ( .D(io_rand[5]), .CK(clk), .Q(rand_reg_5[1]), 
        .QN() );
  DFF_X1 rand_reg_5_reg_0_ ( .D(io_rand[5]), .CK(clk), .Q(rand_reg_5[0]), 
        .QN() );
  DFF_X1 b_reg_0_reg_2_ ( .D(io_b_0[2]), .CK(clk), .Q(b_reg_0[2]), .QN() );
  DFF_X1 b_reg_0_reg_1_ ( .D(io_b_0[1]), .CK(clk), .Q(b_reg_0[1]), .QN() );
  DFF_X1 b_reg_0_reg_0_ ( .D(io_b_0[0]), .CK(clk), .Q(b_reg_0[0]), .QN() );
  DFF_X1 u_zz_io_c_0_14_reg_3_ ( .D(N71), .CK(clk), .Q(n_zz_io_c_0_14[3]), 
        .QN() );
  DFF_X1 u_zz_io_c_0_14_reg_2_ ( .D(N70), .CK(clk), .Q(n_zz_io_c_0_14[2]), 
        .QN() );
  DFF_X1 u_zz_io_c_0_14_reg_1_ ( .D(N69), .CK(clk), .Q(n_zz_io_c_0_14[1]), 
        .QN() );
  DFF_X1 u_zz_io_c_0_14_reg_0_ ( .D(N68), .CK(clk), .Q(n_zz_io_c_0_10_0_), 
        .QN() );
  DFF_X1 u_zz_io_c_3_9_reg_3_ ( .D(N67), .CK(clk), .Q(n_zz_io_c_3_9[3]), .QN()
         );
  DFF_X1 u_zz_io_c_3_9_reg_2_ ( .D(N66), .CK(clk), .Q(n_zz_io_c_3_9[2]), .QN()
         );
  DFF_X1 u_zz_io_c_3_9_reg_1_ ( .D(N65), .CK(clk), .Q(n_zz_io_c_3_9[1]), .QN()
         );
  DFF_X1 u_zz_io_c_3_9_reg_0_ ( .D(N64), .CK(clk), .Q(n_zz_io_c_3_5_0_), .QN()
         );
  DFF_X1 u_zz_io_c_2_9_reg_3_ ( .D(N63), .CK(clk), .Q(n_zz_io_c_2_9[3]), .QN()
         );
  DFF_X1 u_zz_io_c_2_9_reg_2_ ( .D(N62), .CK(clk), .Q(n_zz_io_c_2_9[2]), .QN()
         );
  DFF_X1 u_zz_io_c_2_9_reg_1_ ( .D(N61), .CK(clk), .Q(n_zz_io_c_2_9[1]), .QN()
         );
  DFF_X1 u_zz_io_c_2_9_reg_0_ ( .D(N60), .CK(clk), .Q(n_zz_io_c_2_5_0_), .QN()
         );
  DFF_X1 u_zz_io_c_1_9_reg_3_ ( .D(N59), .CK(clk), .Q(n_zz_io_c_1_9[3]), .QN()
         );
  DFF_X1 u_zz_io_c_1_9_reg_2_ ( .D(N58), .CK(clk), .Q(n_zz_io_c_1_9[2]), .QN()
         );
  DFF_X1 u_zz_io_c_1_9_reg_1_ ( .D(N57), .CK(clk), .Q(n_zz_io_c_1_9[1]), .QN()
         );
  DFF_X1 u_zz_io_c_1_9_reg_0_ ( .D(N56), .CK(clk), .Q(n_zz_io_c_1_5_0_), .QN()
         );
  DFF_X1 u_zz_io_c_0_9_reg_3_ ( .D(N55), .CK(clk), .Q(n_zz_io_c_0_9[3]), .QN()
         );
  DFF_X1 u_zz_io_c_0_9_reg_2_ ( .D(N54), .CK(clk), .Q(n_zz_io_c_0_9[2]), .QN()
         );
  DFF_X1 u_zz_io_c_0_9_reg_1_ ( .D(N53), .CK(clk), .Q(n_zz_io_c_0_9[1]), .QN()
         );
  DFF_X1 u_zz_io_c_0_9_reg_0_ ( .D(N52), .CK(clk), .Q(n_zz_io_c_0_5_0_), .QN()
         );
  DFF_X1 u_zz_io_c_3_4_reg_3_ ( .D(N51), .CK(clk), .Q(n_zz_io_c_3_4[3]), .QN()
         );
  DFF_X1 u_zz_io_c_3_4_reg_2_ ( .D(N50), .CK(clk), .Q(n_zz_io_c_3_4[2]), .QN()
         );
  DFF_X1 u_zz_io_c_3_4_reg_1_ ( .D(N49), .CK(clk), .Q(n_zz_io_c_3_4[1]), .QN()
         );
  DFF_X1 u_zz_io_c_3_4_reg_0_ ( .D(N48), .CK(clk), .Q(n_zz_io_c_3_0_), .QN()
         );
  DFF_X1 u_zz_io_c_2_4_reg_3_ ( .D(N47), .CK(clk), .Q(n_zz_io_c_2_4[3]), .QN()
         );
  DFF_X1 u_zz_io_c_2_4_reg_2_ ( .D(N46), .CK(clk), .Q(n_zz_io_c_2_4[2]), .QN()
         );
  DFF_X1 u_zz_io_c_2_4_reg_1_ ( .D(N45), .CK(clk), .Q(n_zz_io_c_2_4[1]), .QN()
         );
  DFF_X1 u_zz_io_c_2_4_reg_0_ ( .D(N44), .CK(clk), .Q(n_zz_io_c_2_0_), .QN()
         );
  DFF_X1 u_zz_io_c_1_4_reg_3_ ( .D(N43), .CK(clk), .Q(n_zz_io_c_1_4[3]), .QN()
         );
  DFF_X1 u_zz_io_c_1_4_reg_2_ ( .D(N42), .CK(clk), .Q(n_zz_io_c_1_4[2]), .QN()
         );
  DFF_X1 u_zz_io_c_1_4_reg_1_ ( .D(N41), .CK(clk), .Q(n_zz_io_c_1_4[1]), .QN()
         );
  DFF_X1 u_zz_io_c_1_4_reg_0_ ( .D(N40), .CK(clk), .Q(n_zz_io_c_1_0_), .QN()
         );
  DFF_X1 u_zz_io_c_0_4_reg_3_ ( .D(N39), .CK(clk), .Q(n_zz_io_c_0_4[3]), .QN()
         );
  DFF_X1 u_zz_io_c_0_4_reg_2_ ( .D(N38), .CK(clk), .Q(n_zz_io_c_0_4[2]), .QN()
         );
  DFF_X1 u_zz_io_c_0_4_reg_1_ ( .D(N37), .CK(clk), .Q(n_zz_io_c_0_4[1]), .QN()
         );
  DFF_X1 u_zz_io_c_0_4_reg_0_ ( .D(N36), .CK(clk), .Q(n_zz_io_c_0_0_), .QN()
         );
  DFF_X1 rand_reg_9_reg_2_ ( .D(io_rand[3]), .CK(clk), .Q(rand_reg_9[2]), 
        .QN() );
  DFF_X1 rand_reg_9_reg_1_ ( .D(io_rand[3]), .CK(clk), .Q(rand_reg_9[1]), 
        .QN() );
  DFF_X1 rand_reg_9_reg_0_ ( .D(io_rand[3]), .CK(clk), .Q(rand_reg_9[0]), 
        .QN() );
  DFF_X1 rand_reg_1_reg_2_ ( .D(io_rand[1]), .CK(clk), .Q(rand_reg_1[2]), 
        .QN() );
  DFF_X1 u_0_2_reg_2_ ( .D(N25), .CK(clk), .Q(u_0_2[2]), .QN() );
  DFF_X1 rand_reg_1_reg_1_ ( .D(io_rand[1]), .CK(clk), .Q(rand_reg_1[1]), 
        .QN() );
  DFF_X1 u_0_2_reg_1_ ( .D(N13), .CK(clk), .Q(u_0_2[1]), .QN() );
  DFF_X1 rand_reg_1_reg_0_ ( .D(io_rand[1]), .CK(clk), .Q(rand_reg_1[0]), 
        .QN() );
  DFF_X1 u_0_2_reg_0_ ( .D(N1), .CK(clk), .Q(u_0_2[0]), .QN() );
  DFF_X1 u_2_3_reg_2_ ( .D(N32), .CK(clk), .Q(u_2_3[2]), .QN() );
  DFF_X1 u_2_3_reg_1_ ( .D(N20), .CK(clk), .Q(u_2_3[1]), .QN() );
  DFF_X1 u_2_3_reg_0_ ( .D(N8), .CK(clk), .Q(u_2_3[0]), .QN() );
  DFF_X1 rand_reg_0_reg_2_ ( .D(io_rand[0]), .CK(clk), .Q(rand_reg_0[2]), 
        .QN() );
  DFF_X1 rand_reg_0_reg_1_ ( .D(io_rand[0]), .CK(clk), .Q(rand_reg_0[1]), 
        .QN() );
  DFF_X1 rand_reg_0_reg_0_ ( .D(io_rand[0]), .CK(clk), .Q(rand_reg_0[0]), 
        .QN() );
  DFF_X1 rand_reg_11_reg_2_ ( .D(io_rand[5]), .CK(clk), .Q(rand_reg_11[2]), 
        .QN() );
  DFF_X1 u_3_2_reg_2_ ( .D(N35), .CK(clk), .Q(u_3_2[2]), .QN() );
  DFF_X1 rand_reg_11_reg_1_ ( .D(io_rand[5]), .CK(clk), .Q(rand_reg_11[1]), 
        .QN() );
  DFF_X1 u_3_2_reg_1_ ( .D(N23), .CK(clk), .Q(u_3_2[1]), .QN() );
  DFF_X1 rand_reg_11_reg_0_ ( .D(io_rand[5]), .CK(clk), .Q(rand_reg_11[0]), 
        .QN() );
  DFF_X1 u_3_2_reg_0_ ( .D(N11), .CK(clk), .Q(u_3_2[0]), .QN() );
  DFF_X1 rand_reg_6_reg_2_ ( .D(io_rand[0]), .CK(clk), .Q(rand_reg_6[2]), 
        .QN() );
  DFF_X1 u_1_0_reg_2_ ( .D(N27), .CK(clk), .Q(u_1_0[2]), .QN() );
  DFF_X1 rand_reg_6_reg_1_ ( .D(io_rand[0]), .CK(clk), .Q(rand_reg_6[1]), 
        .QN() );
  DFF_X1 u_1_0_reg_1_ ( .D(N15), .CK(clk), .Q(u_1_0[1]), .QN() );
  DFF_X1 rand_reg_6_reg_0_ ( .D(io_rand[0]), .CK(clk), .Q(rand_reg_6[0]), 
        .QN() );
  DFF_X1 u_1_0_reg_0_ ( .D(N3), .CK(clk), .Q(u_1_0[0]), .QN() );
  DFF_X1 rand_reg_7_reg_2_ ( .D(io_rand[1]), .CK(clk), .Q(rand_reg_7[2]), 
        .QN() );
  DFF_X1 u_2_0_reg_2_ ( .D(N30), .CK(clk), .Q(u_2_0[2]), .QN() );
  DFF_X1 rand_reg_7_reg_1_ ( .D(io_rand[1]), .CK(clk), .Q(rand_reg_7[1]), 
        .QN() );
  DFF_X1 u_2_0_reg_1_ ( .D(N18), .CK(clk), .Q(u_2_0[1]), .QN() );
  DFF_X1 rand_reg_7_reg_0_ ( .D(io_rand[1]), .CK(clk), .Q(rand_reg_7[0]), 
        .QN() );
  DFF_X1 u_2_0_reg_0_ ( .D(N6), .CK(clk), .Q(u_2_0[0]), .QN() );
  DFF_X1 u_0_1_reg_2_ ( .D(N24), .CK(clk), .Q(u_0_1[2]), .QN() );
  DFF_X1 u_0_1_reg_1_ ( .D(N12), .CK(clk), .Q(u_0_1[1]), .QN() );
  DFF_X1 u_0_1_reg_0_ ( .D(N0), .CK(clk), .Q(u_0_1[0]), .QN() );
  DFF_X1 rand_reg_2_reg_2_ ( .D(io_rand[2]), .CK(clk), .Q(rand_reg_2[2]), 
        .QN() );
  DFF_X1 u_0_3_reg_2_ ( .D(N26), .CK(clk), .Q(u_0_3[2]), .QN() );
  DFF_X1 rand_reg_2_reg_1_ ( .D(io_rand[2]), .CK(clk), .Q(rand_reg_2[1]), 
        .QN() );
  DFF_X1 u_0_3_reg_1_ ( .D(N14), .CK(clk), .Q(u_0_3[1]), .QN() );
  DFF_X1 rand_reg_2_reg_0_ ( .D(io_rand[2]), .CK(clk), .Q(rand_reg_2[0]), 
        .QN() );
  DFF_X1 u_0_3_reg_0_ ( .D(N2), .CK(clk), .Q(u_0_3[0]), .QN() );
  DFF_X1 rand_reg_8_reg_2_ ( .D(io_rand[2]), .CK(clk), .Q(rand_reg_8[2]), 
        .QN() );
  DFF_X1 u_3_0_reg_2_ ( .D(N33), .CK(clk), .Q(u_3_0[2]), .QN() );
  DFF_X1 rand_reg_8_reg_1_ ( .D(io_rand[2]), .CK(clk), .Q(rand_reg_8[1]), 
        .QN() );
  DFF_X1 u_3_0_reg_1_ ( .D(N21), .CK(clk), .Q(u_3_0[1]), .QN() );
  DFF_X1 rand_reg_8_reg_0_ ( .D(io_rand[2]), .CK(clk), .Q(rand_reg_8[0]), 
        .QN() );
  DFF_X1 u_3_0_reg_0_ ( .D(N9), .CK(clk), .Q(u_3_0[0]), .QN() );
  DFF_X1 rand_reg_3_reg_2_ ( .D(io_rand[3]), .CK(clk), .Q(rand_reg_3[2]), 
        .QN() );
  DFF_X1 u_1_2_reg_2_ ( .D(N28), .CK(clk), .Q(u_1_2[2]), .QN() );
  DFF_X1 rand_reg_3_reg_1_ ( .D(io_rand[3]), .CK(clk), .Q(rand_reg_3[1]), 
        .QN() );
  DFF_X1 u_1_2_reg_1_ ( .D(N16), .CK(clk), .Q(u_1_2[1]), .QN() );
  DFF_X1 rand_reg_3_reg_0_ ( .D(io_rand[3]), .CK(clk), .Q(rand_reg_3[0]), 
        .QN() );
  DFF_X1 u_1_2_reg_0_ ( .D(N4), .CK(clk), .Q(u_1_2[0]), .QN() );
  DFF_X1 rand_reg_4_reg_2_ ( .D(io_rand[4]), .CK(clk), .Q(rand_reg_4[2]), 
        .QN() );
  DFF_X1 u_1_3_reg_2_ ( .D(N29), .CK(clk), .Q(u_1_3[2]), .QN() );
  DFF_X1 rand_reg_4_reg_1_ ( .D(io_rand[4]), .CK(clk), .Q(rand_reg_4[1]), 
        .QN() );
  DFF_X1 u_1_3_reg_1_ ( .D(N17), .CK(clk), .Q(u_1_3[1]), .QN() );
  DFF_X1 rand_reg_4_reg_0_ ( .D(io_rand[4]), .CK(clk), .Q(rand_reg_4[0]), 
        .QN() );
  DFF_X1 u_1_3_reg_0_ ( .D(N5), .CK(clk), .Q(u_1_3[0]), .QN() );
  DFF_X1 u_2_1_reg_2_ ( .D(N31), .CK(clk), .Q(u_2_1[2]), .QN() );
  DFF_X1 u_2_1_reg_1_ ( .D(N19), .CK(clk), .Q(u_2_1[1]), .QN() );
  DFF_X1 u_2_1_reg_0_ ( .D(N7), .CK(clk), .Q(u_2_1[0]), .QN() );
  DFF_X1 rand_reg_10_reg_2_ ( .D(io_rand[4]), .CK(clk), .Q(rand_reg_10[2]), 
        .QN() );
  DFF_X1 u_3_1_reg_2_ ( .D(N34), .CK(clk), .Q(u_3_1[2]), .QN() );
  DFF_X1 rand_reg_10_reg_1_ ( .D(io_rand[4]), .CK(clk), .Q(rand_reg_10[1]), 
        .QN() );
  DFF_X1 u_3_1_reg_1_ ( .D(N22), .CK(clk), .Q(u_3_1[1]), .QN() );
  DFF_X1 rand_reg_10_reg_0_ ( .D(io_rand[4]), .CK(clk), .Q(rand_reg_10[0]), 
        .QN() );
  DFF_X1 u_3_1_reg_0_ ( .D(N10), .CK(clk), .Q(u_3_1[0]), .QN() );
  XOR2_X1 U159 ( .A(io_rand[5]), .B(io_b_2[0]), .Z(v_1_3_2[0]) );
  XOR2_X1 U160 ( .A(io_rand[5]), .B(io_b_2[1]), .Z(v_1_3_2[1]) );
  XOR2_X1 U161 ( .A(io_rand[4]), .B(io_b_1[0]), .Z(v_1_3_1[0]) );
  XOR2_X1 U162 ( .A(io_rand[4]), .B(io_b_1[1]), .Z(v_1_3_1[1]) );
  XOR2_X1 U163 ( .A(io_rand[2]), .B(io_b_0[0]), .Z(v_1_3_0[0]) );
  XOR2_X1 U164 ( .A(io_rand[2]), .B(io_b_0[1]), .Z(v_1_3_0[1]) );
  XOR2_X1 U165 ( .A(io_rand[5]), .B(io_b_3[0]), .Z(v_1_2_3[0]) );
  XOR2_X1 U166 ( .A(io_rand[5]), .B(io_b_3[1]), .Z(v_1_2_3[1]) );
  XOR2_X1 U167 ( .A(io_rand[3]), .B(io_b_1[0]), .Z(v_1_2_1[0]) );
  XOR2_X1 U168 ( .A(io_rand[3]), .B(io_b_1[1]), .Z(v_1_2_1[1]) );
  XOR2_X1 U169 ( .A(io_rand[1]), .B(io_b_0[0]), .Z(v_1_2_0[0]) );
  XOR2_X1 U170 ( .A(io_rand[1]), .B(io_b_0[1]), .Z(v_1_2_0[1]) );
  XOR2_X1 U171 ( .A(io_rand[4]), .B(io_b_3[0]), .Z(v_1_1_3[0]) );
  XOR2_X1 U172 ( .A(io_rand[4]), .B(io_b_3[1]), .Z(v_1_1_3[1]) );
  XOR2_X1 U173 ( .A(io_rand[3]), .B(io_b_2[0]), .Z(v_1_1_2[0]) );
  XOR2_X1 U174 ( .A(io_rand[3]), .B(io_b_2[1]), .Z(v_1_1_2[1]) );
  XOR2_X1 U175 ( .A(io_rand[0]), .B(io_b_0[0]), .Z(v_1_1_0[0]) );
  XOR2_X1 U176 ( .A(io_rand[0]), .B(io_b_0[1]), .Z(v_1_1_0[1]) );
  XOR2_X1 U177 ( .A(io_rand[2]), .B(io_b_3[0]), .Z(v_1_0_3[0]) );
  XOR2_X1 U178 ( .A(io_rand[2]), .B(io_b_3[1]), .Z(v_1_0_3[1]) );
  XOR2_X1 U179 ( .A(io_rand[1]), .B(io_b_2[0]), .Z(v_1_0_2[0]) );
  XOR2_X1 U180 ( .A(io_rand[1]), .B(io_b_2[1]), .Z(v_1_0_2[1]) );
  XOR2_X1 U181 ( .A(io_rand[0]), .B(io_b_1[0]), .Z(v_1_0_1[0]) );
  XOR2_X1 U182 ( .A(io_rand[0]), .B(io_b_1[1]), .Z(v_1_0_1[1]) );
  AND2_X1 U183 ( .A1(b_reg_0[0]), .A2(io_a_0[0]), .ZN(N36) );
  AND2_X1 U184 ( .A1(cor_port_v_0_1[0]), .A2(io_a_0[0]), .ZN(N37) );
  AND2_X1 U185 ( .A1(cor_port_v_0_2[0]), .A2(io_a_0[0]), .ZN(N38) );
  AND2_X1 U186 ( .A1(b_reg_1[0]), .A2(io_a_1[0]), .ZN(N40) );
  AND2_X1 U187 ( .A1(cor_port_v_1_0[0]), .A2(io_a_1[0]), .ZN(N41) );
  AND2_X1 U188 ( .A1(cor_port_v_1_2[0]), .A2(io_a_1[0]), .ZN(N42) );
  AND2_X1 U189 ( .A1(b_reg_2[0]), .A2(io_a_2[0]), .ZN(N44) );
  AND2_X1 U190 ( .A1(cor_port_v_2_0[0]), .A2(io_a_2[0]), .ZN(N45) );
  AND2_X1 U191 ( .A1(cor_port_v_2_1[0]), .A2(io_a_2[0]), .ZN(N46) );
  AND2_X1 U192 ( .A1(b_reg_3[0]), .A2(io_a_3[0]), .ZN(N48) );
  AND2_X1 U193 ( .A1(cor_port_v_3_0[0]), .A2(io_a_3[0]), .ZN(N49) );
  AND2_X1 U194 ( .A1(cor_port_v_3_1[0]), .A2(io_a_3[0]), .ZN(N50) );
  AND2_X1 U195 ( .A1(b_reg_0[1]), .A2(io_a_0[1]), .ZN(N52) );
  AND2_X1 U196 ( .A1(cor_port_v_0_1[1]), .A2(io_a_0[1]), .ZN(N53) );
  AND2_X1 U197 ( .A1(cor_port_v_0_2[1]), .A2(io_a_0[1]), .ZN(N54) );
  AND2_X1 U198 ( .A1(b_reg_1[1]), .A2(io_a_1[1]), .ZN(N56) );
  AND2_X1 U199 ( .A1(cor_port_v_1_0[1]), .A2(io_a_1[1]), .ZN(N57) );
  AND2_X1 U200 ( .A1(cor_port_v_1_2[1]), .A2(io_a_1[1]), .ZN(N58) );
  AND2_X1 U201 ( .A1(b_reg_2[1]), .A2(io_a_2[1]), .ZN(N60) );
  AND2_X1 U202 ( .A1(cor_port_v_2_0[1]), .A2(io_a_2[1]), .ZN(N61) );
  AND2_X1 U203 ( .A1(cor_port_v_2_1[1]), .A2(io_a_2[1]), .ZN(N62) );
  AND2_X1 U204 ( .A1(b_reg_3[1]), .A2(io_a_3[1]), .ZN(N64) );
  AND2_X1 U205 ( .A1(cor_port_v_3_0[1]), .A2(io_a_3[1]), .ZN(N65) );
  AND2_X1 U206 ( .A1(cor_port_v_3_1[1]), .A2(io_a_3[1]), .ZN(N66) );
  AND2_X1 U207 ( .A1(b_reg_0[2]), .A2(io_a_0[2]), .ZN(N68) );
  AND2_X1 U208 ( .A1(cor_port_v_0_1[2]), .A2(io_a_0[2]), .ZN(N69) );
  AND2_X1 U209 ( .A1(cor_port_v_0_2[2]), .A2(io_a_0[2]), .ZN(N70) );
  AND2_X1 U210 ( .A1(b_reg_1[2]), .A2(io_a_1[2]), .ZN(N72) );
  AND2_X1 U211 ( .A1(cor_port_v_1_0[2]), .A2(io_a_1[2]), .ZN(N73) );
  AND2_X1 U212 ( .A1(cor_port_v_1_2[2]), .A2(io_a_1[2]), .ZN(N74) );
  AND2_X1 U213 ( .A1(b_reg_2[2]), .A2(io_a_2[2]), .ZN(N76) );
  AND2_X1 U214 ( .A1(cor_port_v_2_0[2]), .A2(io_a_2[2]), .ZN(N77) );
  AND2_X1 U215 ( .A1(cor_port_v_2_1[2]), .A2(io_a_2[2]), .ZN(N78) );
  AND2_X1 U216 ( .A1(b_reg_3[2]), .A2(io_a_3[2]), .ZN(N80) );
  AND2_X1 U217 ( .A1(cor_port_v_3_0[2]), .A2(io_a_3[2]), .ZN(N81) );
  AND2_X1 U218 ( .A1(cor_port_v_3_1[2]), .A2(io_a_3[2]), .ZN(N82) );
  AND2_X1 U219 ( .A1(simpleNot_46_port_z), .A2(rand_reg_10[0]), .ZN(N10) );
  AND2_X1 U220 ( .A1(simpleNot_58_port_z), .A2(rand_reg_10[1]), .ZN(N22) );
  AND2_X1 U221 ( .A1(simpleNot_70_port_z), .A2(rand_reg_10[2]), .ZN(N34) );
  AND2_X1 U222 ( .A1(simpleNot_43_port_z), .A2(rand_reg_9[0]), .ZN(N7) );
  AND2_X1 U223 ( .A1(simpleNot_55_port_z), .A2(rand_reg_9[1]), .ZN(N19) );
  AND2_X1 U224 ( .A1(simpleNot_67_port_z), .A2(rand_reg_9[2]), .ZN(N31) );
  AND2_X1 U225 ( .A1(simpleNot_41_port_z), .A2(rand_reg_4[0]), .ZN(N5) );
  AND2_X1 U226 ( .A1(simpleNot_53_port_z), .A2(rand_reg_4[1]), .ZN(N17) );
  AND2_X1 U227 ( .A1(simpleNot_65_port_z), .A2(rand_reg_4[2]), .ZN(N29) );
  AND2_X1 U228 ( .A1(simpleNot_40_port_z), .A2(rand_reg_3[0]), .ZN(N4) );
  AND2_X1 U229 ( .A1(simpleNot_52_port_z), .A2(rand_reg_3[1]), .ZN(N16) );
  AND2_X1 U230 ( .A1(simpleNot_64_port_z), .A2(rand_reg_3[2]), .ZN(N28) );
  AND2_X1 U231 ( .A1(simpleNot_45_port_z), .A2(rand_reg_8[0]), .ZN(N9) );
  AND2_X1 U232 ( .A1(simpleNot_57_port_z), .A2(rand_reg_8[1]), .ZN(N21) );
  AND2_X1 U233 ( .A1(simpleNot_69_port_z), .A2(rand_reg_8[2]), .ZN(N33) );
  AND2_X1 U234 ( .A1(simpleNot_38_port_z), .A2(rand_reg_2[0]), .ZN(N2) );
  AND2_X1 U235 ( .A1(simpleNot_50_port_z), .A2(rand_reg_2[1]), .ZN(N14) );
  AND2_X1 U236 ( .A1(simpleNot_62_port_z), .A2(rand_reg_2[2]), .ZN(N26) );
  AND2_X1 U237 ( .A1(simpleNot_36_port_z), .A2(rand_reg_0[0]), .ZN(N0) );
  AND2_X1 U238 ( .A1(simpleNot_48_port_z), .A2(rand_reg_0[1]), .ZN(N12) );
  AND2_X1 U239 ( .A1(simpleNot_60_port_z), .A2(rand_reg_0[2]), .ZN(N24) );
  AND2_X1 U240 ( .A1(simpleNot_42_port_z), .A2(rand_reg_7[0]), .ZN(N6) );
  AND2_X1 U241 ( .A1(simpleNot_54_port_z), .A2(rand_reg_7[1]), .ZN(N18) );
  AND2_X1 U242 ( .A1(simpleNot_66_port_z), .A2(rand_reg_7[2]), .ZN(N30) );
  AND2_X1 U243 ( .A1(simpleNot_39_port_z), .A2(rand_reg_6[0]), .ZN(N3) );
  AND2_X1 U244 ( .A1(simpleNot_51_port_z), .A2(rand_reg_6[1]), .ZN(N15) );
  AND2_X1 U245 ( .A1(simpleNot_63_port_z), .A2(rand_reg_6[2]), .ZN(N27) );
  AND2_X1 U246 ( .A1(simpleNot_47_port_z), .A2(rand_reg_11[0]), .ZN(N11) );
  AND2_X1 U247 ( .A1(simpleNot_59_port_z), .A2(rand_reg_11[1]), .ZN(N23) );
  AND2_X1 U248 ( .A1(simpleNot_71_port_z), .A2(rand_reg_11[2]), .ZN(N35) );
  AND2_X1 U249 ( .A1(simpleNot_44_port_z), .A2(rand_reg_5[0]), .ZN(N8) );
  AND2_X1 U250 ( .A1(simpleNot_56_port_z), .A2(rand_reg_5[1]), .ZN(N20) );
  AND2_X1 U251 ( .A1(simpleNot_68_port_z), .A2(rand_reg_5[2]), .ZN(N32) );
  AND2_X1 U252 ( .A1(simpleNot_37_port_z), .A2(rand_reg_1[0]), .ZN(N1) );
  AND2_X1 U253 ( .A1(simpleNot_49_port_z), .A2(rand_reg_1[1]), .ZN(N13) );
  AND2_X1 U254 ( .A1(simpleNot_61_port_z), .A2(rand_reg_1[2]), .ZN(N25) );
  AND2_X1 U255 ( .A1(io_a_0[0]), .A2(cor_port_v_0_3[0]), .ZN(N39) );
  AND2_X1 U256 ( .A1(io_a_1[0]), .A2(cor_port_v_1_3[0]), .ZN(N43) );
  AND2_X1 U257 ( .A1(io_a_2[0]), .A2(cor_port_v_2_3[0]), .ZN(N47) );
  AND2_X1 U258 ( .A1(io_a_3[0]), .A2(cor_port_v_3_2[0]), .ZN(N51) );
  AND2_X1 U259 ( .A1(io_a_0[1]), .A2(cor_port_v_0_3[1]), .ZN(N55) );
  AND2_X1 U260 ( .A1(io_a_1[1]), .A2(cor_port_v_1_3[1]), .ZN(N59) );
  AND2_X1 U261 ( .A1(io_a_2[1]), .A2(cor_port_v_2_3[1]), .ZN(N63) );
  AND2_X1 U262 ( .A1(io_a_3[1]), .A2(cor_port_v_3_2[1]), .ZN(N67) );
  AND2_X1 U263 ( .A1(io_a_0[2]), .A2(cor_port_v_0_3[2]), .ZN(N71) );
  AND2_X1 U264 ( .A1(io_a_1[2]), .A2(cor_port_v_1_3[2]), .ZN(N75) );
  AND2_X1 U265 ( .A1(io_a_2[2]), .A2(cor_port_v_2_3[2]), .ZN(N79) );
  AND2_X1 U266 ( .A1(io_a_3[2]), .A2(cor_port_v_3_2[2]), .ZN(N83) );
  XOR2_X1 U267 ( .A(io_rand[5]), .B(io_b_2[2]), .Z(v_1_3_2[2]) );
  XOR2_X1 U268 ( .A(io_rand[4]), .B(io_b_1[2]), .Z(v_1_3_1[2]) );
  XOR2_X1 U269 ( .A(io_rand[2]), .B(io_b_0[2]), .Z(v_1_3_0[2]) );
  XOR2_X1 U270 ( .A(io_rand[5]), .B(io_b_3[2]), .Z(v_1_2_3[2]) );
  XOR2_X1 U271 ( .A(io_rand[3]), .B(io_b_1[2]), .Z(v_1_2_1[2]) );
  XOR2_X1 U272 ( .A(io_rand[1]), .B(io_b_0[2]), .Z(v_1_2_0[2]) );
  XOR2_X1 U273 ( .A(io_rand[4]), .B(io_b_3[2]), .Z(v_1_1_3[2]) );
  XOR2_X1 U274 ( .A(io_rand[3]), .B(io_b_2[2]), .Z(v_1_1_2[2]) );
  XOR2_X1 U275 ( .A(io_rand[0]), .B(io_b_0[2]), .Z(v_1_1_0[2]) );
  XOR2_X1 U276 ( .A(io_rand[2]), .B(io_b_3[2]), .Z(v_1_0_3[2]) );
  XOR2_X1 U277 ( .A(io_rand[1]), .B(io_b_2[2]), .Z(v_1_0_2[2]) );
  XOR2_X1 U278 ( .A(io_rand[0]), .B(io_b_1[2]), .Z(v_1_0_1[2]) );
  XOR2_X1 U279 ( .A(n5), .B(n6), .Z(io_c_3[0]) );
  XNOR2_X1 U280 ( .A(simpleXor_47_port_z), .B(simpleXor_46_port_z), .ZN(n5) );
  XNOR2_X1 U281 ( .A(simpleXor_45_port_z), .B(n_zz_io_c_3_0_), .ZN(n6) );
  XOR2_X1 U282 ( .A(n3), .B(n4), .Z(io_c_3[1]) );
  XNOR2_X1 U283 ( .A(simpleXor_59_port_z), .B(simpleXor_58_port_z), .ZN(n3) );
  XNOR2_X1 U284 ( .A(simpleXor_57_port_z), .B(n_zz_io_c_3_5_0_), .ZN(n4) );
  XOR2_X1 U285 ( .A(n1), .B(n2), .Z(io_c_3[2]) );
  XNOR2_X1 U286 ( .A(simpleXor_71_port_z), .B(simpleXor_70_port_z), .ZN(n1) );
  XNOR2_X1 U287 ( .A(simpleXor_69_port_z), .B(n_zz_io_c_3_10_0_), .ZN(n2) );
  XOR2_X1 U288 ( .A(n11), .B(n12), .Z(io_c_2[0]) );
  XNOR2_X1 U289 ( .A(simpleXor_44_port_z), .B(simpleXor_43_port_z), .ZN(n11)
         );
  XNOR2_X1 U290 ( .A(simpleXor_42_port_z), .B(n_zz_io_c_2_0_), .ZN(n12) );
  XOR2_X1 U291 ( .A(n9), .B(n10), .Z(io_c_2[1]) );
  XNOR2_X1 U292 ( .A(simpleXor_56_port_z), .B(simpleXor_55_port_z), .ZN(n9) );
  XNOR2_X1 U293 ( .A(simpleXor_54_port_z), .B(n_zz_io_c_2_5_0_), .ZN(n10) );
  XOR2_X1 U294 ( .A(n7), .B(n8), .Z(io_c_2[2]) );
  XNOR2_X1 U295 ( .A(simpleXor_68_port_z), .B(simpleXor_67_port_z), .ZN(n7) );
  XNOR2_X1 U296 ( .A(simpleXor_66_port_z), .B(n_zz_io_c_2_10_0_), .ZN(n8) );
  XOR2_X1 U297 ( .A(n17), .B(n18), .Z(io_c_1[0]) );
  XNOR2_X1 U298 ( .A(simpleXor_41_port_z), .B(simpleXor_40_port_z), .ZN(n17)
         );
  XNOR2_X1 U299 ( .A(simpleXor_39_port_z), .B(n_zz_io_c_1_0_), .ZN(n18) );
  XOR2_X1 U300 ( .A(n15), .B(n16), .Z(io_c_1[1]) );
  XNOR2_X1 U301 ( .A(simpleXor_53_port_z), .B(simpleXor_52_port_z), .ZN(n15)
         );
  XNOR2_X1 U302 ( .A(simpleXor_51_port_z), .B(n_zz_io_c_1_5_0_), .ZN(n16) );
  XOR2_X1 U303 ( .A(n13), .B(n14), .Z(io_c_1[2]) );
  XNOR2_X1 U304 ( .A(simpleXor_65_port_z), .B(simpleXor_64_port_z), .ZN(n13)
         );
  XNOR2_X1 U305 ( .A(simpleXor_63_port_z), .B(n_zz_io_c_1_10_0_), .ZN(n14) );
  XOR2_X1 U306 ( .A(n23), .B(n24), .Z(io_c_0[0]) );
  XNOR2_X1 U307 ( .A(simpleXor_38_port_z), .B(simpleXor_37_port_z), .ZN(n23)
         );
  XNOR2_X1 U308 ( .A(simpleXor_36_port_z), .B(n_zz_io_c_0_0_), .ZN(n24) );
  XOR2_X1 U309 ( .A(n21), .B(n22), .Z(io_c_0[1]) );
  XNOR2_X1 U310 ( .A(simpleXor_50_port_z), .B(simpleXor_49_port_z), .ZN(n21)
         );
  XNOR2_X1 U311 ( .A(simpleXor_48_port_z), .B(n_zz_io_c_0_5_0_), .ZN(n22) );
  XOR2_X1 U312 ( .A(n19), .B(n20), .Z(io_c_0[2]) );
  XNOR2_X1 U313 ( .A(simpleXor_62_port_z), .B(simpleXor_61_port_z), .ZN(n19)
         );
  XNOR2_X1 U314 ( .A(simpleXor_60_port_z), .B(n_zz_io_c_0_10_0_), .ZN(n20) );
  INV_X1 simpleNot_36_U1 ( .A(io_a_0[0]), .ZN(simpleNot_36_port_z) );
  INV_X1 simpleNot_37_U1 ( .A(io_a_0[0]), .ZN(simpleNot_37_port_z) );
  INV_X1 simpleNot_38_U1 ( .A(io_a_0[0]), .ZN(simpleNot_38_port_z) );
  INV_X1 simpleNot_39_U1 ( .A(io_a_1[0]), .ZN(simpleNot_39_port_z) );
  INV_X1 simpleNot_40_U1 ( .A(io_a_1[0]), .ZN(simpleNot_40_port_z) );
  INV_X1 simpleNot_41_U1 ( .A(io_a_1[0]), .ZN(simpleNot_41_port_z) );
  INV_X1 simpleNot_42_U1 ( .A(io_a_2[0]), .ZN(simpleNot_42_port_z) );
  INV_X1 simpleNot_43_U1 ( .A(io_a_2[0]), .ZN(simpleNot_43_port_z) );
  INV_X1 simpleNot_44_U1 ( .A(io_a_2[0]), .ZN(simpleNot_44_port_z) );
  INV_X1 simpleNot_45_U1 ( .A(io_a_3[0]), .ZN(simpleNot_45_port_z) );
  INV_X1 simpleNot_46_U1 ( .A(io_a_3[0]), .ZN(simpleNot_46_port_z) );
  INV_X1 simpleNot_47_U1 ( .A(io_a_3[0]), .ZN(simpleNot_47_port_z) );
  INV_X1 simpleNot_48_U1 ( .A(io_a_0[1]), .ZN(simpleNot_48_port_z) );
  INV_X1 simpleNot_49_U1 ( .A(io_a_0[1]), .ZN(simpleNot_49_port_z) );
  INV_X1 simpleNot_50_U1 ( .A(io_a_0[1]), .ZN(simpleNot_50_port_z) );
  INV_X1 simpleNot_51_U1 ( .A(io_a_1[1]), .ZN(simpleNot_51_port_z) );
  INV_X1 simpleNot_52_U1 ( .A(io_a_1[1]), .ZN(simpleNot_52_port_z) );
  INV_X1 simpleNot_53_U1 ( .A(io_a_1[1]), .ZN(simpleNot_53_port_z) );
  INV_X1 simpleNot_54_U1 ( .A(io_a_2[1]), .ZN(simpleNot_54_port_z) );
  INV_X1 simpleNot_55_U1 ( .A(io_a_2[1]), .ZN(simpleNot_55_port_z) );
  INV_X1 simpleNot_56_U1 ( .A(io_a_2[1]), .ZN(simpleNot_56_port_z) );
  INV_X1 simpleNot_57_U1 ( .A(io_a_3[1]), .ZN(simpleNot_57_port_z) );
  INV_X1 simpleNot_58_U1 ( .A(io_a_3[1]), .ZN(simpleNot_58_port_z) );
  INV_X1 simpleNot_59_U1 ( .A(io_a_3[1]), .ZN(simpleNot_59_port_z) );
  INV_X1 simpleNot_60_U1 ( .A(io_a_0[2]), .ZN(simpleNot_60_port_z) );
  INV_X1 simpleNot_61_U1 ( .A(io_a_0[2]), .ZN(simpleNot_61_port_z) );
  INV_X1 simpleNot_62_U1 ( .A(io_a_0[2]), .ZN(simpleNot_62_port_z) );
  INV_X1 simpleNot_63_U1 ( .A(io_a_1[2]), .ZN(simpleNot_63_port_z) );
  INV_X1 simpleNot_64_U1 ( .A(io_a_1[2]), .ZN(simpleNot_64_port_z) );
  INV_X1 simpleNot_65_U1 ( .A(io_a_1[2]), .ZN(simpleNot_65_port_z) );
  INV_X1 simpleNot_66_U1 ( .A(io_a_2[2]), .ZN(simpleNot_66_port_z) );
  INV_X1 simpleNot_67_U1 ( .A(io_a_2[2]), .ZN(simpleNot_67_port_z) );
  INV_X1 simpleNot_68_U1 ( .A(io_a_2[2]), .ZN(simpleNot_68_port_z) );
  INV_X1 simpleNot_69_U1 ( .A(io_a_3[2]), .ZN(simpleNot_69_port_z) );
  INV_X1 simpleNot_70_U1 ( .A(io_a_3[2]), .ZN(simpleNot_70_port_z) );
  INV_X1 simpleNot_71_U1 ( .A(io_a_3[2]), .ZN(simpleNot_71_port_z) );
  DFF_X1 cor_m_3_2_reg_0_ ( .D(cor_maj_69_port_o), .CK(clk), .Q(
        cor_port_v_3_2[0]), .QN() );
  DFF_X1 cor_m_3_2_reg_1_ ( .D(cor_maj_70_port_o), .CK(clk), .Q(
        cor_port_v_3_2[1]), .QN() );
  DFF_X1 cor_m_3_2_reg_2_ ( .D(cor_maj_71_port_o), .CK(clk), .Q(
        cor_port_v_3_2[2]), .QN() );
  DFF_X1 cor_m_3_1_reg_0_ ( .D(cor_maj_66_port_o), .CK(clk), .Q(
        cor_port_v_3_1[0]), .QN() );
  DFF_X1 cor_m_3_1_reg_1_ ( .D(cor_maj_67_port_o), .CK(clk), .Q(
        cor_port_v_3_1[1]), .QN() );
  DFF_X1 cor_m_3_1_reg_2_ ( .D(cor_maj_68_port_o), .CK(clk), .Q(
        cor_port_v_3_1[2]), .QN() );
  DFF_X1 cor_m_3_0_reg_0_ ( .D(cor_maj_63_port_o), .CK(clk), .Q(
        cor_port_v_3_0[0]), .QN() );
  DFF_X1 cor_m_3_0_reg_1_ ( .D(cor_maj_64_port_o), .CK(clk), .Q(
        cor_port_v_3_0[1]), .QN() );
  DFF_X1 cor_m_3_0_reg_2_ ( .D(cor_maj_65_port_o), .CK(clk), .Q(
        cor_port_v_3_0[2]), .QN() );
  DFF_X1 cor_m_2_3_reg_0_ ( .D(cor_maj_60_port_o), .CK(clk), .Q(
        cor_port_v_2_3[0]), .QN() );
  DFF_X1 cor_m_2_3_reg_1_ ( .D(cor_maj_61_port_o), .CK(clk), .Q(
        cor_port_v_2_3[1]), .QN() );
  DFF_X1 cor_m_2_3_reg_2_ ( .D(cor_maj_62_port_o), .CK(clk), .Q(
        cor_port_v_2_3[2]), .QN() );
  DFF_X1 cor_m_2_1_reg_0_ ( .D(cor_maj_57_port_o), .CK(clk), .Q(
        cor_port_v_2_1[0]), .QN() );
  DFF_X1 cor_m_2_1_reg_1_ ( .D(cor_maj_58_port_o), .CK(clk), .Q(
        cor_port_v_2_1[1]), .QN() );
  DFF_X1 cor_m_2_1_reg_2_ ( .D(cor_maj_59_port_o), .CK(clk), .Q(
        cor_port_v_2_1[2]), .QN() );
  DFF_X1 cor_m_2_0_reg_0_ ( .D(cor_maj_54_port_o), .CK(clk), .Q(
        cor_port_v_2_0[0]), .QN() );
  DFF_X1 cor_m_2_0_reg_1_ ( .D(cor_maj_55_port_o), .CK(clk), .Q(
        cor_port_v_2_0[1]), .QN() );
  DFF_X1 cor_m_2_0_reg_2_ ( .D(cor_maj_56_port_o), .CK(clk), .Q(
        cor_port_v_2_0[2]), .QN() );
  DFF_X1 cor_m_1_3_reg_0_ ( .D(cor_maj_51_port_o), .CK(clk), .Q(
        cor_port_v_1_3[0]), .QN() );
  DFF_X1 cor_m_1_3_reg_1_ ( .D(cor_maj_52_port_o), .CK(clk), .Q(
        cor_port_v_1_3[1]), .QN() );
  DFF_X1 cor_m_1_3_reg_2_ ( .D(cor_maj_53_port_o), .CK(clk), .Q(
        cor_port_v_1_3[2]), .QN() );
  DFF_X1 cor_m_1_2_reg_0_ ( .D(cor_maj_48_port_o), .CK(clk), .Q(
        cor_port_v_1_2[0]), .QN() );
  DFF_X1 cor_m_1_2_reg_1_ ( .D(cor_maj_49_port_o), .CK(clk), .Q(
        cor_port_v_1_2[1]), .QN() );
  DFF_X1 cor_m_1_2_reg_2_ ( .D(cor_maj_50_port_o), .CK(clk), .Q(
        cor_port_v_1_2[2]), .QN() );
  DFF_X1 cor_m_1_0_reg_0_ ( .D(cor_maj_45_port_o), .CK(clk), .Q(
        cor_port_v_1_0[0]), .QN() );
  DFF_X1 cor_m_1_0_reg_1_ ( .D(cor_maj_46_port_o), .CK(clk), .Q(
        cor_port_v_1_0[1]), .QN() );
  DFF_X1 cor_m_1_0_reg_2_ ( .D(cor_maj_47_port_o), .CK(clk), .Q(
        cor_port_v_1_0[2]), .QN() );
  DFF_X1 cor_m_0_3_reg_0_ ( .D(cor_maj_42_port_o), .CK(clk), .Q(
        cor_port_v_0_3[0]), .QN() );
  DFF_X1 cor_m_0_3_reg_1_ ( .D(cor_maj_43_port_o), .CK(clk), .Q(
        cor_port_v_0_3[1]), .QN() );
  DFF_X1 cor_m_0_3_reg_2_ ( .D(cor_maj_44_port_o), .CK(clk), .Q(
        cor_port_v_0_3[2]), .QN() );
  DFF_X1 cor_m_0_2_reg_0_ ( .D(cor_maj_39_port_o), .CK(clk), .Q(
        cor_port_v_0_2[0]), .QN() );
  DFF_X1 cor_m_0_2_reg_1_ ( .D(cor_maj_40_port_o), .CK(clk), .Q(
        cor_port_v_0_2[1]), .QN() );
  DFF_X1 cor_m_0_2_reg_2_ ( .D(cor_maj_41_port_o), .CK(clk), .Q(
        cor_port_v_0_2[2]), .QN() );
  DFF_X1 cor_m_0_1_reg_0_ ( .D(cor_maj_36_port_o), .CK(clk), .Q(
        cor_port_v_0_1[0]), .QN() );
  DFF_X1 cor_m_0_1_reg_1_ ( .D(cor_maj_37_port_o), .CK(clk), .Q(
        cor_port_v_0_1[1]), .QN() );
  DFF_X1 cor_m_0_1_reg_2_ ( .D(cor_maj_38_port_o), .CK(clk), .Q(
        cor_port_v_0_1[2]), .QN() );
  OR2_X1 cor_maj_36_U4 ( .A1(v_1_0_1[1]), .A2(v_1_0_1[0]), .ZN(cor_maj_36_n3)
         );
  NAND2_X1 cor_maj_36_U3 ( .A1(v_1_0_1[1]), .A2(v_1_0_1[0]), .ZN(cor_maj_36_n1) );
  NAND2_X1 cor_maj_36_U2 ( .A1(v_1_0_1[2]), .A2(cor_maj_36_n3), .ZN(
        cor_maj_36_n2) );
  NAND2_X1 cor_maj_36_U1 ( .A1(cor_maj_36_n1), .A2(cor_maj_36_n2), .ZN(
        cor_maj_36_port_o) );
  OR2_X1 cor_maj_37_U4 ( .A1(v_1_0_1[1]), .A2(v_1_0_1[0]), .ZN(cor_maj_37_n4)
         );
  NAND2_X1 cor_maj_37_U3 ( .A1(v_1_0_1[1]), .A2(v_1_0_1[0]), .ZN(cor_maj_37_n6) );
  NAND2_X1 cor_maj_37_U2 ( .A1(v_1_0_1[2]), .A2(cor_maj_37_n4), .ZN(
        cor_maj_37_n5) );
  NAND2_X1 cor_maj_37_U1 ( .A1(cor_maj_37_n6), .A2(cor_maj_37_n5), .ZN(
        cor_maj_37_port_o) );
  OR2_X1 cor_maj_38_U4 ( .A1(v_1_0_1[1]), .A2(v_1_0_1[0]), .ZN(cor_maj_38_n4)
         );
  NAND2_X1 cor_maj_38_U3 ( .A1(v_1_0_1[1]), .A2(v_1_0_1[0]), .ZN(cor_maj_38_n6) );
  NAND2_X1 cor_maj_38_U2 ( .A1(v_1_0_1[2]), .A2(cor_maj_38_n4), .ZN(
        cor_maj_38_n5) );
  NAND2_X1 cor_maj_38_U1 ( .A1(cor_maj_38_n6), .A2(cor_maj_38_n5), .ZN(
        cor_maj_38_port_o) );
  OR2_X1 cor_maj_39_U4 ( .A1(v_1_0_2[1]), .A2(v_1_0_2[0]), .ZN(cor_maj_39_n4)
         );
  NAND2_X1 cor_maj_39_U3 ( .A1(v_1_0_2[1]), .A2(v_1_0_2[0]), .ZN(cor_maj_39_n6) );
  NAND2_X1 cor_maj_39_U2 ( .A1(v_1_0_2[2]), .A2(cor_maj_39_n4), .ZN(
        cor_maj_39_n5) );
  NAND2_X1 cor_maj_39_U1 ( .A1(cor_maj_39_n6), .A2(cor_maj_39_n5), .ZN(
        cor_maj_39_port_o) );
  OR2_X1 cor_maj_40_U4 ( .A1(v_1_0_2[1]), .A2(v_1_0_2[0]), .ZN(cor_maj_40_n4)
         );
  NAND2_X1 cor_maj_40_U3 ( .A1(v_1_0_2[1]), .A2(v_1_0_2[0]), .ZN(cor_maj_40_n6) );
  NAND2_X1 cor_maj_40_U2 ( .A1(v_1_0_2[2]), .A2(cor_maj_40_n4), .ZN(
        cor_maj_40_n5) );
  NAND2_X1 cor_maj_40_U1 ( .A1(cor_maj_40_n6), .A2(cor_maj_40_n5), .ZN(
        cor_maj_40_port_o) );
  OR2_X1 cor_maj_41_U4 ( .A1(v_1_0_2[1]), .A2(v_1_0_2[0]), .ZN(cor_maj_41_n4)
         );
  NAND2_X1 cor_maj_41_U3 ( .A1(v_1_0_2[1]), .A2(v_1_0_2[0]), .ZN(cor_maj_41_n6) );
  NAND2_X1 cor_maj_41_U2 ( .A1(v_1_0_2[2]), .A2(cor_maj_41_n4), .ZN(
        cor_maj_41_n5) );
  NAND2_X1 cor_maj_41_U1 ( .A1(cor_maj_41_n6), .A2(cor_maj_41_n5), .ZN(
        cor_maj_41_port_o) );
  OR2_X1 cor_maj_42_U4 ( .A1(v_1_0_3[1]), .A2(v_1_0_3[0]), .ZN(cor_maj_42_n4)
         );
  NAND2_X1 cor_maj_42_U3 ( .A1(v_1_0_3[1]), .A2(v_1_0_3[0]), .ZN(cor_maj_42_n6) );
  NAND2_X1 cor_maj_42_U2 ( .A1(v_1_0_3[2]), .A2(cor_maj_42_n4), .ZN(
        cor_maj_42_n5) );
  NAND2_X1 cor_maj_42_U1 ( .A1(cor_maj_42_n6), .A2(cor_maj_42_n5), .ZN(
        cor_maj_42_port_o) );
  OR2_X1 cor_maj_43_U4 ( .A1(v_1_0_3[1]), .A2(v_1_0_3[0]), .ZN(cor_maj_43_n4)
         );
  NAND2_X1 cor_maj_43_U3 ( .A1(v_1_0_3[1]), .A2(v_1_0_3[0]), .ZN(cor_maj_43_n6) );
  NAND2_X1 cor_maj_43_U2 ( .A1(v_1_0_3[2]), .A2(cor_maj_43_n4), .ZN(
        cor_maj_43_n5) );
  NAND2_X1 cor_maj_43_U1 ( .A1(cor_maj_43_n6), .A2(cor_maj_43_n5), .ZN(
        cor_maj_43_port_o) );
  OR2_X1 cor_maj_44_U4 ( .A1(v_1_0_3[1]), .A2(v_1_0_3[0]), .ZN(cor_maj_44_n4)
         );
  NAND2_X1 cor_maj_44_U3 ( .A1(v_1_0_3[1]), .A2(v_1_0_3[0]), .ZN(cor_maj_44_n6) );
  NAND2_X1 cor_maj_44_U2 ( .A1(v_1_0_3[2]), .A2(cor_maj_44_n4), .ZN(
        cor_maj_44_n5) );
  NAND2_X1 cor_maj_44_U1 ( .A1(cor_maj_44_n6), .A2(cor_maj_44_n5), .ZN(
        cor_maj_44_port_o) );
  OR2_X1 cor_maj_45_U4 ( .A1(v_1_1_0[1]), .A2(v_1_1_0[0]), .ZN(cor_maj_45_n4)
         );
  NAND2_X1 cor_maj_45_U3 ( .A1(v_1_1_0[1]), .A2(v_1_1_0[0]), .ZN(cor_maj_45_n6) );
  NAND2_X1 cor_maj_45_U2 ( .A1(v_1_1_0[2]), .A2(cor_maj_45_n4), .ZN(
        cor_maj_45_n5) );
  NAND2_X1 cor_maj_45_U1 ( .A1(cor_maj_45_n6), .A2(cor_maj_45_n5), .ZN(
        cor_maj_45_port_o) );
  OR2_X1 cor_maj_46_U4 ( .A1(v_1_1_0[1]), .A2(v_1_1_0[0]), .ZN(cor_maj_46_n4)
         );
  NAND2_X1 cor_maj_46_U3 ( .A1(v_1_1_0[1]), .A2(v_1_1_0[0]), .ZN(cor_maj_46_n6) );
  NAND2_X1 cor_maj_46_U2 ( .A1(v_1_1_0[2]), .A2(cor_maj_46_n4), .ZN(
        cor_maj_46_n5) );
  NAND2_X1 cor_maj_46_U1 ( .A1(cor_maj_46_n6), .A2(cor_maj_46_n5), .ZN(
        cor_maj_46_port_o) );
  OR2_X1 cor_maj_47_U4 ( .A1(v_1_1_0[1]), .A2(v_1_1_0[0]), .ZN(cor_maj_47_n4)
         );
  NAND2_X1 cor_maj_47_U3 ( .A1(v_1_1_0[1]), .A2(v_1_1_0[0]), .ZN(cor_maj_47_n6) );
  NAND2_X1 cor_maj_47_U2 ( .A1(v_1_1_0[2]), .A2(cor_maj_47_n4), .ZN(
        cor_maj_47_n5) );
  NAND2_X1 cor_maj_47_U1 ( .A1(cor_maj_47_n6), .A2(cor_maj_47_n5), .ZN(
        cor_maj_47_port_o) );
  OR2_X1 cor_maj_48_U4 ( .A1(v_1_1_2[1]), .A2(v_1_1_2[0]), .ZN(cor_maj_48_n4)
         );
  NAND2_X1 cor_maj_48_U3 ( .A1(v_1_1_2[1]), .A2(v_1_1_2[0]), .ZN(cor_maj_48_n6) );
  NAND2_X1 cor_maj_48_U2 ( .A1(v_1_1_2[2]), .A2(cor_maj_48_n4), .ZN(
        cor_maj_48_n5) );
  NAND2_X1 cor_maj_48_U1 ( .A1(cor_maj_48_n6), .A2(cor_maj_48_n5), .ZN(
        cor_maj_48_port_o) );
  OR2_X1 cor_maj_49_U4 ( .A1(v_1_1_2[1]), .A2(v_1_1_2[0]), .ZN(cor_maj_49_n4)
         );
  NAND2_X1 cor_maj_49_U3 ( .A1(v_1_1_2[1]), .A2(v_1_1_2[0]), .ZN(cor_maj_49_n6) );
  NAND2_X1 cor_maj_49_U2 ( .A1(v_1_1_2[2]), .A2(cor_maj_49_n4), .ZN(
        cor_maj_49_n5) );
  NAND2_X1 cor_maj_49_U1 ( .A1(cor_maj_49_n6), .A2(cor_maj_49_n5), .ZN(
        cor_maj_49_port_o) );
  OR2_X1 cor_maj_50_U4 ( .A1(v_1_1_2[1]), .A2(v_1_1_2[0]), .ZN(cor_maj_50_n4)
         );
  NAND2_X1 cor_maj_50_U3 ( .A1(v_1_1_2[1]), .A2(v_1_1_2[0]), .ZN(cor_maj_50_n6) );
  NAND2_X1 cor_maj_50_U2 ( .A1(v_1_1_2[2]), .A2(cor_maj_50_n4), .ZN(
        cor_maj_50_n5) );
  NAND2_X1 cor_maj_50_U1 ( .A1(cor_maj_50_n6), .A2(cor_maj_50_n5), .ZN(
        cor_maj_50_port_o) );
  OR2_X1 cor_maj_51_U4 ( .A1(v_1_1_3[1]), .A2(v_1_1_3[0]), .ZN(cor_maj_51_n4)
         );
  NAND2_X1 cor_maj_51_U3 ( .A1(v_1_1_3[1]), .A2(v_1_1_3[0]), .ZN(cor_maj_51_n6) );
  NAND2_X1 cor_maj_51_U2 ( .A1(v_1_1_3[2]), .A2(cor_maj_51_n4), .ZN(
        cor_maj_51_n5) );
  NAND2_X1 cor_maj_51_U1 ( .A1(cor_maj_51_n6), .A2(cor_maj_51_n5), .ZN(
        cor_maj_51_port_o) );
  OR2_X1 cor_maj_52_U4 ( .A1(v_1_1_3[1]), .A2(v_1_1_3[0]), .ZN(cor_maj_52_n4)
         );
  NAND2_X1 cor_maj_52_U3 ( .A1(v_1_1_3[1]), .A2(v_1_1_3[0]), .ZN(cor_maj_52_n6) );
  NAND2_X1 cor_maj_52_U2 ( .A1(v_1_1_3[2]), .A2(cor_maj_52_n4), .ZN(
        cor_maj_52_n5) );
  NAND2_X1 cor_maj_52_U1 ( .A1(cor_maj_52_n6), .A2(cor_maj_52_n5), .ZN(
        cor_maj_52_port_o) );
  OR2_X1 cor_maj_53_U4 ( .A1(v_1_1_3[1]), .A2(v_1_1_3[0]), .ZN(cor_maj_53_n4)
         );
  NAND2_X1 cor_maj_53_U3 ( .A1(v_1_1_3[1]), .A2(v_1_1_3[0]), .ZN(cor_maj_53_n6) );
  NAND2_X1 cor_maj_53_U2 ( .A1(v_1_1_3[2]), .A2(cor_maj_53_n4), .ZN(
        cor_maj_53_n5) );
  NAND2_X1 cor_maj_53_U1 ( .A1(cor_maj_53_n6), .A2(cor_maj_53_n5), .ZN(
        cor_maj_53_port_o) );
  OR2_X1 cor_maj_54_U4 ( .A1(v_1_2_0[1]), .A2(v_1_2_0[0]), .ZN(cor_maj_54_n4)
         );
  NAND2_X1 cor_maj_54_U3 ( .A1(v_1_2_0[1]), .A2(v_1_2_0[0]), .ZN(cor_maj_54_n6) );
  NAND2_X1 cor_maj_54_U2 ( .A1(v_1_2_0[2]), .A2(cor_maj_54_n4), .ZN(
        cor_maj_54_n5) );
  NAND2_X1 cor_maj_54_U1 ( .A1(cor_maj_54_n6), .A2(cor_maj_54_n5), .ZN(
        cor_maj_54_port_o) );
  OR2_X1 cor_maj_55_U4 ( .A1(v_1_2_0[1]), .A2(v_1_2_0[0]), .ZN(cor_maj_55_n4)
         );
  NAND2_X1 cor_maj_55_U3 ( .A1(v_1_2_0[1]), .A2(v_1_2_0[0]), .ZN(cor_maj_55_n6) );
  NAND2_X1 cor_maj_55_U2 ( .A1(v_1_2_0[2]), .A2(cor_maj_55_n4), .ZN(
        cor_maj_55_n5) );
  NAND2_X1 cor_maj_55_U1 ( .A1(cor_maj_55_n6), .A2(cor_maj_55_n5), .ZN(
        cor_maj_55_port_o) );
  OR2_X1 cor_maj_56_U4 ( .A1(v_1_2_0[1]), .A2(v_1_2_0[0]), .ZN(cor_maj_56_n4)
         );
  NAND2_X1 cor_maj_56_U3 ( .A1(v_1_2_0[1]), .A2(v_1_2_0[0]), .ZN(cor_maj_56_n6) );
  NAND2_X1 cor_maj_56_U2 ( .A1(v_1_2_0[2]), .A2(cor_maj_56_n4), .ZN(
        cor_maj_56_n5) );
  NAND2_X1 cor_maj_56_U1 ( .A1(cor_maj_56_n6), .A2(cor_maj_56_n5), .ZN(
        cor_maj_56_port_o) );
  OR2_X1 cor_maj_57_U4 ( .A1(v_1_2_1[1]), .A2(v_1_2_1[0]), .ZN(cor_maj_57_n4)
         );
  NAND2_X1 cor_maj_57_U3 ( .A1(v_1_2_1[1]), .A2(v_1_2_1[0]), .ZN(cor_maj_57_n6) );
  NAND2_X1 cor_maj_57_U2 ( .A1(v_1_2_1[2]), .A2(cor_maj_57_n4), .ZN(
        cor_maj_57_n5) );
  NAND2_X1 cor_maj_57_U1 ( .A1(cor_maj_57_n6), .A2(cor_maj_57_n5), .ZN(
        cor_maj_57_port_o) );
  OR2_X1 cor_maj_58_U4 ( .A1(v_1_2_1[1]), .A2(v_1_2_1[0]), .ZN(cor_maj_58_n4)
         );
  NAND2_X1 cor_maj_58_U3 ( .A1(v_1_2_1[1]), .A2(v_1_2_1[0]), .ZN(cor_maj_58_n6) );
  NAND2_X1 cor_maj_58_U2 ( .A1(v_1_2_1[2]), .A2(cor_maj_58_n4), .ZN(
        cor_maj_58_n5) );
  NAND2_X1 cor_maj_58_U1 ( .A1(cor_maj_58_n6), .A2(cor_maj_58_n5), .ZN(
        cor_maj_58_port_o) );
  OR2_X1 cor_maj_59_U4 ( .A1(v_1_2_1[1]), .A2(v_1_2_1[0]), .ZN(cor_maj_59_n4)
         );
  NAND2_X1 cor_maj_59_U3 ( .A1(v_1_2_1[1]), .A2(v_1_2_1[0]), .ZN(cor_maj_59_n6) );
  NAND2_X1 cor_maj_59_U2 ( .A1(v_1_2_1[2]), .A2(cor_maj_59_n4), .ZN(
        cor_maj_59_n5) );
  NAND2_X1 cor_maj_59_U1 ( .A1(cor_maj_59_n6), .A2(cor_maj_59_n5), .ZN(
        cor_maj_59_port_o) );
  OR2_X1 cor_maj_60_U4 ( .A1(v_1_2_3[1]), .A2(v_1_2_3[0]), .ZN(cor_maj_60_n4)
         );
  NAND2_X1 cor_maj_60_U3 ( .A1(v_1_2_3[1]), .A2(v_1_2_3[0]), .ZN(cor_maj_60_n6) );
  NAND2_X1 cor_maj_60_U2 ( .A1(v_1_2_3[2]), .A2(cor_maj_60_n4), .ZN(
        cor_maj_60_n5) );
  NAND2_X1 cor_maj_60_U1 ( .A1(cor_maj_60_n6), .A2(cor_maj_60_n5), .ZN(
        cor_maj_60_port_o) );
  OR2_X1 cor_maj_61_U4 ( .A1(v_1_2_3[1]), .A2(v_1_2_3[0]), .ZN(cor_maj_61_n4)
         );
  NAND2_X1 cor_maj_61_U3 ( .A1(v_1_2_3[1]), .A2(v_1_2_3[0]), .ZN(cor_maj_61_n6) );
  NAND2_X1 cor_maj_61_U2 ( .A1(v_1_2_3[2]), .A2(cor_maj_61_n4), .ZN(
        cor_maj_61_n5) );
  NAND2_X1 cor_maj_61_U1 ( .A1(cor_maj_61_n6), .A2(cor_maj_61_n5), .ZN(
        cor_maj_61_port_o) );
  OR2_X1 cor_maj_62_U4 ( .A1(v_1_2_3[1]), .A2(v_1_2_3[0]), .ZN(cor_maj_62_n4)
         );
  NAND2_X1 cor_maj_62_U3 ( .A1(v_1_2_3[1]), .A2(v_1_2_3[0]), .ZN(cor_maj_62_n6) );
  NAND2_X1 cor_maj_62_U2 ( .A1(v_1_2_3[2]), .A2(cor_maj_62_n4), .ZN(
        cor_maj_62_n5) );
  NAND2_X1 cor_maj_62_U1 ( .A1(cor_maj_62_n6), .A2(cor_maj_62_n5), .ZN(
        cor_maj_62_port_o) );
  OR2_X1 cor_maj_63_U4 ( .A1(v_1_3_0[1]), .A2(v_1_3_0[0]), .ZN(cor_maj_63_n4)
         );
  NAND2_X1 cor_maj_63_U3 ( .A1(v_1_3_0[1]), .A2(v_1_3_0[0]), .ZN(cor_maj_63_n6) );
  NAND2_X1 cor_maj_63_U2 ( .A1(v_1_3_0[2]), .A2(cor_maj_63_n4), .ZN(
        cor_maj_63_n5) );
  NAND2_X1 cor_maj_63_U1 ( .A1(cor_maj_63_n6), .A2(cor_maj_63_n5), .ZN(
        cor_maj_63_port_o) );
  OR2_X1 cor_maj_64_U4 ( .A1(v_1_3_0[1]), .A2(v_1_3_0[0]), .ZN(cor_maj_64_n4)
         );
  NAND2_X1 cor_maj_64_U3 ( .A1(v_1_3_0[1]), .A2(v_1_3_0[0]), .ZN(cor_maj_64_n6) );
  NAND2_X1 cor_maj_64_U2 ( .A1(v_1_3_0[2]), .A2(cor_maj_64_n4), .ZN(
        cor_maj_64_n5) );
  NAND2_X1 cor_maj_64_U1 ( .A1(cor_maj_64_n6), .A2(cor_maj_64_n5), .ZN(
        cor_maj_64_port_o) );
  OR2_X1 cor_maj_65_U4 ( .A1(v_1_3_0[1]), .A2(v_1_3_0[0]), .ZN(cor_maj_65_n4)
         );
  NAND2_X1 cor_maj_65_U3 ( .A1(v_1_3_0[1]), .A2(v_1_3_0[0]), .ZN(cor_maj_65_n6) );
  NAND2_X1 cor_maj_65_U2 ( .A1(v_1_3_0[2]), .A2(cor_maj_65_n4), .ZN(
        cor_maj_65_n5) );
  NAND2_X1 cor_maj_65_U1 ( .A1(cor_maj_65_n6), .A2(cor_maj_65_n5), .ZN(
        cor_maj_65_port_o) );
  OR2_X1 cor_maj_66_U4 ( .A1(v_1_3_1[1]), .A2(v_1_3_1[0]), .ZN(cor_maj_66_n4)
         );
  NAND2_X1 cor_maj_66_U3 ( .A1(v_1_3_1[1]), .A2(v_1_3_1[0]), .ZN(cor_maj_66_n6) );
  NAND2_X1 cor_maj_66_U2 ( .A1(v_1_3_1[2]), .A2(cor_maj_66_n4), .ZN(
        cor_maj_66_n5) );
  NAND2_X1 cor_maj_66_U1 ( .A1(cor_maj_66_n6), .A2(cor_maj_66_n5), .ZN(
        cor_maj_66_port_o) );
  OR2_X1 cor_maj_67_U4 ( .A1(v_1_3_1[1]), .A2(v_1_3_1[0]), .ZN(cor_maj_67_n4)
         );
  NAND2_X1 cor_maj_67_U3 ( .A1(v_1_3_1[1]), .A2(v_1_3_1[0]), .ZN(cor_maj_67_n6) );
  NAND2_X1 cor_maj_67_U2 ( .A1(v_1_3_1[2]), .A2(cor_maj_67_n4), .ZN(
        cor_maj_67_n5) );
  NAND2_X1 cor_maj_67_U1 ( .A1(cor_maj_67_n6), .A2(cor_maj_67_n5), .ZN(
        cor_maj_67_port_o) );
  OR2_X1 cor_maj_68_U4 ( .A1(v_1_3_1[1]), .A2(v_1_3_1[0]), .ZN(cor_maj_68_n4)
         );
  NAND2_X1 cor_maj_68_U3 ( .A1(v_1_3_1[1]), .A2(v_1_3_1[0]), .ZN(cor_maj_68_n6) );
  NAND2_X1 cor_maj_68_U2 ( .A1(v_1_3_1[2]), .A2(cor_maj_68_n4), .ZN(
        cor_maj_68_n5) );
  NAND2_X1 cor_maj_68_U1 ( .A1(cor_maj_68_n6), .A2(cor_maj_68_n5), .ZN(
        cor_maj_68_port_o) );
  OR2_X1 cor_maj_69_U4 ( .A1(v_1_3_2[1]), .A2(v_1_3_2[0]), .ZN(cor_maj_69_n4)
         );
  NAND2_X1 cor_maj_69_U3 ( .A1(v_1_3_2[1]), .A2(v_1_3_2[0]), .ZN(cor_maj_69_n6) );
  NAND2_X1 cor_maj_69_U2 ( .A1(v_1_3_2[2]), .A2(cor_maj_69_n4), .ZN(
        cor_maj_69_n5) );
  NAND2_X1 cor_maj_69_U1 ( .A1(cor_maj_69_n6), .A2(cor_maj_69_n5), .ZN(
        cor_maj_69_port_o) );
  OR2_X1 cor_maj_70_U4 ( .A1(v_1_3_2[1]), .A2(v_1_3_2[0]), .ZN(cor_maj_70_n4)
         );
  NAND2_X1 cor_maj_70_U3 ( .A1(v_1_3_2[1]), .A2(v_1_3_2[0]), .ZN(cor_maj_70_n6) );
  NAND2_X1 cor_maj_70_U2 ( .A1(v_1_3_2[2]), .A2(cor_maj_70_n4), .ZN(
        cor_maj_70_n5) );
  NAND2_X1 cor_maj_70_U1 ( .A1(cor_maj_70_n6), .A2(cor_maj_70_n5), .ZN(
        cor_maj_70_port_o) );
  OR2_X1 cor_maj_71_U4 ( .A1(v_1_3_2[1]), .A2(v_1_3_2[0]), .ZN(cor_maj_71_n4)
         );
  NAND2_X1 cor_maj_71_U3 ( .A1(v_1_3_2[1]), .A2(v_1_3_2[0]), .ZN(cor_maj_71_n6) );
  NAND2_X1 cor_maj_71_U2 ( .A1(v_1_3_2[2]), .A2(cor_maj_71_n4), .ZN(
        cor_maj_71_n5) );
  NAND2_X1 cor_maj_71_U1 ( .A1(cor_maj_71_n6), .A2(cor_maj_71_n5), .ZN(
        cor_maj_71_port_o) );
  XOR2_X1 simpleXor_36_U1 ( .A(n_zz_io_c_0_4[1]), .B(u_0_1[0]), .Z(
        simpleXor_36_port_z) );
  XOR2_X1 simpleXor_37_U1 ( .A(n_zz_io_c_0_4[2]), .B(u_0_2[0]), .Z(
        simpleXor_37_port_z) );
  XOR2_X1 simpleXor_38_U1 ( .A(n_zz_io_c_0_4[3]), .B(u_0_3[0]), .Z(
        simpleXor_38_port_z) );
  XOR2_X1 simpleXor_39_U1 ( .A(n_zz_io_c_1_4[1]), .B(u_1_0[0]), .Z(
        simpleXor_39_port_z) );
  XOR2_X1 simpleXor_40_U1 ( .A(n_zz_io_c_1_4[2]), .B(u_1_2[0]), .Z(
        simpleXor_40_port_z) );
  XOR2_X1 simpleXor_41_U1 ( .A(n_zz_io_c_1_4[3]), .B(u_1_3[0]), .Z(
        simpleXor_41_port_z) );
  XOR2_X1 simpleXor_42_U1 ( .A(n_zz_io_c_2_4[1]), .B(u_2_0[0]), .Z(
        simpleXor_42_port_z) );
  XOR2_X1 simpleXor_43_U1 ( .A(n_zz_io_c_2_4[2]), .B(u_2_1[0]), .Z(
        simpleXor_43_port_z) );
  XOR2_X1 simpleXor_44_U1 ( .A(n_zz_io_c_2_4[3]), .B(u_2_3[0]), .Z(
        simpleXor_44_port_z) );
  XOR2_X1 simpleXor_45_U1 ( .A(n_zz_io_c_3_4[1]), .B(u_3_0[0]), .Z(
        simpleXor_45_port_z) );
  XOR2_X1 simpleXor_46_U1 ( .A(n_zz_io_c_3_4[2]), .B(u_3_1[0]), .Z(
        simpleXor_46_port_z) );
  XOR2_X1 simpleXor_47_U1 ( .A(n_zz_io_c_3_4[3]), .B(u_3_2[0]), .Z(
        simpleXor_47_port_z) );
  XOR2_X1 simpleXor_48_U1 ( .A(n_zz_io_c_0_9[1]), .B(u_0_1[1]), .Z(
        simpleXor_48_port_z) );
  XOR2_X1 simpleXor_49_U1 ( .A(n_zz_io_c_0_9[2]), .B(u_0_2[1]), .Z(
        simpleXor_49_port_z) );
  XOR2_X1 simpleXor_50_U1 ( .A(n_zz_io_c_0_9[3]), .B(u_0_3[1]), .Z(
        simpleXor_50_port_z) );
  XOR2_X1 simpleXor_51_U1 ( .A(n_zz_io_c_1_9[1]), .B(u_1_0[1]), .Z(
        simpleXor_51_port_z) );
  XOR2_X1 simpleXor_52_U1 ( .A(n_zz_io_c_1_9[2]), .B(u_1_2[1]), .Z(
        simpleXor_52_port_z) );
  XOR2_X1 simpleXor_53_U1 ( .A(n_zz_io_c_1_9[3]), .B(u_1_3[1]), .Z(
        simpleXor_53_port_z) );
  XOR2_X1 simpleXor_54_U1 ( .A(n_zz_io_c_2_9[1]), .B(u_2_0[1]), .Z(
        simpleXor_54_port_z) );
  XOR2_X1 simpleXor_55_U1 ( .A(n_zz_io_c_2_9[2]), .B(u_2_1[1]), .Z(
        simpleXor_55_port_z) );
  XOR2_X1 simpleXor_56_U1 ( .A(n_zz_io_c_2_9[3]), .B(u_2_3[1]), .Z(
        simpleXor_56_port_z) );
  XOR2_X1 simpleXor_57_U1 ( .A(n_zz_io_c_3_9[1]), .B(u_3_0[1]), .Z(
        simpleXor_57_port_z) );
  XOR2_X1 simpleXor_58_U1 ( .A(n_zz_io_c_3_9[2]), .B(u_3_1[1]), .Z(
        simpleXor_58_port_z) );
  XOR2_X1 simpleXor_59_U1 ( .A(n_zz_io_c_3_9[3]), .B(u_3_2[1]), .Z(
        simpleXor_59_port_z) );
  XOR2_X1 simpleXor_60_U1 ( .A(n_zz_io_c_0_14[1]), .B(u_0_1[2]), .Z(
        simpleXor_60_port_z) );
  XOR2_X1 simpleXor_61_U1 ( .A(n_zz_io_c_0_14[2]), .B(u_0_2[2]), .Z(
        simpleXor_61_port_z) );
  XOR2_X1 simpleXor_62_U1 ( .A(n_zz_io_c_0_14[3]), .B(u_0_3[2]), .Z(
        simpleXor_62_port_z) );
  XOR2_X1 simpleXor_63_U1 ( .A(n_zz_io_c_1_14[1]), .B(u_1_0[2]), .Z(
        simpleXor_63_port_z) );
  XOR2_X1 simpleXor_64_U1 ( .A(n_zz_io_c_1_14[2]), .B(u_1_2[2]), .Z(
        simpleXor_64_port_z) );
  XOR2_X1 simpleXor_65_U1 ( .A(n_zz_io_c_1_14[3]), .B(u_1_3[2]), .Z(
        simpleXor_65_port_z) );
  XOR2_X1 simpleXor_66_U1 ( .A(n_zz_io_c_2_14[1]), .B(u_2_0[2]), .Z(
        simpleXor_66_port_z) );
  XOR2_X1 simpleXor_67_U1 ( .A(n_zz_io_c_2_14[2]), .B(u_2_1[2]), .Z(
        simpleXor_67_port_z) );
  XOR2_X1 simpleXor_68_U1 ( .A(n_zz_io_c_2_14[3]), .B(u_2_3[2]), .Z(
        simpleXor_68_port_z) );
  XOR2_X1 simpleXor_69_U1 ( .A(n_zz_io_c_3_14[1]), .B(u_3_0[2]), .Z(
        simpleXor_69_port_z) );
  XOR2_X1 simpleXor_70_U1 ( .A(n_zz_io_c_3_14[2]), .B(u_3_1[2]), .Z(
        simpleXor_70_port_z) );
  XOR2_X1 simpleXor_71_U1 ( .A(n_zz_io_c_3_14[3]), .B(u_3_2[2]), .Z(
        simpleXor_71_port_z) );
endmodule

