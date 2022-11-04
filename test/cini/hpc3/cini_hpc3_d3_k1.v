
module CINI_HPC3 ( port_a_0, port_a_1, port_a_2, port_a_3, port_b_0, port_b_1, 
        port_b_2, port_b_3, port_c_0, port_c_1, port_c_2, port_c_3, 
        port_rand_ref, port_rand_mul, clk, reset );
  input [2:0] port_a_0;
  input [2:0] port_a_1;
  input [2:0] port_a_2;
  input [2:0] port_a_3;
  input [2:0] port_b_0;
  input [2:0] port_b_1;
  input [2:0] port_b_2;
  input [2:0] port_b_3;
  output [2:0] port_c_0;
  output [2:0] port_c_1;
  output [2:0] port_c_2;
  output [2:0] port_c_3;
  input [5:0] port_rand_ref;
  input [5:0] port_rand_mul;
  input clk, reset;
  wire   simpleAnd_36_port_z, simpleAnd_37_port_z, simpleAnd_38_port_z,
         simpleAnd_39_port_z, simpleAnd_40_port_z, simpleAnd_41_port_z,
         simpleAnd_42_port_z, simpleAnd_43_port_z, simpleAnd_44_port_z,
         simpleAnd_45_port_z, simpleAnd_46_port_z, simpleAnd_47_port_z,
         simpleAnd_48_port_z, simpleAnd_49_port_z, simpleAnd_50_port_z,
         simpleAnd_51_port_z, simpleAnd_52_port_z, simpleAnd_53_port_z,
         simpleAnd_54_port_z, simpleAnd_55_port_z, simpleAnd_56_port_z,
         simpleAnd_57_port_z, simpleAnd_58_port_z, simpleAnd_59_port_z,
         simpleAnd_60_port_z, simpleAnd_61_port_z, simpleAnd_62_port_z,
         simpleAnd_63_port_z, simpleAnd_64_port_z, simpleAnd_65_port_z,
         simpleAnd_66_port_z, simpleAnd_67_port_z, simpleAnd_68_port_z,
         simpleAnd_69_port_z, simpleAnd_70_port_z, simpleAnd_71_port_z,
         maj_72_port_o, maj_73_port_o, maj_74_port_o, maj_75_port_o,
         maj_76_port_o, maj_77_port_o, maj_78_port_o, maj_79_port_o,
         maj_80_port_o, maj_81_port_o, maj_82_port_o, maj_83_port_o,
         maj_84_port_o, maj_85_port_o, maj_86_port_o, maj_87_port_o,
         maj_88_port_o, maj_89_port_o, maj_90_port_o, maj_91_port_o,
         maj_92_port_o, maj_93_port_o, maj_94_port_o, maj_95_port_o,
         maj_96_port_o, maj_97_port_o, maj_98_port_o, maj_99_port_o,
         maj_100_port_o, maj_101_port_o, maj_102_port_o, maj_103_port_o,
         maj_104_port_o, maj_105_port_o, maj_106_port_o, maj_107_port_o,
         maj_108_port_o, maj_109_port_o, maj_110_port_o, maj_111_port_o,
         maj_112_port_o, maj_113_port_o, maj_114_port_o, maj_115_port_o,
         maj_116_port_o, maj_117_port_o, maj_118_port_o, maj_119_port_o,
         maj_120_port_o, maj_121_port_o, maj_122_port_o, maj_123_port_o,
         maj_124_port_o, maj_125_port_o, maj_126_port_o, maj_127_port_o,
         maj_128_port_o, maj_129_port_o, maj_130_port_o, maj_131_port_o,
         maj_132_port_o, maj_133_port_o, maj_134_port_o, maj_135_port_o,
         maj_136_port_o, maj_137_port_o, maj_138_port_o, maj_139_port_o,
         maj_140_port_o, maj_141_port_o, maj_142_port_o, maj_143_port_o, N0,
         N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, n1, n2, n3, n4, n5, n6,
         n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, maj_72_n3, maj_72_n2, maj_72_n1,
         maj_73_n6, maj_73_n5, maj_73_n4, maj_74_n6, maj_74_n5, maj_74_n4,
         maj_75_n6, maj_75_n5, maj_75_n4, maj_76_n6, maj_76_n5, maj_76_n4,
         maj_77_n6, maj_77_n5, maj_77_n4, maj_78_n6, maj_78_n5, maj_78_n4,
         maj_79_n6, maj_79_n5, maj_79_n4, maj_80_n6, maj_80_n5, maj_80_n4,
         maj_81_n6, maj_81_n5, maj_81_n4, maj_82_n6, maj_82_n5, maj_82_n4,
         maj_83_n6, maj_83_n5, maj_83_n4, maj_84_n6, maj_84_n5, maj_84_n4,
         maj_85_n6, maj_85_n5, maj_85_n4, maj_86_n6, maj_86_n5, maj_86_n4,
         maj_87_n6, maj_87_n5, maj_87_n4, maj_88_n6, maj_88_n5, maj_88_n4,
         maj_89_n6, maj_89_n5, maj_89_n4, maj_90_n6, maj_90_n5, maj_90_n4,
         maj_91_n6, maj_91_n5, maj_91_n4, maj_92_n6, maj_92_n5, maj_92_n4,
         maj_93_n6, maj_93_n5, maj_93_n4, maj_94_n6, maj_94_n5, maj_94_n4,
         maj_95_n6, maj_95_n5, maj_95_n4, maj_96_n6, maj_96_n5, maj_96_n4,
         maj_97_n6, maj_97_n5, maj_97_n4, maj_98_n6, maj_98_n5, maj_98_n4,
         maj_99_n6, maj_99_n5, maj_99_n4, maj_100_n6, maj_100_n5, maj_100_n4,
         maj_101_n6, maj_101_n5, maj_101_n4, maj_102_n6, maj_102_n5,
         maj_102_n4, maj_103_n6, maj_103_n5, maj_103_n4, maj_104_n6,
         maj_104_n5, maj_104_n4, maj_105_n6, maj_105_n5, maj_105_n4,
         maj_106_n6, maj_106_n5, maj_106_n4, maj_107_n6, maj_107_n5,
         maj_107_n4, maj_108_n6, maj_108_n5, maj_108_n4, maj_109_n6,
         maj_109_n5, maj_109_n4, maj_110_n6, maj_110_n5, maj_110_n4,
         maj_111_n6, maj_111_n5, maj_111_n4, maj_112_n6, maj_112_n5,
         maj_112_n4, maj_113_n6, maj_113_n5, maj_113_n4, maj_114_n6,
         maj_114_n5, maj_114_n4, maj_115_n6, maj_115_n5, maj_115_n4,
         maj_116_n6, maj_116_n5, maj_116_n4, maj_117_n6, maj_117_n5,
         maj_117_n4, maj_118_n6, maj_118_n5, maj_118_n4, maj_119_n6,
         maj_119_n5, maj_119_n4, maj_120_n6, maj_120_n5, maj_120_n4,
         maj_121_n6, maj_121_n5, maj_121_n4, maj_122_n6, maj_122_n5,
         maj_122_n4, maj_123_n6, maj_123_n5, maj_123_n4, maj_124_n6,
         maj_124_n5, maj_124_n4, maj_125_n6, maj_125_n5, maj_125_n4,
         maj_126_n6, maj_126_n5, maj_126_n4, maj_127_n6, maj_127_n5,
         maj_127_n4, maj_128_n6, maj_128_n5, maj_128_n4, maj_129_n6,
         maj_129_n5, maj_129_n4, maj_130_n6, maj_130_n5, maj_130_n4,
         maj_131_n6, maj_131_n5, maj_131_n4, maj_132_n6, maj_132_n5,
         maj_132_n4, maj_133_n6, maj_133_n5, maj_133_n4, maj_134_n6,
         maj_134_n5, maj_134_n4, maj_135_n6, maj_135_n5, maj_135_n4,
         maj_136_n6, maj_136_n5, maj_136_n4, maj_137_n6, maj_137_n5,
         maj_137_n4, maj_138_n6, maj_138_n5, maj_138_n4, maj_139_n6,
         maj_139_n5, maj_139_n4, maj_140_n6, maj_140_n5, maj_140_n4,
         maj_141_n6, maj_141_n5, maj_141_n4, maj_142_n6, maj_142_n5,
         maj_142_n4, maj_143_n6, maj_143_n5, maj_143_n4;
  wire   [2:0] u_0_0;
  wire   [2:0] v_0_0;
  wire   [2:0] u_0_1;
  wire   [2:0] v_0_1;
  wire   [2:0] u_0_2;
  wire   [2:0] v_0_2;
  wire   [2:0] u_1_0;
  wire   [2:0] v_1_0;
  wire   [2:0] u_1_1;
  wire   [2:0] v_1_1;
  wire   [2:0] u_1_2;
  wire   [2:0] v_1_2;
  wire   [2:0] u_2_0;
  wire   [2:0] v_2_0;
  wire   [2:0] u_2_1;
  wire   [2:0] v_2_1;
  wire   [2:0] u_2_2;
  wire   [2:0] v_2_2;
  wire   [2:0] u_3_0;
  wire   [2:0] v_3_0;
  wire   [2:0] u_3_1;
  wire   [2:0] v_3_1;
  wire   [2:0] u_3_2;
  wire   [2:0] v_3_2;
  wire   [2:0] temp_0_0;
  wire   [2:0] a_reg_0;
  wire   [2:0] v_reg_0_0;
  wire   [2:0] u_reg_0_0;
  wire   [2:0] v_reg_0_1;
  wire   [2:0] u_reg_0_1;
  wire   [2:0] v_reg_0_2;
  wire   [2:0] u_reg_0_2;
  wire   [2:0] temp_0_1;
  wire   [2:0] a_reg_1;
  wire   [2:0] v_reg_1_0;
  wire   [2:0] u_reg_1_0;
  wire   [2:0] v_reg_1_1;
  wire   [2:0] u_reg_1_1;
  wire   [2:0] v_reg_1_2;
  wire   [2:0] u_reg_1_2;
  wire   [2:0] temp_0_2;
  wire   [2:0] a_reg_2;
  wire   [2:0] v_reg_2_0;
  wire   [2:0] u_reg_2_0;
  wire   [2:0] v_reg_2_1;
  wire   [2:0] u_reg_2_1;
  wire   [2:0] v_reg_2_2;
  wire   [2:0] u_reg_2_2;
  wire   [2:0] temp_0_3;
  wire   [2:0] a_reg_3;
  wire   [2:0] v_reg_3_0;
  wire   [2:0] u_reg_3_0;
  wire   [2:0] v_reg_3_1;
  wire   [2:0] u_reg_3_1;
  wire   [2:0] v_reg_3_2;
  wire   [2:0] u_reg_3_2;

  DFF_X1 u_reg_2_2_reg_2_ ( .D(maj_136_port_o), .CK(clk), .Q(u_reg_2_2[2]), 
        .QN() );
  DFF_X1 u_reg_2_2_reg_1_ ( .D(maj_112_port_o), .CK(clk), .Q(u_reg_2_2[1]), 
        .QN() );
  DFF_X1 u_reg_2_2_reg_0_ ( .D(maj_88_port_o), .CK(clk), .Q(u_reg_2_2[0]), 
        .QN() );
  DFF_X1 a_reg_3_reg_2_ ( .D(port_a_3[2]), .CK(clk), .Q(a_reg_3[2]), .QN() );
  DFF_X1 a_reg_3_reg_1_ ( .D(port_a_3[1]), .CK(clk), .Q(a_reg_3[1]), .QN() );
  DFF_X1 a_reg_3_reg_0_ ( .D(port_a_3[0]), .CK(clk), .Q(a_reg_3[0]), .QN() );
  DFF_X1 v_reg_3_2_reg_2_ ( .D(maj_143_port_o), .CK(clk), .Q(v_reg_3_2[2]), 
        .QN() );
  DFF_X1 v_reg_3_2_reg_1_ ( .D(maj_119_port_o), .CK(clk), .Q(v_reg_3_2[1]), 
        .QN() );
  DFF_X1 v_reg_3_2_reg_0_ ( .D(maj_95_port_o), .CK(clk), .Q(v_reg_3_2[0]), 
        .QN() );
  DFF_X1 u_reg_3_0_reg_2_ ( .D(maj_138_port_o), .CK(clk), .Q(u_reg_3_0[2]), 
        .QN() );
  DFF_X1 u_reg_3_0_reg_1_ ( .D(maj_114_port_o), .CK(clk), .Q(u_reg_3_0[1]), 
        .QN() );
  DFF_X1 u_reg_3_0_reg_0_ ( .D(maj_90_port_o), .CK(clk), .Q(u_reg_3_0[0]), 
        .QN() );
  DFF_X1 ab_reg_3_reg_2_ ( .D(N11), .CK(clk), .Q(temp_0_3[2]), .QN() );
  DFF_X1 ab_reg_3_reg_1_ ( .D(N7), .CK(clk), .Q(temp_0_3[1]), .QN() );
  DFF_X1 ab_reg_3_reg_0_ ( .D(N3), .CK(clk), .Q(temp_0_3[0]), .QN() );
  DFF_X1 v_reg_3_1_reg_2_ ( .D(maj_141_port_o), .CK(clk), .Q(v_reg_3_1[2]), 
        .QN() );
  DFF_X1 v_reg_3_1_reg_1_ ( .D(maj_117_port_o), .CK(clk), .Q(v_reg_3_1[1]), 
        .QN() );
  DFF_X1 v_reg_3_1_reg_0_ ( .D(maj_93_port_o), .CK(clk), .Q(v_reg_3_1[0]), 
        .QN() );
  DFF_X1 u_reg_3_1_reg_2_ ( .D(maj_140_port_o), .CK(clk), .Q(u_reg_3_1[2]), 
        .QN() );
  DFF_X1 u_reg_3_1_reg_1_ ( .D(maj_116_port_o), .CK(clk), .Q(u_reg_3_1[1]), 
        .QN() );
  DFF_X1 u_reg_3_1_reg_0_ ( .D(maj_92_port_o), .CK(clk), .Q(u_reg_3_1[0]), 
        .QN() );
  DFF_X1 a_reg_2_reg_2_ ( .D(port_a_2[2]), .CK(clk), .Q(a_reg_2[2]), .QN() );
  DFF_X1 a_reg_2_reg_1_ ( .D(port_a_2[1]), .CK(clk), .Q(a_reg_2[1]), .QN() );
  DFF_X1 a_reg_2_reg_0_ ( .D(port_a_2[0]), .CK(clk), .Q(a_reg_2[0]), .QN() );
  DFF_X1 v_reg_3_0_reg_2_ ( .D(maj_139_port_o), .CK(clk), .Q(v_reg_3_0[2]), 
        .QN() );
  DFF_X1 v_reg_3_0_reg_1_ ( .D(maj_115_port_o), .CK(clk), .Q(v_reg_3_0[1]), 
        .QN() );
  DFF_X1 v_reg_3_0_reg_0_ ( .D(maj_91_port_o), .CK(clk), .Q(v_reg_3_0[0]), 
        .QN() );
  DFF_X1 u_reg_3_2_reg_2_ ( .D(maj_142_port_o), .CK(clk), .Q(u_reg_3_2[2]), 
        .QN() );
  DFF_X1 u_reg_3_2_reg_1_ ( .D(maj_118_port_o), .CK(clk), .Q(u_reg_3_2[1]), 
        .QN() );
  DFF_X1 u_reg_3_2_reg_0_ ( .D(maj_94_port_o), .CK(clk), .Q(u_reg_3_2[0]), 
        .QN() );
  DFF_X1 ab_reg_2_reg_2_ ( .D(N10), .CK(clk), .Q(temp_0_2[2]), .QN() );
  DFF_X1 ab_reg_2_reg_1_ ( .D(N6), .CK(clk), .Q(temp_0_2[1]), .QN() );
  DFF_X1 ab_reg_2_reg_0_ ( .D(N2), .CK(clk), .Q(temp_0_2[0]), .QN() );
  DFF_X1 v_reg_2_2_reg_2_ ( .D(maj_137_port_o), .CK(clk), .Q(v_reg_2_2[2]), 
        .QN() );
  DFF_X1 v_reg_2_2_reg_1_ ( .D(maj_113_port_o), .CK(clk), .Q(v_reg_2_2[1]), 
        .QN() );
  DFF_X1 v_reg_2_2_reg_0_ ( .D(maj_89_port_o), .CK(clk), .Q(v_reg_2_2[0]), 
        .QN() );
  DFF_X1 a_reg_1_reg_2_ ( .D(port_a_1[2]), .CK(clk), .Q(a_reg_1[2]), .QN() );
  DFF_X1 a_reg_1_reg_1_ ( .D(port_a_1[1]), .CK(clk), .Q(a_reg_1[1]), .QN() );
  DFF_X1 a_reg_1_reg_0_ ( .D(port_a_1[0]), .CK(clk), .Q(a_reg_1[0]), .QN() );
  DFF_X1 ab_reg_1_reg_2_ ( .D(N9), .CK(clk), .Q(temp_0_1[2]), .QN() );
  DFF_X1 ab_reg_1_reg_1_ ( .D(N5), .CK(clk), .Q(temp_0_1[1]), .QN() );
  DFF_X1 ab_reg_1_reg_0_ ( .D(N1), .CK(clk), .Q(temp_0_1[0]), .QN() );
  DFF_X1 a_reg_0_reg_2_ ( .D(port_a_0[2]), .CK(clk), .Q(a_reg_0[2]), .QN() );
  DFF_X1 a_reg_0_reg_1_ ( .D(port_a_0[1]), .CK(clk), .Q(a_reg_0[1]), .QN() );
  DFF_X1 a_reg_0_reg_0_ ( .D(port_a_0[0]), .CK(clk), .Q(a_reg_0[0]), .QN() );
  DFF_X1 ab_reg_0_reg_2_ ( .D(N8), .CK(clk), .Q(temp_0_0[2]), .QN() );
  DFF_X1 ab_reg_0_reg_1_ ( .D(N4), .CK(clk), .Q(temp_0_0[1]), .QN() );
  DFF_X1 ab_reg_0_reg_0_ ( .D(N0), .CK(clk), .Q(temp_0_0[0]), .QN() );
  DFF_X1 u_reg_0_0_reg_2_ ( .D(maj_120_port_o), .CK(clk), .Q(u_reg_0_0[2]), 
        .QN() );
  DFF_X1 u_reg_0_0_reg_1_ ( .D(maj_96_port_o), .CK(clk), .Q(u_reg_0_0[1]), 
        .QN() );
  DFF_X1 u_reg_0_0_reg_0_ ( .D(maj_72_port_o), .CK(clk), .Q(u_reg_0_0[0]), 
        .QN() );
  DFF_X1 v_reg_0_0_reg_2_ ( .D(maj_121_port_o), .CK(clk), .Q(v_reg_0_0[2]), 
        .QN() );
  DFF_X1 v_reg_0_0_reg_1_ ( .D(maj_97_port_o), .CK(clk), .Q(v_reg_0_0[1]), 
        .QN() );
  DFF_X1 v_reg_0_0_reg_0_ ( .D(maj_73_port_o), .CK(clk), .Q(v_reg_0_0[0]), 
        .QN() );
  DFF_X1 u_reg_0_1_reg_2_ ( .D(maj_122_port_o), .CK(clk), .Q(u_reg_0_1[2]), 
        .QN() );
  DFF_X1 u_reg_0_1_reg_1_ ( .D(maj_98_port_o), .CK(clk), .Q(u_reg_0_1[1]), 
        .QN() );
  DFF_X1 u_reg_0_1_reg_0_ ( .D(maj_74_port_o), .CK(clk), .Q(u_reg_0_1[0]), 
        .QN() );
  DFF_X1 v_reg_0_1_reg_2_ ( .D(maj_123_port_o), .CK(clk), .Q(v_reg_0_1[2]), 
        .QN() );
  DFF_X1 v_reg_0_1_reg_1_ ( .D(maj_99_port_o), .CK(clk), .Q(v_reg_0_1[1]), 
        .QN() );
  DFF_X1 v_reg_0_1_reg_0_ ( .D(maj_75_port_o), .CK(clk), .Q(v_reg_0_1[0]), 
        .QN() );
  DFF_X1 u_reg_0_2_reg_2_ ( .D(maj_124_port_o), .CK(clk), .Q(u_reg_0_2[2]), 
        .QN() );
  DFF_X1 u_reg_0_2_reg_1_ ( .D(maj_100_port_o), .CK(clk), .Q(u_reg_0_2[1]), 
        .QN() );
  DFF_X1 u_reg_0_2_reg_0_ ( .D(maj_76_port_o), .CK(clk), .Q(u_reg_0_2[0]), 
        .QN() );
  DFF_X1 v_reg_0_2_reg_2_ ( .D(maj_125_port_o), .CK(clk), .Q(v_reg_0_2[2]), 
        .QN() );
  DFF_X1 v_reg_0_2_reg_1_ ( .D(maj_101_port_o), .CK(clk), .Q(v_reg_0_2[1]), 
        .QN() );
  DFF_X1 v_reg_0_2_reg_0_ ( .D(maj_77_port_o), .CK(clk), .Q(v_reg_0_2[0]), 
        .QN() );
  DFF_X1 u_reg_1_0_reg_2_ ( .D(maj_126_port_o), .CK(clk), .Q(u_reg_1_0[2]), 
        .QN() );
  DFF_X1 u_reg_1_0_reg_1_ ( .D(maj_102_port_o), .CK(clk), .Q(u_reg_1_0[1]), 
        .QN() );
  DFF_X1 u_reg_1_0_reg_0_ ( .D(maj_78_port_o), .CK(clk), .Q(u_reg_1_0[0]), 
        .QN() );
  DFF_X1 v_reg_1_0_reg_2_ ( .D(maj_127_port_o), .CK(clk), .Q(v_reg_1_0[2]), 
        .QN() );
  DFF_X1 v_reg_1_0_reg_1_ ( .D(maj_103_port_o), .CK(clk), .Q(v_reg_1_0[1]), 
        .QN() );
  DFF_X1 v_reg_1_0_reg_0_ ( .D(maj_79_port_o), .CK(clk), .Q(v_reg_1_0[0]), 
        .QN() );
  DFF_X1 u_reg_1_1_reg_2_ ( .D(maj_128_port_o), .CK(clk), .Q(u_reg_1_1[2]), 
        .QN() );
  DFF_X1 u_reg_1_1_reg_1_ ( .D(maj_104_port_o), .CK(clk), .Q(u_reg_1_1[1]), 
        .QN() );
  DFF_X1 u_reg_1_1_reg_0_ ( .D(maj_80_port_o), .CK(clk), .Q(u_reg_1_1[0]), 
        .QN() );
  DFF_X1 v_reg_1_1_reg_2_ ( .D(maj_129_port_o), .CK(clk), .Q(v_reg_1_1[2]), 
        .QN() );
  DFF_X1 v_reg_1_1_reg_1_ ( .D(maj_105_port_o), .CK(clk), .Q(v_reg_1_1[1]), 
        .QN() );
  DFF_X1 v_reg_1_1_reg_0_ ( .D(maj_81_port_o), .CK(clk), .Q(v_reg_1_1[0]), 
        .QN() );
  DFF_X1 u_reg_1_2_reg_2_ ( .D(maj_130_port_o), .CK(clk), .Q(u_reg_1_2[2]), 
        .QN() );
  DFF_X1 u_reg_1_2_reg_1_ ( .D(maj_106_port_o), .CK(clk), .Q(u_reg_1_2[1]), 
        .QN() );
  DFF_X1 u_reg_1_2_reg_0_ ( .D(maj_82_port_o), .CK(clk), .Q(u_reg_1_2[0]), 
        .QN() );
  DFF_X1 v_reg_1_2_reg_2_ ( .D(maj_131_port_o), .CK(clk), .Q(v_reg_1_2[2]), 
        .QN() );
  DFF_X1 v_reg_1_2_reg_1_ ( .D(maj_107_port_o), .CK(clk), .Q(v_reg_1_2[1]), 
        .QN() );
  DFF_X1 v_reg_1_2_reg_0_ ( .D(maj_83_port_o), .CK(clk), .Q(v_reg_1_2[0]), 
        .QN() );
  DFF_X1 u_reg_2_0_reg_2_ ( .D(maj_132_port_o), .CK(clk), .Q(u_reg_2_0[2]), 
        .QN() );
  DFF_X1 u_reg_2_0_reg_1_ ( .D(maj_108_port_o), .CK(clk), .Q(u_reg_2_0[1]), 
        .QN() );
  DFF_X1 u_reg_2_0_reg_0_ ( .D(maj_84_port_o), .CK(clk), .Q(u_reg_2_0[0]), 
        .QN() );
  DFF_X1 v_reg_2_0_reg_2_ ( .D(maj_133_port_o), .CK(clk), .Q(v_reg_2_0[2]), 
        .QN() );
  DFF_X1 v_reg_2_0_reg_1_ ( .D(maj_109_port_o), .CK(clk), .Q(v_reg_2_0[1]), 
        .QN() );
  DFF_X1 v_reg_2_0_reg_0_ ( .D(maj_85_port_o), .CK(clk), .Q(v_reg_2_0[0]), 
        .QN() );
  DFF_X1 u_reg_2_1_reg_2_ ( .D(maj_134_port_o), .CK(clk), .Q(u_reg_2_1[2]), 
        .QN() );
  DFF_X1 u_reg_2_1_reg_1_ ( .D(maj_110_port_o), .CK(clk), .Q(u_reg_2_1[1]), 
        .QN() );
  DFF_X1 u_reg_2_1_reg_0_ ( .D(maj_86_port_o), .CK(clk), .Q(u_reg_2_1[0]), 
        .QN() );
  DFF_X1 v_reg_2_1_reg_2_ ( .D(maj_135_port_o), .CK(clk), .Q(v_reg_2_1[2]), 
        .QN() );
  DFF_X1 v_reg_2_1_reg_1_ ( .D(maj_111_port_o), .CK(clk), .Q(v_reg_2_1[1]), 
        .QN() );
  DFF_X1 v_reg_2_1_reg_0_ ( .D(maj_87_port_o), .CK(clk), .Q(v_reg_2_1[0]), 
        .QN() );
  XNOR2_X1 U135 ( .A(n33), .B(n34), .ZN(n32) );
  NAND2_X1 U136 ( .A1(v_reg_3_1[0]), .A2(a_reg_3[0]), .ZN(n33) );
  NAND2_X1 U137 ( .A1(v_reg_3_0[0]), .A2(a_reg_3[0]), .ZN(n34) );
  XNOR2_X1 U138 ( .A(n25), .B(n26), .ZN(n24) );
  NAND2_X1 U139 ( .A1(v_reg_3_1[1]), .A2(a_reg_3[1]), .ZN(n25) );
  NAND2_X1 U140 ( .A1(v_reg_3_0[1]), .A2(a_reg_3[1]), .ZN(n26) );
  XNOR2_X1 U141 ( .A(n17), .B(n18), .ZN(n16) );
  NAND2_X1 U142 ( .A1(v_reg_3_1[2]), .A2(a_reg_3[2]), .ZN(n17) );
  NAND2_X1 U143 ( .A1(v_reg_3_0[2]), .A2(a_reg_3[2]), .ZN(n18) );
  XNOR2_X1 U144 ( .A(n57), .B(n58), .ZN(n56) );
  NAND2_X1 U145 ( .A1(v_reg_2_1[0]), .A2(a_reg_2[0]), .ZN(n57) );
  NAND2_X1 U146 ( .A1(v_reg_2_0[0]), .A2(a_reg_2[0]), .ZN(n58) );
  XNOR2_X1 U147 ( .A(n49), .B(n50), .ZN(n48) );
  NAND2_X1 U148 ( .A1(v_reg_2_1[1]), .A2(a_reg_2[1]), .ZN(n49) );
  NAND2_X1 U149 ( .A1(v_reg_2_0[1]), .A2(a_reg_2[1]), .ZN(n50) );
  XNOR2_X1 U150 ( .A(n41), .B(n42), .ZN(n40) );
  NAND2_X1 U151 ( .A1(v_reg_2_1[2]), .A2(a_reg_2[2]), .ZN(n41) );
  NAND2_X1 U152 ( .A1(v_reg_2_0[2]), .A2(a_reg_2[2]), .ZN(n42) );
  XNOR2_X1 U153 ( .A(n81), .B(n82), .ZN(n80) );
  NAND2_X1 U154 ( .A1(v_reg_1_1[0]), .A2(a_reg_1[0]), .ZN(n81) );
  NAND2_X1 U155 ( .A1(v_reg_1_0[0]), .A2(a_reg_1[0]), .ZN(n82) );
  XNOR2_X1 U156 ( .A(n73), .B(n74), .ZN(n72) );
  NAND2_X1 U157 ( .A1(v_reg_1_1[1]), .A2(a_reg_1[1]), .ZN(n73) );
  NAND2_X1 U158 ( .A1(v_reg_1_0[1]), .A2(a_reg_1[1]), .ZN(n74) );
  XNOR2_X1 U159 ( .A(n65), .B(n66), .ZN(n64) );
  NAND2_X1 U160 ( .A1(v_reg_1_1[2]), .A2(a_reg_1[2]), .ZN(n65) );
  NAND2_X1 U161 ( .A1(v_reg_1_0[2]), .A2(a_reg_1[2]), .ZN(n66) );
  XNOR2_X1 U162 ( .A(n105), .B(n106), .ZN(n104) );
  NAND2_X1 U163 ( .A1(v_reg_0_1[0]), .A2(a_reg_0[0]), .ZN(n105) );
  NAND2_X1 U164 ( .A1(v_reg_0_0[0]), .A2(a_reg_0[0]), .ZN(n106) );
  XNOR2_X1 U165 ( .A(n97), .B(n98), .ZN(n96) );
  NAND2_X1 U166 ( .A1(v_reg_0_1[1]), .A2(a_reg_0[1]), .ZN(n97) );
  NAND2_X1 U167 ( .A1(v_reg_0_0[1]), .A2(a_reg_0[1]), .ZN(n98) );
  XNOR2_X1 U168 ( .A(n89), .B(n90), .ZN(n88) );
  NAND2_X1 U169 ( .A1(v_reg_0_1[2]), .A2(a_reg_0[2]), .ZN(n89) );
  NAND2_X1 U170 ( .A1(v_reg_0_0[2]), .A2(a_reg_0[2]), .ZN(n90) );
  XNOR2_X1 U171 ( .A(u_reg_3_0[0]), .B(temp_0_3[0]), .ZN(n36) );
  XNOR2_X1 U172 ( .A(u_reg_3_0[1]), .B(temp_0_3[1]), .ZN(n28) );
  XNOR2_X1 U173 ( .A(u_reg_3_0[2]), .B(temp_0_3[2]), .ZN(n20) );
  XNOR2_X1 U174 ( .A(u_reg_2_0[0]), .B(temp_0_2[0]), .ZN(n60) );
  XNOR2_X1 U175 ( .A(u_reg_2_0[1]), .B(temp_0_2[1]), .ZN(n52) );
  XNOR2_X1 U176 ( .A(u_reg_2_0[2]), .B(temp_0_2[2]), .ZN(n44) );
  XNOR2_X1 U177 ( .A(u_reg_1_0[0]), .B(temp_0_1[0]), .ZN(n84) );
  XNOR2_X1 U178 ( .A(u_reg_1_0[1]), .B(temp_0_1[1]), .ZN(n76) );
  XNOR2_X1 U179 ( .A(u_reg_1_0[2]), .B(temp_0_1[2]), .ZN(n68) );
  XNOR2_X1 U180 ( .A(u_reg_0_0[0]), .B(temp_0_0[0]), .ZN(n108) );
  XNOR2_X1 U181 ( .A(u_reg_0_0[1]), .B(temp_0_0[1]), .ZN(n100) );
  XNOR2_X1 U182 ( .A(u_reg_0_0[2]), .B(temp_0_0[2]), .ZN(n92) );
  INV_X1 U183 ( .A(port_a_1[0]), .ZN(n6) );
  INV_X1 U184 ( .A(port_a_1[1]), .ZN(n5) );
  INV_X1 U185 ( .A(port_a_1[2]), .ZN(n4) );
  INV_X1 U186 ( .A(port_a_0[0]), .ZN(n3) );
  INV_X1 U187 ( .A(port_a_0[1]), .ZN(n2) );
  INV_X1 U188 ( .A(port_a_0[2]), .ZN(n1) );
  INV_X1 U189 ( .A(port_a_3[0]), .ZN(n12) );
  INV_X1 U190 ( .A(port_a_3[1]), .ZN(n11) );
  INV_X1 U191 ( .A(port_a_3[2]), .ZN(n10) );
  INV_X1 U192 ( .A(port_a_2[0]), .ZN(n9) );
  INV_X1 U193 ( .A(port_a_2[1]), .ZN(n8) );
  INV_X1 U194 ( .A(port_a_2[2]), .ZN(n7) );
  XOR2_X1 U195 ( .A(n29), .B(n30), .Z(port_c_3[0]) );
  XOR2_X1 U196 ( .A(n35), .B(n36), .Z(n29) );
  XOR2_X1 U197 ( .A(n31), .B(n32), .Z(n30) );
  XNOR2_X1 U198 ( .A(u_reg_3_2[0]), .B(u_reg_3_1[0]), .ZN(n35) );
  XOR2_X1 U199 ( .A(n21), .B(n22), .Z(port_c_3[1]) );
  XOR2_X1 U200 ( .A(n27), .B(n28), .Z(n21) );
  XOR2_X1 U201 ( .A(n23), .B(n24), .Z(n22) );
  XNOR2_X1 U202 ( .A(u_reg_3_2[1]), .B(u_reg_3_1[1]), .ZN(n27) );
  XOR2_X1 U203 ( .A(n13), .B(n14), .Z(port_c_3[2]) );
  XOR2_X1 U204 ( .A(n19), .B(n20), .Z(n13) );
  XOR2_X1 U205 ( .A(n15), .B(n16), .Z(n14) );
  XNOR2_X1 U206 ( .A(u_reg_3_2[2]), .B(u_reg_3_1[2]), .ZN(n19) );
  XOR2_X1 U207 ( .A(n53), .B(n54), .Z(port_c_2[0]) );
  XOR2_X1 U208 ( .A(n59), .B(n60), .Z(n53) );
  XOR2_X1 U209 ( .A(n55), .B(n56), .Z(n54) );
  XNOR2_X1 U210 ( .A(u_reg_2_2[0]), .B(u_reg_2_1[0]), .ZN(n59) );
  XOR2_X1 U211 ( .A(n45), .B(n46), .Z(port_c_2[1]) );
  XOR2_X1 U212 ( .A(n51), .B(n52), .Z(n45) );
  XOR2_X1 U213 ( .A(n47), .B(n48), .Z(n46) );
  XNOR2_X1 U214 ( .A(u_reg_2_2[1]), .B(u_reg_2_1[1]), .ZN(n51) );
  XOR2_X1 U215 ( .A(n37), .B(n38), .Z(port_c_2[2]) );
  XOR2_X1 U216 ( .A(n43), .B(n44), .Z(n37) );
  XOR2_X1 U217 ( .A(n39), .B(n40), .Z(n38) );
  XNOR2_X1 U218 ( .A(u_reg_2_2[2]), .B(u_reg_2_1[2]), .ZN(n43) );
  XOR2_X1 U219 ( .A(n77), .B(n78), .Z(port_c_1[0]) );
  XOR2_X1 U220 ( .A(n83), .B(n84), .Z(n77) );
  XOR2_X1 U221 ( .A(n79), .B(n80), .Z(n78) );
  XNOR2_X1 U222 ( .A(u_reg_1_2[0]), .B(u_reg_1_1[0]), .ZN(n83) );
  XOR2_X1 U223 ( .A(n69), .B(n70), .Z(port_c_1[1]) );
  XOR2_X1 U224 ( .A(n75), .B(n76), .Z(n69) );
  XOR2_X1 U225 ( .A(n71), .B(n72), .Z(n70) );
  XNOR2_X1 U226 ( .A(u_reg_1_2[1]), .B(u_reg_1_1[1]), .ZN(n75) );
  XOR2_X1 U227 ( .A(n61), .B(n62), .Z(port_c_1[2]) );
  XOR2_X1 U228 ( .A(n67), .B(n68), .Z(n61) );
  XOR2_X1 U229 ( .A(n63), .B(n64), .Z(n62) );
  XNOR2_X1 U230 ( .A(u_reg_1_2[2]), .B(u_reg_1_1[2]), .ZN(n67) );
  XOR2_X1 U231 ( .A(n101), .B(n102), .Z(port_c_0[0]) );
  XOR2_X1 U232 ( .A(n107), .B(n108), .Z(n101) );
  XOR2_X1 U233 ( .A(n103), .B(n104), .Z(n102) );
  XNOR2_X1 U234 ( .A(u_reg_0_2[0]), .B(u_reg_0_1[0]), .ZN(n107) );
  XOR2_X1 U235 ( .A(n93), .B(n94), .Z(port_c_0[1]) );
  XOR2_X1 U236 ( .A(n99), .B(n100), .Z(n93) );
  XOR2_X1 U237 ( .A(n95), .B(n96), .Z(n94) );
  XNOR2_X1 U238 ( .A(u_reg_0_2[1]), .B(u_reg_0_1[1]), .ZN(n99) );
  XOR2_X1 U239 ( .A(n85), .B(n86), .Z(port_c_0[2]) );
  XOR2_X1 U240 ( .A(n91), .B(n92), .Z(n85) );
  XOR2_X1 U241 ( .A(n87), .B(n88), .Z(n86) );
  XNOR2_X1 U242 ( .A(u_reg_0_2[2]), .B(u_reg_0_1[2]), .ZN(n91) );
  NAND2_X1 U243 ( .A1(v_reg_3_2[0]), .A2(a_reg_3[0]), .ZN(n31) );
  NAND2_X1 U244 ( .A1(v_reg_3_2[1]), .A2(a_reg_3[1]), .ZN(n23) );
  NAND2_X1 U245 ( .A1(v_reg_3_2[2]), .A2(a_reg_3[2]), .ZN(n15) );
  NAND2_X1 U246 ( .A1(v_reg_2_2[0]), .A2(a_reg_2[0]), .ZN(n55) );
  NAND2_X1 U247 ( .A1(v_reg_2_2[1]), .A2(a_reg_2[1]), .ZN(n47) );
  NAND2_X1 U248 ( .A1(v_reg_2_2[2]), .A2(a_reg_2[2]), .ZN(n39) );
  NAND2_X1 U249 ( .A1(v_reg_1_2[0]), .A2(a_reg_1[0]), .ZN(n79) );
  NAND2_X1 U250 ( .A1(v_reg_1_2[1]), .A2(a_reg_1[1]), .ZN(n71) );
  NAND2_X1 U251 ( .A1(v_reg_1_2[2]), .A2(a_reg_1[2]), .ZN(n63) );
  NAND2_X1 U252 ( .A1(v_reg_0_2[0]), .A2(a_reg_0[0]), .ZN(n103) );
  NAND2_X1 U253 ( .A1(v_reg_0_2[1]), .A2(a_reg_0[1]), .ZN(n95) );
  NAND2_X1 U254 ( .A1(v_reg_0_2[2]), .A2(a_reg_0[2]), .ZN(n87) );
  AND2_X1 U255 ( .A1(port_b_0[0]), .A2(port_a_0[0]), .ZN(N0) );
  AND2_X1 U256 ( .A1(port_b_0[1]), .A2(port_a_0[1]), .ZN(N4) );
  AND2_X1 U257 ( .A1(port_b_0[2]), .A2(port_a_0[2]), .ZN(N8) );
  AND2_X1 U258 ( .A1(port_b_1[0]), .A2(port_a_1[0]), .ZN(N1) );
  AND2_X1 U259 ( .A1(port_b_1[1]), .A2(port_a_1[1]), .ZN(N5) );
  AND2_X1 U260 ( .A1(port_b_1[2]), .A2(port_a_1[2]), .ZN(N9) );
  AND2_X1 U261 ( .A1(port_b_2[0]), .A2(port_a_2[0]), .ZN(N2) );
  AND2_X1 U262 ( .A1(port_b_2[1]), .A2(port_a_2[1]), .ZN(N6) );
  AND2_X1 U263 ( .A1(port_b_2[2]), .A2(port_a_2[2]), .ZN(N10) );
  AND2_X1 U264 ( .A1(port_b_3[0]), .A2(port_a_3[0]), .ZN(N3) );
  AND2_X1 U265 ( .A1(port_b_3[1]), .A2(port_a_3[1]), .ZN(N7) );
  AND2_X1 U266 ( .A1(port_b_3[2]), .A2(port_a_3[2]), .ZN(N11) );
  AND2_X1 simpleAnd_36_U1 ( .A1(port_rand_mul[0]), .A2(n3), .ZN(
        simpleAnd_36_port_z) );
  XOR2_X1 simpleXor_72_U1 ( .A(port_rand_ref[0]), .B(simpleAnd_36_port_z), .Z(
        u_0_0[0]) );
  XOR2_X1 simpleXor_73_U1 ( .A(port_rand_mul[0]), .B(port_b_1[0]), .Z(v_0_0[0]) );
  AND2_X1 simpleAnd_37_U1 ( .A1(port_rand_mul[1]), .A2(n3), .ZN(
        simpleAnd_37_port_z) );
  XOR2_X1 simpleXor_74_U1 ( .A(port_rand_ref[1]), .B(simpleAnd_37_port_z), .Z(
        u_0_1[0]) );
  XOR2_X1 simpleXor_75_U1 ( .A(port_rand_mul[1]), .B(port_b_2[0]), .Z(v_0_1[0]) );
  AND2_X1 simpleAnd_38_U1 ( .A1(port_rand_mul[2]), .A2(n3), .ZN(
        simpleAnd_38_port_z) );
  XOR2_X1 simpleXor_76_U1 ( .A(port_rand_ref[2]), .B(simpleAnd_38_port_z), .Z(
        u_0_2[0]) );
  XOR2_X1 simpleXor_77_U1 ( .A(port_rand_mul[2]), .B(port_b_3[0]), .Z(v_0_2[0]) );
  AND2_X1 simpleAnd_39_U1 ( .A1(port_rand_mul[0]), .A2(n6), .ZN(
        simpleAnd_39_port_z) );
  XOR2_X1 simpleXor_78_U1 ( .A(port_rand_ref[0]), .B(simpleAnd_39_port_z), .Z(
        u_1_0[0]) );
  XOR2_X1 simpleXor_79_U1 ( .A(port_rand_mul[0]), .B(port_b_0[0]), .Z(v_1_0[0]) );
  AND2_X1 simpleAnd_40_U1 ( .A1(port_rand_mul[3]), .A2(n6), .ZN(
        simpleAnd_40_port_z) );
  XOR2_X1 simpleXor_80_U1 ( .A(port_rand_ref[3]), .B(simpleAnd_40_port_z), .Z(
        u_1_1[0]) );
  XOR2_X1 simpleXor_81_U1 ( .A(port_rand_mul[3]), .B(port_b_2[0]), .Z(v_1_1[0]) );
  AND2_X1 simpleAnd_41_U1 ( .A1(port_rand_mul[4]), .A2(n6), .ZN(
        simpleAnd_41_port_z) );
  XOR2_X1 simpleXor_82_U1 ( .A(port_rand_ref[4]), .B(simpleAnd_41_port_z), .Z(
        u_1_2[0]) );
  XOR2_X1 simpleXor_83_U1 ( .A(port_rand_mul[4]), .B(port_b_3[0]), .Z(v_1_2[0]) );
  AND2_X1 simpleAnd_42_U1 ( .A1(port_rand_mul[1]), .A2(n9), .ZN(
        simpleAnd_42_port_z) );
  XOR2_X1 simpleXor_84_U1 ( .A(port_rand_ref[1]), .B(simpleAnd_42_port_z), .Z(
        u_2_0[0]) );
  XOR2_X1 simpleXor_85_U1 ( .A(port_rand_mul[1]), .B(port_b_0[0]), .Z(v_2_0[0]) );
  AND2_X1 simpleAnd_43_U1 ( .A1(port_rand_mul[3]), .A2(n9), .ZN(
        simpleAnd_43_port_z) );
  XOR2_X1 simpleXor_86_U1 ( .A(port_rand_ref[3]), .B(simpleAnd_43_port_z), .Z(
        u_2_1[0]) );
  XOR2_X1 simpleXor_87_U1 ( .A(port_rand_mul[3]), .B(port_b_1[0]), .Z(v_2_1[0]) );
  AND2_X1 simpleAnd_44_U1 ( .A1(port_rand_mul[5]), .A2(n9), .ZN(
        simpleAnd_44_port_z) );
  XOR2_X1 simpleXor_88_U1 ( .A(port_rand_ref[5]), .B(simpleAnd_44_port_z), .Z(
        u_2_2[0]) );
  XOR2_X1 simpleXor_89_U1 ( .A(port_rand_mul[5]), .B(port_b_3[0]), .Z(v_2_2[0]) );
  AND2_X1 simpleAnd_45_U1 ( .A1(port_rand_mul[2]), .A2(n12), .ZN(
        simpleAnd_45_port_z) );
  XOR2_X1 simpleXor_90_U1 ( .A(port_rand_ref[2]), .B(simpleAnd_45_port_z), .Z(
        u_3_0[0]) );
  XOR2_X1 simpleXor_91_U1 ( .A(port_rand_mul[2]), .B(port_b_0[0]), .Z(v_3_0[0]) );
  AND2_X1 simpleAnd_46_U1 ( .A1(port_rand_mul[4]), .A2(n12), .ZN(
        simpleAnd_46_port_z) );
  XOR2_X1 simpleXor_92_U1 ( .A(port_rand_ref[4]), .B(simpleAnd_46_port_z), .Z(
        u_3_1[0]) );
  XOR2_X1 simpleXor_93_U1 ( .A(port_rand_mul[4]), .B(port_b_1[0]), .Z(v_3_1[0]) );
  AND2_X1 simpleAnd_47_U1 ( .A1(port_rand_mul[5]), .A2(n12), .ZN(
        simpleAnd_47_port_z) );
  XOR2_X1 simpleXor_94_U1 ( .A(port_rand_ref[5]), .B(simpleAnd_47_port_z), .Z(
        u_3_2[0]) );
  XOR2_X1 simpleXor_95_U1 ( .A(port_rand_mul[5]), .B(port_b_2[0]), .Z(v_3_2[0]) );
  AND2_X1 simpleAnd_48_U1 ( .A1(port_rand_mul[0]), .A2(n2), .ZN(
        simpleAnd_48_port_z) );
  XOR2_X1 simpleXor_96_U1 ( .A(port_rand_ref[0]), .B(simpleAnd_48_port_z), .Z(
        u_0_0[1]) );
  XOR2_X1 simpleXor_97_U1 ( .A(port_rand_mul[0]), .B(port_b_1[1]), .Z(v_0_0[1]) );
  AND2_X1 simpleAnd_49_U1 ( .A1(port_rand_mul[1]), .A2(n2), .ZN(
        simpleAnd_49_port_z) );
  XOR2_X1 simpleXor_98_U1 ( .A(port_rand_ref[1]), .B(simpleAnd_49_port_z), .Z(
        u_0_1[1]) );
  XOR2_X1 simpleXor_99_U1 ( .A(port_rand_mul[1]), .B(port_b_2[1]), .Z(v_0_1[1]) );
  AND2_X1 simpleAnd_50_U1 ( .A1(port_rand_mul[2]), .A2(n2), .ZN(
        simpleAnd_50_port_z) );
  XOR2_X1 simpleXor_100_U1 ( .A(port_rand_ref[2]), .B(simpleAnd_50_port_z), 
        .Z(u_0_2[1]) );
  XOR2_X1 simpleXor_101_U1 ( .A(port_rand_mul[2]), .B(port_b_3[1]), .Z(
        v_0_2[1]) );
  AND2_X1 simpleAnd_51_U1 ( .A1(port_rand_mul[0]), .A2(n5), .ZN(
        simpleAnd_51_port_z) );
  XOR2_X1 simpleXor_102_U1 ( .A(port_rand_ref[0]), .B(simpleAnd_51_port_z), 
        .Z(u_1_0[1]) );
  XOR2_X1 simpleXor_103_U1 ( .A(port_rand_mul[0]), .B(port_b_0[1]), .Z(
        v_1_0[1]) );
  AND2_X1 simpleAnd_52_U1 ( .A1(port_rand_mul[3]), .A2(n5), .ZN(
        simpleAnd_52_port_z) );
  XOR2_X1 simpleXor_104_U1 ( .A(port_rand_ref[3]), .B(simpleAnd_52_port_z), 
        .Z(u_1_1[1]) );
  XOR2_X1 simpleXor_105_U1 ( .A(port_rand_mul[3]), .B(port_b_2[1]), .Z(
        v_1_1[1]) );
  AND2_X1 simpleAnd_53_U1 ( .A1(port_rand_mul[4]), .A2(n5), .ZN(
        simpleAnd_53_port_z) );
  XOR2_X1 simpleXor_106_U1 ( .A(port_rand_ref[4]), .B(simpleAnd_53_port_z), 
        .Z(u_1_2[1]) );
  XOR2_X1 simpleXor_107_U1 ( .A(port_rand_mul[4]), .B(port_b_3[1]), .Z(
        v_1_2[1]) );
  AND2_X1 simpleAnd_54_U1 ( .A1(port_rand_mul[1]), .A2(n8), .ZN(
        simpleAnd_54_port_z) );
  XOR2_X1 simpleXor_108_U1 ( .A(port_rand_ref[1]), .B(simpleAnd_54_port_z), 
        .Z(u_2_0[1]) );
  XOR2_X1 simpleXor_109_U1 ( .A(port_rand_mul[1]), .B(port_b_0[1]), .Z(
        v_2_0[1]) );
  AND2_X1 simpleAnd_55_U1 ( .A1(port_rand_mul[3]), .A2(n8), .ZN(
        simpleAnd_55_port_z) );
  XOR2_X1 simpleXor_110_U1 ( .A(port_rand_ref[3]), .B(simpleAnd_55_port_z), 
        .Z(u_2_1[1]) );
  XOR2_X1 simpleXor_111_U1 ( .A(port_rand_mul[3]), .B(port_b_1[1]), .Z(
        v_2_1[1]) );
  AND2_X1 simpleAnd_56_U1 ( .A1(port_rand_mul[5]), .A2(n8), .ZN(
        simpleAnd_56_port_z) );
  XOR2_X1 simpleXor_112_U1 ( .A(port_rand_ref[5]), .B(simpleAnd_56_port_z), 
        .Z(u_2_2[1]) );
  XOR2_X1 simpleXor_113_U1 ( .A(port_rand_mul[5]), .B(port_b_3[1]), .Z(
        v_2_2[1]) );
  AND2_X1 simpleAnd_57_U1 ( .A1(port_rand_mul[2]), .A2(n11), .ZN(
        simpleAnd_57_port_z) );
  XOR2_X1 simpleXor_114_U1 ( .A(port_rand_ref[2]), .B(simpleAnd_57_port_z), 
        .Z(u_3_0[1]) );
  XOR2_X1 simpleXor_115_U1 ( .A(port_rand_mul[2]), .B(port_b_0[1]), .Z(
        v_3_0[1]) );
  AND2_X1 simpleAnd_58_U1 ( .A1(port_rand_mul[4]), .A2(n11), .ZN(
        simpleAnd_58_port_z) );
  XOR2_X1 simpleXor_116_U1 ( .A(port_rand_ref[4]), .B(simpleAnd_58_port_z), 
        .Z(u_3_1[1]) );
  XOR2_X1 simpleXor_117_U1 ( .A(port_rand_mul[4]), .B(port_b_1[1]), .Z(
        v_3_1[1]) );
  AND2_X1 simpleAnd_59_U1 ( .A1(port_rand_mul[5]), .A2(n11), .ZN(
        simpleAnd_59_port_z) );
  XOR2_X1 simpleXor_118_U1 ( .A(port_rand_ref[5]), .B(simpleAnd_59_port_z), 
        .Z(u_3_2[1]) );
  XOR2_X1 simpleXor_119_U1 ( .A(port_rand_mul[5]), .B(port_b_2[1]), .Z(
        v_3_2[1]) );
  AND2_X1 simpleAnd_60_U1 ( .A1(port_rand_mul[0]), .A2(n1), .ZN(
        simpleAnd_60_port_z) );
  XOR2_X1 simpleXor_120_U1 ( .A(port_rand_ref[0]), .B(simpleAnd_60_port_z), 
        .Z(u_0_0[2]) );
  XOR2_X1 simpleXor_121_U1 ( .A(port_rand_mul[0]), .B(port_b_1[2]), .Z(
        v_0_0[2]) );
  AND2_X1 simpleAnd_61_U1 ( .A1(port_rand_mul[1]), .A2(n1), .ZN(
        simpleAnd_61_port_z) );
  XOR2_X1 simpleXor_122_U1 ( .A(port_rand_ref[1]), .B(simpleAnd_61_port_z), 
        .Z(u_0_1[2]) );
  XOR2_X1 simpleXor_123_U1 ( .A(port_rand_mul[1]), .B(port_b_2[2]), .Z(
        v_0_1[2]) );
  AND2_X1 simpleAnd_62_U1 ( .A1(port_rand_mul[2]), .A2(n1), .ZN(
        simpleAnd_62_port_z) );
  XOR2_X1 simpleXor_124_U1 ( .A(port_rand_ref[2]), .B(simpleAnd_62_port_z), 
        .Z(u_0_2[2]) );
  XOR2_X1 simpleXor_125_U1 ( .A(port_rand_mul[2]), .B(port_b_3[2]), .Z(
        v_0_2[2]) );
  AND2_X1 simpleAnd_63_U1 ( .A1(port_rand_mul[0]), .A2(n4), .ZN(
        simpleAnd_63_port_z) );
  XOR2_X1 simpleXor_126_U1 ( .A(port_rand_ref[0]), .B(simpleAnd_63_port_z), 
        .Z(u_1_0[2]) );
  XOR2_X1 simpleXor_127_U1 ( .A(port_rand_mul[0]), .B(port_b_0[2]), .Z(
        v_1_0[2]) );
  AND2_X1 simpleAnd_64_U1 ( .A1(port_rand_mul[3]), .A2(n4), .ZN(
        simpleAnd_64_port_z) );
  XOR2_X1 simpleXor_128_U1 ( .A(port_rand_ref[3]), .B(simpleAnd_64_port_z), 
        .Z(u_1_1[2]) );
  XOR2_X1 simpleXor_129_U1 ( .A(port_rand_mul[3]), .B(port_b_2[2]), .Z(
        v_1_1[2]) );
  AND2_X1 simpleAnd_65_U1 ( .A1(port_rand_mul[4]), .A2(n4), .ZN(
        simpleAnd_65_port_z) );
  XOR2_X1 simpleXor_130_U1 ( .A(port_rand_ref[4]), .B(simpleAnd_65_port_z), 
        .Z(u_1_2[2]) );
  XOR2_X1 simpleXor_131_U1 ( .A(port_rand_mul[4]), .B(port_b_3[2]), .Z(
        v_1_2[2]) );
  AND2_X1 simpleAnd_66_U1 ( .A1(port_rand_mul[1]), .A2(n7), .ZN(
        simpleAnd_66_port_z) );
  XOR2_X1 simpleXor_132_U1 ( .A(port_rand_ref[1]), .B(simpleAnd_66_port_z), 
        .Z(u_2_0[2]) );
  XOR2_X1 simpleXor_133_U1 ( .A(port_rand_mul[1]), .B(port_b_0[2]), .Z(
        v_2_0[2]) );
  AND2_X1 simpleAnd_67_U1 ( .A1(port_rand_mul[3]), .A2(n7), .ZN(
        simpleAnd_67_port_z) );
  XOR2_X1 simpleXor_134_U1 ( .A(port_rand_ref[3]), .B(simpleAnd_67_port_z), 
        .Z(u_2_1[2]) );
  XOR2_X1 simpleXor_135_U1 ( .A(port_rand_mul[3]), .B(port_b_1[2]), .Z(
        v_2_1[2]) );
  AND2_X1 simpleAnd_68_U1 ( .A1(port_rand_mul[5]), .A2(n7), .ZN(
        simpleAnd_68_port_z) );
  XOR2_X1 simpleXor_136_U1 ( .A(port_rand_ref[5]), .B(simpleAnd_68_port_z), 
        .Z(u_2_2[2]) );
  XOR2_X1 simpleXor_137_U1 ( .A(port_rand_mul[5]), .B(port_b_3[2]), .Z(
        v_2_2[2]) );
  AND2_X1 simpleAnd_69_U1 ( .A1(port_rand_mul[2]), .A2(n10), .ZN(
        simpleAnd_69_port_z) );
  XOR2_X1 simpleXor_138_U1 ( .A(port_rand_ref[2]), .B(simpleAnd_69_port_z), 
        .Z(u_3_0[2]) );
  XOR2_X1 simpleXor_139_U1 ( .A(port_rand_mul[2]), .B(port_b_0[2]), .Z(
        v_3_0[2]) );
  AND2_X1 simpleAnd_70_U1 ( .A1(port_rand_mul[4]), .A2(n10), .ZN(
        simpleAnd_70_port_z) );
  XOR2_X1 simpleXor_140_U1 ( .A(port_rand_ref[4]), .B(simpleAnd_70_port_z), 
        .Z(u_3_1[2]) );
  XOR2_X1 simpleXor_141_U1 ( .A(port_rand_mul[4]), .B(port_b_1[2]), .Z(
        v_3_1[2]) );
  AND2_X1 simpleAnd_71_U1 ( .A1(port_rand_mul[5]), .A2(n10), .ZN(
        simpleAnd_71_port_z) );
  XOR2_X1 simpleXor_142_U1 ( .A(port_rand_ref[5]), .B(simpleAnd_71_port_z), 
        .Z(u_3_2[2]) );
  XOR2_X1 simpleXor_143_U1 ( .A(port_rand_mul[5]), .B(port_b_2[2]), .Z(
        v_3_2[2]) );
  OR2_X1 maj_72_U4 ( .A1(u_0_0[1]), .A2(u_0_0[0]), .ZN(maj_72_n3) );
  NAND2_X1 maj_72_U3 ( .A1(u_0_0[1]), .A2(u_0_0[0]), .ZN(maj_72_n1) );
  NAND2_X1 maj_72_U2 ( .A1(u_0_0[2]), .A2(maj_72_n3), .ZN(maj_72_n2) );
  NAND2_X1 maj_72_U1 ( .A1(maj_72_n1), .A2(maj_72_n2), .ZN(maj_72_port_o) );
  OR2_X1 maj_73_U4 ( .A1(v_0_0[1]), .A2(v_0_0[0]), .ZN(maj_73_n4) );
  NAND2_X1 maj_73_U3 ( .A1(v_0_0[1]), .A2(v_0_0[0]), .ZN(maj_73_n6) );
  NAND2_X1 maj_73_U2 ( .A1(v_0_0[2]), .A2(maj_73_n4), .ZN(maj_73_n5) );
  NAND2_X1 maj_73_U1 ( .A1(maj_73_n6), .A2(maj_73_n5), .ZN(maj_73_port_o) );
  OR2_X1 maj_74_U4 ( .A1(u_0_1[1]), .A2(u_0_1[0]), .ZN(maj_74_n4) );
  NAND2_X1 maj_74_U3 ( .A1(u_0_1[1]), .A2(u_0_1[0]), .ZN(maj_74_n6) );
  NAND2_X1 maj_74_U2 ( .A1(u_0_1[2]), .A2(maj_74_n4), .ZN(maj_74_n5) );
  NAND2_X1 maj_74_U1 ( .A1(maj_74_n6), .A2(maj_74_n5), .ZN(maj_74_port_o) );
  OR2_X1 maj_75_U4 ( .A1(v_0_1[1]), .A2(v_0_1[0]), .ZN(maj_75_n4) );
  NAND2_X1 maj_75_U3 ( .A1(v_0_1[1]), .A2(v_0_1[0]), .ZN(maj_75_n6) );
  NAND2_X1 maj_75_U2 ( .A1(v_0_1[2]), .A2(maj_75_n4), .ZN(maj_75_n5) );
  NAND2_X1 maj_75_U1 ( .A1(maj_75_n6), .A2(maj_75_n5), .ZN(maj_75_port_o) );
  OR2_X1 maj_76_U4 ( .A1(u_0_2[1]), .A2(u_0_2[0]), .ZN(maj_76_n4) );
  NAND2_X1 maj_76_U3 ( .A1(u_0_2[1]), .A2(u_0_2[0]), .ZN(maj_76_n6) );
  NAND2_X1 maj_76_U2 ( .A1(u_0_2[2]), .A2(maj_76_n4), .ZN(maj_76_n5) );
  NAND2_X1 maj_76_U1 ( .A1(maj_76_n6), .A2(maj_76_n5), .ZN(maj_76_port_o) );
  OR2_X1 maj_77_U4 ( .A1(v_0_2[1]), .A2(v_0_2[0]), .ZN(maj_77_n4) );
  NAND2_X1 maj_77_U3 ( .A1(v_0_2[1]), .A2(v_0_2[0]), .ZN(maj_77_n6) );
  NAND2_X1 maj_77_U2 ( .A1(v_0_2[2]), .A2(maj_77_n4), .ZN(maj_77_n5) );
  NAND2_X1 maj_77_U1 ( .A1(maj_77_n6), .A2(maj_77_n5), .ZN(maj_77_port_o) );
  OR2_X1 maj_78_U4 ( .A1(u_1_0[1]), .A2(u_1_0[0]), .ZN(maj_78_n4) );
  NAND2_X1 maj_78_U3 ( .A1(u_1_0[1]), .A2(u_1_0[0]), .ZN(maj_78_n6) );
  NAND2_X1 maj_78_U2 ( .A1(u_1_0[2]), .A2(maj_78_n4), .ZN(maj_78_n5) );
  NAND2_X1 maj_78_U1 ( .A1(maj_78_n6), .A2(maj_78_n5), .ZN(maj_78_port_o) );
  OR2_X1 maj_79_U4 ( .A1(v_1_0[1]), .A2(v_1_0[0]), .ZN(maj_79_n4) );
  NAND2_X1 maj_79_U3 ( .A1(v_1_0[1]), .A2(v_1_0[0]), .ZN(maj_79_n6) );
  NAND2_X1 maj_79_U2 ( .A1(v_1_0[2]), .A2(maj_79_n4), .ZN(maj_79_n5) );
  NAND2_X1 maj_79_U1 ( .A1(maj_79_n6), .A2(maj_79_n5), .ZN(maj_79_port_o) );
  OR2_X1 maj_80_U4 ( .A1(u_1_1[1]), .A2(u_1_1[0]), .ZN(maj_80_n4) );
  NAND2_X1 maj_80_U3 ( .A1(u_1_1[1]), .A2(u_1_1[0]), .ZN(maj_80_n6) );
  NAND2_X1 maj_80_U2 ( .A1(u_1_1[2]), .A2(maj_80_n4), .ZN(maj_80_n5) );
  NAND2_X1 maj_80_U1 ( .A1(maj_80_n6), .A2(maj_80_n5), .ZN(maj_80_port_o) );
  OR2_X1 maj_81_U4 ( .A1(v_1_1[1]), .A2(v_1_1[0]), .ZN(maj_81_n4) );
  NAND2_X1 maj_81_U3 ( .A1(v_1_1[1]), .A2(v_1_1[0]), .ZN(maj_81_n6) );
  NAND2_X1 maj_81_U2 ( .A1(v_1_1[2]), .A2(maj_81_n4), .ZN(maj_81_n5) );
  NAND2_X1 maj_81_U1 ( .A1(maj_81_n6), .A2(maj_81_n5), .ZN(maj_81_port_o) );
  OR2_X1 maj_82_U4 ( .A1(u_1_2[1]), .A2(u_1_2[0]), .ZN(maj_82_n4) );
  NAND2_X1 maj_82_U3 ( .A1(u_1_2[1]), .A2(u_1_2[0]), .ZN(maj_82_n6) );
  NAND2_X1 maj_82_U2 ( .A1(u_1_2[2]), .A2(maj_82_n4), .ZN(maj_82_n5) );
  NAND2_X1 maj_82_U1 ( .A1(maj_82_n6), .A2(maj_82_n5), .ZN(maj_82_port_o) );
  OR2_X1 maj_83_U4 ( .A1(v_1_2[1]), .A2(v_1_2[0]), .ZN(maj_83_n4) );
  NAND2_X1 maj_83_U3 ( .A1(v_1_2[1]), .A2(v_1_2[0]), .ZN(maj_83_n6) );
  NAND2_X1 maj_83_U2 ( .A1(v_1_2[2]), .A2(maj_83_n4), .ZN(maj_83_n5) );
  NAND2_X1 maj_83_U1 ( .A1(maj_83_n6), .A2(maj_83_n5), .ZN(maj_83_port_o) );
  OR2_X1 maj_84_U4 ( .A1(u_2_0[1]), .A2(u_2_0[0]), .ZN(maj_84_n4) );
  NAND2_X1 maj_84_U3 ( .A1(u_2_0[1]), .A2(u_2_0[0]), .ZN(maj_84_n6) );
  NAND2_X1 maj_84_U2 ( .A1(u_2_0[2]), .A2(maj_84_n4), .ZN(maj_84_n5) );
  NAND2_X1 maj_84_U1 ( .A1(maj_84_n6), .A2(maj_84_n5), .ZN(maj_84_port_o) );
  OR2_X1 maj_85_U4 ( .A1(v_2_0[1]), .A2(v_2_0[0]), .ZN(maj_85_n4) );
  NAND2_X1 maj_85_U3 ( .A1(v_2_0[1]), .A2(v_2_0[0]), .ZN(maj_85_n6) );
  NAND2_X1 maj_85_U2 ( .A1(v_2_0[2]), .A2(maj_85_n4), .ZN(maj_85_n5) );
  NAND2_X1 maj_85_U1 ( .A1(maj_85_n6), .A2(maj_85_n5), .ZN(maj_85_port_o) );
  OR2_X1 maj_86_U4 ( .A1(u_2_1[1]), .A2(u_2_1[0]), .ZN(maj_86_n4) );
  NAND2_X1 maj_86_U3 ( .A1(u_2_1[1]), .A2(u_2_1[0]), .ZN(maj_86_n6) );
  NAND2_X1 maj_86_U2 ( .A1(u_2_1[2]), .A2(maj_86_n4), .ZN(maj_86_n5) );
  NAND2_X1 maj_86_U1 ( .A1(maj_86_n6), .A2(maj_86_n5), .ZN(maj_86_port_o) );
  OR2_X1 maj_87_U4 ( .A1(v_2_1[1]), .A2(v_2_1[0]), .ZN(maj_87_n4) );
  NAND2_X1 maj_87_U3 ( .A1(v_2_1[1]), .A2(v_2_1[0]), .ZN(maj_87_n6) );
  NAND2_X1 maj_87_U2 ( .A1(v_2_1[2]), .A2(maj_87_n4), .ZN(maj_87_n5) );
  NAND2_X1 maj_87_U1 ( .A1(maj_87_n6), .A2(maj_87_n5), .ZN(maj_87_port_o) );
  OR2_X1 maj_88_U4 ( .A1(u_2_2[1]), .A2(u_2_2[0]), .ZN(maj_88_n4) );
  NAND2_X1 maj_88_U3 ( .A1(u_2_2[1]), .A2(u_2_2[0]), .ZN(maj_88_n6) );
  NAND2_X1 maj_88_U2 ( .A1(u_2_2[2]), .A2(maj_88_n4), .ZN(maj_88_n5) );
  NAND2_X1 maj_88_U1 ( .A1(maj_88_n6), .A2(maj_88_n5), .ZN(maj_88_port_o) );
  OR2_X1 maj_89_U4 ( .A1(v_2_2[1]), .A2(v_2_2[0]), .ZN(maj_89_n4) );
  NAND2_X1 maj_89_U3 ( .A1(v_2_2[1]), .A2(v_2_2[0]), .ZN(maj_89_n6) );
  NAND2_X1 maj_89_U2 ( .A1(v_2_2[2]), .A2(maj_89_n4), .ZN(maj_89_n5) );
  NAND2_X1 maj_89_U1 ( .A1(maj_89_n6), .A2(maj_89_n5), .ZN(maj_89_port_o) );
  OR2_X1 maj_90_U4 ( .A1(u_3_0[1]), .A2(u_3_0[0]), .ZN(maj_90_n4) );
  NAND2_X1 maj_90_U3 ( .A1(u_3_0[1]), .A2(u_3_0[0]), .ZN(maj_90_n6) );
  NAND2_X1 maj_90_U2 ( .A1(u_3_0[2]), .A2(maj_90_n4), .ZN(maj_90_n5) );
  NAND2_X1 maj_90_U1 ( .A1(maj_90_n6), .A2(maj_90_n5), .ZN(maj_90_port_o) );
  OR2_X1 maj_91_U4 ( .A1(v_3_0[1]), .A2(v_3_0[0]), .ZN(maj_91_n4) );
  NAND2_X1 maj_91_U3 ( .A1(v_3_0[1]), .A2(v_3_0[0]), .ZN(maj_91_n6) );
  NAND2_X1 maj_91_U2 ( .A1(v_3_0[2]), .A2(maj_91_n4), .ZN(maj_91_n5) );
  NAND2_X1 maj_91_U1 ( .A1(maj_91_n6), .A2(maj_91_n5), .ZN(maj_91_port_o) );
  OR2_X1 maj_92_U4 ( .A1(u_3_1[1]), .A2(u_3_1[0]), .ZN(maj_92_n4) );
  NAND2_X1 maj_92_U3 ( .A1(u_3_1[1]), .A2(u_3_1[0]), .ZN(maj_92_n6) );
  NAND2_X1 maj_92_U2 ( .A1(u_3_1[2]), .A2(maj_92_n4), .ZN(maj_92_n5) );
  NAND2_X1 maj_92_U1 ( .A1(maj_92_n6), .A2(maj_92_n5), .ZN(maj_92_port_o) );
  OR2_X1 maj_93_U4 ( .A1(v_3_1[1]), .A2(v_3_1[0]), .ZN(maj_93_n4) );
  NAND2_X1 maj_93_U3 ( .A1(v_3_1[1]), .A2(v_3_1[0]), .ZN(maj_93_n6) );
  NAND2_X1 maj_93_U2 ( .A1(v_3_1[2]), .A2(maj_93_n4), .ZN(maj_93_n5) );
  NAND2_X1 maj_93_U1 ( .A1(maj_93_n6), .A2(maj_93_n5), .ZN(maj_93_port_o) );
  OR2_X1 maj_94_U4 ( .A1(u_3_2[1]), .A2(u_3_2[0]), .ZN(maj_94_n4) );
  NAND2_X1 maj_94_U3 ( .A1(u_3_2[1]), .A2(u_3_2[0]), .ZN(maj_94_n6) );
  NAND2_X1 maj_94_U2 ( .A1(u_3_2[2]), .A2(maj_94_n4), .ZN(maj_94_n5) );
  NAND2_X1 maj_94_U1 ( .A1(maj_94_n6), .A2(maj_94_n5), .ZN(maj_94_port_o) );
  OR2_X1 maj_95_U4 ( .A1(v_3_2[1]), .A2(v_3_2[0]), .ZN(maj_95_n4) );
  NAND2_X1 maj_95_U3 ( .A1(v_3_2[1]), .A2(v_3_2[0]), .ZN(maj_95_n6) );
  NAND2_X1 maj_95_U2 ( .A1(v_3_2[2]), .A2(maj_95_n4), .ZN(maj_95_n5) );
  NAND2_X1 maj_95_U1 ( .A1(maj_95_n6), .A2(maj_95_n5), .ZN(maj_95_port_o) );
  OR2_X1 maj_96_U4 ( .A1(u_0_0[1]), .A2(u_0_0[0]), .ZN(maj_96_n4) );
  NAND2_X1 maj_96_U3 ( .A1(u_0_0[1]), .A2(u_0_0[0]), .ZN(maj_96_n6) );
  NAND2_X1 maj_96_U2 ( .A1(u_0_0[2]), .A2(maj_96_n4), .ZN(maj_96_n5) );
  NAND2_X1 maj_96_U1 ( .A1(maj_96_n6), .A2(maj_96_n5), .ZN(maj_96_port_o) );
  OR2_X1 maj_97_U4 ( .A1(v_0_0[1]), .A2(v_0_0[0]), .ZN(maj_97_n4) );
  NAND2_X1 maj_97_U3 ( .A1(v_0_0[1]), .A2(v_0_0[0]), .ZN(maj_97_n6) );
  NAND2_X1 maj_97_U2 ( .A1(v_0_0[2]), .A2(maj_97_n4), .ZN(maj_97_n5) );
  NAND2_X1 maj_97_U1 ( .A1(maj_97_n6), .A2(maj_97_n5), .ZN(maj_97_port_o) );
  OR2_X1 maj_98_U4 ( .A1(u_0_1[1]), .A2(u_0_1[0]), .ZN(maj_98_n4) );
  NAND2_X1 maj_98_U3 ( .A1(u_0_1[1]), .A2(u_0_1[0]), .ZN(maj_98_n6) );
  NAND2_X1 maj_98_U2 ( .A1(u_0_1[2]), .A2(maj_98_n4), .ZN(maj_98_n5) );
  NAND2_X1 maj_98_U1 ( .A1(maj_98_n6), .A2(maj_98_n5), .ZN(maj_98_port_o) );
  OR2_X1 maj_99_U4 ( .A1(v_0_1[1]), .A2(v_0_1[0]), .ZN(maj_99_n4) );
  NAND2_X1 maj_99_U3 ( .A1(v_0_1[1]), .A2(v_0_1[0]), .ZN(maj_99_n6) );
  NAND2_X1 maj_99_U2 ( .A1(v_0_1[2]), .A2(maj_99_n4), .ZN(maj_99_n5) );
  NAND2_X1 maj_99_U1 ( .A1(maj_99_n6), .A2(maj_99_n5), .ZN(maj_99_port_o) );
  OR2_X1 maj_100_U4 ( .A1(u_0_2[1]), .A2(u_0_2[0]), .ZN(maj_100_n4) );
  NAND2_X1 maj_100_U3 ( .A1(u_0_2[1]), .A2(u_0_2[0]), .ZN(maj_100_n6) );
  NAND2_X1 maj_100_U2 ( .A1(u_0_2[2]), .A2(maj_100_n4), .ZN(maj_100_n5) );
  NAND2_X1 maj_100_U1 ( .A1(maj_100_n6), .A2(maj_100_n5), .ZN(maj_100_port_o)
         );
  OR2_X1 maj_101_U4 ( .A1(v_0_2[1]), .A2(v_0_2[0]), .ZN(maj_101_n4) );
  NAND2_X1 maj_101_U3 ( .A1(v_0_2[1]), .A2(v_0_2[0]), .ZN(maj_101_n6) );
  NAND2_X1 maj_101_U2 ( .A1(v_0_2[2]), .A2(maj_101_n4), .ZN(maj_101_n5) );
  NAND2_X1 maj_101_U1 ( .A1(maj_101_n6), .A2(maj_101_n5), .ZN(maj_101_port_o)
         );
  OR2_X1 maj_102_U4 ( .A1(u_1_0[1]), .A2(u_1_0[0]), .ZN(maj_102_n4) );
  NAND2_X1 maj_102_U3 ( .A1(u_1_0[1]), .A2(u_1_0[0]), .ZN(maj_102_n6) );
  NAND2_X1 maj_102_U2 ( .A1(u_1_0[2]), .A2(maj_102_n4), .ZN(maj_102_n5) );
  NAND2_X1 maj_102_U1 ( .A1(maj_102_n6), .A2(maj_102_n5), .ZN(maj_102_port_o)
         );
  OR2_X1 maj_103_U4 ( .A1(v_1_0[1]), .A2(v_1_0[0]), .ZN(maj_103_n4) );
  NAND2_X1 maj_103_U3 ( .A1(v_1_0[1]), .A2(v_1_0[0]), .ZN(maj_103_n6) );
  NAND2_X1 maj_103_U2 ( .A1(v_1_0[2]), .A2(maj_103_n4), .ZN(maj_103_n5) );
  NAND2_X1 maj_103_U1 ( .A1(maj_103_n6), .A2(maj_103_n5), .ZN(maj_103_port_o)
         );
  OR2_X1 maj_104_U4 ( .A1(u_1_1[1]), .A2(u_1_1[0]), .ZN(maj_104_n4) );
  NAND2_X1 maj_104_U3 ( .A1(u_1_1[1]), .A2(u_1_1[0]), .ZN(maj_104_n6) );
  NAND2_X1 maj_104_U2 ( .A1(u_1_1[2]), .A2(maj_104_n4), .ZN(maj_104_n5) );
  NAND2_X1 maj_104_U1 ( .A1(maj_104_n6), .A2(maj_104_n5), .ZN(maj_104_port_o)
         );
  OR2_X1 maj_105_U4 ( .A1(v_1_1[1]), .A2(v_1_1[0]), .ZN(maj_105_n4) );
  NAND2_X1 maj_105_U3 ( .A1(v_1_1[1]), .A2(v_1_1[0]), .ZN(maj_105_n6) );
  NAND2_X1 maj_105_U2 ( .A1(v_1_1[2]), .A2(maj_105_n4), .ZN(maj_105_n5) );
  NAND2_X1 maj_105_U1 ( .A1(maj_105_n6), .A2(maj_105_n5), .ZN(maj_105_port_o)
         );
  OR2_X1 maj_106_U4 ( .A1(u_1_2[1]), .A2(u_1_2[0]), .ZN(maj_106_n4) );
  NAND2_X1 maj_106_U3 ( .A1(u_1_2[1]), .A2(u_1_2[0]), .ZN(maj_106_n6) );
  NAND2_X1 maj_106_U2 ( .A1(u_1_2[2]), .A2(maj_106_n4), .ZN(maj_106_n5) );
  NAND2_X1 maj_106_U1 ( .A1(maj_106_n6), .A2(maj_106_n5), .ZN(maj_106_port_o)
         );
  OR2_X1 maj_107_U4 ( .A1(v_1_2[1]), .A2(v_1_2[0]), .ZN(maj_107_n4) );
  NAND2_X1 maj_107_U3 ( .A1(v_1_2[1]), .A2(v_1_2[0]), .ZN(maj_107_n6) );
  NAND2_X1 maj_107_U2 ( .A1(v_1_2[2]), .A2(maj_107_n4), .ZN(maj_107_n5) );
  NAND2_X1 maj_107_U1 ( .A1(maj_107_n6), .A2(maj_107_n5), .ZN(maj_107_port_o)
         );
  OR2_X1 maj_108_U4 ( .A1(u_2_0[1]), .A2(u_2_0[0]), .ZN(maj_108_n4) );
  NAND2_X1 maj_108_U3 ( .A1(u_2_0[1]), .A2(u_2_0[0]), .ZN(maj_108_n6) );
  NAND2_X1 maj_108_U2 ( .A1(u_2_0[2]), .A2(maj_108_n4), .ZN(maj_108_n5) );
  NAND2_X1 maj_108_U1 ( .A1(maj_108_n6), .A2(maj_108_n5), .ZN(maj_108_port_o)
         );
  OR2_X1 maj_109_U4 ( .A1(v_2_0[1]), .A2(v_2_0[0]), .ZN(maj_109_n4) );
  NAND2_X1 maj_109_U3 ( .A1(v_2_0[1]), .A2(v_2_0[0]), .ZN(maj_109_n6) );
  NAND2_X1 maj_109_U2 ( .A1(v_2_0[2]), .A2(maj_109_n4), .ZN(maj_109_n5) );
  NAND2_X1 maj_109_U1 ( .A1(maj_109_n6), .A2(maj_109_n5), .ZN(maj_109_port_o)
         );
  OR2_X1 maj_110_U4 ( .A1(u_2_1[1]), .A2(u_2_1[0]), .ZN(maj_110_n4) );
  NAND2_X1 maj_110_U3 ( .A1(u_2_1[1]), .A2(u_2_1[0]), .ZN(maj_110_n6) );
  NAND2_X1 maj_110_U2 ( .A1(u_2_1[2]), .A2(maj_110_n4), .ZN(maj_110_n5) );
  NAND2_X1 maj_110_U1 ( .A1(maj_110_n6), .A2(maj_110_n5), .ZN(maj_110_port_o)
         );
  OR2_X1 maj_111_U4 ( .A1(v_2_1[1]), .A2(v_2_1[0]), .ZN(maj_111_n4) );
  NAND2_X1 maj_111_U3 ( .A1(v_2_1[1]), .A2(v_2_1[0]), .ZN(maj_111_n6) );
  NAND2_X1 maj_111_U2 ( .A1(v_2_1[2]), .A2(maj_111_n4), .ZN(maj_111_n5) );
  NAND2_X1 maj_111_U1 ( .A1(maj_111_n6), .A2(maj_111_n5), .ZN(maj_111_port_o)
         );
  OR2_X1 maj_112_U4 ( .A1(u_2_2[1]), .A2(u_2_2[0]), .ZN(maj_112_n4) );
  NAND2_X1 maj_112_U3 ( .A1(u_2_2[1]), .A2(u_2_2[0]), .ZN(maj_112_n6) );
  NAND2_X1 maj_112_U2 ( .A1(u_2_2[2]), .A2(maj_112_n4), .ZN(maj_112_n5) );
  NAND2_X1 maj_112_U1 ( .A1(maj_112_n6), .A2(maj_112_n5), .ZN(maj_112_port_o)
         );
  OR2_X1 maj_113_U4 ( .A1(v_2_2[1]), .A2(v_2_2[0]), .ZN(maj_113_n4) );
  NAND2_X1 maj_113_U3 ( .A1(v_2_2[1]), .A2(v_2_2[0]), .ZN(maj_113_n6) );
  NAND2_X1 maj_113_U2 ( .A1(v_2_2[2]), .A2(maj_113_n4), .ZN(maj_113_n5) );
  NAND2_X1 maj_113_U1 ( .A1(maj_113_n6), .A2(maj_113_n5), .ZN(maj_113_port_o)
         );
  OR2_X1 maj_114_U4 ( .A1(u_3_0[1]), .A2(u_3_0[0]), .ZN(maj_114_n4) );
  NAND2_X1 maj_114_U3 ( .A1(u_3_0[1]), .A2(u_3_0[0]), .ZN(maj_114_n6) );
  NAND2_X1 maj_114_U2 ( .A1(u_3_0[2]), .A2(maj_114_n4), .ZN(maj_114_n5) );
  NAND2_X1 maj_114_U1 ( .A1(maj_114_n6), .A2(maj_114_n5), .ZN(maj_114_port_o)
         );
  OR2_X1 maj_115_U4 ( .A1(v_3_0[1]), .A2(v_3_0[0]), .ZN(maj_115_n4) );
  NAND2_X1 maj_115_U3 ( .A1(v_3_0[1]), .A2(v_3_0[0]), .ZN(maj_115_n6) );
  NAND2_X1 maj_115_U2 ( .A1(v_3_0[2]), .A2(maj_115_n4), .ZN(maj_115_n5) );
  NAND2_X1 maj_115_U1 ( .A1(maj_115_n6), .A2(maj_115_n5), .ZN(maj_115_port_o)
         );
  OR2_X1 maj_116_U4 ( .A1(u_3_1[1]), .A2(u_3_1[0]), .ZN(maj_116_n4) );
  NAND2_X1 maj_116_U3 ( .A1(u_3_1[1]), .A2(u_3_1[0]), .ZN(maj_116_n6) );
  NAND2_X1 maj_116_U2 ( .A1(u_3_1[2]), .A2(maj_116_n4), .ZN(maj_116_n5) );
  NAND2_X1 maj_116_U1 ( .A1(maj_116_n6), .A2(maj_116_n5), .ZN(maj_116_port_o)
         );
  OR2_X1 maj_117_U4 ( .A1(v_3_1[1]), .A2(v_3_1[0]), .ZN(maj_117_n4) );
  NAND2_X1 maj_117_U3 ( .A1(v_3_1[1]), .A2(v_3_1[0]), .ZN(maj_117_n6) );
  NAND2_X1 maj_117_U2 ( .A1(v_3_1[2]), .A2(maj_117_n4), .ZN(maj_117_n5) );
  NAND2_X1 maj_117_U1 ( .A1(maj_117_n6), .A2(maj_117_n5), .ZN(maj_117_port_o)
         );
  OR2_X1 maj_118_U4 ( .A1(u_3_2[1]), .A2(u_3_2[0]), .ZN(maj_118_n4) );
  NAND2_X1 maj_118_U3 ( .A1(u_3_2[1]), .A2(u_3_2[0]), .ZN(maj_118_n6) );
  NAND2_X1 maj_118_U2 ( .A1(u_3_2[2]), .A2(maj_118_n4), .ZN(maj_118_n5) );
  NAND2_X1 maj_118_U1 ( .A1(maj_118_n6), .A2(maj_118_n5), .ZN(maj_118_port_o)
         );
  OR2_X1 maj_119_U4 ( .A1(v_3_2[1]), .A2(v_3_2[0]), .ZN(maj_119_n4) );
  NAND2_X1 maj_119_U3 ( .A1(v_3_2[1]), .A2(v_3_2[0]), .ZN(maj_119_n6) );
  NAND2_X1 maj_119_U2 ( .A1(v_3_2[2]), .A2(maj_119_n4), .ZN(maj_119_n5) );
  NAND2_X1 maj_119_U1 ( .A1(maj_119_n6), .A2(maj_119_n5), .ZN(maj_119_port_o)
         );
  OR2_X1 maj_120_U4 ( .A1(u_0_0[1]), .A2(u_0_0[0]), .ZN(maj_120_n4) );
  NAND2_X1 maj_120_U3 ( .A1(u_0_0[1]), .A2(u_0_0[0]), .ZN(maj_120_n6) );
  NAND2_X1 maj_120_U2 ( .A1(u_0_0[2]), .A2(maj_120_n4), .ZN(maj_120_n5) );
  NAND2_X1 maj_120_U1 ( .A1(maj_120_n6), .A2(maj_120_n5), .ZN(maj_120_port_o)
         );
  OR2_X1 maj_121_U4 ( .A1(v_0_0[1]), .A2(v_0_0[0]), .ZN(maj_121_n4) );
  NAND2_X1 maj_121_U3 ( .A1(v_0_0[1]), .A2(v_0_0[0]), .ZN(maj_121_n6) );
  NAND2_X1 maj_121_U2 ( .A1(v_0_0[2]), .A2(maj_121_n4), .ZN(maj_121_n5) );
  NAND2_X1 maj_121_U1 ( .A1(maj_121_n6), .A2(maj_121_n5), .ZN(maj_121_port_o)
         );
  OR2_X1 maj_122_U4 ( .A1(u_0_1[1]), .A2(u_0_1[0]), .ZN(maj_122_n4) );
  NAND2_X1 maj_122_U3 ( .A1(u_0_1[1]), .A2(u_0_1[0]), .ZN(maj_122_n6) );
  NAND2_X1 maj_122_U2 ( .A1(u_0_1[2]), .A2(maj_122_n4), .ZN(maj_122_n5) );
  NAND2_X1 maj_122_U1 ( .A1(maj_122_n6), .A2(maj_122_n5), .ZN(maj_122_port_o)
         );
  OR2_X1 maj_123_U4 ( .A1(v_0_1[1]), .A2(v_0_1[0]), .ZN(maj_123_n4) );
  NAND2_X1 maj_123_U3 ( .A1(v_0_1[1]), .A2(v_0_1[0]), .ZN(maj_123_n6) );
  NAND2_X1 maj_123_U2 ( .A1(v_0_1[2]), .A2(maj_123_n4), .ZN(maj_123_n5) );
  NAND2_X1 maj_123_U1 ( .A1(maj_123_n6), .A2(maj_123_n5), .ZN(maj_123_port_o)
         );
  OR2_X1 maj_124_U4 ( .A1(u_0_2[1]), .A2(u_0_2[0]), .ZN(maj_124_n4) );
  NAND2_X1 maj_124_U3 ( .A1(u_0_2[1]), .A2(u_0_2[0]), .ZN(maj_124_n6) );
  NAND2_X1 maj_124_U2 ( .A1(u_0_2[2]), .A2(maj_124_n4), .ZN(maj_124_n5) );
  NAND2_X1 maj_124_U1 ( .A1(maj_124_n6), .A2(maj_124_n5), .ZN(maj_124_port_o)
         );
  OR2_X1 maj_125_U4 ( .A1(v_0_2[1]), .A2(v_0_2[0]), .ZN(maj_125_n4) );
  NAND2_X1 maj_125_U3 ( .A1(v_0_2[1]), .A2(v_0_2[0]), .ZN(maj_125_n6) );
  NAND2_X1 maj_125_U2 ( .A1(v_0_2[2]), .A2(maj_125_n4), .ZN(maj_125_n5) );
  NAND2_X1 maj_125_U1 ( .A1(maj_125_n6), .A2(maj_125_n5), .ZN(maj_125_port_o)
         );
  OR2_X1 maj_126_U4 ( .A1(u_1_0[1]), .A2(u_1_0[0]), .ZN(maj_126_n4) );
  NAND2_X1 maj_126_U3 ( .A1(u_1_0[1]), .A2(u_1_0[0]), .ZN(maj_126_n6) );
  NAND2_X1 maj_126_U2 ( .A1(u_1_0[2]), .A2(maj_126_n4), .ZN(maj_126_n5) );
  NAND2_X1 maj_126_U1 ( .A1(maj_126_n6), .A2(maj_126_n5), .ZN(maj_126_port_o)
         );
  OR2_X1 maj_127_U4 ( .A1(v_1_0[1]), .A2(v_1_0[0]), .ZN(maj_127_n4) );
  NAND2_X1 maj_127_U3 ( .A1(v_1_0[1]), .A2(v_1_0[0]), .ZN(maj_127_n6) );
  NAND2_X1 maj_127_U2 ( .A1(v_1_0[2]), .A2(maj_127_n4), .ZN(maj_127_n5) );
  NAND2_X1 maj_127_U1 ( .A1(maj_127_n6), .A2(maj_127_n5), .ZN(maj_127_port_o)
         );
  OR2_X1 maj_128_U4 ( .A1(u_1_1[1]), .A2(u_1_1[0]), .ZN(maj_128_n4) );
  NAND2_X1 maj_128_U3 ( .A1(u_1_1[1]), .A2(u_1_1[0]), .ZN(maj_128_n6) );
  NAND2_X1 maj_128_U2 ( .A1(u_1_1[2]), .A2(maj_128_n4), .ZN(maj_128_n5) );
  NAND2_X1 maj_128_U1 ( .A1(maj_128_n6), .A2(maj_128_n5), .ZN(maj_128_port_o)
         );
  OR2_X1 maj_129_U4 ( .A1(v_1_1[1]), .A2(v_1_1[0]), .ZN(maj_129_n4) );
  NAND2_X1 maj_129_U3 ( .A1(v_1_1[1]), .A2(v_1_1[0]), .ZN(maj_129_n6) );
  NAND2_X1 maj_129_U2 ( .A1(v_1_1[2]), .A2(maj_129_n4), .ZN(maj_129_n5) );
  NAND2_X1 maj_129_U1 ( .A1(maj_129_n6), .A2(maj_129_n5), .ZN(maj_129_port_o)
         );
  OR2_X1 maj_130_U4 ( .A1(u_1_2[1]), .A2(u_1_2[0]), .ZN(maj_130_n4) );
  NAND2_X1 maj_130_U3 ( .A1(u_1_2[1]), .A2(u_1_2[0]), .ZN(maj_130_n6) );
  NAND2_X1 maj_130_U2 ( .A1(u_1_2[2]), .A2(maj_130_n4), .ZN(maj_130_n5) );
  NAND2_X1 maj_130_U1 ( .A1(maj_130_n6), .A2(maj_130_n5), .ZN(maj_130_port_o)
         );
  OR2_X1 maj_131_U4 ( .A1(v_1_2[1]), .A2(v_1_2[0]), .ZN(maj_131_n4) );
  NAND2_X1 maj_131_U3 ( .A1(v_1_2[1]), .A2(v_1_2[0]), .ZN(maj_131_n6) );
  NAND2_X1 maj_131_U2 ( .A1(v_1_2[2]), .A2(maj_131_n4), .ZN(maj_131_n5) );
  NAND2_X1 maj_131_U1 ( .A1(maj_131_n6), .A2(maj_131_n5), .ZN(maj_131_port_o)
         );
  OR2_X1 maj_132_U4 ( .A1(u_2_0[1]), .A2(u_2_0[0]), .ZN(maj_132_n4) );
  NAND2_X1 maj_132_U3 ( .A1(u_2_0[1]), .A2(u_2_0[0]), .ZN(maj_132_n6) );
  NAND2_X1 maj_132_U2 ( .A1(u_2_0[2]), .A2(maj_132_n4), .ZN(maj_132_n5) );
  NAND2_X1 maj_132_U1 ( .A1(maj_132_n6), .A2(maj_132_n5), .ZN(maj_132_port_o)
         );
  OR2_X1 maj_133_U4 ( .A1(v_2_0[1]), .A2(v_2_0[0]), .ZN(maj_133_n4) );
  NAND2_X1 maj_133_U3 ( .A1(v_2_0[1]), .A2(v_2_0[0]), .ZN(maj_133_n6) );
  NAND2_X1 maj_133_U2 ( .A1(v_2_0[2]), .A2(maj_133_n4), .ZN(maj_133_n5) );
  NAND2_X1 maj_133_U1 ( .A1(maj_133_n6), .A2(maj_133_n5), .ZN(maj_133_port_o)
         );
  OR2_X1 maj_134_U4 ( .A1(u_2_1[1]), .A2(u_2_1[0]), .ZN(maj_134_n4) );
  NAND2_X1 maj_134_U3 ( .A1(u_2_1[1]), .A2(u_2_1[0]), .ZN(maj_134_n6) );
  NAND2_X1 maj_134_U2 ( .A1(u_2_1[2]), .A2(maj_134_n4), .ZN(maj_134_n5) );
  NAND2_X1 maj_134_U1 ( .A1(maj_134_n6), .A2(maj_134_n5), .ZN(maj_134_port_o)
         );
  OR2_X1 maj_135_U4 ( .A1(v_2_1[1]), .A2(v_2_1[0]), .ZN(maj_135_n4) );
  NAND2_X1 maj_135_U3 ( .A1(v_2_1[1]), .A2(v_2_1[0]), .ZN(maj_135_n6) );
  NAND2_X1 maj_135_U2 ( .A1(v_2_1[2]), .A2(maj_135_n4), .ZN(maj_135_n5) );
  NAND2_X1 maj_135_U1 ( .A1(maj_135_n6), .A2(maj_135_n5), .ZN(maj_135_port_o)
         );
  OR2_X1 maj_136_U4 ( .A1(u_2_2[1]), .A2(u_2_2[0]), .ZN(maj_136_n4) );
  NAND2_X1 maj_136_U3 ( .A1(u_2_2[1]), .A2(u_2_2[0]), .ZN(maj_136_n6) );
  NAND2_X1 maj_136_U2 ( .A1(u_2_2[2]), .A2(maj_136_n4), .ZN(maj_136_n5) );
  NAND2_X1 maj_136_U1 ( .A1(maj_136_n6), .A2(maj_136_n5), .ZN(maj_136_port_o)
         );
  OR2_X1 maj_137_U4 ( .A1(v_2_2[1]), .A2(v_2_2[0]), .ZN(maj_137_n4) );
  NAND2_X1 maj_137_U3 ( .A1(v_2_2[1]), .A2(v_2_2[0]), .ZN(maj_137_n6) );
  NAND2_X1 maj_137_U2 ( .A1(v_2_2[2]), .A2(maj_137_n4), .ZN(maj_137_n5) );
  NAND2_X1 maj_137_U1 ( .A1(maj_137_n6), .A2(maj_137_n5), .ZN(maj_137_port_o)
         );
  OR2_X1 maj_138_U4 ( .A1(u_3_0[1]), .A2(u_3_0[0]), .ZN(maj_138_n4) );
  NAND2_X1 maj_138_U3 ( .A1(u_3_0[1]), .A2(u_3_0[0]), .ZN(maj_138_n6) );
  NAND2_X1 maj_138_U2 ( .A1(u_3_0[2]), .A2(maj_138_n4), .ZN(maj_138_n5) );
  NAND2_X1 maj_138_U1 ( .A1(maj_138_n6), .A2(maj_138_n5), .ZN(maj_138_port_o)
         );
  OR2_X1 maj_139_U4 ( .A1(v_3_0[1]), .A2(v_3_0[0]), .ZN(maj_139_n4) );
  NAND2_X1 maj_139_U3 ( .A1(v_3_0[1]), .A2(v_3_0[0]), .ZN(maj_139_n6) );
  NAND2_X1 maj_139_U2 ( .A1(v_3_0[2]), .A2(maj_139_n4), .ZN(maj_139_n5) );
  NAND2_X1 maj_139_U1 ( .A1(maj_139_n6), .A2(maj_139_n5), .ZN(maj_139_port_o)
         );
  OR2_X1 maj_140_U4 ( .A1(u_3_1[1]), .A2(u_3_1[0]), .ZN(maj_140_n4) );
  NAND2_X1 maj_140_U3 ( .A1(u_3_1[1]), .A2(u_3_1[0]), .ZN(maj_140_n6) );
  NAND2_X1 maj_140_U2 ( .A1(u_3_1[2]), .A2(maj_140_n4), .ZN(maj_140_n5) );
  NAND2_X1 maj_140_U1 ( .A1(maj_140_n6), .A2(maj_140_n5), .ZN(maj_140_port_o)
         );
  OR2_X1 maj_141_U4 ( .A1(v_3_1[1]), .A2(v_3_1[0]), .ZN(maj_141_n4) );
  NAND2_X1 maj_141_U3 ( .A1(v_3_1[1]), .A2(v_3_1[0]), .ZN(maj_141_n6) );
  NAND2_X1 maj_141_U2 ( .A1(v_3_1[2]), .A2(maj_141_n4), .ZN(maj_141_n5) );
  NAND2_X1 maj_141_U1 ( .A1(maj_141_n6), .A2(maj_141_n5), .ZN(maj_141_port_o)
         );
  OR2_X1 maj_142_U4 ( .A1(u_3_2[1]), .A2(u_3_2[0]), .ZN(maj_142_n4) );
  NAND2_X1 maj_142_U3 ( .A1(u_3_2[1]), .A2(u_3_2[0]), .ZN(maj_142_n6) );
  NAND2_X1 maj_142_U2 ( .A1(u_3_2[2]), .A2(maj_142_n4), .ZN(maj_142_n5) );
  NAND2_X1 maj_142_U1 ( .A1(maj_142_n6), .A2(maj_142_n5), .ZN(maj_142_port_o)
         );
  OR2_X1 maj_143_U4 ( .A1(v_3_2[1]), .A2(v_3_2[0]), .ZN(maj_143_n4) );
  NAND2_X1 maj_143_U3 ( .A1(v_3_2[1]), .A2(v_3_2[0]), .ZN(maj_143_n6) );
  NAND2_X1 maj_143_U2 ( .A1(v_3_2[2]), .A2(maj_143_n4), .ZN(maj_143_n5) );
  NAND2_X1 maj_143_U1 ( .A1(maj_143_n6), .A2(maj_143_n5), .ZN(maj_143_port_o)
         );
endmodule

