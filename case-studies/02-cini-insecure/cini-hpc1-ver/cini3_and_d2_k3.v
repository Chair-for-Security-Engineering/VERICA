
module CINI3 ( port_a_0, port_a_1, port_a_2, port_b_0, port_b_1, port_b_2, 
        port_c_0, port_c_1, port_c_2, port_rand_ref, port_rand_mul, clk, reset
 );
  input [6:0] port_a_0;
  input [6:0] port_a_1;
  input [6:0] port_a_2;
  input [6:0] port_b_0;
  input [6:0] port_b_1;
  input [6:0] port_b_2;
  output [6:0] port_c_0;
  output [6:0] port_c_1;
  output [6:0] port_c_2;
  input [2:0] port_rand_ref;
  input [2:0] port_rand_mul;
  input clk, reset;
  wire   N0, N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15,
         N16, N17, N18, N19, N20, N21, N22, N23, N24, N25, N26, N27, N28, N29,
         N30, N31, N32, N33, N34, N35, N36, N37, N38, N39, N40, N41, N42, N43,
         N44, N45, N46, N47, N48, N49, N50, N51, N52, N53, N54, N55, N56, N57,
         N58, N59, N60, N61, N62, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, ref_1_n36,
         ref_1_n35, ref_1_n34, ref_1_n33, ref_1_n32, ref_1_n31, ref_1_n30,
         ref_1_n29, ref_1_n28, ref_1_n27, ref_1_n26, ref_1_n25, ref_1_n24,
         ref_1_n23, ref_1_n22, ref_1_n21, ref_1_n20, ref_1_n19, ref_1_n18,
         ref_1_n17, ref_1_n16, ref_1_n15, ref_1_n14, ref_1_n13, ref_1_n12,
         ref_1_n11, ref_1_n10, ref_1_n9, ref_1_n8, ref_1_n7, ref_1_n6,
         ref_1_n5, ref_1_n4, ref_1_n3, ref_1_n2, ref_1_n1,
         ref_1_maj_125_port_o, ref_1_maj_124_port_o, ref_1_maj_123_port_o,
         ref_1_maj_122_port_o, ref_1_maj_121_port_o, ref_1_maj_120_port_o,
         ref_1_maj_119_port_o, ref_1_maj_118_port_o, ref_1_maj_117_port_o,
         ref_1_maj_116_port_o, ref_1_maj_115_port_o, ref_1_maj_114_port_o,
         ref_1_maj_113_port_o, ref_1_maj_112_port_o, ref_1_maj_111_port_o,
         ref_1_maj_110_port_o, ref_1_maj_109_port_o, ref_1_maj_108_port_o,
         ref_1_maj_107_port_o, ref_1_maj_106_port_o, ref_1_maj_105_port_o,
         ref_1_maj_104_port_o, ref_1_maj_103_port_o, ref_1_maj_102_port_o,
         ref_1_maj_101_port_o, ref_1_maj_100_port_o, ref_1_maj_99_port_o,
         ref_1_maj_98_port_o, ref_1_maj_97_port_o, ref_1_maj_96_port_o,
         ref_1_maj_95_port_o, ref_1_maj_94_port_o, ref_1_maj_93_port_o,
         ref_1_maj_92_port_o, ref_1_maj_91_port_o, ref_1_maj_90_port_o,
         ref_1_maj_89_port_o, ref_1_maj_88_port_o, ref_1_maj_87_port_o,
         ref_1_maj_86_port_o, ref_1_maj_85_port_o, ref_1_maj_84_port_o,
         ref_1_maj_83_port_o, ref_1_maj_82_port_o, ref_1_maj_81_port_o,
         ref_1_maj_80_port_o, ref_1_maj_79_port_o, ref_1_maj_78_port_o,
         ref_1_maj_77_port_o, ref_1_maj_76_port_o, ref_1_maj_75_port_o,
         ref_1_maj_74_port_o, ref_1_maj_73_port_o, ref_1_maj_72_port_o,
         ref_1_maj_71_port_o, ref_1_maj_70_port_o, ref_1_maj_69_port_o,
         ref_1_refreshed_2_0_, ref_1_refreshed_2_1_, ref_1_refreshed_2_2_,
         ref_1_refreshed_2_3_, ref_1_refreshed_2_4_, ref_1_refreshed_2_5_,
         ref_1_refreshed_2_6_, ref_1_maj_68_port_o, ref_1_maj_67_port_o,
         ref_1_maj_66_port_o, ref_1_refreshed_1_0_, ref_1_refreshed_1_1_,
         ref_1_refreshed_1_2_, ref_1_refreshed_1_3_, ref_1_refreshed_1_4_,
         ref_1_refreshed_1_5_, ref_1_refreshed_1_6_, ref_1_maj_65_port_o,
         ref_1_maj_64_port_o, ref_1_maj_63_port_o, ref_1_refreshed_0_0_,
         ref_1_refreshed_0_1_, ref_1_refreshed_0_2_, ref_1_refreshed_0_3_,
         ref_1_refreshed_0_4_, ref_1_refreshed_0_5_, ref_1_refreshed_0_6_,
         ref_1_simpleXor_82_port_z, ref_1_simpleXor_80_port_z,
         ref_1_simpleXor_78_port_z, ref_1_simpleXor_76_port_z,
         ref_1_simpleXor_74_port_z, ref_1_simpleXor_72_port_z,
         ref_1_simpleXor_70_port_z, ref_1_simpleXor_68_port_z,
         ref_1_simpleXor_66_port_z, ref_1_simpleXor_64_port_z,
         ref_1_simpleXor_62_port_z, ref_1_simpleXor_60_port_z,
         ref_1_simpleXor_58_port_z, ref_1_simpleXor_56_port_z,
         ref_1_simpleXor_54_port_z, ref_1_simpleXor_52_port_z,
         ref_1_simpleXor_50_port_z, ref_1_simpleXor_48_port_z,
         ref_1_simpleXor_46_port_z, ref_1_simpleXor_44_port_z,
         ref_1_simpleXor_42_port_z, ref_1_simpleXor_79_n2,
         ref_1_simpleXor_81_n2, ref_1_simpleXor_83_n2, ref_1_maj_63_n17,
         ref_1_maj_63_n16, ref_1_maj_63_n15, ref_1_maj_63_n14,
         ref_1_maj_63_n13, ref_1_maj_63_n12, ref_1_maj_63_n11,
         ref_1_maj_63_n10, ref_1_maj_63_n9, ref_1_maj_63_n8, ref_1_maj_63_n7,
         ref_1_maj_63_n6, ref_1_maj_63_n5, ref_1_maj_63_n4, ref_1_maj_63_n3,
         ref_1_maj_63_n2, ref_1_maj_63_n1, ref_1_maj_64_n34, ref_1_maj_64_n33,
         ref_1_maj_64_n32, ref_1_maj_64_n31, ref_1_maj_64_n30,
         ref_1_maj_64_n29, ref_1_maj_64_n28, ref_1_maj_64_n27,
         ref_1_maj_64_n26, ref_1_maj_64_n25, ref_1_maj_64_n24,
         ref_1_maj_64_n23, ref_1_maj_64_n22, ref_1_maj_64_n21,
         ref_1_maj_64_n20, ref_1_maj_64_n19, ref_1_maj_64_n18,
         ref_1_maj_65_n34, ref_1_maj_65_n33, ref_1_maj_65_n32,
         ref_1_maj_65_n31, ref_1_maj_65_n30, ref_1_maj_65_n29,
         ref_1_maj_65_n28, ref_1_maj_65_n27, ref_1_maj_65_n26,
         ref_1_maj_65_n25, ref_1_maj_65_n24, ref_1_maj_65_n23,
         ref_1_maj_65_n22, ref_1_maj_65_n21, ref_1_maj_65_n20,
         ref_1_maj_65_n19, ref_1_maj_65_n18, ref_1_maj_66_n34,
         ref_1_maj_66_n33, ref_1_maj_66_n32, ref_1_maj_66_n31,
         ref_1_maj_66_n30, ref_1_maj_66_n29, ref_1_maj_66_n28,
         ref_1_maj_66_n27, ref_1_maj_66_n26, ref_1_maj_66_n25,
         ref_1_maj_66_n24, ref_1_maj_66_n23, ref_1_maj_66_n22,
         ref_1_maj_66_n21, ref_1_maj_66_n20, ref_1_maj_66_n19,
         ref_1_maj_66_n18, ref_1_maj_67_n34, ref_1_maj_67_n33,
         ref_1_maj_67_n32, ref_1_maj_67_n31, ref_1_maj_67_n30,
         ref_1_maj_67_n29, ref_1_maj_67_n28, ref_1_maj_67_n27,
         ref_1_maj_67_n26, ref_1_maj_67_n25, ref_1_maj_67_n24,
         ref_1_maj_67_n23, ref_1_maj_67_n22, ref_1_maj_67_n21,
         ref_1_maj_67_n20, ref_1_maj_67_n19, ref_1_maj_67_n18,
         ref_1_maj_68_n34, ref_1_maj_68_n33, ref_1_maj_68_n32,
         ref_1_maj_68_n31, ref_1_maj_68_n30, ref_1_maj_68_n29,
         ref_1_maj_68_n28, ref_1_maj_68_n27, ref_1_maj_68_n26,
         ref_1_maj_68_n25, ref_1_maj_68_n24, ref_1_maj_68_n23,
         ref_1_maj_68_n22, ref_1_maj_68_n21, ref_1_maj_68_n20,
         ref_1_maj_68_n19, ref_1_maj_68_n18, ref_1_maj_69_n34,
         ref_1_maj_69_n33, ref_1_maj_69_n32, ref_1_maj_69_n31,
         ref_1_maj_69_n30, ref_1_maj_69_n29, ref_1_maj_69_n28,
         ref_1_maj_69_n27, ref_1_maj_69_n26, ref_1_maj_69_n25,
         ref_1_maj_69_n24, ref_1_maj_69_n23, ref_1_maj_69_n22,
         ref_1_maj_69_n21, ref_1_maj_69_n20, ref_1_maj_69_n19,
         ref_1_maj_69_n18, ref_1_maj_70_n34, ref_1_maj_70_n33,
         ref_1_maj_70_n32, ref_1_maj_70_n31, ref_1_maj_70_n30,
         ref_1_maj_70_n29, ref_1_maj_70_n28, ref_1_maj_70_n27,
         ref_1_maj_70_n26, ref_1_maj_70_n25, ref_1_maj_70_n24,
         ref_1_maj_70_n23, ref_1_maj_70_n22, ref_1_maj_70_n21,
         ref_1_maj_70_n20, ref_1_maj_70_n19, ref_1_maj_70_n18,
         ref_1_maj_71_n34, ref_1_maj_71_n33, ref_1_maj_71_n32,
         ref_1_maj_71_n31, ref_1_maj_71_n30, ref_1_maj_71_n29,
         ref_1_maj_71_n28, ref_1_maj_71_n27, ref_1_maj_71_n26,
         ref_1_maj_71_n25, ref_1_maj_71_n24, ref_1_maj_71_n23,
         ref_1_maj_71_n22, ref_1_maj_71_n21, ref_1_maj_71_n20,
         ref_1_maj_71_n19, ref_1_maj_71_n18, ref_1_maj_72_n34,
         ref_1_maj_72_n33, ref_1_maj_72_n32, ref_1_maj_72_n31,
         ref_1_maj_72_n30, ref_1_maj_72_n29, ref_1_maj_72_n28,
         ref_1_maj_72_n27, ref_1_maj_72_n26, ref_1_maj_72_n25,
         ref_1_maj_72_n24, ref_1_maj_72_n23, ref_1_maj_72_n22,
         ref_1_maj_72_n21, ref_1_maj_72_n20, ref_1_maj_72_n19,
         ref_1_maj_72_n18, ref_1_maj_73_n34, ref_1_maj_73_n33,
         ref_1_maj_73_n32, ref_1_maj_73_n31, ref_1_maj_73_n30,
         ref_1_maj_73_n29, ref_1_maj_73_n28, ref_1_maj_73_n27,
         ref_1_maj_73_n26, ref_1_maj_73_n25, ref_1_maj_73_n24,
         ref_1_maj_73_n23, ref_1_maj_73_n22, ref_1_maj_73_n21,
         ref_1_maj_73_n20, ref_1_maj_73_n19, ref_1_maj_73_n18,
         ref_1_maj_74_n34, ref_1_maj_74_n33, ref_1_maj_74_n32,
         ref_1_maj_74_n31, ref_1_maj_74_n30, ref_1_maj_74_n29,
         ref_1_maj_74_n28, ref_1_maj_74_n27, ref_1_maj_74_n26,
         ref_1_maj_74_n25, ref_1_maj_74_n24, ref_1_maj_74_n23,
         ref_1_maj_74_n22, ref_1_maj_74_n21, ref_1_maj_74_n20,
         ref_1_maj_74_n19, ref_1_maj_74_n18, ref_1_maj_75_n34,
         ref_1_maj_75_n33, ref_1_maj_75_n32, ref_1_maj_75_n31,
         ref_1_maj_75_n30, ref_1_maj_75_n29, ref_1_maj_75_n28,
         ref_1_maj_75_n27, ref_1_maj_75_n26, ref_1_maj_75_n25,
         ref_1_maj_75_n24, ref_1_maj_75_n23, ref_1_maj_75_n22,
         ref_1_maj_75_n21, ref_1_maj_75_n20, ref_1_maj_75_n19,
         ref_1_maj_75_n18, ref_1_maj_76_n34, ref_1_maj_76_n33,
         ref_1_maj_76_n32, ref_1_maj_76_n31, ref_1_maj_76_n30,
         ref_1_maj_76_n29, ref_1_maj_76_n28, ref_1_maj_76_n27,
         ref_1_maj_76_n26, ref_1_maj_76_n25, ref_1_maj_76_n24,
         ref_1_maj_76_n23, ref_1_maj_76_n22, ref_1_maj_76_n21,
         ref_1_maj_76_n20, ref_1_maj_76_n19, ref_1_maj_76_n18,
         ref_1_maj_77_n34, ref_1_maj_77_n33, ref_1_maj_77_n32,
         ref_1_maj_77_n31, ref_1_maj_77_n30, ref_1_maj_77_n29,
         ref_1_maj_77_n28, ref_1_maj_77_n27, ref_1_maj_77_n26,
         ref_1_maj_77_n25, ref_1_maj_77_n24, ref_1_maj_77_n23,
         ref_1_maj_77_n22, ref_1_maj_77_n21, ref_1_maj_77_n20,
         ref_1_maj_77_n19, ref_1_maj_77_n18, ref_1_maj_78_n34,
         ref_1_maj_78_n33, ref_1_maj_78_n32, ref_1_maj_78_n31,
         ref_1_maj_78_n30, ref_1_maj_78_n29, ref_1_maj_78_n28,
         ref_1_maj_78_n27, ref_1_maj_78_n26, ref_1_maj_78_n25,
         ref_1_maj_78_n24, ref_1_maj_78_n23, ref_1_maj_78_n22,
         ref_1_maj_78_n21, ref_1_maj_78_n20, ref_1_maj_78_n19,
         ref_1_maj_78_n18, ref_1_maj_79_n34, ref_1_maj_79_n33,
         ref_1_maj_79_n32, ref_1_maj_79_n31, ref_1_maj_79_n30,
         ref_1_maj_79_n29, ref_1_maj_79_n28, ref_1_maj_79_n27,
         ref_1_maj_79_n26, ref_1_maj_79_n25, ref_1_maj_79_n24,
         ref_1_maj_79_n23, ref_1_maj_79_n22, ref_1_maj_79_n21,
         ref_1_maj_79_n20, ref_1_maj_79_n19, ref_1_maj_79_n18,
         ref_1_maj_80_n34, ref_1_maj_80_n33, ref_1_maj_80_n32,
         ref_1_maj_80_n31, ref_1_maj_80_n30, ref_1_maj_80_n29,
         ref_1_maj_80_n28, ref_1_maj_80_n27, ref_1_maj_80_n26,
         ref_1_maj_80_n25, ref_1_maj_80_n24, ref_1_maj_80_n23,
         ref_1_maj_80_n22, ref_1_maj_80_n21, ref_1_maj_80_n20,
         ref_1_maj_80_n19, ref_1_maj_80_n18, ref_1_maj_81_n34,
         ref_1_maj_81_n33, ref_1_maj_81_n32, ref_1_maj_81_n31,
         ref_1_maj_81_n30, ref_1_maj_81_n29, ref_1_maj_81_n28,
         ref_1_maj_81_n27, ref_1_maj_81_n26, ref_1_maj_81_n25,
         ref_1_maj_81_n24, ref_1_maj_81_n23, ref_1_maj_81_n22,
         ref_1_maj_81_n21, ref_1_maj_81_n20, ref_1_maj_81_n19,
         ref_1_maj_81_n18, ref_1_maj_82_n34, ref_1_maj_82_n33,
         ref_1_maj_82_n32, ref_1_maj_82_n31, ref_1_maj_82_n30,
         ref_1_maj_82_n29, ref_1_maj_82_n28, ref_1_maj_82_n27,
         ref_1_maj_82_n26, ref_1_maj_82_n25, ref_1_maj_82_n24,
         ref_1_maj_82_n23, ref_1_maj_82_n22, ref_1_maj_82_n21,
         ref_1_maj_82_n20, ref_1_maj_82_n19, ref_1_maj_82_n18,
         ref_1_maj_83_n34, ref_1_maj_83_n33, ref_1_maj_83_n32,
         ref_1_maj_83_n31, ref_1_maj_83_n30, ref_1_maj_83_n29,
         ref_1_maj_83_n28, ref_1_maj_83_n27, ref_1_maj_83_n26,
         ref_1_maj_83_n25, ref_1_maj_83_n24, ref_1_maj_83_n23,
         ref_1_maj_83_n22, ref_1_maj_83_n21, ref_1_maj_83_n20,
         ref_1_maj_83_n19, ref_1_maj_83_n18, ref_1_maj_84_n34,
         ref_1_maj_84_n33, ref_1_maj_84_n32, ref_1_maj_84_n31,
         ref_1_maj_84_n30, ref_1_maj_84_n29, ref_1_maj_84_n28,
         ref_1_maj_84_n27, ref_1_maj_84_n26, ref_1_maj_84_n25,
         ref_1_maj_84_n24, ref_1_maj_84_n23, ref_1_maj_84_n22,
         ref_1_maj_84_n21, ref_1_maj_84_n20, ref_1_maj_84_n19,
         ref_1_maj_84_n18, ref_1_maj_85_n34, ref_1_maj_85_n33,
         ref_1_maj_85_n32, ref_1_maj_85_n31, ref_1_maj_85_n30,
         ref_1_maj_85_n29, ref_1_maj_85_n28, ref_1_maj_85_n27,
         ref_1_maj_85_n26, ref_1_maj_85_n25, ref_1_maj_85_n24,
         ref_1_maj_85_n23, ref_1_maj_85_n22, ref_1_maj_85_n21,
         ref_1_maj_85_n20, ref_1_maj_85_n19, ref_1_maj_85_n18,
         ref_1_maj_86_n34, ref_1_maj_86_n33, ref_1_maj_86_n32,
         ref_1_maj_86_n31, ref_1_maj_86_n30, ref_1_maj_86_n29,
         ref_1_maj_86_n28, ref_1_maj_86_n27, ref_1_maj_86_n26,
         ref_1_maj_86_n25, ref_1_maj_86_n24, ref_1_maj_86_n23,
         ref_1_maj_86_n22, ref_1_maj_86_n21, ref_1_maj_86_n20,
         ref_1_maj_86_n19, ref_1_maj_86_n18, ref_1_maj_87_n34,
         ref_1_maj_87_n33, ref_1_maj_87_n32, ref_1_maj_87_n31,
         ref_1_maj_87_n30, ref_1_maj_87_n29, ref_1_maj_87_n28,
         ref_1_maj_87_n27, ref_1_maj_87_n26, ref_1_maj_87_n25,
         ref_1_maj_87_n24, ref_1_maj_87_n23, ref_1_maj_87_n22,
         ref_1_maj_87_n21, ref_1_maj_87_n20, ref_1_maj_87_n19,
         ref_1_maj_87_n18, ref_1_maj_88_n34, ref_1_maj_88_n33,
         ref_1_maj_88_n32, ref_1_maj_88_n31, ref_1_maj_88_n30,
         ref_1_maj_88_n29, ref_1_maj_88_n28, ref_1_maj_88_n27,
         ref_1_maj_88_n26, ref_1_maj_88_n25, ref_1_maj_88_n24,
         ref_1_maj_88_n23, ref_1_maj_88_n22, ref_1_maj_88_n21,
         ref_1_maj_88_n20, ref_1_maj_88_n19, ref_1_maj_88_n18,
         ref_1_maj_89_n34, ref_1_maj_89_n33, ref_1_maj_89_n32,
         ref_1_maj_89_n31, ref_1_maj_89_n30, ref_1_maj_89_n29,
         ref_1_maj_89_n28, ref_1_maj_89_n27, ref_1_maj_89_n26,
         ref_1_maj_89_n25, ref_1_maj_89_n24, ref_1_maj_89_n23,
         ref_1_maj_89_n22, ref_1_maj_89_n21, ref_1_maj_89_n20,
         ref_1_maj_89_n19, ref_1_maj_89_n18, ref_1_maj_90_n34,
         ref_1_maj_90_n33, ref_1_maj_90_n32, ref_1_maj_90_n31,
         ref_1_maj_90_n30, ref_1_maj_90_n29, ref_1_maj_90_n28,
         ref_1_maj_90_n27, ref_1_maj_90_n26, ref_1_maj_90_n25,
         ref_1_maj_90_n24, ref_1_maj_90_n23, ref_1_maj_90_n22,
         ref_1_maj_90_n21, ref_1_maj_90_n20, ref_1_maj_90_n19,
         ref_1_maj_90_n18, ref_1_maj_91_n34, ref_1_maj_91_n33,
         ref_1_maj_91_n32, ref_1_maj_91_n31, ref_1_maj_91_n30,
         ref_1_maj_91_n29, ref_1_maj_91_n28, ref_1_maj_91_n27,
         ref_1_maj_91_n26, ref_1_maj_91_n25, ref_1_maj_91_n24,
         ref_1_maj_91_n23, ref_1_maj_91_n22, ref_1_maj_91_n21,
         ref_1_maj_91_n20, ref_1_maj_91_n19, ref_1_maj_91_n18,
         ref_1_maj_92_n34, ref_1_maj_92_n33, ref_1_maj_92_n32,
         ref_1_maj_92_n31, ref_1_maj_92_n30, ref_1_maj_92_n29,
         ref_1_maj_92_n28, ref_1_maj_92_n27, ref_1_maj_92_n26,
         ref_1_maj_92_n25, ref_1_maj_92_n24, ref_1_maj_92_n23,
         ref_1_maj_92_n22, ref_1_maj_92_n21, ref_1_maj_92_n20,
         ref_1_maj_92_n19, ref_1_maj_92_n18, ref_1_maj_93_n34,
         ref_1_maj_93_n33, ref_1_maj_93_n32, ref_1_maj_93_n31,
         ref_1_maj_93_n30, ref_1_maj_93_n29, ref_1_maj_93_n28,
         ref_1_maj_93_n27, ref_1_maj_93_n26, ref_1_maj_93_n25,
         ref_1_maj_93_n24, ref_1_maj_93_n23, ref_1_maj_93_n22,
         ref_1_maj_93_n21, ref_1_maj_93_n20, ref_1_maj_93_n19,
         ref_1_maj_93_n18, ref_1_maj_94_n34, ref_1_maj_94_n33,
         ref_1_maj_94_n32, ref_1_maj_94_n31, ref_1_maj_94_n30,
         ref_1_maj_94_n29, ref_1_maj_94_n28, ref_1_maj_94_n27,
         ref_1_maj_94_n26, ref_1_maj_94_n25, ref_1_maj_94_n24,
         ref_1_maj_94_n23, ref_1_maj_94_n22, ref_1_maj_94_n21,
         ref_1_maj_94_n20, ref_1_maj_94_n19, ref_1_maj_94_n18,
         ref_1_maj_95_n34, ref_1_maj_95_n33, ref_1_maj_95_n32,
         ref_1_maj_95_n31, ref_1_maj_95_n30, ref_1_maj_95_n29,
         ref_1_maj_95_n28, ref_1_maj_95_n27, ref_1_maj_95_n26,
         ref_1_maj_95_n25, ref_1_maj_95_n24, ref_1_maj_95_n23,
         ref_1_maj_95_n22, ref_1_maj_95_n21, ref_1_maj_95_n20,
         ref_1_maj_95_n19, ref_1_maj_95_n18, ref_1_maj_96_n34,
         ref_1_maj_96_n33, ref_1_maj_96_n32, ref_1_maj_96_n31,
         ref_1_maj_96_n30, ref_1_maj_96_n29, ref_1_maj_96_n28,
         ref_1_maj_96_n27, ref_1_maj_96_n26, ref_1_maj_96_n25,
         ref_1_maj_96_n24, ref_1_maj_96_n23, ref_1_maj_96_n22,
         ref_1_maj_96_n21, ref_1_maj_96_n20, ref_1_maj_96_n19,
         ref_1_maj_96_n18, ref_1_maj_97_n34, ref_1_maj_97_n33,
         ref_1_maj_97_n32, ref_1_maj_97_n31, ref_1_maj_97_n30,
         ref_1_maj_97_n29, ref_1_maj_97_n28, ref_1_maj_97_n27,
         ref_1_maj_97_n26, ref_1_maj_97_n25, ref_1_maj_97_n24,
         ref_1_maj_97_n23, ref_1_maj_97_n22, ref_1_maj_97_n21,
         ref_1_maj_97_n20, ref_1_maj_97_n19, ref_1_maj_97_n18,
         ref_1_maj_98_n34, ref_1_maj_98_n33, ref_1_maj_98_n32,
         ref_1_maj_98_n31, ref_1_maj_98_n30, ref_1_maj_98_n29,
         ref_1_maj_98_n28, ref_1_maj_98_n27, ref_1_maj_98_n26,
         ref_1_maj_98_n25, ref_1_maj_98_n24, ref_1_maj_98_n23,
         ref_1_maj_98_n22, ref_1_maj_98_n21, ref_1_maj_98_n20,
         ref_1_maj_98_n19, ref_1_maj_98_n18, ref_1_maj_99_n34,
         ref_1_maj_99_n33, ref_1_maj_99_n32, ref_1_maj_99_n31,
         ref_1_maj_99_n30, ref_1_maj_99_n29, ref_1_maj_99_n28,
         ref_1_maj_99_n27, ref_1_maj_99_n26, ref_1_maj_99_n25,
         ref_1_maj_99_n24, ref_1_maj_99_n23, ref_1_maj_99_n22,
         ref_1_maj_99_n21, ref_1_maj_99_n20, ref_1_maj_99_n19,
         ref_1_maj_99_n18, ref_1_maj_100_n34, ref_1_maj_100_n33,
         ref_1_maj_100_n32, ref_1_maj_100_n31, ref_1_maj_100_n30,
         ref_1_maj_100_n29, ref_1_maj_100_n28, ref_1_maj_100_n27,
         ref_1_maj_100_n26, ref_1_maj_100_n25, ref_1_maj_100_n24,
         ref_1_maj_100_n23, ref_1_maj_100_n22, ref_1_maj_100_n21,
         ref_1_maj_100_n20, ref_1_maj_100_n19, ref_1_maj_100_n18,
         ref_1_maj_101_n34, ref_1_maj_101_n33, ref_1_maj_101_n32,
         ref_1_maj_101_n31, ref_1_maj_101_n30, ref_1_maj_101_n29,
         ref_1_maj_101_n28, ref_1_maj_101_n27, ref_1_maj_101_n26,
         ref_1_maj_101_n25, ref_1_maj_101_n24, ref_1_maj_101_n23,
         ref_1_maj_101_n22, ref_1_maj_101_n21, ref_1_maj_101_n20,
         ref_1_maj_101_n19, ref_1_maj_101_n18, ref_1_maj_102_n34,
         ref_1_maj_102_n33, ref_1_maj_102_n32, ref_1_maj_102_n31,
         ref_1_maj_102_n30, ref_1_maj_102_n29, ref_1_maj_102_n28,
         ref_1_maj_102_n27, ref_1_maj_102_n26, ref_1_maj_102_n25,
         ref_1_maj_102_n24, ref_1_maj_102_n23, ref_1_maj_102_n22,
         ref_1_maj_102_n21, ref_1_maj_102_n20, ref_1_maj_102_n19,
         ref_1_maj_102_n18, ref_1_maj_103_n34, ref_1_maj_103_n33,
         ref_1_maj_103_n32, ref_1_maj_103_n31, ref_1_maj_103_n30,
         ref_1_maj_103_n29, ref_1_maj_103_n28, ref_1_maj_103_n27,
         ref_1_maj_103_n26, ref_1_maj_103_n25, ref_1_maj_103_n24,
         ref_1_maj_103_n23, ref_1_maj_103_n22, ref_1_maj_103_n21,
         ref_1_maj_103_n20, ref_1_maj_103_n19, ref_1_maj_103_n18,
         ref_1_maj_104_n34, ref_1_maj_104_n33, ref_1_maj_104_n32,
         ref_1_maj_104_n31, ref_1_maj_104_n30, ref_1_maj_104_n29,
         ref_1_maj_104_n28, ref_1_maj_104_n27, ref_1_maj_104_n26,
         ref_1_maj_104_n25, ref_1_maj_104_n24, ref_1_maj_104_n23,
         ref_1_maj_104_n22, ref_1_maj_104_n21, ref_1_maj_104_n20,
         ref_1_maj_104_n19, ref_1_maj_104_n18, ref_1_maj_105_n34,
         ref_1_maj_105_n33, ref_1_maj_105_n32, ref_1_maj_105_n31,
         ref_1_maj_105_n30, ref_1_maj_105_n29, ref_1_maj_105_n28,
         ref_1_maj_105_n27, ref_1_maj_105_n26, ref_1_maj_105_n25,
         ref_1_maj_105_n24, ref_1_maj_105_n23, ref_1_maj_105_n22,
         ref_1_maj_105_n21, ref_1_maj_105_n20, ref_1_maj_105_n19,
         ref_1_maj_105_n18, ref_1_maj_106_n34, ref_1_maj_106_n33,
         ref_1_maj_106_n32, ref_1_maj_106_n31, ref_1_maj_106_n30,
         ref_1_maj_106_n29, ref_1_maj_106_n28, ref_1_maj_106_n27,
         ref_1_maj_106_n26, ref_1_maj_106_n25, ref_1_maj_106_n24,
         ref_1_maj_106_n23, ref_1_maj_106_n22, ref_1_maj_106_n21,
         ref_1_maj_106_n20, ref_1_maj_106_n19, ref_1_maj_106_n18,
         ref_1_maj_107_n34, ref_1_maj_107_n33, ref_1_maj_107_n32,
         ref_1_maj_107_n31, ref_1_maj_107_n30, ref_1_maj_107_n29,
         ref_1_maj_107_n28, ref_1_maj_107_n27, ref_1_maj_107_n26,
         ref_1_maj_107_n25, ref_1_maj_107_n24, ref_1_maj_107_n23,
         ref_1_maj_107_n22, ref_1_maj_107_n21, ref_1_maj_107_n20,
         ref_1_maj_107_n19, ref_1_maj_107_n18, ref_1_maj_108_n34,
         ref_1_maj_108_n33, ref_1_maj_108_n32, ref_1_maj_108_n31,
         ref_1_maj_108_n30, ref_1_maj_108_n29, ref_1_maj_108_n28,
         ref_1_maj_108_n27, ref_1_maj_108_n26, ref_1_maj_108_n25,
         ref_1_maj_108_n24, ref_1_maj_108_n23, ref_1_maj_108_n22,
         ref_1_maj_108_n21, ref_1_maj_108_n20, ref_1_maj_108_n19,
         ref_1_maj_108_n18, ref_1_maj_109_n34, ref_1_maj_109_n33,
         ref_1_maj_109_n32, ref_1_maj_109_n31, ref_1_maj_109_n30,
         ref_1_maj_109_n29, ref_1_maj_109_n28, ref_1_maj_109_n27,
         ref_1_maj_109_n26, ref_1_maj_109_n25, ref_1_maj_109_n24,
         ref_1_maj_109_n23, ref_1_maj_109_n22, ref_1_maj_109_n21,
         ref_1_maj_109_n20, ref_1_maj_109_n19, ref_1_maj_109_n18,
         ref_1_maj_110_n34, ref_1_maj_110_n33, ref_1_maj_110_n32,
         ref_1_maj_110_n31, ref_1_maj_110_n30, ref_1_maj_110_n29,
         ref_1_maj_110_n28, ref_1_maj_110_n27, ref_1_maj_110_n26,
         ref_1_maj_110_n25, ref_1_maj_110_n24, ref_1_maj_110_n23,
         ref_1_maj_110_n22, ref_1_maj_110_n21, ref_1_maj_110_n20,
         ref_1_maj_110_n19, ref_1_maj_110_n18, ref_1_maj_111_n34,
         ref_1_maj_111_n33, ref_1_maj_111_n32, ref_1_maj_111_n31,
         ref_1_maj_111_n30, ref_1_maj_111_n29, ref_1_maj_111_n28,
         ref_1_maj_111_n27, ref_1_maj_111_n26, ref_1_maj_111_n25,
         ref_1_maj_111_n24, ref_1_maj_111_n23, ref_1_maj_111_n22,
         ref_1_maj_111_n21, ref_1_maj_111_n20, ref_1_maj_111_n19,
         ref_1_maj_111_n18, ref_1_maj_112_n34, ref_1_maj_112_n33,
         ref_1_maj_112_n32, ref_1_maj_112_n31, ref_1_maj_112_n30,
         ref_1_maj_112_n29, ref_1_maj_112_n28, ref_1_maj_112_n27,
         ref_1_maj_112_n26, ref_1_maj_112_n25, ref_1_maj_112_n24,
         ref_1_maj_112_n23, ref_1_maj_112_n22, ref_1_maj_112_n21,
         ref_1_maj_112_n20, ref_1_maj_112_n19, ref_1_maj_112_n18,
         ref_1_maj_113_n34, ref_1_maj_113_n33, ref_1_maj_113_n32,
         ref_1_maj_113_n31, ref_1_maj_113_n30, ref_1_maj_113_n29,
         ref_1_maj_113_n28, ref_1_maj_113_n27, ref_1_maj_113_n26,
         ref_1_maj_113_n25, ref_1_maj_113_n24, ref_1_maj_113_n23,
         ref_1_maj_113_n22, ref_1_maj_113_n21, ref_1_maj_113_n20,
         ref_1_maj_113_n19, ref_1_maj_113_n18, ref_1_maj_114_n34,
         ref_1_maj_114_n33, ref_1_maj_114_n32, ref_1_maj_114_n31,
         ref_1_maj_114_n30, ref_1_maj_114_n29, ref_1_maj_114_n28,
         ref_1_maj_114_n27, ref_1_maj_114_n26, ref_1_maj_114_n25,
         ref_1_maj_114_n24, ref_1_maj_114_n23, ref_1_maj_114_n22,
         ref_1_maj_114_n21, ref_1_maj_114_n20, ref_1_maj_114_n19,
         ref_1_maj_114_n18, ref_1_maj_115_n34, ref_1_maj_115_n33,
         ref_1_maj_115_n32, ref_1_maj_115_n31, ref_1_maj_115_n30,
         ref_1_maj_115_n29, ref_1_maj_115_n28, ref_1_maj_115_n27,
         ref_1_maj_115_n26, ref_1_maj_115_n25, ref_1_maj_115_n24,
         ref_1_maj_115_n23, ref_1_maj_115_n22, ref_1_maj_115_n21,
         ref_1_maj_115_n20, ref_1_maj_115_n19, ref_1_maj_115_n18,
         ref_1_maj_116_n34, ref_1_maj_116_n33, ref_1_maj_116_n32,
         ref_1_maj_116_n31, ref_1_maj_116_n30, ref_1_maj_116_n29,
         ref_1_maj_116_n28, ref_1_maj_116_n27, ref_1_maj_116_n26,
         ref_1_maj_116_n25, ref_1_maj_116_n24, ref_1_maj_116_n23,
         ref_1_maj_116_n22, ref_1_maj_116_n21, ref_1_maj_116_n20,
         ref_1_maj_116_n19, ref_1_maj_116_n18, ref_1_maj_117_n34,
         ref_1_maj_117_n33, ref_1_maj_117_n32, ref_1_maj_117_n31,
         ref_1_maj_117_n30, ref_1_maj_117_n29, ref_1_maj_117_n28,
         ref_1_maj_117_n27, ref_1_maj_117_n26, ref_1_maj_117_n25,
         ref_1_maj_117_n24, ref_1_maj_117_n23, ref_1_maj_117_n22,
         ref_1_maj_117_n21, ref_1_maj_117_n20, ref_1_maj_117_n19,
         ref_1_maj_117_n18, ref_1_maj_118_n34, ref_1_maj_118_n33,
         ref_1_maj_118_n32, ref_1_maj_118_n31, ref_1_maj_118_n30,
         ref_1_maj_118_n29, ref_1_maj_118_n28, ref_1_maj_118_n27,
         ref_1_maj_118_n26, ref_1_maj_118_n25, ref_1_maj_118_n24,
         ref_1_maj_118_n23, ref_1_maj_118_n22, ref_1_maj_118_n21,
         ref_1_maj_118_n20, ref_1_maj_118_n19, ref_1_maj_118_n18,
         ref_1_maj_119_n34, ref_1_maj_119_n33, ref_1_maj_119_n32,
         ref_1_maj_119_n31, ref_1_maj_119_n30, ref_1_maj_119_n29,
         ref_1_maj_119_n28, ref_1_maj_119_n27, ref_1_maj_119_n26,
         ref_1_maj_119_n25, ref_1_maj_119_n24, ref_1_maj_119_n23,
         ref_1_maj_119_n22, ref_1_maj_119_n21, ref_1_maj_119_n20,
         ref_1_maj_119_n19, ref_1_maj_119_n18, ref_1_maj_120_n34,
         ref_1_maj_120_n33, ref_1_maj_120_n32, ref_1_maj_120_n31,
         ref_1_maj_120_n30, ref_1_maj_120_n29, ref_1_maj_120_n28,
         ref_1_maj_120_n27, ref_1_maj_120_n26, ref_1_maj_120_n25,
         ref_1_maj_120_n24, ref_1_maj_120_n23, ref_1_maj_120_n22,
         ref_1_maj_120_n21, ref_1_maj_120_n20, ref_1_maj_120_n19,
         ref_1_maj_120_n18, ref_1_maj_121_n34, ref_1_maj_121_n33,
         ref_1_maj_121_n32, ref_1_maj_121_n31, ref_1_maj_121_n30,
         ref_1_maj_121_n29, ref_1_maj_121_n28, ref_1_maj_121_n27,
         ref_1_maj_121_n26, ref_1_maj_121_n25, ref_1_maj_121_n24,
         ref_1_maj_121_n23, ref_1_maj_121_n22, ref_1_maj_121_n21,
         ref_1_maj_121_n20, ref_1_maj_121_n19, ref_1_maj_121_n18,
         ref_1_maj_122_n34, ref_1_maj_122_n33, ref_1_maj_122_n32,
         ref_1_maj_122_n31, ref_1_maj_122_n30, ref_1_maj_122_n29,
         ref_1_maj_122_n28, ref_1_maj_122_n27, ref_1_maj_122_n26,
         ref_1_maj_122_n25, ref_1_maj_122_n24, ref_1_maj_122_n23,
         ref_1_maj_122_n22, ref_1_maj_122_n21, ref_1_maj_122_n20,
         ref_1_maj_122_n19, ref_1_maj_122_n18, ref_1_maj_123_n34,
         ref_1_maj_123_n33, ref_1_maj_123_n32, ref_1_maj_123_n31,
         ref_1_maj_123_n30, ref_1_maj_123_n29, ref_1_maj_123_n28,
         ref_1_maj_123_n27, ref_1_maj_123_n26, ref_1_maj_123_n25,
         ref_1_maj_123_n24, ref_1_maj_123_n23, ref_1_maj_123_n22,
         ref_1_maj_123_n21, ref_1_maj_123_n20, ref_1_maj_123_n19,
         ref_1_maj_123_n18, ref_1_maj_124_n34, ref_1_maj_124_n33,
         ref_1_maj_124_n32, ref_1_maj_124_n31, ref_1_maj_124_n30,
         ref_1_maj_124_n29, ref_1_maj_124_n28, ref_1_maj_124_n27,
         ref_1_maj_124_n26, ref_1_maj_124_n25, ref_1_maj_124_n24,
         ref_1_maj_124_n23, ref_1_maj_124_n22, ref_1_maj_124_n21,
         ref_1_maj_124_n20, ref_1_maj_124_n19, ref_1_maj_124_n18,
         ref_1_maj_125_n34, ref_1_maj_125_n33, ref_1_maj_125_n32,
         ref_1_maj_125_n31, ref_1_maj_125_n30, ref_1_maj_125_n29,
         ref_1_maj_125_n28, ref_1_maj_125_n27, ref_1_maj_125_n26,
         ref_1_maj_125_n25, ref_1_maj_125_n24, ref_1_maj_125_n23,
         ref_1_maj_125_n22, ref_1_maj_125_n21, ref_1_maj_125_n20,
         ref_1_maj_125_n19, ref_1_maj_125_n18;
  wire   [6:0] ref_1_port_o_0_0;
  wire   [6:0] ref_1_port_o_0_1;
  wire   [6:0] ref_1_port_o_0_2;
  wire   [6:0] ref_1_port_o_1_0;
  wire   [6:0] ref_1_port_o_1_1;
  wire   [6:0] ref_1_port_o_1_2;
  wire   [6:0] ref_1_port_o_2_0;
  wire   [6:0] ref_1_port_o_2_1;
  wire   [6:0] ref_1_port_o_2_2;
  wire   [6:0] temp_0_0;
  wire   [6:0] mult_ab_0_1;
  wire   [6:0] mult_ab_0_2;
  wire   [6:0] temp_0_1;
  wire   [6:0] mult_ab_1_0;
  wire   [6:0] mult_ab_1_2;
  wire   [6:0] temp_0_2;
  wire   [6:0] mult_ab_2_0;
  wire   [6:0] mult_ab_2_1;

  DFF_X1 mult_ab_0_0_reg_6_ ( .D(N54), .CK(clk), .Q(temp_0_0[6]), .QN() );
  DFF_X1 mult_ab_0_0_reg_5_ ( .D(N45), .CK(clk), .Q(temp_0_0[5]), .QN() );
  DFF_X1 mult_ab_0_0_reg_4_ ( .D(N36), .CK(clk), .Q(temp_0_0[4]), .QN() );
  DFF_X1 mult_ab_0_0_reg_3_ ( .D(N27), .CK(clk), .Q(temp_0_0[3]), .QN() );
  DFF_X1 mult_ab_0_0_reg_2_ ( .D(N18), .CK(clk), .Q(temp_0_0[2]), .QN() );
  DFF_X1 mult_ab_0_0_reg_1_ ( .D(N9), .CK(clk), .Q(temp_0_0[1]), .QN() );
  DFF_X1 mult_ab_0_0_reg_0_ ( .D(N0), .CK(clk), .Q(temp_0_0[0]), .QN() );
  DFF_X1 mult_ab_2_2_reg_6_ ( .D(N62), .CK(clk), .Q(temp_0_2[6]), .QN() );
  DFF_X1 mult_ab_2_2_reg_5_ ( .D(N53), .CK(clk), .Q(temp_0_2[5]), .QN() );
  DFF_X1 mult_ab_2_2_reg_4_ ( .D(N44), .CK(clk), .Q(temp_0_2[4]), .QN() );
  DFF_X1 mult_ab_2_2_reg_3_ ( .D(N35), .CK(clk), .Q(temp_0_2[3]), .QN() );
  DFF_X1 mult_ab_2_2_reg_2_ ( .D(N26), .CK(clk), .Q(temp_0_2[2]), .QN() );
  DFF_X1 mult_ab_2_2_reg_1_ ( .D(N17), .CK(clk), .Q(temp_0_2[1]), .QN() );
  DFF_X1 mult_ab_2_2_reg_0_ ( .D(N8), .CK(clk), .Q(temp_0_2[0]), .QN() );
  DFF_X1 mult_ab_0_1_reg_6_ ( .D(N55), .CK(clk), .Q(mult_ab_0_1[6]), .QN() );
  DFF_X1 mult_ab_0_1_reg_5_ ( .D(N46), .CK(clk), .Q(mult_ab_0_1[5]), .QN() );
  DFF_X1 mult_ab_0_1_reg_4_ ( .D(N37), .CK(clk), .Q(mult_ab_0_1[4]), .QN() );
  DFF_X1 mult_ab_0_1_reg_3_ ( .D(N28), .CK(clk), .Q(mult_ab_0_1[3]), .QN() );
  DFF_X1 mult_ab_0_1_reg_2_ ( .D(N19), .CK(clk), .Q(mult_ab_0_1[2]), .QN() );
  DFF_X1 mult_ab_0_1_reg_1_ ( .D(N10), .CK(clk), .Q(mult_ab_0_1[1]), .QN() );
  DFF_X1 mult_ab_0_1_reg_0_ ( .D(N1), .CK(clk), .Q(mult_ab_0_1[0]), .QN() );
  DFF_X1 mult_ab_0_2_reg_6_ ( .D(N56), .CK(clk), .Q(mult_ab_0_2[6]), .QN() );
  DFF_X1 mult_ab_0_2_reg_5_ ( .D(N47), .CK(clk), .Q(mult_ab_0_2[5]), .QN() );
  DFF_X1 mult_ab_0_2_reg_4_ ( .D(N38), .CK(clk), .Q(mult_ab_0_2[4]), .QN() );
  DFF_X1 mult_ab_0_2_reg_3_ ( .D(N29), .CK(clk), .Q(mult_ab_0_2[3]), .QN() );
  DFF_X1 mult_ab_0_2_reg_2_ ( .D(N20), .CK(clk), .Q(mult_ab_0_2[2]), .QN() );
  DFF_X1 mult_ab_0_2_reg_1_ ( .D(N11), .CK(clk), .Q(mult_ab_0_2[1]), .QN() );
  DFF_X1 mult_ab_0_2_reg_0_ ( .D(N2), .CK(clk), .Q(mult_ab_0_2[0]), .QN() );
  DFF_X1 mult_ab_1_2_reg_6_ ( .D(N59), .CK(clk), .Q(mult_ab_1_2[6]), .QN() );
  DFF_X1 mult_ab_1_2_reg_5_ ( .D(N50), .CK(clk), .Q(mult_ab_1_2[5]), .QN() );
  DFF_X1 mult_ab_1_2_reg_4_ ( .D(N41), .CK(clk), .Q(mult_ab_1_2[4]), .QN() );
  DFF_X1 mult_ab_1_2_reg_3_ ( .D(N32), .CK(clk), .Q(mult_ab_1_2[3]), .QN() );
  DFF_X1 mult_ab_1_2_reg_2_ ( .D(N23), .CK(clk), .Q(mult_ab_1_2[2]), .QN() );
  DFF_X1 mult_ab_1_2_reg_1_ ( .D(N14), .CK(clk), .Q(mult_ab_1_2[1]), .QN() );
  DFF_X1 mult_ab_1_2_reg_0_ ( .D(N5), .CK(clk), .Q(mult_ab_1_2[0]), .QN() );
  DFF_X1 mult_ab_2_1_reg_6_ ( .D(N61), .CK(clk), .Q(mult_ab_2_1[6]), .QN() );
  DFF_X1 mult_ab_2_1_reg_5_ ( .D(N52), .CK(clk), .Q(mult_ab_2_1[5]), .QN() );
  DFF_X1 mult_ab_2_1_reg_4_ ( .D(N43), .CK(clk), .Q(mult_ab_2_1[4]), .QN() );
  DFF_X1 mult_ab_2_1_reg_3_ ( .D(N34), .CK(clk), .Q(mult_ab_2_1[3]), .QN() );
  DFF_X1 mult_ab_2_1_reg_2_ ( .D(N25), .CK(clk), .Q(mult_ab_2_1[2]), .QN() );
  DFF_X1 mult_ab_2_1_reg_1_ ( .D(N16), .CK(clk), .Q(mult_ab_2_1[1]), .QN() );
  DFF_X1 mult_ab_2_1_reg_0_ ( .D(N7), .CK(clk), .Q(mult_ab_2_1[0]), .QN() );
  DFF_X1 mult_ab_1_1_reg_6_ ( .D(N58), .CK(clk), .Q(temp_0_1[6]), .QN() );
  DFF_X1 mult_ab_1_1_reg_5_ ( .D(N49), .CK(clk), .Q(temp_0_1[5]), .QN() );
  DFF_X1 mult_ab_1_1_reg_4_ ( .D(N40), .CK(clk), .Q(temp_0_1[4]), .QN() );
  DFF_X1 mult_ab_1_1_reg_3_ ( .D(N31), .CK(clk), .Q(temp_0_1[3]), .QN() );
  DFF_X1 mult_ab_1_1_reg_2_ ( .D(N22), .CK(clk), .Q(temp_0_1[2]), .QN() );
  DFF_X1 mult_ab_1_1_reg_1_ ( .D(N13), .CK(clk), .Q(temp_0_1[1]), .QN() );
  DFF_X1 mult_ab_1_1_reg_0_ ( .D(N4), .CK(clk), .Q(temp_0_1[0]), .QN() );
  DFF_X1 mult_ab_2_0_reg_6_ ( .D(N60), .CK(clk), .Q(mult_ab_2_0[6]), .QN() );
  DFF_X1 mult_ab_2_0_reg_5_ ( .D(N51), .CK(clk), .Q(mult_ab_2_0[5]), .QN() );
  DFF_X1 mult_ab_2_0_reg_4_ ( .D(N42), .CK(clk), .Q(mult_ab_2_0[4]), .QN() );
  DFF_X1 mult_ab_2_0_reg_3_ ( .D(N33), .CK(clk), .Q(mult_ab_2_0[3]), .QN() );
  DFF_X1 mult_ab_2_0_reg_2_ ( .D(N24), .CK(clk), .Q(mult_ab_2_0[2]), .QN() );
  DFF_X1 mult_ab_2_0_reg_1_ ( .D(N15), .CK(clk), .Q(mult_ab_2_0[1]), .QN() );
  DFF_X1 mult_ab_2_0_reg_0_ ( .D(N6), .CK(clk), .Q(mult_ab_2_0[0]), .QN() );
  DFF_X1 mult_ab_1_0_reg_6_ ( .D(N57), .CK(clk), .Q(mult_ab_1_0[6]), .QN() );
  DFF_X1 mult_ab_1_0_reg_5_ ( .D(N48), .CK(clk), .Q(mult_ab_1_0[5]), .QN() );
  DFF_X1 mult_ab_1_0_reg_4_ ( .D(N39), .CK(clk), .Q(mult_ab_1_0[4]), .QN() );
  DFF_X1 mult_ab_1_0_reg_3_ ( .D(N30), .CK(clk), .Q(mult_ab_1_0[3]), .QN() );
  DFF_X1 mult_ab_1_0_reg_2_ ( .D(N21), .CK(clk), .Q(mult_ab_1_0[2]), .QN() );
  DFF_X1 mult_ab_1_0_reg_1_ ( .D(N12), .CK(clk), .Q(mult_ab_1_0[1]), .QN() );
  DFF_X1 mult_ab_1_0_reg_0_ ( .D(N3), .CK(clk), .Q(mult_ab_1_0[0]), .QN() );
  XNOR2_X1 U150 ( .A(port_rand_mul[0]), .B(n47), .ZN(N3) );
  NAND2_X1 U151 ( .A1(ref_1_port_o_1_0[0]), .A2(port_a_1[0]), .ZN(n47) );
  XNOR2_X1 U152 ( .A(port_rand_mul[0]), .B(n60), .ZN(N12) );
  NAND2_X1 U153 ( .A1(ref_1_port_o_1_0[1]), .A2(port_a_1[1]), .ZN(n60) );
  XNOR2_X1 U154 ( .A(port_rand_mul[0]), .B(n53), .ZN(N21) );
  NAND2_X1 U155 ( .A1(ref_1_port_o_1_0[2]), .A2(port_a_1[2]), .ZN(n53) );
  XNOR2_X1 U156 ( .A(port_rand_mul[0]), .B(n46), .ZN(N30) );
  NAND2_X1 U157 ( .A1(ref_1_port_o_1_0[3]), .A2(port_a_1[3]), .ZN(n46) );
  XNOR2_X1 U158 ( .A(port_rand_mul[0]), .B(n40), .ZN(N39) );
  NAND2_X1 U159 ( .A1(ref_1_port_o_1_0[4]), .A2(port_a_1[4]), .ZN(n40) );
  XNOR2_X1 U160 ( .A(port_rand_mul[0]), .B(n34), .ZN(N48) );
  NAND2_X1 U161 ( .A1(ref_1_port_o_1_0[5]), .A2(port_a_1[5]), .ZN(n34) );
  XNOR2_X1 U162 ( .A(port_rand_mul[0]), .B(n27), .ZN(N57) );
  NAND2_X1 U163 ( .A1(ref_1_port_o_1_0[6]), .A2(port_a_1[6]), .ZN(n27) );
  XNOR2_X1 U164 ( .A(port_rand_mul[1]), .B(n25), .ZN(N6) );
  NAND2_X1 U165 ( .A1(ref_1_port_o_2_0[0]), .A2(port_a_2[0]), .ZN(n25) );
  XNOR2_X1 U166 ( .A(port_rand_mul[1]), .B(n58), .ZN(N15) );
  NAND2_X1 U167 ( .A1(ref_1_port_o_2_0[1]), .A2(port_a_2[1]), .ZN(n58) );
  XNOR2_X1 U168 ( .A(port_rand_mul[1]), .B(n51), .ZN(N24) );
  NAND2_X1 U169 ( .A1(ref_1_port_o_2_0[2]), .A2(port_a_2[2]), .ZN(n51) );
  XNOR2_X1 U170 ( .A(port_rand_mul[1]), .B(n44), .ZN(N33) );
  NAND2_X1 U171 ( .A1(ref_1_port_o_2_0[3]), .A2(port_a_2[3]), .ZN(n44) );
  XNOR2_X1 U172 ( .A(port_rand_mul[1]), .B(n38), .ZN(N42) );
  NAND2_X1 U173 ( .A1(ref_1_port_o_2_0[4]), .A2(port_a_2[4]), .ZN(n38) );
  XNOR2_X1 U174 ( .A(port_rand_mul[1]), .B(n31), .ZN(N51) );
  NAND2_X1 U175 ( .A1(ref_1_port_o_2_0[5]), .A2(port_a_2[5]), .ZN(n31) );
  XNOR2_X1 U176 ( .A(port_rand_mul[1]), .B(n24), .ZN(N60) );
  NAND2_X1 U177 ( .A1(ref_1_port_o_2_0[6]), .A2(port_a_2[6]), .ZN(n24) );
  XNOR2_X1 U178 ( .A(port_rand_mul[2]), .B(n22), .ZN(N7) );
  NAND2_X1 U179 ( .A1(ref_1_port_o_2_1[0]), .A2(port_a_2[0]), .ZN(n22) );
  XNOR2_X1 U180 ( .A(port_rand_mul[2]), .B(n57), .ZN(N16) );
  NAND2_X1 U181 ( .A1(ref_1_port_o_2_1[1]), .A2(port_a_2[1]), .ZN(n57) );
  XNOR2_X1 U182 ( .A(port_rand_mul[2]), .B(n50), .ZN(N25) );
  NAND2_X1 U183 ( .A1(ref_1_port_o_2_1[2]), .A2(port_a_2[2]), .ZN(n50) );
  XNOR2_X1 U184 ( .A(port_rand_mul[2]), .B(n43), .ZN(N34) );
  NAND2_X1 U185 ( .A1(ref_1_port_o_2_1[3]), .A2(port_a_2[3]), .ZN(n43) );
  XNOR2_X1 U186 ( .A(port_rand_mul[2]), .B(n37), .ZN(N43) );
  NAND2_X1 U187 ( .A1(ref_1_port_o_2_1[4]), .A2(port_a_2[4]), .ZN(n37) );
  XNOR2_X1 U188 ( .A(port_rand_mul[2]), .B(n30), .ZN(N52) );
  NAND2_X1 U189 ( .A1(ref_1_port_o_2_1[5]), .A2(port_a_2[5]), .ZN(n30) );
  XNOR2_X1 U190 ( .A(port_rand_mul[2]), .B(n23), .ZN(N61) );
  NAND2_X1 U191 ( .A1(ref_1_port_o_2_1[6]), .A2(port_a_2[6]), .ZN(n23) );
  XNOR2_X1 U192 ( .A(port_rand_mul[2]), .B(n33), .ZN(N5) );
  NAND2_X1 U193 ( .A1(ref_1_port_o_1_2[0]), .A2(port_a_1[0]), .ZN(n33) );
  XNOR2_X1 U194 ( .A(port_rand_mul[2]), .B(n59), .ZN(N14) );
  NAND2_X1 U195 ( .A1(ref_1_port_o_1_2[1]), .A2(port_a_1[1]), .ZN(n59) );
  XNOR2_X1 U196 ( .A(port_rand_mul[2]), .B(n52), .ZN(N23) );
  NAND2_X1 U197 ( .A1(ref_1_port_o_1_2[2]), .A2(port_a_1[2]), .ZN(n52) );
  XNOR2_X1 U198 ( .A(port_rand_mul[2]), .B(n45), .ZN(N32) );
  NAND2_X1 U199 ( .A1(ref_1_port_o_1_2[3]), .A2(port_a_1[3]), .ZN(n45) );
  XNOR2_X1 U200 ( .A(port_rand_mul[2]), .B(n39), .ZN(N41) );
  NAND2_X1 U201 ( .A1(ref_1_port_o_1_2[4]), .A2(port_a_1[4]), .ZN(n39) );
  XNOR2_X1 U202 ( .A(port_rand_mul[2]), .B(n32), .ZN(N50) );
  NAND2_X1 U203 ( .A1(ref_1_port_o_1_2[5]), .A2(port_a_1[5]), .ZN(n32) );
  XNOR2_X1 U204 ( .A(port_rand_mul[2]), .B(n26), .ZN(N59) );
  NAND2_X1 U205 ( .A1(ref_1_port_o_1_2[6]), .A2(port_a_1[6]), .ZN(n26) );
  XNOR2_X1 U206 ( .A(port_rand_mul[1]), .B(n55), .ZN(N2) );
  NAND2_X1 U207 ( .A1(ref_1_port_o_0_2[0]), .A2(port_a_0[0]), .ZN(n55) );
  XNOR2_X1 U208 ( .A(port_rand_mul[1]), .B(n61), .ZN(N11) );
  NAND2_X1 U209 ( .A1(ref_1_port_o_0_2[1]), .A2(port_a_0[1]), .ZN(n61) );
  XNOR2_X1 U210 ( .A(port_rand_mul[1]), .B(n54), .ZN(N20) );
  NAND2_X1 U211 ( .A1(ref_1_port_o_0_2[2]), .A2(port_a_0[2]), .ZN(n54) );
  XNOR2_X1 U212 ( .A(port_rand_mul[1]), .B(n48), .ZN(N29) );
  NAND2_X1 U213 ( .A1(ref_1_port_o_0_2[3]), .A2(port_a_0[3]), .ZN(n48) );
  XNOR2_X1 U214 ( .A(port_rand_mul[1]), .B(n41), .ZN(N38) );
  NAND2_X1 U215 ( .A1(ref_1_port_o_0_2[4]), .A2(port_a_0[4]), .ZN(n41) );
  XNOR2_X1 U216 ( .A(port_rand_mul[1]), .B(n35), .ZN(N47) );
  NAND2_X1 U217 ( .A1(ref_1_port_o_0_2[5]), .A2(port_a_0[5]), .ZN(n35) );
  XNOR2_X1 U218 ( .A(port_rand_mul[1]), .B(n28), .ZN(N56) );
  NAND2_X1 U219 ( .A1(ref_1_port_o_0_2[6]), .A2(port_a_0[6]), .ZN(n28) );
  XNOR2_X1 U220 ( .A(port_rand_mul[0]), .B(n63), .ZN(N1) );
  NAND2_X1 U221 ( .A1(ref_1_port_o_0_1[0]), .A2(port_a_0[0]), .ZN(n63) );
  XNOR2_X1 U222 ( .A(port_rand_mul[0]), .B(n62), .ZN(N10) );
  NAND2_X1 U223 ( .A1(ref_1_port_o_0_1[1]), .A2(port_a_0[1]), .ZN(n62) );
  XNOR2_X1 U224 ( .A(port_rand_mul[0]), .B(n56), .ZN(N19) );
  NAND2_X1 U225 ( .A1(ref_1_port_o_0_1[2]), .A2(port_a_0[2]), .ZN(n56) );
  XNOR2_X1 U226 ( .A(port_rand_mul[0]), .B(n49), .ZN(N28) );
  NAND2_X1 U227 ( .A1(ref_1_port_o_0_1[3]), .A2(port_a_0[3]), .ZN(n49) );
  XNOR2_X1 U228 ( .A(port_rand_mul[0]), .B(n42), .ZN(N37) );
  NAND2_X1 U229 ( .A1(ref_1_port_o_0_1[4]), .A2(port_a_0[4]), .ZN(n42) );
  XNOR2_X1 U230 ( .A(port_rand_mul[0]), .B(n36), .ZN(N46) );
  NAND2_X1 U231 ( .A1(ref_1_port_o_0_1[5]), .A2(port_a_0[5]), .ZN(n36) );
  XNOR2_X1 U232 ( .A(port_rand_mul[0]), .B(n29), .ZN(N55) );
  NAND2_X1 U233 ( .A1(ref_1_port_o_0_1[6]), .A2(port_a_0[6]), .ZN(n29) );
  AND2_X1 U234 ( .A1(ref_1_port_o_1_1[0]), .A2(port_a_1[0]), .ZN(N4) );
  AND2_X1 U235 ( .A1(ref_1_port_o_1_1[1]), .A2(port_a_1[1]), .ZN(N13) );
  AND2_X1 U236 ( .A1(ref_1_port_o_1_1[2]), .A2(port_a_1[2]), .ZN(N22) );
  AND2_X1 U237 ( .A1(ref_1_port_o_1_1[3]), .A2(port_a_1[3]), .ZN(N31) );
  AND2_X1 U238 ( .A1(ref_1_port_o_1_1[4]), .A2(port_a_1[4]), .ZN(N40) );
  AND2_X1 U239 ( .A1(ref_1_port_o_1_1[5]), .A2(port_a_1[5]), .ZN(N49) );
  AND2_X1 U240 ( .A1(ref_1_port_o_1_1[6]), .A2(port_a_1[6]), .ZN(N58) );
  AND2_X1 U241 ( .A1(ref_1_port_o_2_2[0]), .A2(port_a_2[0]), .ZN(N8) );
  AND2_X1 U242 ( .A1(ref_1_port_o_2_2[1]), .A2(port_a_2[1]), .ZN(N17) );
  AND2_X1 U243 ( .A1(ref_1_port_o_2_2[2]), .A2(port_a_2[2]), .ZN(N26) );
  AND2_X1 U244 ( .A1(ref_1_port_o_2_2[3]), .A2(port_a_2[3]), .ZN(N35) );
  AND2_X1 U245 ( .A1(ref_1_port_o_2_2[4]), .A2(port_a_2[4]), .ZN(N44) );
  AND2_X1 U246 ( .A1(ref_1_port_o_2_2[5]), .A2(port_a_2[5]), .ZN(N53) );
  AND2_X1 U247 ( .A1(ref_1_port_o_2_2[6]), .A2(port_a_2[6]), .ZN(N62) );
  AND2_X1 U248 ( .A1(ref_1_port_o_0_0[0]), .A2(port_a_0[0]), .ZN(N0) );
  AND2_X1 U249 ( .A1(ref_1_port_o_0_0[1]), .A2(port_a_0[1]), .ZN(N9) );
  AND2_X1 U250 ( .A1(ref_1_port_o_0_0[2]), .A2(port_a_0[2]), .ZN(N18) );
  AND2_X1 U251 ( .A1(ref_1_port_o_0_0[3]), .A2(port_a_0[3]), .ZN(N27) );
  AND2_X1 U252 ( .A1(ref_1_port_o_0_0[4]), .A2(port_a_0[4]), .ZN(N36) );
  AND2_X1 U253 ( .A1(ref_1_port_o_0_0[5]), .A2(port_a_0[5]), .ZN(N45) );
  AND2_X1 U254 ( .A1(ref_1_port_o_0_0[6]), .A2(port_a_0[6]), .ZN(N54) );
  XOR2_X1 U255 ( .A(mult_ab_2_0[0]), .B(n7), .Z(port_c_2[0]) );
  XOR2_X1 U256 ( .A(temp_0_2[0]), .B(mult_ab_2_1[0]), .Z(n7) );
  XOR2_X1 U257 ( .A(mult_ab_2_0[1]), .B(n6), .Z(port_c_2[1]) );
  XOR2_X1 U258 ( .A(temp_0_2[1]), .B(mult_ab_2_1[1]), .Z(n6) );
  XOR2_X1 U259 ( .A(mult_ab_2_0[2]), .B(n5), .Z(port_c_2[2]) );
  XOR2_X1 U260 ( .A(temp_0_2[2]), .B(mult_ab_2_1[2]), .Z(n5) );
  XOR2_X1 U261 ( .A(mult_ab_2_0[3]), .B(n4), .Z(port_c_2[3]) );
  XOR2_X1 U262 ( .A(temp_0_2[3]), .B(mult_ab_2_1[3]), .Z(n4) );
  XOR2_X1 U263 ( .A(mult_ab_2_0[4]), .B(n3), .Z(port_c_2[4]) );
  XOR2_X1 U264 ( .A(temp_0_2[4]), .B(mult_ab_2_1[4]), .Z(n3) );
  XOR2_X1 U265 ( .A(mult_ab_2_0[5]), .B(n2), .Z(port_c_2[5]) );
  XOR2_X1 U266 ( .A(temp_0_2[5]), .B(mult_ab_2_1[5]), .Z(n2) );
  XOR2_X1 U267 ( .A(mult_ab_2_0[6]), .B(n1), .Z(port_c_2[6]) );
  XOR2_X1 U268 ( .A(temp_0_2[6]), .B(mult_ab_2_1[6]), .Z(n1) );
  XOR2_X1 U269 ( .A(mult_ab_1_0[0]), .B(n14), .Z(port_c_1[0]) );
  XOR2_X1 U270 ( .A(temp_0_1[0]), .B(mult_ab_1_2[0]), .Z(n14) );
  XOR2_X1 U271 ( .A(mult_ab_1_0[1]), .B(n13), .Z(port_c_1[1]) );
  XOR2_X1 U272 ( .A(temp_0_1[1]), .B(mult_ab_1_2[1]), .Z(n13) );
  XOR2_X1 U273 ( .A(mult_ab_1_0[2]), .B(n12), .Z(port_c_1[2]) );
  XOR2_X1 U274 ( .A(temp_0_1[2]), .B(mult_ab_1_2[2]), .Z(n12) );
  XOR2_X1 U275 ( .A(mult_ab_1_0[3]), .B(n11), .Z(port_c_1[3]) );
  XOR2_X1 U276 ( .A(temp_0_1[3]), .B(mult_ab_1_2[3]), .Z(n11) );
  XOR2_X1 U277 ( .A(mult_ab_1_0[4]), .B(n10), .Z(port_c_1[4]) );
  XOR2_X1 U278 ( .A(temp_0_1[4]), .B(mult_ab_1_2[4]), .Z(n10) );
  XOR2_X1 U279 ( .A(mult_ab_1_0[5]), .B(n9), .Z(port_c_1[5]) );
  XOR2_X1 U280 ( .A(temp_0_1[5]), .B(mult_ab_1_2[5]), .Z(n9) );
  XOR2_X1 U281 ( .A(mult_ab_1_0[6]), .B(n8), .Z(port_c_1[6]) );
  XOR2_X1 U282 ( .A(temp_0_1[6]), .B(mult_ab_1_2[6]), .Z(n8) );
  XOR2_X1 U283 ( .A(mult_ab_0_1[0]), .B(n21), .Z(port_c_0[0]) );
  XOR2_X1 U284 ( .A(temp_0_0[0]), .B(mult_ab_0_2[0]), .Z(n21) );
  XOR2_X1 U285 ( .A(mult_ab_0_1[1]), .B(n20), .Z(port_c_0[1]) );
  XOR2_X1 U286 ( .A(temp_0_0[1]), .B(mult_ab_0_2[1]), .Z(n20) );
  XOR2_X1 U287 ( .A(mult_ab_0_1[2]), .B(n19), .Z(port_c_0[2]) );
  XOR2_X1 U288 ( .A(temp_0_0[2]), .B(mult_ab_0_2[2]), .Z(n19) );
  XOR2_X1 U289 ( .A(mult_ab_0_1[3]), .B(n18), .Z(port_c_0[3]) );
  XOR2_X1 U290 ( .A(temp_0_0[3]), .B(mult_ab_0_2[3]), .Z(n18) );
  XOR2_X1 U291 ( .A(mult_ab_0_1[4]), .B(n17), .Z(port_c_0[4]) );
  XOR2_X1 U292 ( .A(temp_0_0[4]), .B(mult_ab_0_2[4]), .Z(n17) );
  XOR2_X1 U293 ( .A(mult_ab_0_1[5]), .B(n16), .Z(port_c_0[5]) );
  XOR2_X1 U294 ( .A(temp_0_0[5]), .B(mult_ab_0_2[5]), .Z(n16) );
  XOR2_X1 U295 ( .A(mult_ab_0_1[6]), .B(n15), .Z(port_c_0[6]) );
  XOR2_X1 U296 ( .A(temp_0_0[6]), .B(mult_ab_0_2[6]), .Z(n15) );
  BUF_X1 ref_1_U38 ( .A(ref_1_refreshed_0_2_), .Z(ref_1_n30) );
  BUF_X1 ref_1_U37 ( .A(ref_1_refreshed_0_0_), .Z(ref_1_n26) );
  BUF_X1 ref_1_U36 ( .A(ref_1_refreshed_0_3_), .Z(ref_1_n32) );
  BUF_X1 ref_1_U35 ( .A(ref_1_refreshed_0_2_), .Z(ref_1_n29) );
  BUF_X1 ref_1_U34 ( .A(ref_1_refreshed_0_0_), .Z(ref_1_n25) );
  BUF_X1 ref_1_U33 ( .A(ref_1_refreshed_0_1_), .Z(ref_1_n28) );
  BUF_X1 ref_1_U32 ( .A(ref_1_refreshed_0_5_), .Z(ref_1_n36) );
  BUF_X1 ref_1_U31 ( .A(ref_1_refreshed_0_4_), .Z(ref_1_n34) );
  BUF_X1 ref_1_U30 ( .A(ref_1_refreshed_0_1_), .Z(ref_1_n27) );
  BUF_X1 ref_1_U29 ( .A(ref_1_refreshed_0_5_), .Z(ref_1_n35) );
  BUF_X1 ref_1_U28 ( .A(ref_1_refreshed_0_3_), .Z(ref_1_n31) );
  BUF_X1 ref_1_U27 ( .A(ref_1_refreshed_0_4_), .Z(ref_1_n33) );
  BUF_X1 ref_1_U26 ( .A(ref_1_refreshed_1_2_), .Z(ref_1_n18) );
  BUF_X1 ref_1_U25 ( .A(ref_1_refreshed_1_0_), .Z(ref_1_n14) );
  BUF_X1 ref_1_U24 ( .A(ref_1_refreshed_1_1_), .Z(ref_1_n16) );
  BUF_X1 ref_1_U23 ( .A(ref_1_refreshed_1_5_), .Z(ref_1_n24) );
  BUF_X1 ref_1_U22 ( .A(ref_1_refreshed_1_3_), .Z(ref_1_n20) );
  BUF_X1 ref_1_U21 ( .A(ref_1_refreshed_1_4_), .Z(ref_1_n22) );
  BUF_X1 ref_1_U20 ( .A(ref_1_refreshed_1_2_), .Z(ref_1_n17) );
  BUF_X1 ref_1_U19 ( .A(ref_1_refreshed_1_0_), .Z(ref_1_n13) );
  BUF_X1 ref_1_U18 ( .A(ref_1_refreshed_1_1_), .Z(ref_1_n15) );
  BUF_X1 ref_1_U17 ( .A(ref_1_refreshed_1_5_), .Z(ref_1_n23) );
  BUF_X1 ref_1_U16 ( .A(ref_1_refreshed_1_3_), .Z(ref_1_n19) );
  BUF_X1 ref_1_U15 ( .A(ref_1_refreshed_1_4_), .Z(ref_1_n21) );
  BUF_X1 ref_1_U14 ( .A(ref_1_refreshed_2_3_), .Z(ref_1_n8) );
  BUF_X1 ref_1_U13 ( .A(ref_1_refreshed_2_2_), .Z(ref_1_n6) );
  BUF_X1 ref_1_U12 ( .A(ref_1_refreshed_2_0_), .Z(ref_1_n2) );
  BUF_X1 ref_1_U11 ( .A(ref_1_refreshed_2_1_), .Z(ref_1_n4) );
  BUF_X1 ref_1_U10 ( .A(ref_1_refreshed_2_5_), .Z(ref_1_n12) );
  BUF_X1 ref_1_U9 ( .A(ref_1_refreshed_2_4_), .Z(ref_1_n10) );
  BUF_X1 ref_1_U8 ( .A(ref_1_refreshed_2_2_), .Z(ref_1_n5) );
  BUF_X1 ref_1_U7 ( .A(ref_1_refreshed_2_0_), .Z(ref_1_n1) );
  BUF_X1 ref_1_U6 ( .A(ref_1_refreshed_2_1_), .Z(ref_1_n3) );
  BUF_X1 ref_1_U5 ( .A(ref_1_refreshed_2_5_), .Z(ref_1_n11) );
  BUF_X1 ref_1_U4 ( .A(ref_1_refreshed_2_3_), .Z(ref_1_n7) );
  BUF_X1 ref_1_U3 ( .A(ref_1_refreshed_2_4_), .Z(ref_1_n9) );
  DFF_X1 ref_1_reg_out_2_2_reg_0_ ( .D(ref_1_maj_71_port_o), .CK(clk), .Q(
        ref_1_port_o_2_2[0]), .QN() );
  DFF_X1 ref_1_reg_out_2_2_reg_1_ ( .D(ref_1_maj_80_port_o), .CK(clk), .Q(
        ref_1_port_o_2_2[1]), .QN() );
  DFF_X1 ref_1_reg_out_2_2_reg_2_ ( .D(ref_1_maj_89_port_o), .CK(clk), .Q(
        ref_1_port_o_2_2[2]), .QN() );
  DFF_X1 ref_1_reg_out_2_2_reg_3_ ( .D(ref_1_maj_98_port_o), .CK(clk), .Q(
        ref_1_port_o_2_2[3]), .QN() );
  DFF_X1 ref_1_reg_out_2_2_reg_4_ ( .D(ref_1_maj_107_port_o), .CK(clk), .Q(
        ref_1_port_o_2_2[4]), .QN() );
  DFF_X1 ref_1_reg_out_2_2_reg_5_ ( .D(ref_1_maj_116_port_o), .CK(clk), .Q(
        ref_1_port_o_2_2[5]), .QN() );
  DFF_X1 ref_1_reg_out_2_2_reg_6_ ( .D(ref_1_maj_125_port_o), .CK(clk), .Q(
        ref_1_port_o_2_2[6]), .QN() );
  DFF_X1 ref_1_reg_out_2_1_reg_0_ ( .D(ref_1_maj_70_port_o), .CK(clk), .Q(
        ref_1_port_o_2_1[0]), .QN() );
  DFF_X1 ref_1_reg_out_2_1_reg_1_ ( .D(ref_1_maj_79_port_o), .CK(clk), .Q(
        ref_1_port_o_2_1[1]), .QN() );
  DFF_X1 ref_1_reg_out_2_1_reg_2_ ( .D(ref_1_maj_88_port_o), .CK(clk), .Q(
        ref_1_port_o_2_1[2]), .QN() );
  DFF_X1 ref_1_reg_out_2_1_reg_3_ ( .D(ref_1_maj_97_port_o), .CK(clk), .Q(
        ref_1_port_o_2_1[3]), .QN() );
  DFF_X1 ref_1_reg_out_2_1_reg_4_ ( .D(ref_1_maj_106_port_o), .CK(clk), .Q(
        ref_1_port_o_2_1[4]), .QN() );
  DFF_X1 ref_1_reg_out_2_1_reg_5_ ( .D(ref_1_maj_115_port_o), .CK(clk), .Q(
        ref_1_port_o_2_1[5]), .QN() );
  DFF_X1 ref_1_reg_out_2_1_reg_6_ ( .D(ref_1_maj_124_port_o), .CK(clk), .Q(
        ref_1_port_o_2_1[6]), .QN() );
  DFF_X1 ref_1_reg_out_2_0_reg_0_ ( .D(ref_1_maj_69_port_o), .CK(clk), .Q(
        ref_1_port_o_2_0[0]), .QN() );
  DFF_X1 ref_1_reg_out_2_0_reg_1_ ( .D(ref_1_maj_78_port_o), .CK(clk), .Q(
        ref_1_port_o_2_0[1]), .QN() );
  DFF_X1 ref_1_reg_out_2_0_reg_2_ ( .D(ref_1_maj_87_port_o), .CK(clk), .Q(
        ref_1_port_o_2_0[2]), .QN() );
  DFF_X1 ref_1_reg_out_2_0_reg_3_ ( .D(ref_1_maj_96_port_o), .CK(clk), .Q(
        ref_1_port_o_2_0[3]), .QN() );
  DFF_X1 ref_1_reg_out_2_0_reg_4_ ( .D(ref_1_maj_105_port_o), .CK(clk), .Q(
        ref_1_port_o_2_0[4]), .QN() );
  DFF_X1 ref_1_reg_out_2_0_reg_5_ ( .D(ref_1_maj_114_port_o), .CK(clk), .Q(
        ref_1_port_o_2_0[5]), .QN() );
  DFF_X1 ref_1_reg_out_2_0_reg_6_ ( .D(ref_1_maj_123_port_o), .CK(clk), .Q(
        ref_1_port_o_2_0[6]), .QN() );
  DFF_X1 ref_1_reg_out_1_2_reg_0_ ( .D(ref_1_maj_68_port_o), .CK(clk), .Q(
        ref_1_port_o_1_2[0]), .QN() );
  DFF_X1 ref_1_reg_out_1_2_reg_1_ ( .D(ref_1_maj_77_port_o), .CK(clk), .Q(
        ref_1_port_o_1_2[1]), .QN() );
  DFF_X1 ref_1_reg_out_1_2_reg_2_ ( .D(ref_1_maj_86_port_o), .CK(clk), .Q(
        ref_1_port_o_1_2[2]), .QN() );
  DFF_X1 ref_1_reg_out_1_2_reg_3_ ( .D(ref_1_maj_95_port_o), .CK(clk), .Q(
        ref_1_port_o_1_2[3]), .QN() );
  DFF_X1 ref_1_reg_out_1_2_reg_4_ ( .D(ref_1_maj_104_port_o), .CK(clk), .Q(
        ref_1_port_o_1_2[4]), .QN() );
  DFF_X1 ref_1_reg_out_1_2_reg_5_ ( .D(ref_1_maj_113_port_o), .CK(clk), .Q(
        ref_1_port_o_1_2[5]), .QN() );
  DFF_X1 ref_1_reg_out_1_2_reg_6_ ( .D(ref_1_maj_122_port_o), .CK(clk), .Q(
        ref_1_port_o_1_2[6]), .QN() );
  DFF_X1 ref_1_reg_out_1_1_reg_0_ ( .D(ref_1_maj_67_port_o), .CK(clk), .Q(
        ref_1_port_o_1_1[0]), .QN() );
  DFF_X1 ref_1_reg_out_1_1_reg_1_ ( .D(ref_1_maj_76_port_o), .CK(clk), .Q(
        ref_1_port_o_1_1[1]), .QN() );
  DFF_X1 ref_1_reg_out_1_1_reg_2_ ( .D(ref_1_maj_85_port_o), .CK(clk), .Q(
        ref_1_port_o_1_1[2]), .QN() );
  DFF_X1 ref_1_reg_out_1_1_reg_3_ ( .D(ref_1_maj_94_port_o), .CK(clk), .Q(
        ref_1_port_o_1_1[3]), .QN() );
  DFF_X1 ref_1_reg_out_1_1_reg_4_ ( .D(ref_1_maj_103_port_o), .CK(clk), .Q(
        ref_1_port_o_1_1[4]), .QN() );
  DFF_X1 ref_1_reg_out_1_1_reg_5_ ( .D(ref_1_maj_112_port_o), .CK(clk), .Q(
        ref_1_port_o_1_1[5]), .QN() );
  DFF_X1 ref_1_reg_out_1_1_reg_6_ ( .D(ref_1_maj_121_port_o), .CK(clk), .Q(
        ref_1_port_o_1_1[6]), .QN() );
  DFF_X1 ref_1_reg_out_1_0_reg_0_ ( .D(ref_1_maj_66_port_o), .CK(clk), .Q(
        ref_1_port_o_1_0[0]), .QN() );
  DFF_X1 ref_1_reg_out_1_0_reg_1_ ( .D(ref_1_maj_75_port_o), .CK(clk), .Q(
        ref_1_port_o_1_0[1]), .QN() );
  DFF_X1 ref_1_reg_out_1_0_reg_2_ ( .D(ref_1_maj_84_port_o), .CK(clk), .Q(
        ref_1_port_o_1_0[2]), .QN() );
  DFF_X1 ref_1_reg_out_1_0_reg_3_ ( .D(ref_1_maj_93_port_o), .CK(clk), .Q(
        ref_1_port_o_1_0[3]), .QN() );
  DFF_X1 ref_1_reg_out_1_0_reg_4_ ( .D(ref_1_maj_102_port_o), .CK(clk), .Q(
        ref_1_port_o_1_0[4]), .QN() );
  DFF_X1 ref_1_reg_out_1_0_reg_5_ ( .D(ref_1_maj_111_port_o), .CK(clk), .Q(
        ref_1_port_o_1_0[5]), .QN() );
  DFF_X1 ref_1_reg_out_1_0_reg_6_ ( .D(ref_1_maj_120_port_o), .CK(clk), .Q(
        ref_1_port_o_1_0[6]), .QN() );
  DFF_X1 ref_1_reg_out_0_2_reg_0_ ( .D(ref_1_maj_65_port_o), .CK(clk), .Q(
        ref_1_port_o_0_2[0]), .QN() );
  DFF_X1 ref_1_reg_out_0_2_reg_1_ ( .D(ref_1_maj_74_port_o), .CK(clk), .Q(
        ref_1_port_o_0_2[1]), .QN() );
  DFF_X1 ref_1_reg_out_0_2_reg_2_ ( .D(ref_1_maj_83_port_o), .CK(clk), .Q(
        ref_1_port_o_0_2[2]), .QN() );
  DFF_X1 ref_1_reg_out_0_2_reg_3_ ( .D(ref_1_maj_92_port_o), .CK(clk), .Q(
        ref_1_port_o_0_2[3]), .QN() );
  DFF_X1 ref_1_reg_out_0_2_reg_4_ ( .D(ref_1_maj_101_port_o), .CK(clk), .Q(
        ref_1_port_o_0_2[4]), .QN() );
  DFF_X1 ref_1_reg_out_0_2_reg_5_ ( .D(ref_1_maj_110_port_o), .CK(clk), .Q(
        ref_1_port_o_0_2[5]), .QN() );
  DFF_X1 ref_1_reg_out_0_2_reg_6_ ( .D(ref_1_maj_119_port_o), .CK(clk), .Q(
        ref_1_port_o_0_2[6]), .QN() );
  DFF_X1 ref_1_reg_out_0_1_reg_0_ ( .D(ref_1_maj_64_port_o), .CK(clk), .Q(
        ref_1_port_o_0_1[0]), .QN() );
  DFF_X1 ref_1_reg_out_0_1_reg_1_ ( .D(ref_1_maj_73_port_o), .CK(clk), .Q(
        ref_1_port_o_0_1[1]), .QN() );
  DFF_X1 ref_1_reg_out_0_1_reg_2_ ( .D(ref_1_maj_82_port_o), .CK(clk), .Q(
        ref_1_port_o_0_1[2]), .QN() );
  DFF_X1 ref_1_reg_out_0_1_reg_3_ ( .D(ref_1_maj_91_port_o), .CK(clk), .Q(
        ref_1_port_o_0_1[3]), .QN() );
  DFF_X1 ref_1_reg_out_0_1_reg_4_ ( .D(ref_1_maj_100_port_o), .CK(clk), .Q(
        ref_1_port_o_0_1[4]), .QN() );
  DFF_X1 ref_1_reg_out_0_1_reg_5_ ( .D(ref_1_maj_109_port_o), .CK(clk), .Q(
        ref_1_port_o_0_1[5]), .QN() );
  DFF_X1 ref_1_reg_out_0_1_reg_6_ ( .D(ref_1_maj_118_port_o), .CK(clk), .Q(
        ref_1_port_o_0_1[6]), .QN() );
  DFF_X1 ref_1_reg_out_0_0_reg_0_ ( .D(ref_1_maj_63_port_o), .CK(clk), .Q(
        ref_1_port_o_0_0[0]), .QN() );
  DFF_X1 ref_1_reg_out_0_0_reg_1_ ( .D(ref_1_maj_72_port_o), .CK(clk), .Q(
        ref_1_port_o_0_0[1]), .QN() );
  DFF_X1 ref_1_reg_out_0_0_reg_2_ ( .D(ref_1_maj_81_port_o), .CK(clk), .Q(
        ref_1_port_o_0_0[2]), .QN() );
  DFF_X1 ref_1_reg_out_0_0_reg_3_ ( .D(ref_1_maj_90_port_o), .CK(clk), .Q(
        ref_1_port_o_0_0[3]), .QN() );
  DFF_X1 ref_1_reg_out_0_0_reg_4_ ( .D(ref_1_maj_99_port_o), .CK(clk), .Q(
        ref_1_port_o_0_0[4]), .QN() );
  DFF_X1 ref_1_reg_out_0_0_reg_5_ ( .D(ref_1_maj_108_port_o), .CK(clk), .Q(
        ref_1_port_o_0_0[5]), .QN() );
  DFF_X1 ref_1_reg_out_0_0_reg_6_ ( .D(ref_1_maj_117_port_o), .CK(clk), .Q(
        ref_1_port_o_0_0[6]), .QN() );
  XOR2_X1 ref_1_simpleXor_42_U1 ( .A(port_rand_ref[0]), .B(port_b_0[0]), .Z(
        ref_1_simpleXor_42_port_z) );
  XOR2_X1 ref_1_simpleXor_43_U1 ( .A(port_rand_ref[1]), .B(
        ref_1_simpleXor_42_port_z), .Z(ref_1_refreshed_0_0_) );
  XOR2_X1 ref_1_simpleXor_44_U1 ( .A(port_rand_ref[0]), .B(port_b_1[0]), .Z(
        ref_1_simpleXor_44_port_z) );
  XOR2_X1 ref_1_simpleXor_45_U1 ( .A(port_rand_ref[2]), .B(
        ref_1_simpleXor_44_port_z), .Z(ref_1_refreshed_1_0_) );
  XOR2_X1 ref_1_simpleXor_46_U1 ( .A(port_rand_ref[1]), .B(port_b_2[0]), .Z(
        ref_1_simpleXor_46_port_z) );
  XOR2_X1 ref_1_simpleXor_47_U1 ( .A(port_rand_ref[2]), .B(
        ref_1_simpleXor_46_port_z), .Z(ref_1_refreshed_2_0_) );
  XOR2_X1 ref_1_simpleXor_48_U1 ( .A(port_rand_ref[0]), .B(port_b_0[1]), .Z(
        ref_1_simpleXor_48_port_z) );
  XOR2_X1 ref_1_simpleXor_49_U1 ( .A(port_rand_ref[1]), .B(
        ref_1_simpleXor_48_port_z), .Z(ref_1_refreshed_0_1_) );
  XOR2_X1 ref_1_simpleXor_50_U1 ( .A(port_rand_ref[0]), .B(port_b_1[1]), .Z(
        ref_1_simpleXor_50_port_z) );
  XOR2_X1 ref_1_simpleXor_51_U1 ( .A(port_rand_ref[2]), .B(
        ref_1_simpleXor_50_port_z), .Z(ref_1_refreshed_1_1_) );
  XOR2_X1 ref_1_simpleXor_52_U1 ( .A(port_rand_ref[1]), .B(port_b_2[1]), .Z(
        ref_1_simpleXor_52_port_z) );
  XOR2_X1 ref_1_simpleXor_53_U1 ( .A(port_rand_ref[2]), .B(
        ref_1_simpleXor_52_port_z), .Z(ref_1_refreshed_2_1_) );
  XOR2_X1 ref_1_simpleXor_54_U1 ( .A(port_rand_ref[0]), .B(port_b_0[2]), .Z(
        ref_1_simpleXor_54_port_z) );
  XOR2_X1 ref_1_simpleXor_55_U1 ( .A(port_rand_ref[1]), .B(
        ref_1_simpleXor_54_port_z), .Z(ref_1_refreshed_0_2_) );
  XOR2_X1 ref_1_simpleXor_56_U1 ( .A(port_rand_ref[0]), .B(port_b_1[2]), .Z(
        ref_1_simpleXor_56_port_z) );
  XOR2_X1 ref_1_simpleXor_57_U1 ( .A(port_rand_ref[2]), .B(
        ref_1_simpleXor_56_port_z), .Z(ref_1_refreshed_1_2_) );
  XOR2_X1 ref_1_simpleXor_58_U1 ( .A(port_rand_ref[1]), .B(port_b_2[2]), .Z(
        ref_1_simpleXor_58_port_z) );
  XOR2_X1 ref_1_simpleXor_59_U1 ( .A(port_rand_ref[2]), .B(
        ref_1_simpleXor_58_port_z), .Z(ref_1_refreshed_2_2_) );
  XOR2_X1 ref_1_simpleXor_60_U1 ( .A(port_rand_ref[0]), .B(port_b_0[3]), .Z(
        ref_1_simpleXor_60_port_z) );
  XOR2_X1 ref_1_simpleXor_61_U1 ( .A(port_rand_ref[1]), .B(
        ref_1_simpleXor_60_port_z), .Z(ref_1_refreshed_0_3_) );
  XOR2_X1 ref_1_simpleXor_62_U1 ( .A(port_rand_ref[0]), .B(port_b_1[3]), .Z(
        ref_1_simpleXor_62_port_z) );
  XOR2_X1 ref_1_simpleXor_63_U1 ( .A(port_rand_ref[2]), .B(
        ref_1_simpleXor_62_port_z), .Z(ref_1_refreshed_1_3_) );
  XOR2_X1 ref_1_simpleXor_64_U1 ( .A(port_rand_ref[1]), .B(port_b_2[3]), .Z(
        ref_1_simpleXor_64_port_z) );
  XOR2_X1 ref_1_simpleXor_65_U1 ( .A(port_rand_ref[2]), .B(
        ref_1_simpleXor_64_port_z), .Z(ref_1_refreshed_2_3_) );
  XOR2_X1 ref_1_simpleXor_66_U1 ( .A(port_rand_ref[0]), .B(port_b_0[4]), .Z(
        ref_1_simpleXor_66_port_z) );
  XOR2_X1 ref_1_simpleXor_67_U1 ( .A(port_rand_ref[1]), .B(
        ref_1_simpleXor_66_port_z), .Z(ref_1_refreshed_0_4_) );
  XOR2_X1 ref_1_simpleXor_68_U1 ( .A(port_rand_ref[0]), .B(port_b_1[4]), .Z(
        ref_1_simpleXor_68_port_z) );
  XOR2_X1 ref_1_simpleXor_69_U1 ( .A(port_rand_ref[2]), .B(
        ref_1_simpleXor_68_port_z), .Z(ref_1_refreshed_1_4_) );
  XOR2_X1 ref_1_simpleXor_70_U1 ( .A(port_rand_ref[1]), .B(port_b_2[4]), .Z(
        ref_1_simpleXor_70_port_z) );
  XOR2_X1 ref_1_simpleXor_71_U1 ( .A(port_rand_ref[2]), .B(
        ref_1_simpleXor_70_port_z), .Z(ref_1_refreshed_2_4_) );
  XOR2_X1 ref_1_simpleXor_72_U1 ( .A(port_rand_ref[0]), .B(port_b_0[5]), .Z(
        ref_1_simpleXor_72_port_z) );
  XOR2_X1 ref_1_simpleXor_73_U1 ( .A(port_rand_ref[1]), .B(
        ref_1_simpleXor_72_port_z), .Z(ref_1_refreshed_0_5_) );
  XOR2_X1 ref_1_simpleXor_74_U1 ( .A(port_rand_ref[0]), .B(port_b_1[5]), .Z(
        ref_1_simpleXor_74_port_z) );
  XOR2_X1 ref_1_simpleXor_75_U1 ( .A(port_rand_ref[2]), .B(
        ref_1_simpleXor_74_port_z), .Z(ref_1_refreshed_1_5_) );
  XOR2_X1 ref_1_simpleXor_76_U1 ( .A(port_rand_ref[1]), .B(port_b_2[5]), .Z(
        ref_1_simpleXor_76_port_z) );
  XOR2_X1 ref_1_simpleXor_77_U1 ( .A(port_rand_ref[2]), .B(
        ref_1_simpleXor_76_port_z), .Z(ref_1_refreshed_2_5_) );
  XOR2_X1 ref_1_simpleXor_78_U1 ( .A(port_rand_ref[0]), .B(port_b_0[6]), .Z(
        ref_1_simpleXor_78_port_z) );
  INV_X1 ref_1_simpleXor_79_U2 ( .A(ref_1_simpleXor_79_n2), .ZN(
        ref_1_refreshed_0_6_) );
  XNOR2_X1 ref_1_simpleXor_79_U1 ( .A(port_rand_ref[1]), .B(
        ref_1_simpleXor_78_port_z), .ZN(ref_1_simpleXor_79_n2) );
  XOR2_X1 ref_1_simpleXor_80_U1 ( .A(port_rand_ref[0]), .B(port_b_1[6]), .Z(
        ref_1_simpleXor_80_port_z) );
  INV_X1 ref_1_simpleXor_81_U2 ( .A(ref_1_simpleXor_81_n2), .ZN(
        ref_1_refreshed_1_6_) );
  XNOR2_X1 ref_1_simpleXor_81_U1 ( .A(port_rand_ref[2]), .B(
        ref_1_simpleXor_80_port_z), .ZN(ref_1_simpleXor_81_n2) );
  XOR2_X1 ref_1_simpleXor_82_U1 ( .A(port_rand_ref[1]), .B(port_b_2[6]), .Z(
        ref_1_simpleXor_82_port_z) );
  INV_X1 ref_1_simpleXor_83_U2 ( .A(ref_1_simpleXor_83_n2), .ZN(
        ref_1_refreshed_2_6_) );
  XNOR2_X1 ref_1_simpleXor_83_U1 ( .A(port_rand_ref[2]), .B(
        ref_1_simpleXor_82_port_z), .ZN(ref_1_simpleXor_83_n2) );
  OR2_X1 ref_1_maj_63_U19 ( .A1(ref_1_maj_63_n8), .A2(ref_1_maj_63_n9), .ZN(
        ref_1_maj_63_n7) );
  NAND2_X1 ref_1_maj_63_U18 ( .A1(ref_1_refreshed_0_6_), .A2(ref_1_maj_63_n7), 
        .ZN(ref_1_maj_63_n6) );
  NAND2_X1 ref_1_maj_63_U17 ( .A1(ref_1_maj_63_n9), .A2(ref_1_maj_63_n8), .ZN(
        ref_1_maj_63_n5) );
  NAND2_X1 ref_1_maj_63_U16 ( .A1(ref_1_maj_63_n5), .A2(ref_1_maj_63_n6), .ZN(
        ref_1_maj_63_n4) );
  OR2_X1 ref_1_maj_63_U15 ( .A1(ref_1_maj_63_n12), .A2(ref_1_maj_63_n13), .ZN(
        ref_1_maj_63_n3) );
  NAND2_X1 ref_1_maj_63_U14 ( .A1(ref_1_maj_63_n13), .A2(ref_1_maj_63_n12), 
        .ZN(ref_1_maj_63_n1) );
  NAND2_X1 ref_1_maj_63_U13 ( .A1(ref_1_maj_63_n3), .A2(ref_1_maj_63_n4), .ZN(
        ref_1_maj_63_n2) );
  NAND2_X1 ref_1_maj_63_U12 ( .A1(ref_1_maj_63_n1), .A2(ref_1_maj_63_n2), .ZN(
        ref_1_maj_63_port_o) );
  NAND2_X1 ref_1_maj_63_U11 ( .A1(ref_1_refreshed_0_5_), .A2(ref_1_maj_63_n10), 
        .ZN(ref_1_maj_63_n17) );
  NAND2_X1 ref_1_maj_63_U10 ( .A1(ref_1_n32), .A2(ref_1_refreshed_0_4_), .ZN(
        ref_1_maj_63_n16) );
  NAND2_X1 ref_1_maj_63_U9 ( .A1(ref_1_maj_63_n16), .A2(ref_1_maj_63_n17), 
        .ZN(ref_1_maj_63_n13) );
  NAND2_X1 ref_1_maj_63_U8 ( .A1(ref_1_n30), .A2(ref_1_maj_63_n11), .ZN(
        ref_1_maj_63_n15) );
  NAND2_X1 ref_1_maj_63_U7 ( .A1(ref_1_n26), .A2(ref_1_refreshed_0_1_), .ZN(
        ref_1_maj_63_n14) );
  NAND2_X1 ref_1_maj_63_U6 ( .A1(ref_1_maj_63_n14), .A2(ref_1_maj_63_n15), 
        .ZN(ref_1_maj_63_n12) );
  XOR2_X1 ref_1_maj_63_U5 ( .A(ref_1_n30), .B(ref_1_maj_63_n11), .Z(
        ref_1_maj_63_n9) );
  XOR2_X1 ref_1_maj_63_U4 ( .A(ref_1_refreshed_0_5_), .B(ref_1_maj_63_n10), 
        .Z(ref_1_maj_63_n8) );
  XOR2_X1 ref_1_maj_63_U3 ( .A(ref_1_n26), .B(ref_1_refreshed_0_1_), .Z(
        ref_1_maj_63_n11) );
  XOR2_X1 ref_1_maj_63_U2 ( .A(ref_1_n32), .B(ref_1_refreshed_0_4_), .Z(
        ref_1_maj_63_n10) );
  OR2_X1 ref_1_maj_64_U19 ( .A1(ref_1_maj_64_n27), .A2(ref_1_maj_64_n26), .ZN(
        ref_1_maj_64_n28) );
  NAND2_X1 ref_1_maj_64_U18 ( .A1(ref_1_refreshed_0_6_), .A2(ref_1_maj_64_n28), 
        .ZN(ref_1_maj_64_n29) );
  NAND2_X1 ref_1_maj_64_U17 ( .A1(ref_1_maj_64_n26), .A2(ref_1_maj_64_n27), 
        .ZN(ref_1_maj_64_n30) );
  NAND2_X1 ref_1_maj_64_U16 ( .A1(ref_1_maj_64_n30), .A2(ref_1_maj_64_n29), 
        .ZN(ref_1_maj_64_n31) );
  OR2_X1 ref_1_maj_64_U15 ( .A1(ref_1_maj_64_n23), .A2(ref_1_maj_64_n22), .ZN(
        ref_1_maj_64_n32) );
  NAND2_X1 ref_1_maj_64_U14 ( .A1(ref_1_maj_64_n22), .A2(ref_1_maj_64_n23), 
        .ZN(ref_1_maj_64_n34) );
  NAND2_X1 ref_1_maj_64_U13 ( .A1(ref_1_maj_64_n32), .A2(ref_1_maj_64_n31), 
        .ZN(ref_1_maj_64_n33) );
  NAND2_X1 ref_1_maj_64_U12 ( .A1(ref_1_maj_64_n34), .A2(ref_1_maj_64_n33), 
        .ZN(ref_1_maj_64_port_o) );
  NAND2_X1 ref_1_maj_64_U11 ( .A1(ref_1_n35), .A2(ref_1_maj_64_n25), .ZN(
        ref_1_maj_64_n18) );
  NAND2_X1 ref_1_maj_64_U10 ( .A1(ref_1_n31), .A2(ref_1_n33), .ZN(
        ref_1_maj_64_n19) );
  NAND2_X1 ref_1_maj_64_U9 ( .A1(ref_1_maj_64_n19), .A2(ref_1_maj_64_n18), 
        .ZN(ref_1_maj_64_n22) );
  NAND2_X1 ref_1_maj_64_U8 ( .A1(ref_1_n30), .A2(ref_1_maj_64_n24), .ZN(
        ref_1_maj_64_n20) );
  NAND2_X1 ref_1_maj_64_U7 ( .A1(ref_1_n26), .A2(ref_1_n27), .ZN(
        ref_1_maj_64_n21) );
  NAND2_X1 ref_1_maj_64_U6 ( .A1(ref_1_maj_64_n21), .A2(ref_1_maj_64_n20), 
        .ZN(ref_1_maj_64_n23) );
  XOR2_X1 ref_1_maj_64_U5 ( .A(ref_1_n30), .B(ref_1_maj_64_n24), .Z(
        ref_1_maj_64_n26) );
  XOR2_X1 ref_1_maj_64_U4 ( .A(ref_1_n35), .B(ref_1_maj_64_n25), .Z(
        ref_1_maj_64_n27) );
  XOR2_X1 ref_1_maj_64_U3 ( .A(ref_1_n26), .B(ref_1_n27), .Z(ref_1_maj_64_n24)
         );
  XOR2_X1 ref_1_maj_64_U2 ( .A(ref_1_n31), .B(ref_1_n33), .Z(ref_1_maj_64_n25)
         );
  OR2_X1 ref_1_maj_65_U19 ( .A1(ref_1_maj_65_n27), .A2(ref_1_maj_65_n26), .ZN(
        ref_1_maj_65_n28) );
  NAND2_X1 ref_1_maj_65_U18 ( .A1(ref_1_refreshed_0_6_), .A2(ref_1_maj_65_n28), 
        .ZN(ref_1_maj_65_n29) );
  NAND2_X1 ref_1_maj_65_U17 ( .A1(ref_1_maj_65_n26), .A2(ref_1_maj_65_n27), 
        .ZN(ref_1_maj_65_n30) );
  NAND2_X1 ref_1_maj_65_U16 ( .A1(ref_1_maj_65_n30), .A2(ref_1_maj_65_n29), 
        .ZN(ref_1_maj_65_n31) );
  OR2_X1 ref_1_maj_65_U15 ( .A1(ref_1_maj_65_n23), .A2(ref_1_maj_65_n22), .ZN(
        ref_1_maj_65_n32) );
  NAND2_X1 ref_1_maj_65_U14 ( .A1(ref_1_maj_65_n22), .A2(ref_1_maj_65_n23), 
        .ZN(ref_1_maj_65_n34) );
  NAND2_X1 ref_1_maj_65_U13 ( .A1(ref_1_maj_65_n32), .A2(ref_1_maj_65_n31), 
        .ZN(ref_1_maj_65_n33) );
  NAND2_X1 ref_1_maj_65_U12 ( .A1(ref_1_maj_65_n34), .A2(ref_1_maj_65_n33), 
        .ZN(ref_1_maj_65_port_o) );
  NAND2_X1 ref_1_maj_65_U11 ( .A1(ref_1_n35), .A2(ref_1_maj_65_n25), .ZN(
        ref_1_maj_65_n18) );
  NAND2_X1 ref_1_maj_65_U10 ( .A1(ref_1_n31), .A2(ref_1_n33), .ZN(
        ref_1_maj_65_n19) );
  NAND2_X1 ref_1_maj_65_U9 ( .A1(ref_1_maj_65_n19), .A2(ref_1_maj_65_n18), 
        .ZN(ref_1_maj_65_n22) );
  NAND2_X1 ref_1_maj_65_U8 ( .A1(ref_1_n29), .A2(ref_1_maj_65_n24), .ZN(
        ref_1_maj_65_n20) );
  NAND2_X1 ref_1_maj_65_U7 ( .A1(ref_1_n25), .A2(ref_1_n27), .ZN(
        ref_1_maj_65_n21) );
  NAND2_X1 ref_1_maj_65_U6 ( .A1(ref_1_maj_65_n21), .A2(ref_1_maj_65_n20), 
        .ZN(ref_1_maj_65_n23) );
  XOR2_X1 ref_1_maj_65_U5 ( .A(ref_1_n29), .B(ref_1_maj_65_n24), .Z(
        ref_1_maj_65_n26) );
  XOR2_X1 ref_1_maj_65_U4 ( .A(ref_1_n35), .B(ref_1_maj_65_n25), .Z(
        ref_1_maj_65_n27) );
  XOR2_X1 ref_1_maj_65_U3 ( .A(ref_1_n25), .B(ref_1_n27), .Z(ref_1_maj_65_n24)
         );
  XOR2_X1 ref_1_maj_65_U2 ( .A(ref_1_n31), .B(ref_1_n33), .Z(ref_1_maj_65_n25)
         );
  OR2_X1 ref_1_maj_66_U19 ( .A1(ref_1_maj_66_n27), .A2(ref_1_maj_66_n26), .ZN(
        ref_1_maj_66_n28) );
  NAND2_X1 ref_1_maj_66_U18 ( .A1(ref_1_refreshed_1_6_), .A2(ref_1_maj_66_n28), 
        .ZN(ref_1_maj_66_n29) );
  NAND2_X1 ref_1_maj_66_U17 ( .A1(ref_1_maj_66_n26), .A2(ref_1_maj_66_n27), 
        .ZN(ref_1_maj_66_n30) );
  NAND2_X1 ref_1_maj_66_U16 ( .A1(ref_1_maj_66_n30), .A2(ref_1_maj_66_n29), 
        .ZN(ref_1_maj_66_n31) );
  OR2_X1 ref_1_maj_66_U15 ( .A1(ref_1_maj_66_n23), .A2(ref_1_maj_66_n22), .ZN(
        ref_1_maj_66_n32) );
  NAND2_X1 ref_1_maj_66_U14 ( .A1(ref_1_maj_66_n22), .A2(ref_1_maj_66_n23), 
        .ZN(ref_1_maj_66_n34) );
  NAND2_X1 ref_1_maj_66_U13 ( .A1(ref_1_maj_66_n32), .A2(ref_1_maj_66_n31), 
        .ZN(ref_1_maj_66_n33) );
  NAND2_X1 ref_1_maj_66_U12 ( .A1(ref_1_maj_66_n34), .A2(ref_1_maj_66_n33), 
        .ZN(ref_1_maj_66_port_o) );
  NAND2_X1 ref_1_maj_66_U11 ( .A1(ref_1_n23), .A2(ref_1_maj_66_n25), .ZN(
        ref_1_maj_66_n18) );
  NAND2_X1 ref_1_maj_66_U10 ( .A1(ref_1_n19), .A2(ref_1_n21), .ZN(
        ref_1_maj_66_n19) );
  NAND2_X1 ref_1_maj_66_U9 ( .A1(ref_1_maj_66_n19), .A2(ref_1_maj_66_n18), 
        .ZN(ref_1_maj_66_n22) );
  NAND2_X1 ref_1_maj_66_U8 ( .A1(ref_1_n17), .A2(ref_1_maj_66_n24), .ZN(
        ref_1_maj_66_n20) );
  NAND2_X1 ref_1_maj_66_U7 ( .A1(ref_1_n13), .A2(ref_1_n15), .ZN(
        ref_1_maj_66_n21) );
  NAND2_X1 ref_1_maj_66_U6 ( .A1(ref_1_maj_66_n21), .A2(ref_1_maj_66_n20), 
        .ZN(ref_1_maj_66_n23) );
  XOR2_X1 ref_1_maj_66_U5 ( .A(ref_1_n17), .B(ref_1_maj_66_n24), .Z(
        ref_1_maj_66_n26) );
  XOR2_X1 ref_1_maj_66_U4 ( .A(ref_1_n23), .B(ref_1_maj_66_n25), .Z(
        ref_1_maj_66_n27) );
  XOR2_X1 ref_1_maj_66_U3 ( .A(ref_1_n13), .B(ref_1_n15), .Z(ref_1_maj_66_n24)
         );
  XOR2_X1 ref_1_maj_66_U2 ( .A(ref_1_n19), .B(ref_1_n21), .Z(ref_1_maj_66_n25)
         );
  OR2_X1 ref_1_maj_67_U19 ( .A1(ref_1_maj_67_n27), .A2(ref_1_maj_67_n26), .ZN(
        ref_1_maj_67_n28) );
  NAND2_X1 ref_1_maj_67_U18 ( .A1(ref_1_refreshed_1_6_), .A2(ref_1_maj_67_n28), 
        .ZN(ref_1_maj_67_n29) );
  NAND2_X1 ref_1_maj_67_U17 ( .A1(ref_1_maj_67_n26), .A2(ref_1_maj_67_n27), 
        .ZN(ref_1_maj_67_n30) );
  NAND2_X1 ref_1_maj_67_U16 ( .A1(ref_1_maj_67_n30), .A2(ref_1_maj_67_n29), 
        .ZN(ref_1_maj_67_n31) );
  OR2_X1 ref_1_maj_67_U15 ( .A1(ref_1_maj_67_n23), .A2(ref_1_maj_67_n22), .ZN(
        ref_1_maj_67_n32) );
  NAND2_X1 ref_1_maj_67_U14 ( .A1(ref_1_maj_67_n22), .A2(ref_1_maj_67_n23), 
        .ZN(ref_1_maj_67_n34) );
  NAND2_X1 ref_1_maj_67_U13 ( .A1(ref_1_maj_67_n32), .A2(ref_1_maj_67_n31), 
        .ZN(ref_1_maj_67_n33) );
  NAND2_X1 ref_1_maj_67_U12 ( .A1(ref_1_maj_67_n34), .A2(ref_1_maj_67_n33), 
        .ZN(ref_1_maj_67_port_o) );
  NAND2_X1 ref_1_maj_67_U11 ( .A1(ref_1_n23), .A2(ref_1_maj_67_n25), .ZN(
        ref_1_maj_67_n18) );
  NAND2_X1 ref_1_maj_67_U10 ( .A1(ref_1_n19), .A2(ref_1_n21), .ZN(
        ref_1_maj_67_n19) );
  NAND2_X1 ref_1_maj_67_U9 ( .A1(ref_1_maj_67_n19), .A2(ref_1_maj_67_n18), 
        .ZN(ref_1_maj_67_n22) );
  NAND2_X1 ref_1_maj_67_U8 ( .A1(ref_1_n17), .A2(ref_1_maj_67_n24), .ZN(
        ref_1_maj_67_n20) );
  NAND2_X1 ref_1_maj_67_U7 ( .A1(ref_1_n13), .A2(ref_1_n15), .ZN(
        ref_1_maj_67_n21) );
  NAND2_X1 ref_1_maj_67_U6 ( .A1(ref_1_maj_67_n21), .A2(ref_1_maj_67_n20), 
        .ZN(ref_1_maj_67_n23) );
  XOR2_X1 ref_1_maj_67_U5 ( .A(ref_1_n17), .B(ref_1_maj_67_n24), .Z(
        ref_1_maj_67_n26) );
  XOR2_X1 ref_1_maj_67_U4 ( .A(ref_1_n23), .B(ref_1_maj_67_n25), .Z(
        ref_1_maj_67_n27) );
  XOR2_X1 ref_1_maj_67_U3 ( .A(ref_1_n13), .B(ref_1_n15), .Z(ref_1_maj_67_n24)
         );
  XOR2_X1 ref_1_maj_67_U2 ( .A(ref_1_n19), .B(ref_1_n21), .Z(ref_1_maj_67_n25)
         );
  OR2_X1 ref_1_maj_68_U19 ( .A1(ref_1_maj_68_n27), .A2(ref_1_maj_68_n26), .ZN(
        ref_1_maj_68_n28) );
  NAND2_X1 ref_1_maj_68_U18 ( .A1(ref_1_refreshed_1_6_), .A2(ref_1_maj_68_n28), 
        .ZN(ref_1_maj_68_n29) );
  NAND2_X1 ref_1_maj_68_U17 ( .A1(ref_1_maj_68_n26), .A2(ref_1_maj_68_n27), 
        .ZN(ref_1_maj_68_n30) );
  NAND2_X1 ref_1_maj_68_U16 ( .A1(ref_1_maj_68_n30), .A2(ref_1_maj_68_n29), 
        .ZN(ref_1_maj_68_n31) );
  OR2_X1 ref_1_maj_68_U15 ( .A1(ref_1_maj_68_n23), .A2(ref_1_maj_68_n22), .ZN(
        ref_1_maj_68_n32) );
  NAND2_X1 ref_1_maj_68_U14 ( .A1(ref_1_maj_68_n22), .A2(ref_1_maj_68_n23), 
        .ZN(ref_1_maj_68_n34) );
  NAND2_X1 ref_1_maj_68_U13 ( .A1(ref_1_maj_68_n32), .A2(ref_1_maj_68_n31), 
        .ZN(ref_1_maj_68_n33) );
  NAND2_X1 ref_1_maj_68_U12 ( .A1(ref_1_maj_68_n34), .A2(ref_1_maj_68_n33), 
        .ZN(ref_1_maj_68_port_o) );
  NAND2_X1 ref_1_maj_68_U11 ( .A1(ref_1_n23), .A2(ref_1_maj_68_n25), .ZN(
        ref_1_maj_68_n18) );
  NAND2_X1 ref_1_maj_68_U10 ( .A1(ref_1_n19), .A2(ref_1_n21), .ZN(
        ref_1_maj_68_n19) );
  NAND2_X1 ref_1_maj_68_U9 ( .A1(ref_1_maj_68_n19), .A2(ref_1_maj_68_n18), 
        .ZN(ref_1_maj_68_n22) );
  NAND2_X1 ref_1_maj_68_U8 ( .A1(ref_1_n17), .A2(ref_1_maj_68_n24), .ZN(
        ref_1_maj_68_n20) );
  NAND2_X1 ref_1_maj_68_U7 ( .A1(ref_1_n13), .A2(ref_1_n15), .ZN(
        ref_1_maj_68_n21) );
  NAND2_X1 ref_1_maj_68_U6 ( .A1(ref_1_maj_68_n21), .A2(ref_1_maj_68_n20), 
        .ZN(ref_1_maj_68_n23) );
  XOR2_X1 ref_1_maj_68_U5 ( .A(ref_1_n17), .B(ref_1_maj_68_n24), .Z(
        ref_1_maj_68_n26) );
  XOR2_X1 ref_1_maj_68_U4 ( .A(ref_1_n23), .B(ref_1_maj_68_n25), .Z(
        ref_1_maj_68_n27) );
  XOR2_X1 ref_1_maj_68_U3 ( .A(ref_1_n13), .B(ref_1_n15), .Z(ref_1_maj_68_n24)
         );
  XOR2_X1 ref_1_maj_68_U2 ( .A(ref_1_n19), .B(ref_1_n21), .Z(ref_1_maj_68_n25)
         );
  OR2_X1 ref_1_maj_69_U19 ( .A1(ref_1_maj_69_n27), .A2(ref_1_maj_69_n26), .ZN(
        ref_1_maj_69_n28) );
  NAND2_X1 ref_1_maj_69_U18 ( .A1(ref_1_refreshed_2_6_), .A2(ref_1_maj_69_n28), 
        .ZN(ref_1_maj_69_n29) );
  NAND2_X1 ref_1_maj_69_U17 ( .A1(ref_1_maj_69_n26), .A2(ref_1_maj_69_n27), 
        .ZN(ref_1_maj_69_n30) );
  NAND2_X1 ref_1_maj_69_U16 ( .A1(ref_1_maj_69_n30), .A2(ref_1_maj_69_n29), 
        .ZN(ref_1_maj_69_n31) );
  OR2_X1 ref_1_maj_69_U15 ( .A1(ref_1_maj_69_n23), .A2(ref_1_maj_69_n22), .ZN(
        ref_1_maj_69_n32) );
  NAND2_X1 ref_1_maj_69_U14 ( .A1(ref_1_maj_69_n22), .A2(ref_1_maj_69_n23), 
        .ZN(ref_1_maj_69_n34) );
  NAND2_X1 ref_1_maj_69_U13 ( .A1(ref_1_maj_69_n32), .A2(ref_1_maj_69_n31), 
        .ZN(ref_1_maj_69_n33) );
  NAND2_X1 ref_1_maj_69_U12 ( .A1(ref_1_maj_69_n34), .A2(ref_1_maj_69_n33), 
        .ZN(ref_1_maj_69_port_o) );
  NAND2_X1 ref_1_maj_69_U11 ( .A1(ref_1_n11), .A2(ref_1_maj_69_n25), .ZN(
        ref_1_maj_69_n18) );
  NAND2_X1 ref_1_maj_69_U10 ( .A1(ref_1_n7), .A2(ref_1_n9), .ZN(
        ref_1_maj_69_n19) );
  NAND2_X1 ref_1_maj_69_U9 ( .A1(ref_1_maj_69_n19), .A2(ref_1_maj_69_n18), 
        .ZN(ref_1_maj_69_n22) );
  NAND2_X1 ref_1_maj_69_U8 ( .A1(ref_1_n5), .A2(ref_1_maj_69_n24), .ZN(
        ref_1_maj_69_n20) );
  NAND2_X1 ref_1_maj_69_U7 ( .A1(ref_1_n1), .A2(ref_1_n3), .ZN(
        ref_1_maj_69_n21) );
  NAND2_X1 ref_1_maj_69_U6 ( .A1(ref_1_maj_69_n21), .A2(ref_1_maj_69_n20), 
        .ZN(ref_1_maj_69_n23) );
  XOR2_X1 ref_1_maj_69_U5 ( .A(ref_1_n5), .B(ref_1_maj_69_n24), .Z(
        ref_1_maj_69_n26) );
  XOR2_X1 ref_1_maj_69_U4 ( .A(ref_1_n11), .B(ref_1_maj_69_n25), .Z(
        ref_1_maj_69_n27) );
  XOR2_X1 ref_1_maj_69_U3 ( .A(ref_1_n1), .B(ref_1_n3), .Z(ref_1_maj_69_n24)
         );
  XOR2_X1 ref_1_maj_69_U2 ( .A(ref_1_n7), .B(ref_1_n9), .Z(ref_1_maj_69_n25)
         );
  OR2_X1 ref_1_maj_70_U19 ( .A1(ref_1_maj_70_n27), .A2(ref_1_maj_70_n26), .ZN(
        ref_1_maj_70_n28) );
  NAND2_X1 ref_1_maj_70_U18 ( .A1(ref_1_refreshed_2_6_), .A2(ref_1_maj_70_n28), 
        .ZN(ref_1_maj_70_n29) );
  NAND2_X1 ref_1_maj_70_U17 ( .A1(ref_1_maj_70_n26), .A2(ref_1_maj_70_n27), 
        .ZN(ref_1_maj_70_n30) );
  NAND2_X1 ref_1_maj_70_U16 ( .A1(ref_1_maj_70_n30), .A2(ref_1_maj_70_n29), 
        .ZN(ref_1_maj_70_n31) );
  OR2_X1 ref_1_maj_70_U15 ( .A1(ref_1_maj_70_n23), .A2(ref_1_maj_70_n22), .ZN(
        ref_1_maj_70_n32) );
  NAND2_X1 ref_1_maj_70_U14 ( .A1(ref_1_maj_70_n22), .A2(ref_1_maj_70_n23), 
        .ZN(ref_1_maj_70_n34) );
  NAND2_X1 ref_1_maj_70_U13 ( .A1(ref_1_maj_70_n32), .A2(ref_1_maj_70_n31), 
        .ZN(ref_1_maj_70_n33) );
  NAND2_X1 ref_1_maj_70_U12 ( .A1(ref_1_maj_70_n34), .A2(ref_1_maj_70_n33), 
        .ZN(ref_1_maj_70_port_o) );
  NAND2_X1 ref_1_maj_70_U11 ( .A1(ref_1_n11), .A2(ref_1_maj_70_n25), .ZN(
        ref_1_maj_70_n18) );
  NAND2_X1 ref_1_maj_70_U10 ( .A1(ref_1_n7), .A2(ref_1_n9), .ZN(
        ref_1_maj_70_n19) );
  NAND2_X1 ref_1_maj_70_U9 ( .A1(ref_1_maj_70_n19), .A2(ref_1_maj_70_n18), 
        .ZN(ref_1_maj_70_n22) );
  NAND2_X1 ref_1_maj_70_U8 ( .A1(ref_1_n5), .A2(ref_1_maj_70_n24), .ZN(
        ref_1_maj_70_n20) );
  NAND2_X1 ref_1_maj_70_U7 ( .A1(ref_1_n1), .A2(ref_1_n3), .ZN(
        ref_1_maj_70_n21) );
  NAND2_X1 ref_1_maj_70_U6 ( .A1(ref_1_maj_70_n21), .A2(ref_1_maj_70_n20), 
        .ZN(ref_1_maj_70_n23) );
  XOR2_X1 ref_1_maj_70_U5 ( .A(ref_1_n5), .B(ref_1_maj_70_n24), .Z(
        ref_1_maj_70_n26) );
  XOR2_X1 ref_1_maj_70_U4 ( .A(ref_1_n11), .B(ref_1_maj_70_n25), .Z(
        ref_1_maj_70_n27) );
  XOR2_X1 ref_1_maj_70_U3 ( .A(ref_1_n1), .B(ref_1_n3), .Z(ref_1_maj_70_n24)
         );
  XOR2_X1 ref_1_maj_70_U2 ( .A(ref_1_n7), .B(ref_1_n9), .Z(ref_1_maj_70_n25)
         );
  OR2_X1 ref_1_maj_71_U19 ( .A1(ref_1_maj_71_n27), .A2(ref_1_maj_71_n26), .ZN(
        ref_1_maj_71_n28) );
  NAND2_X1 ref_1_maj_71_U18 ( .A1(ref_1_refreshed_2_6_), .A2(ref_1_maj_71_n28), 
        .ZN(ref_1_maj_71_n29) );
  NAND2_X1 ref_1_maj_71_U17 ( .A1(ref_1_maj_71_n26), .A2(ref_1_maj_71_n27), 
        .ZN(ref_1_maj_71_n30) );
  NAND2_X1 ref_1_maj_71_U16 ( .A1(ref_1_maj_71_n30), .A2(ref_1_maj_71_n29), 
        .ZN(ref_1_maj_71_n31) );
  OR2_X1 ref_1_maj_71_U15 ( .A1(ref_1_maj_71_n23), .A2(ref_1_maj_71_n22), .ZN(
        ref_1_maj_71_n32) );
  NAND2_X1 ref_1_maj_71_U14 ( .A1(ref_1_maj_71_n22), .A2(ref_1_maj_71_n23), 
        .ZN(ref_1_maj_71_n34) );
  NAND2_X1 ref_1_maj_71_U13 ( .A1(ref_1_maj_71_n32), .A2(ref_1_maj_71_n31), 
        .ZN(ref_1_maj_71_n33) );
  NAND2_X1 ref_1_maj_71_U12 ( .A1(ref_1_maj_71_n34), .A2(ref_1_maj_71_n33), 
        .ZN(ref_1_maj_71_port_o) );
  NAND2_X1 ref_1_maj_71_U11 ( .A1(ref_1_n11), .A2(ref_1_maj_71_n25), .ZN(
        ref_1_maj_71_n18) );
  NAND2_X1 ref_1_maj_71_U10 ( .A1(ref_1_n7), .A2(ref_1_n9), .ZN(
        ref_1_maj_71_n19) );
  NAND2_X1 ref_1_maj_71_U9 ( .A1(ref_1_maj_71_n19), .A2(ref_1_maj_71_n18), 
        .ZN(ref_1_maj_71_n22) );
  NAND2_X1 ref_1_maj_71_U8 ( .A1(ref_1_n5), .A2(ref_1_maj_71_n24), .ZN(
        ref_1_maj_71_n20) );
  NAND2_X1 ref_1_maj_71_U7 ( .A1(ref_1_n1), .A2(ref_1_n3), .ZN(
        ref_1_maj_71_n21) );
  NAND2_X1 ref_1_maj_71_U6 ( .A1(ref_1_maj_71_n21), .A2(ref_1_maj_71_n20), 
        .ZN(ref_1_maj_71_n23) );
  XOR2_X1 ref_1_maj_71_U5 ( .A(ref_1_n5), .B(ref_1_maj_71_n24), .Z(
        ref_1_maj_71_n26) );
  XOR2_X1 ref_1_maj_71_U4 ( .A(ref_1_n11), .B(ref_1_maj_71_n25), .Z(
        ref_1_maj_71_n27) );
  XOR2_X1 ref_1_maj_71_U3 ( .A(ref_1_n1), .B(ref_1_n3), .Z(ref_1_maj_71_n24)
         );
  XOR2_X1 ref_1_maj_71_U2 ( .A(ref_1_n7), .B(ref_1_n9), .Z(ref_1_maj_71_n25)
         );
  OR2_X1 ref_1_maj_72_U19 ( .A1(ref_1_maj_72_n27), .A2(ref_1_maj_72_n26), .ZN(
        ref_1_maj_72_n28) );
  NAND2_X1 ref_1_maj_72_U18 ( .A1(ref_1_refreshed_0_6_), .A2(ref_1_maj_72_n28), 
        .ZN(ref_1_maj_72_n29) );
  NAND2_X1 ref_1_maj_72_U17 ( .A1(ref_1_maj_72_n26), .A2(ref_1_maj_72_n27), 
        .ZN(ref_1_maj_72_n30) );
  NAND2_X1 ref_1_maj_72_U16 ( .A1(ref_1_maj_72_n30), .A2(ref_1_maj_72_n29), 
        .ZN(ref_1_maj_72_n31) );
  OR2_X1 ref_1_maj_72_U15 ( .A1(ref_1_maj_72_n23), .A2(ref_1_maj_72_n22), .ZN(
        ref_1_maj_72_n32) );
  NAND2_X1 ref_1_maj_72_U14 ( .A1(ref_1_maj_72_n22), .A2(ref_1_maj_72_n23), 
        .ZN(ref_1_maj_72_n34) );
  NAND2_X1 ref_1_maj_72_U13 ( .A1(ref_1_maj_72_n32), .A2(ref_1_maj_72_n31), 
        .ZN(ref_1_maj_72_n33) );
  NAND2_X1 ref_1_maj_72_U12 ( .A1(ref_1_maj_72_n34), .A2(ref_1_maj_72_n33), 
        .ZN(ref_1_maj_72_port_o) );
  NAND2_X1 ref_1_maj_72_U11 ( .A1(ref_1_n35), .A2(ref_1_maj_72_n25), .ZN(
        ref_1_maj_72_n18) );
  NAND2_X1 ref_1_maj_72_U10 ( .A1(ref_1_n31), .A2(ref_1_n33), .ZN(
        ref_1_maj_72_n19) );
  NAND2_X1 ref_1_maj_72_U9 ( .A1(ref_1_maj_72_n19), .A2(ref_1_maj_72_n18), 
        .ZN(ref_1_maj_72_n22) );
  NAND2_X1 ref_1_maj_72_U8 ( .A1(ref_1_n30), .A2(ref_1_maj_72_n24), .ZN(
        ref_1_maj_72_n20) );
  NAND2_X1 ref_1_maj_72_U7 ( .A1(ref_1_n26), .A2(ref_1_n27), .ZN(
        ref_1_maj_72_n21) );
  NAND2_X1 ref_1_maj_72_U6 ( .A1(ref_1_maj_72_n21), .A2(ref_1_maj_72_n20), 
        .ZN(ref_1_maj_72_n23) );
  XOR2_X1 ref_1_maj_72_U5 ( .A(ref_1_n30), .B(ref_1_maj_72_n24), .Z(
        ref_1_maj_72_n26) );
  XOR2_X1 ref_1_maj_72_U4 ( .A(ref_1_n35), .B(ref_1_maj_72_n25), .Z(
        ref_1_maj_72_n27) );
  XOR2_X1 ref_1_maj_72_U3 ( .A(ref_1_n26), .B(ref_1_n27), .Z(ref_1_maj_72_n24)
         );
  XOR2_X1 ref_1_maj_72_U2 ( .A(ref_1_n31), .B(ref_1_n33), .Z(ref_1_maj_72_n25)
         );
  OR2_X1 ref_1_maj_73_U19 ( .A1(ref_1_maj_73_n27), .A2(ref_1_maj_73_n26), .ZN(
        ref_1_maj_73_n28) );
  NAND2_X1 ref_1_maj_73_U18 ( .A1(ref_1_refreshed_0_6_), .A2(ref_1_maj_73_n28), 
        .ZN(ref_1_maj_73_n29) );
  NAND2_X1 ref_1_maj_73_U17 ( .A1(ref_1_maj_73_n26), .A2(ref_1_maj_73_n27), 
        .ZN(ref_1_maj_73_n30) );
  NAND2_X1 ref_1_maj_73_U16 ( .A1(ref_1_maj_73_n30), .A2(ref_1_maj_73_n29), 
        .ZN(ref_1_maj_73_n31) );
  OR2_X1 ref_1_maj_73_U15 ( .A1(ref_1_maj_73_n23), .A2(ref_1_maj_73_n22), .ZN(
        ref_1_maj_73_n32) );
  NAND2_X1 ref_1_maj_73_U14 ( .A1(ref_1_maj_73_n22), .A2(ref_1_maj_73_n23), 
        .ZN(ref_1_maj_73_n34) );
  NAND2_X1 ref_1_maj_73_U13 ( .A1(ref_1_maj_73_n32), .A2(ref_1_maj_73_n31), 
        .ZN(ref_1_maj_73_n33) );
  NAND2_X1 ref_1_maj_73_U12 ( .A1(ref_1_maj_73_n34), .A2(ref_1_maj_73_n33), 
        .ZN(ref_1_maj_73_port_o) );
  NAND2_X1 ref_1_maj_73_U11 ( .A1(ref_1_n35), .A2(ref_1_maj_73_n25), .ZN(
        ref_1_maj_73_n18) );
  NAND2_X1 ref_1_maj_73_U10 ( .A1(ref_1_n31), .A2(ref_1_n33), .ZN(
        ref_1_maj_73_n19) );
  NAND2_X1 ref_1_maj_73_U9 ( .A1(ref_1_maj_73_n19), .A2(ref_1_maj_73_n18), 
        .ZN(ref_1_maj_73_n22) );
  NAND2_X1 ref_1_maj_73_U8 ( .A1(ref_1_n29), .A2(ref_1_maj_73_n24), .ZN(
        ref_1_maj_73_n20) );
  NAND2_X1 ref_1_maj_73_U7 ( .A1(ref_1_n25), .A2(ref_1_n27), .ZN(
        ref_1_maj_73_n21) );
  NAND2_X1 ref_1_maj_73_U6 ( .A1(ref_1_maj_73_n21), .A2(ref_1_maj_73_n20), 
        .ZN(ref_1_maj_73_n23) );
  XOR2_X1 ref_1_maj_73_U5 ( .A(ref_1_n29), .B(ref_1_maj_73_n24), .Z(
        ref_1_maj_73_n26) );
  XOR2_X1 ref_1_maj_73_U4 ( .A(ref_1_n35), .B(ref_1_maj_73_n25), .Z(
        ref_1_maj_73_n27) );
  XOR2_X1 ref_1_maj_73_U3 ( .A(ref_1_n25), .B(ref_1_n27), .Z(ref_1_maj_73_n24)
         );
  XOR2_X1 ref_1_maj_73_U2 ( .A(ref_1_n31), .B(ref_1_n33), .Z(ref_1_maj_73_n25)
         );
  OR2_X1 ref_1_maj_74_U19 ( .A1(ref_1_maj_74_n27), .A2(ref_1_maj_74_n26), .ZN(
        ref_1_maj_74_n28) );
  NAND2_X1 ref_1_maj_74_U18 ( .A1(ref_1_refreshed_0_6_), .A2(ref_1_maj_74_n28), 
        .ZN(ref_1_maj_74_n29) );
  NAND2_X1 ref_1_maj_74_U17 ( .A1(ref_1_maj_74_n26), .A2(ref_1_maj_74_n27), 
        .ZN(ref_1_maj_74_n30) );
  NAND2_X1 ref_1_maj_74_U16 ( .A1(ref_1_maj_74_n30), .A2(ref_1_maj_74_n29), 
        .ZN(ref_1_maj_74_n31) );
  OR2_X1 ref_1_maj_74_U15 ( .A1(ref_1_maj_74_n23), .A2(ref_1_maj_74_n22), .ZN(
        ref_1_maj_74_n32) );
  NAND2_X1 ref_1_maj_74_U14 ( .A1(ref_1_maj_74_n22), .A2(ref_1_maj_74_n23), 
        .ZN(ref_1_maj_74_n34) );
  NAND2_X1 ref_1_maj_74_U13 ( .A1(ref_1_maj_74_n32), .A2(ref_1_maj_74_n31), 
        .ZN(ref_1_maj_74_n33) );
  NAND2_X1 ref_1_maj_74_U12 ( .A1(ref_1_maj_74_n34), .A2(ref_1_maj_74_n33), 
        .ZN(ref_1_maj_74_port_o) );
  NAND2_X1 ref_1_maj_74_U11 ( .A1(ref_1_n35), .A2(ref_1_maj_74_n25), .ZN(
        ref_1_maj_74_n18) );
  NAND2_X1 ref_1_maj_74_U10 ( .A1(ref_1_n31), .A2(ref_1_n33), .ZN(
        ref_1_maj_74_n19) );
  NAND2_X1 ref_1_maj_74_U9 ( .A1(ref_1_maj_74_n19), .A2(ref_1_maj_74_n18), 
        .ZN(ref_1_maj_74_n22) );
  NAND2_X1 ref_1_maj_74_U8 ( .A1(ref_1_refreshed_0_2_), .A2(ref_1_maj_74_n24), 
        .ZN(ref_1_maj_74_n20) );
  NAND2_X1 ref_1_maj_74_U7 ( .A1(ref_1_refreshed_0_0_), .A2(ref_1_n27), .ZN(
        ref_1_maj_74_n21) );
  NAND2_X1 ref_1_maj_74_U6 ( .A1(ref_1_maj_74_n21), .A2(ref_1_maj_74_n20), 
        .ZN(ref_1_maj_74_n23) );
  XOR2_X1 ref_1_maj_74_U5 ( .A(ref_1_refreshed_0_2_), .B(ref_1_maj_74_n24), 
        .Z(ref_1_maj_74_n26) );
  XOR2_X1 ref_1_maj_74_U4 ( .A(ref_1_n35), .B(ref_1_maj_74_n25), .Z(
        ref_1_maj_74_n27) );
  XOR2_X1 ref_1_maj_74_U3 ( .A(ref_1_refreshed_0_0_), .B(ref_1_n27), .Z(
        ref_1_maj_74_n24) );
  XOR2_X1 ref_1_maj_74_U2 ( .A(ref_1_n31), .B(ref_1_n33), .Z(ref_1_maj_74_n25)
         );
  OR2_X1 ref_1_maj_75_U19 ( .A1(ref_1_maj_75_n27), .A2(ref_1_maj_75_n26), .ZN(
        ref_1_maj_75_n28) );
  NAND2_X1 ref_1_maj_75_U18 ( .A1(ref_1_refreshed_1_6_), .A2(ref_1_maj_75_n28), 
        .ZN(ref_1_maj_75_n29) );
  NAND2_X1 ref_1_maj_75_U17 ( .A1(ref_1_maj_75_n26), .A2(ref_1_maj_75_n27), 
        .ZN(ref_1_maj_75_n30) );
  NAND2_X1 ref_1_maj_75_U16 ( .A1(ref_1_maj_75_n30), .A2(ref_1_maj_75_n29), 
        .ZN(ref_1_maj_75_n31) );
  OR2_X1 ref_1_maj_75_U15 ( .A1(ref_1_maj_75_n23), .A2(ref_1_maj_75_n22), .ZN(
        ref_1_maj_75_n32) );
  NAND2_X1 ref_1_maj_75_U14 ( .A1(ref_1_maj_75_n22), .A2(ref_1_maj_75_n23), 
        .ZN(ref_1_maj_75_n34) );
  NAND2_X1 ref_1_maj_75_U13 ( .A1(ref_1_maj_75_n32), .A2(ref_1_maj_75_n31), 
        .ZN(ref_1_maj_75_n33) );
  NAND2_X1 ref_1_maj_75_U12 ( .A1(ref_1_maj_75_n34), .A2(ref_1_maj_75_n33), 
        .ZN(ref_1_maj_75_port_o) );
  NAND2_X1 ref_1_maj_75_U11 ( .A1(ref_1_n23), .A2(ref_1_maj_75_n25), .ZN(
        ref_1_maj_75_n18) );
  NAND2_X1 ref_1_maj_75_U10 ( .A1(ref_1_n19), .A2(ref_1_n21), .ZN(
        ref_1_maj_75_n19) );
  NAND2_X1 ref_1_maj_75_U9 ( .A1(ref_1_maj_75_n19), .A2(ref_1_maj_75_n18), 
        .ZN(ref_1_maj_75_n22) );
  NAND2_X1 ref_1_maj_75_U8 ( .A1(ref_1_n17), .A2(ref_1_maj_75_n24), .ZN(
        ref_1_maj_75_n20) );
  NAND2_X1 ref_1_maj_75_U7 ( .A1(ref_1_n13), .A2(ref_1_n15), .ZN(
        ref_1_maj_75_n21) );
  NAND2_X1 ref_1_maj_75_U6 ( .A1(ref_1_maj_75_n21), .A2(ref_1_maj_75_n20), 
        .ZN(ref_1_maj_75_n23) );
  XOR2_X1 ref_1_maj_75_U5 ( .A(ref_1_n17), .B(ref_1_maj_75_n24), .Z(
        ref_1_maj_75_n26) );
  XOR2_X1 ref_1_maj_75_U4 ( .A(ref_1_n23), .B(ref_1_maj_75_n25), .Z(
        ref_1_maj_75_n27) );
  XOR2_X1 ref_1_maj_75_U3 ( .A(ref_1_n13), .B(ref_1_n15), .Z(ref_1_maj_75_n24)
         );
  XOR2_X1 ref_1_maj_75_U2 ( .A(ref_1_n19), .B(ref_1_n21), .Z(ref_1_maj_75_n25)
         );
  OR2_X1 ref_1_maj_76_U19 ( .A1(ref_1_maj_76_n27), .A2(ref_1_maj_76_n26), .ZN(
        ref_1_maj_76_n28) );
  NAND2_X1 ref_1_maj_76_U18 ( .A1(ref_1_refreshed_1_6_), .A2(ref_1_maj_76_n28), 
        .ZN(ref_1_maj_76_n29) );
  NAND2_X1 ref_1_maj_76_U17 ( .A1(ref_1_maj_76_n26), .A2(ref_1_maj_76_n27), 
        .ZN(ref_1_maj_76_n30) );
  NAND2_X1 ref_1_maj_76_U16 ( .A1(ref_1_maj_76_n30), .A2(ref_1_maj_76_n29), 
        .ZN(ref_1_maj_76_n31) );
  OR2_X1 ref_1_maj_76_U15 ( .A1(ref_1_maj_76_n23), .A2(ref_1_maj_76_n22), .ZN(
        ref_1_maj_76_n32) );
  NAND2_X1 ref_1_maj_76_U14 ( .A1(ref_1_maj_76_n22), .A2(ref_1_maj_76_n23), 
        .ZN(ref_1_maj_76_n34) );
  NAND2_X1 ref_1_maj_76_U13 ( .A1(ref_1_maj_76_n32), .A2(ref_1_maj_76_n31), 
        .ZN(ref_1_maj_76_n33) );
  NAND2_X1 ref_1_maj_76_U12 ( .A1(ref_1_maj_76_n34), .A2(ref_1_maj_76_n33), 
        .ZN(ref_1_maj_76_port_o) );
  NAND2_X1 ref_1_maj_76_U11 ( .A1(ref_1_n23), .A2(ref_1_maj_76_n25), .ZN(
        ref_1_maj_76_n18) );
  NAND2_X1 ref_1_maj_76_U10 ( .A1(ref_1_n19), .A2(ref_1_n21), .ZN(
        ref_1_maj_76_n19) );
  NAND2_X1 ref_1_maj_76_U9 ( .A1(ref_1_maj_76_n19), .A2(ref_1_maj_76_n18), 
        .ZN(ref_1_maj_76_n22) );
  NAND2_X1 ref_1_maj_76_U8 ( .A1(ref_1_n17), .A2(ref_1_maj_76_n24), .ZN(
        ref_1_maj_76_n20) );
  NAND2_X1 ref_1_maj_76_U7 ( .A1(ref_1_n13), .A2(ref_1_n15), .ZN(
        ref_1_maj_76_n21) );
  NAND2_X1 ref_1_maj_76_U6 ( .A1(ref_1_maj_76_n21), .A2(ref_1_maj_76_n20), 
        .ZN(ref_1_maj_76_n23) );
  XOR2_X1 ref_1_maj_76_U5 ( .A(ref_1_n17), .B(ref_1_maj_76_n24), .Z(
        ref_1_maj_76_n26) );
  XOR2_X1 ref_1_maj_76_U4 ( .A(ref_1_n23), .B(ref_1_maj_76_n25), .Z(
        ref_1_maj_76_n27) );
  XOR2_X1 ref_1_maj_76_U3 ( .A(ref_1_n13), .B(ref_1_n15), .Z(ref_1_maj_76_n24)
         );
  XOR2_X1 ref_1_maj_76_U2 ( .A(ref_1_n19), .B(ref_1_n21), .Z(ref_1_maj_76_n25)
         );
  OR2_X1 ref_1_maj_77_U19 ( .A1(ref_1_maj_77_n27), .A2(ref_1_maj_77_n26), .ZN(
        ref_1_maj_77_n28) );
  NAND2_X1 ref_1_maj_77_U18 ( .A1(ref_1_refreshed_1_6_), .A2(ref_1_maj_77_n28), 
        .ZN(ref_1_maj_77_n29) );
  NAND2_X1 ref_1_maj_77_U17 ( .A1(ref_1_maj_77_n26), .A2(ref_1_maj_77_n27), 
        .ZN(ref_1_maj_77_n30) );
  NAND2_X1 ref_1_maj_77_U16 ( .A1(ref_1_maj_77_n30), .A2(ref_1_maj_77_n29), 
        .ZN(ref_1_maj_77_n31) );
  OR2_X1 ref_1_maj_77_U15 ( .A1(ref_1_maj_77_n23), .A2(ref_1_maj_77_n22), .ZN(
        ref_1_maj_77_n32) );
  NAND2_X1 ref_1_maj_77_U14 ( .A1(ref_1_maj_77_n22), .A2(ref_1_maj_77_n23), 
        .ZN(ref_1_maj_77_n34) );
  NAND2_X1 ref_1_maj_77_U13 ( .A1(ref_1_maj_77_n32), .A2(ref_1_maj_77_n31), 
        .ZN(ref_1_maj_77_n33) );
  NAND2_X1 ref_1_maj_77_U12 ( .A1(ref_1_maj_77_n34), .A2(ref_1_maj_77_n33), 
        .ZN(ref_1_maj_77_port_o) );
  NAND2_X1 ref_1_maj_77_U11 ( .A1(ref_1_n23), .A2(ref_1_maj_77_n25), .ZN(
        ref_1_maj_77_n18) );
  NAND2_X1 ref_1_maj_77_U10 ( .A1(ref_1_n19), .A2(ref_1_n21), .ZN(
        ref_1_maj_77_n19) );
  NAND2_X1 ref_1_maj_77_U9 ( .A1(ref_1_maj_77_n19), .A2(ref_1_maj_77_n18), 
        .ZN(ref_1_maj_77_n22) );
  NAND2_X1 ref_1_maj_77_U8 ( .A1(ref_1_n17), .A2(ref_1_maj_77_n24), .ZN(
        ref_1_maj_77_n20) );
  NAND2_X1 ref_1_maj_77_U7 ( .A1(ref_1_n13), .A2(ref_1_n15), .ZN(
        ref_1_maj_77_n21) );
  NAND2_X1 ref_1_maj_77_U6 ( .A1(ref_1_maj_77_n21), .A2(ref_1_maj_77_n20), 
        .ZN(ref_1_maj_77_n23) );
  XOR2_X1 ref_1_maj_77_U5 ( .A(ref_1_n17), .B(ref_1_maj_77_n24), .Z(
        ref_1_maj_77_n26) );
  XOR2_X1 ref_1_maj_77_U4 ( .A(ref_1_n23), .B(ref_1_maj_77_n25), .Z(
        ref_1_maj_77_n27) );
  XOR2_X1 ref_1_maj_77_U3 ( .A(ref_1_n13), .B(ref_1_n15), .Z(ref_1_maj_77_n24)
         );
  XOR2_X1 ref_1_maj_77_U2 ( .A(ref_1_n19), .B(ref_1_n21), .Z(ref_1_maj_77_n25)
         );
  OR2_X1 ref_1_maj_78_U19 ( .A1(ref_1_maj_78_n27), .A2(ref_1_maj_78_n26), .ZN(
        ref_1_maj_78_n28) );
  NAND2_X1 ref_1_maj_78_U18 ( .A1(ref_1_refreshed_2_6_), .A2(ref_1_maj_78_n28), 
        .ZN(ref_1_maj_78_n29) );
  NAND2_X1 ref_1_maj_78_U17 ( .A1(ref_1_maj_78_n26), .A2(ref_1_maj_78_n27), 
        .ZN(ref_1_maj_78_n30) );
  NAND2_X1 ref_1_maj_78_U16 ( .A1(ref_1_maj_78_n30), .A2(ref_1_maj_78_n29), 
        .ZN(ref_1_maj_78_n31) );
  OR2_X1 ref_1_maj_78_U15 ( .A1(ref_1_maj_78_n23), .A2(ref_1_maj_78_n22), .ZN(
        ref_1_maj_78_n32) );
  NAND2_X1 ref_1_maj_78_U14 ( .A1(ref_1_maj_78_n22), .A2(ref_1_maj_78_n23), 
        .ZN(ref_1_maj_78_n34) );
  NAND2_X1 ref_1_maj_78_U13 ( .A1(ref_1_maj_78_n32), .A2(ref_1_maj_78_n31), 
        .ZN(ref_1_maj_78_n33) );
  NAND2_X1 ref_1_maj_78_U12 ( .A1(ref_1_maj_78_n34), .A2(ref_1_maj_78_n33), 
        .ZN(ref_1_maj_78_port_o) );
  NAND2_X1 ref_1_maj_78_U11 ( .A1(ref_1_n11), .A2(ref_1_maj_78_n25), .ZN(
        ref_1_maj_78_n18) );
  NAND2_X1 ref_1_maj_78_U10 ( .A1(ref_1_n7), .A2(ref_1_n9), .ZN(
        ref_1_maj_78_n19) );
  NAND2_X1 ref_1_maj_78_U9 ( .A1(ref_1_maj_78_n19), .A2(ref_1_maj_78_n18), 
        .ZN(ref_1_maj_78_n22) );
  NAND2_X1 ref_1_maj_78_U8 ( .A1(ref_1_n5), .A2(ref_1_maj_78_n24), .ZN(
        ref_1_maj_78_n20) );
  NAND2_X1 ref_1_maj_78_U7 ( .A1(ref_1_n1), .A2(ref_1_n3), .ZN(
        ref_1_maj_78_n21) );
  NAND2_X1 ref_1_maj_78_U6 ( .A1(ref_1_maj_78_n21), .A2(ref_1_maj_78_n20), 
        .ZN(ref_1_maj_78_n23) );
  XOR2_X1 ref_1_maj_78_U5 ( .A(ref_1_n5), .B(ref_1_maj_78_n24), .Z(
        ref_1_maj_78_n26) );
  XOR2_X1 ref_1_maj_78_U4 ( .A(ref_1_n11), .B(ref_1_maj_78_n25), .Z(
        ref_1_maj_78_n27) );
  XOR2_X1 ref_1_maj_78_U3 ( .A(ref_1_n1), .B(ref_1_n3), .Z(ref_1_maj_78_n24)
         );
  XOR2_X1 ref_1_maj_78_U2 ( .A(ref_1_n7), .B(ref_1_n9), .Z(ref_1_maj_78_n25)
         );
  OR2_X1 ref_1_maj_79_U19 ( .A1(ref_1_maj_79_n27), .A2(ref_1_maj_79_n26), .ZN(
        ref_1_maj_79_n28) );
  NAND2_X1 ref_1_maj_79_U18 ( .A1(ref_1_refreshed_2_6_), .A2(ref_1_maj_79_n28), 
        .ZN(ref_1_maj_79_n29) );
  NAND2_X1 ref_1_maj_79_U17 ( .A1(ref_1_maj_79_n26), .A2(ref_1_maj_79_n27), 
        .ZN(ref_1_maj_79_n30) );
  NAND2_X1 ref_1_maj_79_U16 ( .A1(ref_1_maj_79_n30), .A2(ref_1_maj_79_n29), 
        .ZN(ref_1_maj_79_n31) );
  OR2_X1 ref_1_maj_79_U15 ( .A1(ref_1_maj_79_n23), .A2(ref_1_maj_79_n22), .ZN(
        ref_1_maj_79_n32) );
  NAND2_X1 ref_1_maj_79_U14 ( .A1(ref_1_maj_79_n22), .A2(ref_1_maj_79_n23), 
        .ZN(ref_1_maj_79_n34) );
  NAND2_X1 ref_1_maj_79_U13 ( .A1(ref_1_maj_79_n32), .A2(ref_1_maj_79_n31), 
        .ZN(ref_1_maj_79_n33) );
  NAND2_X1 ref_1_maj_79_U12 ( .A1(ref_1_maj_79_n34), .A2(ref_1_maj_79_n33), 
        .ZN(ref_1_maj_79_port_o) );
  NAND2_X1 ref_1_maj_79_U11 ( .A1(ref_1_n11), .A2(ref_1_maj_79_n25), .ZN(
        ref_1_maj_79_n18) );
  NAND2_X1 ref_1_maj_79_U10 ( .A1(ref_1_n7), .A2(ref_1_n9), .ZN(
        ref_1_maj_79_n19) );
  NAND2_X1 ref_1_maj_79_U9 ( .A1(ref_1_maj_79_n19), .A2(ref_1_maj_79_n18), 
        .ZN(ref_1_maj_79_n22) );
  NAND2_X1 ref_1_maj_79_U8 ( .A1(ref_1_n5), .A2(ref_1_maj_79_n24), .ZN(
        ref_1_maj_79_n20) );
  NAND2_X1 ref_1_maj_79_U7 ( .A1(ref_1_n1), .A2(ref_1_n3), .ZN(
        ref_1_maj_79_n21) );
  NAND2_X1 ref_1_maj_79_U6 ( .A1(ref_1_maj_79_n21), .A2(ref_1_maj_79_n20), 
        .ZN(ref_1_maj_79_n23) );
  XOR2_X1 ref_1_maj_79_U5 ( .A(ref_1_n5), .B(ref_1_maj_79_n24), .Z(
        ref_1_maj_79_n26) );
  XOR2_X1 ref_1_maj_79_U4 ( .A(ref_1_n11), .B(ref_1_maj_79_n25), .Z(
        ref_1_maj_79_n27) );
  XOR2_X1 ref_1_maj_79_U3 ( .A(ref_1_n1), .B(ref_1_n3), .Z(ref_1_maj_79_n24)
         );
  XOR2_X1 ref_1_maj_79_U2 ( .A(ref_1_n7), .B(ref_1_n9), .Z(ref_1_maj_79_n25)
         );
  OR2_X1 ref_1_maj_80_U19 ( .A1(ref_1_maj_80_n27), .A2(ref_1_maj_80_n26), .ZN(
        ref_1_maj_80_n28) );
  NAND2_X1 ref_1_maj_80_U18 ( .A1(ref_1_refreshed_2_6_), .A2(ref_1_maj_80_n28), 
        .ZN(ref_1_maj_80_n29) );
  NAND2_X1 ref_1_maj_80_U17 ( .A1(ref_1_maj_80_n26), .A2(ref_1_maj_80_n27), 
        .ZN(ref_1_maj_80_n30) );
  NAND2_X1 ref_1_maj_80_U16 ( .A1(ref_1_maj_80_n30), .A2(ref_1_maj_80_n29), 
        .ZN(ref_1_maj_80_n31) );
  OR2_X1 ref_1_maj_80_U15 ( .A1(ref_1_maj_80_n23), .A2(ref_1_maj_80_n22), .ZN(
        ref_1_maj_80_n32) );
  NAND2_X1 ref_1_maj_80_U14 ( .A1(ref_1_maj_80_n22), .A2(ref_1_maj_80_n23), 
        .ZN(ref_1_maj_80_n34) );
  NAND2_X1 ref_1_maj_80_U13 ( .A1(ref_1_maj_80_n32), .A2(ref_1_maj_80_n31), 
        .ZN(ref_1_maj_80_n33) );
  NAND2_X1 ref_1_maj_80_U12 ( .A1(ref_1_maj_80_n34), .A2(ref_1_maj_80_n33), 
        .ZN(ref_1_maj_80_port_o) );
  NAND2_X1 ref_1_maj_80_U11 ( .A1(ref_1_n11), .A2(ref_1_maj_80_n25), .ZN(
        ref_1_maj_80_n18) );
  NAND2_X1 ref_1_maj_80_U10 ( .A1(ref_1_n7), .A2(ref_1_n9), .ZN(
        ref_1_maj_80_n19) );
  NAND2_X1 ref_1_maj_80_U9 ( .A1(ref_1_maj_80_n19), .A2(ref_1_maj_80_n18), 
        .ZN(ref_1_maj_80_n22) );
  NAND2_X1 ref_1_maj_80_U8 ( .A1(ref_1_n5), .A2(ref_1_maj_80_n24), .ZN(
        ref_1_maj_80_n20) );
  NAND2_X1 ref_1_maj_80_U7 ( .A1(ref_1_n1), .A2(ref_1_n3), .ZN(
        ref_1_maj_80_n21) );
  NAND2_X1 ref_1_maj_80_U6 ( .A1(ref_1_maj_80_n21), .A2(ref_1_maj_80_n20), 
        .ZN(ref_1_maj_80_n23) );
  XOR2_X1 ref_1_maj_80_U5 ( .A(ref_1_n5), .B(ref_1_maj_80_n24), .Z(
        ref_1_maj_80_n26) );
  XOR2_X1 ref_1_maj_80_U4 ( .A(ref_1_n11), .B(ref_1_maj_80_n25), .Z(
        ref_1_maj_80_n27) );
  XOR2_X1 ref_1_maj_80_U3 ( .A(ref_1_n1), .B(ref_1_n3), .Z(ref_1_maj_80_n24)
         );
  XOR2_X1 ref_1_maj_80_U2 ( .A(ref_1_n7), .B(ref_1_n9), .Z(ref_1_maj_80_n25)
         );
  OR2_X1 ref_1_maj_81_U19 ( .A1(ref_1_maj_81_n27), .A2(ref_1_maj_81_n26), .ZN(
        ref_1_maj_81_n28) );
  NAND2_X1 ref_1_maj_81_U18 ( .A1(ref_1_refreshed_0_6_), .A2(ref_1_maj_81_n28), 
        .ZN(ref_1_maj_81_n29) );
  NAND2_X1 ref_1_maj_81_U17 ( .A1(ref_1_maj_81_n26), .A2(ref_1_maj_81_n27), 
        .ZN(ref_1_maj_81_n30) );
  NAND2_X1 ref_1_maj_81_U16 ( .A1(ref_1_maj_81_n30), .A2(ref_1_maj_81_n29), 
        .ZN(ref_1_maj_81_n31) );
  OR2_X1 ref_1_maj_81_U15 ( .A1(ref_1_maj_81_n23), .A2(ref_1_maj_81_n22), .ZN(
        ref_1_maj_81_n32) );
  NAND2_X1 ref_1_maj_81_U14 ( .A1(ref_1_maj_81_n22), .A2(ref_1_maj_81_n23), 
        .ZN(ref_1_maj_81_n34) );
  NAND2_X1 ref_1_maj_81_U13 ( .A1(ref_1_maj_81_n32), .A2(ref_1_maj_81_n31), 
        .ZN(ref_1_maj_81_n33) );
  NAND2_X1 ref_1_maj_81_U12 ( .A1(ref_1_maj_81_n34), .A2(ref_1_maj_81_n33), 
        .ZN(ref_1_maj_81_port_o) );
  NAND2_X1 ref_1_maj_81_U11 ( .A1(ref_1_n35), .A2(ref_1_maj_81_n25), .ZN(
        ref_1_maj_81_n18) );
  NAND2_X1 ref_1_maj_81_U10 ( .A1(ref_1_n31), .A2(ref_1_n33), .ZN(
        ref_1_maj_81_n19) );
  NAND2_X1 ref_1_maj_81_U9 ( .A1(ref_1_maj_81_n19), .A2(ref_1_maj_81_n18), 
        .ZN(ref_1_maj_81_n22) );
  NAND2_X1 ref_1_maj_81_U8 ( .A1(ref_1_refreshed_0_2_), .A2(ref_1_maj_81_n24), 
        .ZN(ref_1_maj_81_n20) );
  NAND2_X1 ref_1_maj_81_U7 ( .A1(ref_1_refreshed_0_0_), .A2(ref_1_n27), .ZN(
        ref_1_maj_81_n21) );
  NAND2_X1 ref_1_maj_81_U6 ( .A1(ref_1_maj_81_n21), .A2(ref_1_maj_81_n20), 
        .ZN(ref_1_maj_81_n23) );
  XOR2_X1 ref_1_maj_81_U5 ( .A(ref_1_refreshed_0_2_), .B(ref_1_maj_81_n24), 
        .Z(ref_1_maj_81_n26) );
  XOR2_X1 ref_1_maj_81_U4 ( .A(ref_1_n35), .B(ref_1_maj_81_n25), .Z(
        ref_1_maj_81_n27) );
  XOR2_X1 ref_1_maj_81_U3 ( .A(ref_1_refreshed_0_0_), .B(ref_1_n27), .Z(
        ref_1_maj_81_n24) );
  XOR2_X1 ref_1_maj_81_U2 ( .A(ref_1_n31), .B(ref_1_n33), .Z(ref_1_maj_81_n25)
         );
  OR2_X1 ref_1_maj_82_U19 ( .A1(ref_1_maj_82_n27), .A2(ref_1_maj_82_n26), .ZN(
        ref_1_maj_82_n28) );
  NAND2_X1 ref_1_maj_82_U18 ( .A1(ref_1_refreshed_0_6_), .A2(ref_1_maj_82_n28), 
        .ZN(ref_1_maj_82_n29) );
  NAND2_X1 ref_1_maj_82_U17 ( .A1(ref_1_maj_82_n26), .A2(ref_1_maj_82_n27), 
        .ZN(ref_1_maj_82_n30) );
  NAND2_X1 ref_1_maj_82_U16 ( .A1(ref_1_maj_82_n30), .A2(ref_1_maj_82_n29), 
        .ZN(ref_1_maj_82_n31) );
  OR2_X1 ref_1_maj_82_U15 ( .A1(ref_1_maj_82_n23), .A2(ref_1_maj_82_n22), .ZN(
        ref_1_maj_82_n32) );
  NAND2_X1 ref_1_maj_82_U14 ( .A1(ref_1_maj_82_n22), .A2(ref_1_maj_82_n23), 
        .ZN(ref_1_maj_82_n34) );
  NAND2_X1 ref_1_maj_82_U13 ( .A1(ref_1_maj_82_n32), .A2(ref_1_maj_82_n31), 
        .ZN(ref_1_maj_82_n33) );
  NAND2_X1 ref_1_maj_82_U12 ( .A1(ref_1_maj_82_n34), .A2(ref_1_maj_82_n33), 
        .ZN(ref_1_maj_82_port_o) );
  NAND2_X1 ref_1_maj_82_U11 ( .A1(ref_1_n35), .A2(ref_1_maj_82_n25), .ZN(
        ref_1_maj_82_n18) );
  NAND2_X1 ref_1_maj_82_U10 ( .A1(ref_1_n31), .A2(ref_1_n33), .ZN(
        ref_1_maj_82_n19) );
  NAND2_X1 ref_1_maj_82_U9 ( .A1(ref_1_maj_82_n19), .A2(ref_1_maj_82_n18), 
        .ZN(ref_1_maj_82_n22) );
  NAND2_X1 ref_1_maj_82_U8 ( .A1(ref_1_refreshed_0_2_), .A2(ref_1_maj_82_n24), 
        .ZN(ref_1_maj_82_n20) );
  NAND2_X1 ref_1_maj_82_U7 ( .A1(ref_1_refreshed_0_0_), .A2(ref_1_n27), .ZN(
        ref_1_maj_82_n21) );
  NAND2_X1 ref_1_maj_82_U6 ( .A1(ref_1_maj_82_n21), .A2(ref_1_maj_82_n20), 
        .ZN(ref_1_maj_82_n23) );
  XOR2_X1 ref_1_maj_82_U5 ( .A(ref_1_refreshed_0_2_), .B(ref_1_maj_82_n24), 
        .Z(ref_1_maj_82_n26) );
  XOR2_X1 ref_1_maj_82_U4 ( .A(ref_1_n35), .B(ref_1_maj_82_n25), .Z(
        ref_1_maj_82_n27) );
  XOR2_X1 ref_1_maj_82_U3 ( .A(ref_1_refreshed_0_0_), .B(ref_1_n27), .Z(
        ref_1_maj_82_n24) );
  XOR2_X1 ref_1_maj_82_U2 ( .A(ref_1_n31), .B(ref_1_n33), .Z(ref_1_maj_82_n25)
         );
  OR2_X1 ref_1_maj_83_U19 ( .A1(ref_1_maj_83_n27), .A2(ref_1_maj_83_n26), .ZN(
        ref_1_maj_83_n28) );
  NAND2_X1 ref_1_maj_83_U18 ( .A1(ref_1_refreshed_0_6_), .A2(ref_1_maj_83_n28), 
        .ZN(ref_1_maj_83_n29) );
  NAND2_X1 ref_1_maj_83_U17 ( .A1(ref_1_maj_83_n26), .A2(ref_1_maj_83_n27), 
        .ZN(ref_1_maj_83_n30) );
  NAND2_X1 ref_1_maj_83_U16 ( .A1(ref_1_maj_83_n30), .A2(ref_1_maj_83_n29), 
        .ZN(ref_1_maj_83_n31) );
  OR2_X1 ref_1_maj_83_U15 ( .A1(ref_1_maj_83_n23), .A2(ref_1_maj_83_n22), .ZN(
        ref_1_maj_83_n32) );
  NAND2_X1 ref_1_maj_83_U14 ( .A1(ref_1_maj_83_n22), .A2(ref_1_maj_83_n23), 
        .ZN(ref_1_maj_83_n34) );
  NAND2_X1 ref_1_maj_83_U13 ( .A1(ref_1_maj_83_n32), .A2(ref_1_maj_83_n31), 
        .ZN(ref_1_maj_83_n33) );
  NAND2_X1 ref_1_maj_83_U12 ( .A1(ref_1_maj_83_n34), .A2(ref_1_maj_83_n33), 
        .ZN(ref_1_maj_83_port_o) );
  NAND2_X1 ref_1_maj_83_U11 ( .A1(ref_1_n36), .A2(ref_1_maj_83_n25), .ZN(
        ref_1_maj_83_n18) );
  NAND2_X1 ref_1_maj_83_U10 ( .A1(ref_1_n32), .A2(ref_1_n34), .ZN(
        ref_1_maj_83_n19) );
  NAND2_X1 ref_1_maj_83_U9 ( .A1(ref_1_maj_83_n19), .A2(ref_1_maj_83_n18), 
        .ZN(ref_1_maj_83_n22) );
  NAND2_X1 ref_1_maj_83_U8 ( .A1(ref_1_n29), .A2(ref_1_maj_83_n24), .ZN(
        ref_1_maj_83_n20) );
  NAND2_X1 ref_1_maj_83_U7 ( .A1(ref_1_n25), .A2(ref_1_n28), .ZN(
        ref_1_maj_83_n21) );
  NAND2_X1 ref_1_maj_83_U6 ( .A1(ref_1_maj_83_n21), .A2(ref_1_maj_83_n20), 
        .ZN(ref_1_maj_83_n23) );
  XOR2_X1 ref_1_maj_83_U5 ( .A(ref_1_n29), .B(ref_1_maj_83_n24), .Z(
        ref_1_maj_83_n26) );
  XOR2_X1 ref_1_maj_83_U4 ( .A(ref_1_n36), .B(ref_1_maj_83_n25), .Z(
        ref_1_maj_83_n27) );
  XOR2_X1 ref_1_maj_83_U3 ( .A(ref_1_n25), .B(ref_1_n28), .Z(ref_1_maj_83_n24)
         );
  XOR2_X1 ref_1_maj_83_U2 ( .A(ref_1_n32), .B(ref_1_n34), .Z(ref_1_maj_83_n25)
         );
  OR2_X1 ref_1_maj_84_U19 ( .A1(ref_1_maj_84_n27), .A2(ref_1_maj_84_n26), .ZN(
        ref_1_maj_84_n28) );
  NAND2_X1 ref_1_maj_84_U18 ( .A1(ref_1_refreshed_1_6_), .A2(ref_1_maj_84_n28), 
        .ZN(ref_1_maj_84_n29) );
  NAND2_X1 ref_1_maj_84_U17 ( .A1(ref_1_maj_84_n26), .A2(ref_1_maj_84_n27), 
        .ZN(ref_1_maj_84_n30) );
  NAND2_X1 ref_1_maj_84_U16 ( .A1(ref_1_maj_84_n30), .A2(ref_1_maj_84_n29), 
        .ZN(ref_1_maj_84_n31) );
  OR2_X1 ref_1_maj_84_U15 ( .A1(ref_1_maj_84_n23), .A2(ref_1_maj_84_n22), .ZN(
        ref_1_maj_84_n32) );
  NAND2_X1 ref_1_maj_84_U14 ( .A1(ref_1_maj_84_n22), .A2(ref_1_maj_84_n23), 
        .ZN(ref_1_maj_84_n34) );
  NAND2_X1 ref_1_maj_84_U13 ( .A1(ref_1_maj_84_n32), .A2(ref_1_maj_84_n31), 
        .ZN(ref_1_maj_84_n33) );
  NAND2_X1 ref_1_maj_84_U12 ( .A1(ref_1_maj_84_n34), .A2(ref_1_maj_84_n33), 
        .ZN(ref_1_maj_84_port_o) );
  NAND2_X1 ref_1_maj_84_U11 ( .A1(ref_1_n23), .A2(ref_1_maj_84_n25), .ZN(
        ref_1_maj_84_n18) );
  NAND2_X1 ref_1_maj_84_U10 ( .A1(ref_1_n19), .A2(ref_1_n21), .ZN(
        ref_1_maj_84_n19) );
  NAND2_X1 ref_1_maj_84_U9 ( .A1(ref_1_maj_84_n19), .A2(ref_1_maj_84_n18), 
        .ZN(ref_1_maj_84_n22) );
  NAND2_X1 ref_1_maj_84_U8 ( .A1(ref_1_n17), .A2(ref_1_maj_84_n24), .ZN(
        ref_1_maj_84_n20) );
  NAND2_X1 ref_1_maj_84_U7 ( .A1(ref_1_n13), .A2(ref_1_n15), .ZN(
        ref_1_maj_84_n21) );
  NAND2_X1 ref_1_maj_84_U6 ( .A1(ref_1_maj_84_n21), .A2(ref_1_maj_84_n20), 
        .ZN(ref_1_maj_84_n23) );
  XOR2_X1 ref_1_maj_84_U5 ( .A(ref_1_n17), .B(ref_1_maj_84_n24), .Z(
        ref_1_maj_84_n26) );
  XOR2_X1 ref_1_maj_84_U4 ( .A(ref_1_n23), .B(ref_1_maj_84_n25), .Z(
        ref_1_maj_84_n27) );
  XOR2_X1 ref_1_maj_84_U3 ( .A(ref_1_n13), .B(ref_1_n15), .Z(ref_1_maj_84_n24)
         );
  XOR2_X1 ref_1_maj_84_U2 ( .A(ref_1_n19), .B(ref_1_n21), .Z(ref_1_maj_84_n25)
         );
  OR2_X1 ref_1_maj_85_U19 ( .A1(ref_1_maj_85_n27), .A2(ref_1_maj_85_n26), .ZN(
        ref_1_maj_85_n28) );
  NAND2_X1 ref_1_maj_85_U18 ( .A1(ref_1_refreshed_1_6_), .A2(ref_1_maj_85_n28), 
        .ZN(ref_1_maj_85_n29) );
  NAND2_X1 ref_1_maj_85_U17 ( .A1(ref_1_maj_85_n26), .A2(ref_1_maj_85_n27), 
        .ZN(ref_1_maj_85_n30) );
  NAND2_X1 ref_1_maj_85_U16 ( .A1(ref_1_maj_85_n30), .A2(ref_1_maj_85_n29), 
        .ZN(ref_1_maj_85_n31) );
  OR2_X1 ref_1_maj_85_U15 ( .A1(ref_1_maj_85_n23), .A2(ref_1_maj_85_n22), .ZN(
        ref_1_maj_85_n32) );
  NAND2_X1 ref_1_maj_85_U14 ( .A1(ref_1_maj_85_n22), .A2(ref_1_maj_85_n23), 
        .ZN(ref_1_maj_85_n34) );
  NAND2_X1 ref_1_maj_85_U13 ( .A1(ref_1_maj_85_n32), .A2(ref_1_maj_85_n31), 
        .ZN(ref_1_maj_85_n33) );
  NAND2_X1 ref_1_maj_85_U12 ( .A1(ref_1_maj_85_n34), .A2(ref_1_maj_85_n33), 
        .ZN(ref_1_maj_85_port_o) );
  NAND2_X1 ref_1_maj_85_U11 ( .A1(ref_1_n24), .A2(ref_1_maj_85_n25), .ZN(
        ref_1_maj_85_n18) );
  NAND2_X1 ref_1_maj_85_U10 ( .A1(ref_1_n20), .A2(ref_1_n22), .ZN(
        ref_1_maj_85_n19) );
  NAND2_X1 ref_1_maj_85_U9 ( .A1(ref_1_maj_85_n19), .A2(ref_1_maj_85_n18), 
        .ZN(ref_1_maj_85_n22) );
  NAND2_X1 ref_1_maj_85_U8 ( .A1(ref_1_n18), .A2(ref_1_maj_85_n24), .ZN(
        ref_1_maj_85_n20) );
  NAND2_X1 ref_1_maj_85_U7 ( .A1(ref_1_n14), .A2(ref_1_n16), .ZN(
        ref_1_maj_85_n21) );
  NAND2_X1 ref_1_maj_85_U6 ( .A1(ref_1_maj_85_n21), .A2(ref_1_maj_85_n20), 
        .ZN(ref_1_maj_85_n23) );
  XOR2_X1 ref_1_maj_85_U5 ( .A(ref_1_n18), .B(ref_1_maj_85_n24), .Z(
        ref_1_maj_85_n26) );
  XOR2_X1 ref_1_maj_85_U4 ( .A(ref_1_n24), .B(ref_1_maj_85_n25), .Z(
        ref_1_maj_85_n27) );
  XOR2_X1 ref_1_maj_85_U3 ( .A(ref_1_n14), .B(ref_1_n16), .Z(ref_1_maj_85_n24)
         );
  XOR2_X1 ref_1_maj_85_U2 ( .A(ref_1_n20), .B(ref_1_n22), .Z(ref_1_maj_85_n25)
         );
  OR2_X1 ref_1_maj_86_U19 ( .A1(ref_1_maj_86_n27), .A2(ref_1_maj_86_n26), .ZN(
        ref_1_maj_86_n28) );
  NAND2_X1 ref_1_maj_86_U18 ( .A1(ref_1_refreshed_1_6_), .A2(ref_1_maj_86_n28), 
        .ZN(ref_1_maj_86_n29) );
  NAND2_X1 ref_1_maj_86_U17 ( .A1(ref_1_maj_86_n26), .A2(ref_1_maj_86_n27), 
        .ZN(ref_1_maj_86_n30) );
  NAND2_X1 ref_1_maj_86_U16 ( .A1(ref_1_maj_86_n30), .A2(ref_1_maj_86_n29), 
        .ZN(ref_1_maj_86_n31) );
  OR2_X1 ref_1_maj_86_U15 ( .A1(ref_1_maj_86_n23), .A2(ref_1_maj_86_n22), .ZN(
        ref_1_maj_86_n32) );
  NAND2_X1 ref_1_maj_86_U14 ( .A1(ref_1_maj_86_n22), .A2(ref_1_maj_86_n23), 
        .ZN(ref_1_maj_86_n34) );
  NAND2_X1 ref_1_maj_86_U13 ( .A1(ref_1_maj_86_n32), .A2(ref_1_maj_86_n31), 
        .ZN(ref_1_maj_86_n33) );
  NAND2_X1 ref_1_maj_86_U12 ( .A1(ref_1_maj_86_n34), .A2(ref_1_maj_86_n33), 
        .ZN(ref_1_maj_86_port_o) );
  NAND2_X1 ref_1_maj_86_U11 ( .A1(ref_1_n24), .A2(ref_1_maj_86_n25), .ZN(
        ref_1_maj_86_n18) );
  NAND2_X1 ref_1_maj_86_U10 ( .A1(ref_1_n20), .A2(ref_1_n22), .ZN(
        ref_1_maj_86_n19) );
  NAND2_X1 ref_1_maj_86_U9 ( .A1(ref_1_maj_86_n19), .A2(ref_1_maj_86_n18), 
        .ZN(ref_1_maj_86_n22) );
  NAND2_X1 ref_1_maj_86_U8 ( .A1(ref_1_n18), .A2(ref_1_maj_86_n24), .ZN(
        ref_1_maj_86_n20) );
  NAND2_X1 ref_1_maj_86_U7 ( .A1(ref_1_n14), .A2(ref_1_n16), .ZN(
        ref_1_maj_86_n21) );
  NAND2_X1 ref_1_maj_86_U6 ( .A1(ref_1_maj_86_n21), .A2(ref_1_maj_86_n20), 
        .ZN(ref_1_maj_86_n23) );
  XOR2_X1 ref_1_maj_86_U5 ( .A(ref_1_n18), .B(ref_1_maj_86_n24), .Z(
        ref_1_maj_86_n26) );
  XOR2_X1 ref_1_maj_86_U4 ( .A(ref_1_n24), .B(ref_1_maj_86_n25), .Z(
        ref_1_maj_86_n27) );
  XOR2_X1 ref_1_maj_86_U3 ( .A(ref_1_n14), .B(ref_1_n16), .Z(ref_1_maj_86_n24)
         );
  XOR2_X1 ref_1_maj_86_U2 ( .A(ref_1_n20), .B(ref_1_n22), .Z(ref_1_maj_86_n25)
         );
  OR2_X1 ref_1_maj_87_U19 ( .A1(ref_1_maj_87_n27), .A2(ref_1_maj_87_n26), .ZN(
        ref_1_maj_87_n28) );
  NAND2_X1 ref_1_maj_87_U18 ( .A1(ref_1_refreshed_2_6_), .A2(ref_1_maj_87_n28), 
        .ZN(ref_1_maj_87_n29) );
  NAND2_X1 ref_1_maj_87_U17 ( .A1(ref_1_maj_87_n26), .A2(ref_1_maj_87_n27), 
        .ZN(ref_1_maj_87_n30) );
  NAND2_X1 ref_1_maj_87_U16 ( .A1(ref_1_maj_87_n30), .A2(ref_1_maj_87_n29), 
        .ZN(ref_1_maj_87_n31) );
  OR2_X1 ref_1_maj_87_U15 ( .A1(ref_1_maj_87_n23), .A2(ref_1_maj_87_n22), .ZN(
        ref_1_maj_87_n32) );
  NAND2_X1 ref_1_maj_87_U14 ( .A1(ref_1_maj_87_n22), .A2(ref_1_maj_87_n23), 
        .ZN(ref_1_maj_87_n34) );
  NAND2_X1 ref_1_maj_87_U13 ( .A1(ref_1_maj_87_n32), .A2(ref_1_maj_87_n31), 
        .ZN(ref_1_maj_87_n33) );
  NAND2_X1 ref_1_maj_87_U12 ( .A1(ref_1_maj_87_n34), .A2(ref_1_maj_87_n33), 
        .ZN(ref_1_maj_87_port_o) );
  NAND2_X1 ref_1_maj_87_U11 ( .A1(ref_1_n11), .A2(ref_1_maj_87_n25), .ZN(
        ref_1_maj_87_n18) );
  NAND2_X1 ref_1_maj_87_U10 ( .A1(ref_1_n7), .A2(ref_1_n9), .ZN(
        ref_1_maj_87_n19) );
  NAND2_X1 ref_1_maj_87_U9 ( .A1(ref_1_maj_87_n19), .A2(ref_1_maj_87_n18), 
        .ZN(ref_1_maj_87_n22) );
  NAND2_X1 ref_1_maj_87_U8 ( .A1(ref_1_n5), .A2(ref_1_maj_87_n24), .ZN(
        ref_1_maj_87_n20) );
  NAND2_X1 ref_1_maj_87_U7 ( .A1(ref_1_n1), .A2(ref_1_n3), .ZN(
        ref_1_maj_87_n21) );
  NAND2_X1 ref_1_maj_87_U6 ( .A1(ref_1_maj_87_n21), .A2(ref_1_maj_87_n20), 
        .ZN(ref_1_maj_87_n23) );
  XOR2_X1 ref_1_maj_87_U5 ( .A(ref_1_n5), .B(ref_1_maj_87_n24), .Z(
        ref_1_maj_87_n26) );
  XOR2_X1 ref_1_maj_87_U4 ( .A(ref_1_n11), .B(ref_1_maj_87_n25), .Z(
        ref_1_maj_87_n27) );
  XOR2_X1 ref_1_maj_87_U3 ( .A(ref_1_n1), .B(ref_1_n3), .Z(ref_1_maj_87_n24)
         );
  XOR2_X1 ref_1_maj_87_U2 ( .A(ref_1_n7), .B(ref_1_n9), .Z(ref_1_maj_87_n25)
         );
  OR2_X1 ref_1_maj_88_U19 ( .A1(ref_1_maj_88_n27), .A2(ref_1_maj_88_n26), .ZN(
        ref_1_maj_88_n28) );
  NAND2_X1 ref_1_maj_88_U18 ( .A1(ref_1_refreshed_2_6_), .A2(ref_1_maj_88_n28), 
        .ZN(ref_1_maj_88_n29) );
  NAND2_X1 ref_1_maj_88_U17 ( .A1(ref_1_maj_88_n26), .A2(ref_1_maj_88_n27), 
        .ZN(ref_1_maj_88_n30) );
  NAND2_X1 ref_1_maj_88_U16 ( .A1(ref_1_maj_88_n30), .A2(ref_1_maj_88_n29), 
        .ZN(ref_1_maj_88_n31) );
  OR2_X1 ref_1_maj_88_U15 ( .A1(ref_1_maj_88_n23), .A2(ref_1_maj_88_n22), .ZN(
        ref_1_maj_88_n32) );
  NAND2_X1 ref_1_maj_88_U14 ( .A1(ref_1_maj_88_n22), .A2(ref_1_maj_88_n23), 
        .ZN(ref_1_maj_88_n34) );
  NAND2_X1 ref_1_maj_88_U13 ( .A1(ref_1_maj_88_n32), .A2(ref_1_maj_88_n31), 
        .ZN(ref_1_maj_88_n33) );
  NAND2_X1 ref_1_maj_88_U12 ( .A1(ref_1_maj_88_n34), .A2(ref_1_maj_88_n33), 
        .ZN(ref_1_maj_88_port_o) );
  NAND2_X1 ref_1_maj_88_U11 ( .A1(ref_1_n12), .A2(ref_1_maj_88_n25), .ZN(
        ref_1_maj_88_n18) );
  NAND2_X1 ref_1_maj_88_U10 ( .A1(ref_1_n8), .A2(ref_1_n10), .ZN(
        ref_1_maj_88_n19) );
  NAND2_X1 ref_1_maj_88_U9 ( .A1(ref_1_maj_88_n19), .A2(ref_1_maj_88_n18), 
        .ZN(ref_1_maj_88_n22) );
  NAND2_X1 ref_1_maj_88_U8 ( .A1(ref_1_n6), .A2(ref_1_maj_88_n24), .ZN(
        ref_1_maj_88_n20) );
  NAND2_X1 ref_1_maj_88_U7 ( .A1(ref_1_n2), .A2(ref_1_n4), .ZN(
        ref_1_maj_88_n21) );
  NAND2_X1 ref_1_maj_88_U6 ( .A1(ref_1_maj_88_n21), .A2(ref_1_maj_88_n20), 
        .ZN(ref_1_maj_88_n23) );
  XOR2_X1 ref_1_maj_88_U5 ( .A(ref_1_n6), .B(ref_1_maj_88_n24), .Z(
        ref_1_maj_88_n26) );
  XOR2_X1 ref_1_maj_88_U4 ( .A(ref_1_n12), .B(ref_1_maj_88_n25), .Z(
        ref_1_maj_88_n27) );
  XOR2_X1 ref_1_maj_88_U3 ( .A(ref_1_n2), .B(ref_1_n4), .Z(ref_1_maj_88_n24)
         );
  XOR2_X1 ref_1_maj_88_U2 ( .A(ref_1_n8), .B(ref_1_n10), .Z(ref_1_maj_88_n25)
         );
  OR2_X1 ref_1_maj_89_U19 ( .A1(ref_1_maj_89_n27), .A2(ref_1_maj_89_n26), .ZN(
        ref_1_maj_89_n28) );
  NAND2_X1 ref_1_maj_89_U18 ( .A1(ref_1_refreshed_2_6_), .A2(ref_1_maj_89_n28), 
        .ZN(ref_1_maj_89_n29) );
  NAND2_X1 ref_1_maj_89_U17 ( .A1(ref_1_maj_89_n26), .A2(ref_1_maj_89_n27), 
        .ZN(ref_1_maj_89_n30) );
  NAND2_X1 ref_1_maj_89_U16 ( .A1(ref_1_maj_89_n30), .A2(ref_1_maj_89_n29), 
        .ZN(ref_1_maj_89_n31) );
  OR2_X1 ref_1_maj_89_U15 ( .A1(ref_1_maj_89_n23), .A2(ref_1_maj_89_n22), .ZN(
        ref_1_maj_89_n32) );
  NAND2_X1 ref_1_maj_89_U14 ( .A1(ref_1_maj_89_n22), .A2(ref_1_maj_89_n23), 
        .ZN(ref_1_maj_89_n34) );
  NAND2_X1 ref_1_maj_89_U13 ( .A1(ref_1_maj_89_n32), .A2(ref_1_maj_89_n31), 
        .ZN(ref_1_maj_89_n33) );
  NAND2_X1 ref_1_maj_89_U12 ( .A1(ref_1_maj_89_n34), .A2(ref_1_maj_89_n33), 
        .ZN(ref_1_maj_89_port_o) );
  NAND2_X1 ref_1_maj_89_U11 ( .A1(ref_1_n12), .A2(ref_1_maj_89_n25), .ZN(
        ref_1_maj_89_n18) );
  NAND2_X1 ref_1_maj_89_U10 ( .A1(ref_1_n7), .A2(ref_1_n10), .ZN(
        ref_1_maj_89_n19) );
  NAND2_X1 ref_1_maj_89_U9 ( .A1(ref_1_maj_89_n19), .A2(ref_1_maj_89_n18), 
        .ZN(ref_1_maj_89_n22) );
  NAND2_X1 ref_1_maj_89_U8 ( .A1(ref_1_n6), .A2(ref_1_maj_89_n24), .ZN(
        ref_1_maj_89_n20) );
  NAND2_X1 ref_1_maj_89_U7 ( .A1(ref_1_n2), .A2(ref_1_n4), .ZN(
        ref_1_maj_89_n21) );
  NAND2_X1 ref_1_maj_89_U6 ( .A1(ref_1_maj_89_n21), .A2(ref_1_maj_89_n20), 
        .ZN(ref_1_maj_89_n23) );
  XOR2_X1 ref_1_maj_89_U5 ( .A(ref_1_n6), .B(ref_1_maj_89_n24), .Z(
        ref_1_maj_89_n26) );
  XOR2_X1 ref_1_maj_89_U4 ( .A(ref_1_n12), .B(ref_1_maj_89_n25), .Z(
        ref_1_maj_89_n27) );
  XOR2_X1 ref_1_maj_89_U3 ( .A(ref_1_n2), .B(ref_1_n4), .Z(ref_1_maj_89_n24)
         );
  XOR2_X1 ref_1_maj_89_U2 ( .A(ref_1_n7), .B(ref_1_n10), .Z(ref_1_maj_89_n25)
         );
  OR2_X1 ref_1_maj_90_U19 ( .A1(ref_1_maj_90_n27), .A2(ref_1_maj_90_n26), .ZN(
        ref_1_maj_90_n28) );
  NAND2_X1 ref_1_maj_90_U18 ( .A1(ref_1_refreshed_0_6_), .A2(ref_1_maj_90_n28), 
        .ZN(ref_1_maj_90_n29) );
  NAND2_X1 ref_1_maj_90_U17 ( .A1(ref_1_maj_90_n26), .A2(ref_1_maj_90_n27), 
        .ZN(ref_1_maj_90_n30) );
  NAND2_X1 ref_1_maj_90_U16 ( .A1(ref_1_maj_90_n30), .A2(ref_1_maj_90_n29), 
        .ZN(ref_1_maj_90_n31) );
  OR2_X1 ref_1_maj_90_U15 ( .A1(ref_1_maj_90_n23), .A2(ref_1_maj_90_n22), .ZN(
        ref_1_maj_90_n32) );
  NAND2_X1 ref_1_maj_90_U14 ( .A1(ref_1_maj_90_n22), .A2(ref_1_maj_90_n23), 
        .ZN(ref_1_maj_90_n34) );
  NAND2_X1 ref_1_maj_90_U13 ( .A1(ref_1_maj_90_n32), .A2(ref_1_maj_90_n31), 
        .ZN(ref_1_maj_90_n33) );
  NAND2_X1 ref_1_maj_90_U12 ( .A1(ref_1_maj_90_n34), .A2(ref_1_maj_90_n33), 
        .ZN(ref_1_maj_90_port_o) );
  NAND2_X1 ref_1_maj_90_U11 ( .A1(ref_1_n36), .A2(ref_1_maj_90_n25), .ZN(
        ref_1_maj_90_n18) );
  NAND2_X1 ref_1_maj_90_U10 ( .A1(ref_1_n31), .A2(ref_1_n34), .ZN(
        ref_1_maj_90_n19) );
  NAND2_X1 ref_1_maj_90_U9 ( .A1(ref_1_maj_90_n19), .A2(ref_1_maj_90_n18), 
        .ZN(ref_1_maj_90_n22) );
  NAND2_X1 ref_1_maj_90_U8 ( .A1(ref_1_n29), .A2(ref_1_maj_90_n24), .ZN(
        ref_1_maj_90_n20) );
  NAND2_X1 ref_1_maj_90_U7 ( .A1(ref_1_n25), .A2(ref_1_n28), .ZN(
        ref_1_maj_90_n21) );
  NAND2_X1 ref_1_maj_90_U6 ( .A1(ref_1_maj_90_n21), .A2(ref_1_maj_90_n20), 
        .ZN(ref_1_maj_90_n23) );
  XOR2_X1 ref_1_maj_90_U5 ( .A(ref_1_n29), .B(ref_1_maj_90_n24), .Z(
        ref_1_maj_90_n26) );
  XOR2_X1 ref_1_maj_90_U4 ( .A(ref_1_n36), .B(ref_1_maj_90_n25), .Z(
        ref_1_maj_90_n27) );
  XOR2_X1 ref_1_maj_90_U3 ( .A(ref_1_n25), .B(ref_1_n28), .Z(ref_1_maj_90_n24)
         );
  XOR2_X1 ref_1_maj_90_U2 ( .A(ref_1_n31), .B(ref_1_n34), .Z(ref_1_maj_90_n25)
         );
  OR2_X1 ref_1_maj_91_U19 ( .A1(ref_1_maj_91_n27), .A2(ref_1_maj_91_n26), .ZN(
        ref_1_maj_91_n28) );
  NAND2_X1 ref_1_maj_91_U18 ( .A1(ref_1_refreshed_0_6_), .A2(ref_1_maj_91_n28), 
        .ZN(ref_1_maj_91_n29) );
  NAND2_X1 ref_1_maj_91_U17 ( .A1(ref_1_maj_91_n26), .A2(ref_1_maj_91_n27), 
        .ZN(ref_1_maj_91_n30) );
  NAND2_X1 ref_1_maj_91_U16 ( .A1(ref_1_maj_91_n30), .A2(ref_1_maj_91_n29), 
        .ZN(ref_1_maj_91_n31) );
  OR2_X1 ref_1_maj_91_U15 ( .A1(ref_1_maj_91_n23), .A2(ref_1_maj_91_n22), .ZN(
        ref_1_maj_91_n32) );
  NAND2_X1 ref_1_maj_91_U14 ( .A1(ref_1_maj_91_n22), .A2(ref_1_maj_91_n23), 
        .ZN(ref_1_maj_91_n34) );
  NAND2_X1 ref_1_maj_91_U13 ( .A1(ref_1_maj_91_n32), .A2(ref_1_maj_91_n31), 
        .ZN(ref_1_maj_91_n33) );
  NAND2_X1 ref_1_maj_91_U12 ( .A1(ref_1_maj_91_n34), .A2(ref_1_maj_91_n33), 
        .ZN(ref_1_maj_91_port_o) );
  NAND2_X1 ref_1_maj_91_U11 ( .A1(ref_1_n36), .A2(ref_1_maj_91_n25), .ZN(
        ref_1_maj_91_n18) );
  NAND2_X1 ref_1_maj_91_U10 ( .A1(ref_1_n32), .A2(ref_1_n34), .ZN(
        ref_1_maj_91_n19) );
  NAND2_X1 ref_1_maj_91_U9 ( .A1(ref_1_maj_91_n19), .A2(ref_1_maj_91_n18), 
        .ZN(ref_1_maj_91_n22) );
  NAND2_X1 ref_1_maj_91_U8 ( .A1(ref_1_n29), .A2(ref_1_maj_91_n24), .ZN(
        ref_1_maj_91_n20) );
  NAND2_X1 ref_1_maj_91_U7 ( .A1(ref_1_n25), .A2(ref_1_n28), .ZN(
        ref_1_maj_91_n21) );
  NAND2_X1 ref_1_maj_91_U6 ( .A1(ref_1_maj_91_n21), .A2(ref_1_maj_91_n20), 
        .ZN(ref_1_maj_91_n23) );
  XOR2_X1 ref_1_maj_91_U5 ( .A(ref_1_n29), .B(ref_1_maj_91_n24), .Z(
        ref_1_maj_91_n26) );
  XOR2_X1 ref_1_maj_91_U4 ( .A(ref_1_n36), .B(ref_1_maj_91_n25), .Z(
        ref_1_maj_91_n27) );
  XOR2_X1 ref_1_maj_91_U3 ( .A(ref_1_n25), .B(ref_1_n28), .Z(ref_1_maj_91_n24)
         );
  XOR2_X1 ref_1_maj_91_U2 ( .A(ref_1_n32), .B(ref_1_n34), .Z(ref_1_maj_91_n25)
         );
  OR2_X1 ref_1_maj_92_U19 ( .A1(ref_1_maj_92_n27), .A2(ref_1_maj_92_n26), .ZN(
        ref_1_maj_92_n28) );
  NAND2_X1 ref_1_maj_92_U18 ( .A1(ref_1_refreshed_0_6_), .A2(ref_1_maj_92_n28), 
        .ZN(ref_1_maj_92_n29) );
  NAND2_X1 ref_1_maj_92_U17 ( .A1(ref_1_maj_92_n26), .A2(ref_1_maj_92_n27), 
        .ZN(ref_1_maj_92_n30) );
  NAND2_X1 ref_1_maj_92_U16 ( .A1(ref_1_maj_92_n30), .A2(ref_1_maj_92_n29), 
        .ZN(ref_1_maj_92_n31) );
  OR2_X1 ref_1_maj_92_U15 ( .A1(ref_1_maj_92_n23), .A2(ref_1_maj_92_n22), .ZN(
        ref_1_maj_92_n32) );
  NAND2_X1 ref_1_maj_92_U14 ( .A1(ref_1_maj_92_n22), .A2(ref_1_maj_92_n23), 
        .ZN(ref_1_maj_92_n34) );
  NAND2_X1 ref_1_maj_92_U13 ( .A1(ref_1_maj_92_n32), .A2(ref_1_maj_92_n31), 
        .ZN(ref_1_maj_92_n33) );
  NAND2_X1 ref_1_maj_92_U12 ( .A1(ref_1_maj_92_n34), .A2(ref_1_maj_92_n33), 
        .ZN(ref_1_maj_92_port_o) );
  NAND2_X1 ref_1_maj_92_U11 ( .A1(ref_1_n36), .A2(ref_1_maj_92_n25), .ZN(
        ref_1_maj_92_n18) );
  NAND2_X1 ref_1_maj_92_U10 ( .A1(ref_1_n31), .A2(ref_1_n34), .ZN(
        ref_1_maj_92_n19) );
  NAND2_X1 ref_1_maj_92_U9 ( .A1(ref_1_maj_92_n19), .A2(ref_1_maj_92_n18), 
        .ZN(ref_1_maj_92_n22) );
  NAND2_X1 ref_1_maj_92_U8 ( .A1(ref_1_n29), .A2(ref_1_maj_92_n24), .ZN(
        ref_1_maj_92_n20) );
  NAND2_X1 ref_1_maj_92_U7 ( .A1(ref_1_n25), .A2(ref_1_n28), .ZN(
        ref_1_maj_92_n21) );
  NAND2_X1 ref_1_maj_92_U6 ( .A1(ref_1_maj_92_n21), .A2(ref_1_maj_92_n20), 
        .ZN(ref_1_maj_92_n23) );
  XOR2_X1 ref_1_maj_92_U5 ( .A(ref_1_n29), .B(ref_1_maj_92_n24), .Z(
        ref_1_maj_92_n26) );
  XOR2_X1 ref_1_maj_92_U4 ( .A(ref_1_n36), .B(ref_1_maj_92_n25), .Z(
        ref_1_maj_92_n27) );
  XOR2_X1 ref_1_maj_92_U3 ( .A(ref_1_n25), .B(ref_1_n28), .Z(ref_1_maj_92_n24)
         );
  XOR2_X1 ref_1_maj_92_U2 ( .A(ref_1_n31), .B(ref_1_n34), .Z(ref_1_maj_92_n25)
         );
  OR2_X1 ref_1_maj_93_U19 ( .A1(ref_1_maj_93_n27), .A2(ref_1_maj_93_n26), .ZN(
        ref_1_maj_93_n28) );
  NAND2_X1 ref_1_maj_93_U18 ( .A1(ref_1_refreshed_1_6_), .A2(ref_1_maj_93_n28), 
        .ZN(ref_1_maj_93_n29) );
  NAND2_X1 ref_1_maj_93_U17 ( .A1(ref_1_maj_93_n26), .A2(ref_1_maj_93_n27), 
        .ZN(ref_1_maj_93_n30) );
  NAND2_X1 ref_1_maj_93_U16 ( .A1(ref_1_maj_93_n30), .A2(ref_1_maj_93_n29), 
        .ZN(ref_1_maj_93_n31) );
  OR2_X1 ref_1_maj_93_U15 ( .A1(ref_1_maj_93_n23), .A2(ref_1_maj_93_n22), .ZN(
        ref_1_maj_93_n32) );
  NAND2_X1 ref_1_maj_93_U14 ( .A1(ref_1_maj_93_n22), .A2(ref_1_maj_93_n23), 
        .ZN(ref_1_maj_93_n34) );
  NAND2_X1 ref_1_maj_93_U13 ( .A1(ref_1_maj_93_n32), .A2(ref_1_maj_93_n31), 
        .ZN(ref_1_maj_93_n33) );
  NAND2_X1 ref_1_maj_93_U12 ( .A1(ref_1_maj_93_n34), .A2(ref_1_maj_93_n33), 
        .ZN(ref_1_maj_93_port_o) );
  NAND2_X1 ref_1_maj_93_U11 ( .A1(ref_1_n24), .A2(ref_1_maj_93_n25), .ZN(
        ref_1_maj_93_n18) );
  NAND2_X1 ref_1_maj_93_U10 ( .A1(ref_1_n20), .A2(ref_1_n22), .ZN(
        ref_1_maj_93_n19) );
  NAND2_X1 ref_1_maj_93_U9 ( .A1(ref_1_maj_93_n19), .A2(ref_1_maj_93_n18), 
        .ZN(ref_1_maj_93_n22) );
  NAND2_X1 ref_1_maj_93_U8 ( .A1(ref_1_n18), .A2(ref_1_maj_93_n24), .ZN(
        ref_1_maj_93_n20) );
  NAND2_X1 ref_1_maj_93_U7 ( .A1(ref_1_n14), .A2(ref_1_n16), .ZN(
        ref_1_maj_93_n21) );
  NAND2_X1 ref_1_maj_93_U6 ( .A1(ref_1_maj_93_n21), .A2(ref_1_maj_93_n20), 
        .ZN(ref_1_maj_93_n23) );
  XOR2_X1 ref_1_maj_93_U5 ( .A(ref_1_n18), .B(ref_1_maj_93_n24), .Z(
        ref_1_maj_93_n26) );
  XOR2_X1 ref_1_maj_93_U4 ( .A(ref_1_n24), .B(ref_1_maj_93_n25), .Z(
        ref_1_maj_93_n27) );
  XOR2_X1 ref_1_maj_93_U3 ( .A(ref_1_n14), .B(ref_1_n16), .Z(ref_1_maj_93_n24)
         );
  XOR2_X1 ref_1_maj_93_U2 ( .A(ref_1_n20), .B(ref_1_n22), .Z(ref_1_maj_93_n25)
         );
  OR2_X1 ref_1_maj_94_U19 ( .A1(ref_1_maj_94_n27), .A2(ref_1_maj_94_n26), .ZN(
        ref_1_maj_94_n28) );
  NAND2_X1 ref_1_maj_94_U18 ( .A1(ref_1_refreshed_1_6_), .A2(ref_1_maj_94_n28), 
        .ZN(ref_1_maj_94_n29) );
  NAND2_X1 ref_1_maj_94_U17 ( .A1(ref_1_maj_94_n26), .A2(ref_1_maj_94_n27), 
        .ZN(ref_1_maj_94_n30) );
  NAND2_X1 ref_1_maj_94_U16 ( .A1(ref_1_maj_94_n30), .A2(ref_1_maj_94_n29), 
        .ZN(ref_1_maj_94_n31) );
  OR2_X1 ref_1_maj_94_U15 ( .A1(ref_1_maj_94_n23), .A2(ref_1_maj_94_n22), .ZN(
        ref_1_maj_94_n32) );
  NAND2_X1 ref_1_maj_94_U14 ( .A1(ref_1_maj_94_n22), .A2(ref_1_maj_94_n23), 
        .ZN(ref_1_maj_94_n34) );
  NAND2_X1 ref_1_maj_94_U13 ( .A1(ref_1_maj_94_n32), .A2(ref_1_maj_94_n31), 
        .ZN(ref_1_maj_94_n33) );
  NAND2_X1 ref_1_maj_94_U12 ( .A1(ref_1_maj_94_n34), .A2(ref_1_maj_94_n33), 
        .ZN(ref_1_maj_94_port_o) );
  NAND2_X1 ref_1_maj_94_U11 ( .A1(ref_1_n24), .A2(ref_1_maj_94_n25), .ZN(
        ref_1_maj_94_n18) );
  NAND2_X1 ref_1_maj_94_U10 ( .A1(ref_1_n20), .A2(ref_1_n22), .ZN(
        ref_1_maj_94_n19) );
  NAND2_X1 ref_1_maj_94_U9 ( .A1(ref_1_maj_94_n19), .A2(ref_1_maj_94_n18), 
        .ZN(ref_1_maj_94_n22) );
  NAND2_X1 ref_1_maj_94_U8 ( .A1(ref_1_n18), .A2(ref_1_maj_94_n24), .ZN(
        ref_1_maj_94_n20) );
  NAND2_X1 ref_1_maj_94_U7 ( .A1(ref_1_n14), .A2(ref_1_n16), .ZN(
        ref_1_maj_94_n21) );
  NAND2_X1 ref_1_maj_94_U6 ( .A1(ref_1_maj_94_n21), .A2(ref_1_maj_94_n20), 
        .ZN(ref_1_maj_94_n23) );
  XOR2_X1 ref_1_maj_94_U5 ( .A(ref_1_n18), .B(ref_1_maj_94_n24), .Z(
        ref_1_maj_94_n26) );
  XOR2_X1 ref_1_maj_94_U4 ( .A(ref_1_n24), .B(ref_1_maj_94_n25), .Z(
        ref_1_maj_94_n27) );
  XOR2_X1 ref_1_maj_94_U3 ( .A(ref_1_n14), .B(ref_1_n16), .Z(ref_1_maj_94_n24)
         );
  XOR2_X1 ref_1_maj_94_U2 ( .A(ref_1_n20), .B(ref_1_n22), .Z(ref_1_maj_94_n25)
         );
  OR2_X1 ref_1_maj_95_U19 ( .A1(ref_1_maj_95_n27), .A2(ref_1_maj_95_n26), .ZN(
        ref_1_maj_95_n28) );
  NAND2_X1 ref_1_maj_95_U18 ( .A1(ref_1_refreshed_1_6_), .A2(ref_1_maj_95_n28), 
        .ZN(ref_1_maj_95_n29) );
  NAND2_X1 ref_1_maj_95_U17 ( .A1(ref_1_maj_95_n26), .A2(ref_1_maj_95_n27), 
        .ZN(ref_1_maj_95_n30) );
  NAND2_X1 ref_1_maj_95_U16 ( .A1(ref_1_maj_95_n30), .A2(ref_1_maj_95_n29), 
        .ZN(ref_1_maj_95_n31) );
  OR2_X1 ref_1_maj_95_U15 ( .A1(ref_1_maj_95_n23), .A2(ref_1_maj_95_n22), .ZN(
        ref_1_maj_95_n32) );
  NAND2_X1 ref_1_maj_95_U14 ( .A1(ref_1_maj_95_n22), .A2(ref_1_maj_95_n23), 
        .ZN(ref_1_maj_95_n34) );
  NAND2_X1 ref_1_maj_95_U13 ( .A1(ref_1_maj_95_n32), .A2(ref_1_maj_95_n31), 
        .ZN(ref_1_maj_95_n33) );
  NAND2_X1 ref_1_maj_95_U12 ( .A1(ref_1_maj_95_n34), .A2(ref_1_maj_95_n33), 
        .ZN(ref_1_maj_95_port_o) );
  NAND2_X1 ref_1_maj_95_U11 ( .A1(ref_1_n24), .A2(ref_1_maj_95_n25), .ZN(
        ref_1_maj_95_n18) );
  NAND2_X1 ref_1_maj_95_U10 ( .A1(ref_1_n20), .A2(ref_1_n22), .ZN(
        ref_1_maj_95_n19) );
  NAND2_X1 ref_1_maj_95_U9 ( .A1(ref_1_maj_95_n19), .A2(ref_1_maj_95_n18), 
        .ZN(ref_1_maj_95_n22) );
  NAND2_X1 ref_1_maj_95_U8 ( .A1(ref_1_n18), .A2(ref_1_maj_95_n24), .ZN(
        ref_1_maj_95_n20) );
  NAND2_X1 ref_1_maj_95_U7 ( .A1(ref_1_n14), .A2(ref_1_n16), .ZN(
        ref_1_maj_95_n21) );
  NAND2_X1 ref_1_maj_95_U6 ( .A1(ref_1_maj_95_n21), .A2(ref_1_maj_95_n20), 
        .ZN(ref_1_maj_95_n23) );
  XOR2_X1 ref_1_maj_95_U5 ( .A(ref_1_n18), .B(ref_1_maj_95_n24), .Z(
        ref_1_maj_95_n26) );
  XOR2_X1 ref_1_maj_95_U4 ( .A(ref_1_n24), .B(ref_1_maj_95_n25), .Z(
        ref_1_maj_95_n27) );
  XOR2_X1 ref_1_maj_95_U3 ( .A(ref_1_n14), .B(ref_1_n16), .Z(ref_1_maj_95_n24)
         );
  XOR2_X1 ref_1_maj_95_U2 ( .A(ref_1_n20), .B(ref_1_n22), .Z(ref_1_maj_95_n25)
         );
  OR2_X1 ref_1_maj_96_U19 ( .A1(ref_1_maj_96_n27), .A2(ref_1_maj_96_n26), .ZN(
        ref_1_maj_96_n28) );
  NAND2_X1 ref_1_maj_96_U18 ( .A1(ref_1_refreshed_2_6_), .A2(ref_1_maj_96_n28), 
        .ZN(ref_1_maj_96_n29) );
  NAND2_X1 ref_1_maj_96_U17 ( .A1(ref_1_maj_96_n26), .A2(ref_1_maj_96_n27), 
        .ZN(ref_1_maj_96_n30) );
  NAND2_X1 ref_1_maj_96_U16 ( .A1(ref_1_maj_96_n30), .A2(ref_1_maj_96_n29), 
        .ZN(ref_1_maj_96_n31) );
  OR2_X1 ref_1_maj_96_U15 ( .A1(ref_1_maj_96_n23), .A2(ref_1_maj_96_n22), .ZN(
        ref_1_maj_96_n32) );
  NAND2_X1 ref_1_maj_96_U14 ( .A1(ref_1_maj_96_n22), .A2(ref_1_maj_96_n23), 
        .ZN(ref_1_maj_96_n34) );
  NAND2_X1 ref_1_maj_96_U13 ( .A1(ref_1_maj_96_n32), .A2(ref_1_maj_96_n31), 
        .ZN(ref_1_maj_96_n33) );
  NAND2_X1 ref_1_maj_96_U12 ( .A1(ref_1_maj_96_n34), .A2(ref_1_maj_96_n33), 
        .ZN(ref_1_maj_96_port_o) );
  NAND2_X1 ref_1_maj_96_U11 ( .A1(ref_1_n12), .A2(ref_1_maj_96_n25), .ZN(
        ref_1_maj_96_n18) );
  NAND2_X1 ref_1_maj_96_U10 ( .A1(ref_1_n8), .A2(ref_1_n10), .ZN(
        ref_1_maj_96_n19) );
  NAND2_X1 ref_1_maj_96_U9 ( .A1(ref_1_maj_96_n19), .A2(ref_1_maj_96_n18), 
        .ZN(ref_1_maj_96_n22) );
  NAND2_X1 ref_1_maj_96_U8 ( .A1(ref_1_n6), .A2(ref_1_maj_96_n24), .ZN(
        ref_1_maj_96_n20) );
  NAND2_X1 ref_1_maj_96_U7 ( .A1(ref_1_n2), .A2(ref_1_n4), .ZN(
        ref_1_maj_96_n21) );
  NAND2_X1 ref_1_maj_96_U6 ( .A1(ref_1_maj_96_n21), .A2(ref_1_maj_96_n20), 
        .ZN(ref_1_maj_96_n23) );
  XOR2_X1 ref_1_maj_96_U5 ( .A(ref_1_n6), .B(ref_1_maj_96_n24), .Z(
        ref_1_maj_96_n26) );
  XOR2_X1 ref_1_maj_96_U4 ( .A(ref_1_n12), .B(ref_1_maj_96_n25), .Z(
        ref_1_maj_96_n27) );
  XOR2_X1 ref_1_maj_96_U3 ( .A(ref_1_n2), .B(ref_1_n4), .Z(ref_1_maj_96_n24)
         );
  XOR2_X1 ref_1_maj_96_U2 ( .A(ref_1_n8), .B(ref_1_n10), .Z(ref_1_maj_96_n25)
         );
  OR2_X1 ref_1_maj_97_U19 ( .A1(ref_1_maj_97_n27), .A2(ref_1_maj_97_n26), .ZN(
        ref_1_maj_97_n28) );
  NAND2_X1 ref_1_maj_97_U18 ( .A1(ref_1_refreshed_2_6_), .A2(ref_1_maj_97_n28), 
        .ZN(ref_1_maj_97_n29) );
  NAND2_X1 ref_1_maj_97_U17 ( .A1(ref_1_maj_97_n26), .A2(ref_1_maj_97_n27), 
        .ZN(ref_1_maj_97_n30) );
  NAND2_X1 ref_1_maj_97_U16 ( .A1(ref_1_maj_97_n30), .A2(ref_1_maj_97_n29), 
        .ZN(ref_1_maj_97_n31) );
  OR2_X1 ref_1_maj_97_U15 ( .A1(ref_1_maj_97_n23), .A2(ref_1_maj_97_n22), .ZN(
        ref_1_maj_97_n32) );
  NAND2_X1 ref_1_maj_97_U14 ( .A1(ref_1_maj_97_n22), .A2(ref_1_maj_97_n23), 
        .ZN(ref_1_maj_97_n34) );
  NAND2_X1 ref_1_maj_97_U13 ( .A1(ref_1_maj_97_n32), .A2(ref_1_maj_97_n31), 
        .ZN(ref_1_maj_97_n33) );
  NAND2_X1 ref_1_maj_97_U12 ( .A1(ref_1_maj_97_n34), .A2(ref_1_maj_97_n33), 
        .ZN(ref_1_maj_97_port_o) );
  NAND2_X1 ref_1_maj_97_U11 ( .A1(ref_1_n12), .A2(ref_1_maj_97_n25), .ZN(
        ref_1_maj_97_n18) );
  NAND2_X1 ref_1_maj_97_U10 ( .A1(ref_1_n7), .A2(ref_1_n10), .ZN(
        ref_1_maj_97_n19) );
  NAND2_X1 ref_1_maj_97_U9 ( .A1(ref_1_maj_97_n19), .A2(ref_1_maj_97_n18), 
        .ZN(ref_1_maj_97_n22) );
  NAND2_X1 ref_1_maj_97_U8 ( .A1(ref_1_n6), .A2(ref_1_maj_97_n24), .ZN(
        ref_1_maj_97_n20) );
  NAND2_X1 ref_1_maj_97_U7 ( .A1(ref_1_n2), .A2(ref_1_n4), .ZN(
        ref_1_maj_97_n21) );
  NAND2_X1 ref_1_maj_97_U6 ( .A1(ref_1_maj_97_n21), .A2(ref_1_maj_97_n20), 
        .ZN(ref_1_maj_97_n23) );
  XOR2_X1 ref_1_maj_97_U5 ( .A(ref_1_n6), .B(ref_1_maj_97_n24), .Z(
        ref_1_maj_97_n26) );
  XOR2_X1 ref_1_maj_97_U4 ( .A(ref_1_n12), .B(ref_1_maj_97_n25), .Z(
        ref_1_maj_97_n27) );
  XOR2_X1 ref_1_maj_97_U3 ( .A(ref_1_n2), .B(ref_1_n4), .Z(ref_1_maj_97_n24)
         );
  XOR2_X1 ref_1_maj_97_U2 ( .A(ref_1_n7), .B(ref_1_n10), .Z(ref_1_maj_97_n25)
         );
  OR2_X1 ref_1_maj_98_U19 ( .A1(ref_1_maj_98_n27), .A2(ref_1_maj_98_n26), .ZN(
        ref_1_maj_98_n28) );
  NAND2_X1 ref_1_maj_98_U18 ( .A1(ref_1_refreshed_2_6_), .A2(ref_1_maj_98_n28), 
        .ZN(ref_1_maj_98_n29) );
  NAND2_X1 ref_1_maj_98_U17 ( .A1(ref_1_maj_98_n26), .A2(ref_1_maj_98_n27), 
        .ZN(ref_1_maj_98_n30) );
  NAND2_X1 ref_1_maj_98_U16 ( .A1(ref_1_maj_98_n30), .A2(ref_1_maj_98_n29), 
        .ZN(ref_1_maj_98_n31) );
  OR2_X1 ref_1_maj_98_U15 ( .A1(ref_1_maj_98_n23), .A2(ref_1_maj_98_n22), .ZN(
        ref_1_maj_98_n32) );
  NAND2_X1 ref_1_maj_98_U14 ( .A1(ref_1_maj_98_n22), .A2(ref_1_maj_98_n23), 
        .ZN(ref_1_maj_98_n34) );
  NAND2_X1 ref_1_maj_98_U13 ( .A1(ref_1_maj_98_n32), .A2(ref_1_maj_98_n31), 
        .ZN(ref_1_maj_98_n33) );
  NAND2_X1 ref_1_maj_98_U12 ( .A1(ref_1_maj_98_n34), .A2(ref_1_maj_98_n33), 
        .ZN(ref_1_maj_98_port_o) );
  NAND2_X1 ref_1_maj_98_U11 ( .A1(ref_1_n12), .A2(ref_1_maj_98_n25), .ZN(
        ref_1_maj_98_n18) );
  NAND2_X1 ref_1_maj_98_U10 ( .A1(ref_1_refreshed_2_3_), .A2(ref_1_n10), .ZN(
        ref_1_maj_98_n19) );
  NAND2_X1 ref_1_maj_98_U9 ( .A1(ref_1_maj_98_n19), .A2(ref_1_maj_98_n18), 
        .ZN(ref_1_maj_98_n22) );
  NAND2_X1 ref_1_maj_98_U8 ( .A1(ref_1_n6), .A2(ref_1_maj_98_n24), .ZN(
        ref_1_maj_98_n20) );
  NAND2_X1 ref_1_maj_98_U7 ( .A1(ref_1_n2), .A2(ref_1_n4), .ZN(
        ref_1_maj_98_n21) );
  NAND2_X1 ref_1_maj_98_U6 ( .A1(ref_1_maj_98_n21), .A2(ref_1_maj_98_n20), 
        .ZN(ref_1_maj_98_n23) );
  XOR2_X1 ref_1_maj_98_U5 ( .A(ref_1_n6), .B(ref_1_maj_98_n24), .Z(
        ref_1_maj_98_n26) );
  XOR2_X1 ref_1_maj_98_U4 ( .A(ref_1_n12), .B(ref_1_maj_98_n25), .Z(
        ref_1_maj_98_n27) );
  XOR2_X1 ref_1_maj_98_U3 ( .A(ref_1_n2), .B(ref_1_n4), .Z(ref_1_maj_98_n24)
         );
  XOR2_X1 ref_1_maj_98_U2 ( .A(ref_1_refreshed_2_3_), .B(ref_1_n10), .Z(
        ref_1_maj_98_n25) );
  OR2_X1 ref_1_maj_99_U19 ( .A1(ref_1_maj_99_n27), .A2(ref_1_maj_99_n26), .ZN(
        ref_1_maj_99_n28) );
  NAND2_X1 ref_1_maj_99_U18 ( .A1(ref_1_refreshed_0_6_), .A2(ref_1_maj_99_n28), 
        .ZN(ref_1_maj_99_n29) );
  NAND2_X1 ref_1_maj_99_U17 ( .A1(ref_1_maj_99_n26), .A2(ref_1_maj_99_n27), 
        .ZN(ref_1_maj_99_n30) );
  NAND2_X1 ref_1_maj_99_U16 ( .A1(ref_1_maj_99_n30), .A2(ref_1_maj_99_n29), 
        .ZN(ref_1_maj_99_n31) );
  OR2_X1 ref_1_maj_99_U15 ( .A1(ref_1_maj_99_n23), .A2(ref_1_maj_99_n22), .ZN(
        ref_1_maj_99_n32) );
  NAND2_X1 ref_1_maj_99_U14 ( .A1(ref_1_maj_99_n22), .A2(ref_1_maj_99_n23), 
        .ZN(ref_1_maj_99_n34) );
  NAND2_X1 ref_1_maj_99_U13 ( .A1(ref_1_maj_99_n32), .A2(ref_1_maj_99_n31), 
        .ZN(ref_1_maj_99_n33) );
  NAND2_X1 ref_1_maj_99_U12 ( .A1(ref_1_maj_99_n34), .A2(ref_1_maj_99_n33), 
        .ZN(ref_1_maj_99_port_o) );
  NAND2_X1 ref_1_maj_99_U11 ( .A1(ref_1_n36), .A2(ref_1_maj_99_n25), .ZN(
        ref_1_maj_99_n18) );
  NAND2_X1 ref_1_maj_99_U10 ( .A1(ref_1_refreshed_0_3_), .A2(ref_1_n34), .ZN(
        ref_1_maj_99_n19) );
  NAND2_X1 ref_1_maj_99_U9 ( .A1(ref_1_maj_99_n19), .A2(ref_1_maj_99_n18), 
        .ZN(ref_1_maj_99_n22) );
  NAND2_X1 ref_1_maj_99_U8 ( .A1(ref_1_n29), .A2(ref_1_maj_99_n24), .ZN(
        ref_1_maj_99_n20) );
  NAND2_X1 ref_1_maj_99_U7 ( .A1(ref_1_n25), .A2(ref_1_n28), .ZN(
        ref_1_maj_99_n21) );
  NAND2_X1 ref_1_maj_99_U6 ( .A1(ref_1_maj_99_n21), .A2(ref_1_maj_99_n20), 
        .ZN(ref_1_maj_99_n23) );
  XOR2_X1 ref_1_maj_99_U5 ( .A(ref_1_n29), .B(ref_1_maj_99_n24), .Z(
        ref_1_maj_99_n26) );
  XOR2_X1 ref_1_maj_99_U4 ( .A(ref_1_n36), .B(ref_1_maj_99_n25), .Z(
        ref_1_maj_99_n27) );
  XOR2_X1 ref_1_maj_99_U3 ( .A(ref_1_n25), .B(ref_1_n28), .Z(ref_1_maj_99_n24)
         );
  XOR2_X1 ref_1_maj_99_U2 ( .A(ref_1_refreshed_0_3_), .B(ref_1_n34), .Z(
        ref_1_maj_99_n25) );
  OR2_X1 ref_1_maj_100_U19 ( .A1(ref_1_maj_100_n27), .A2(ref_1_maj_100_n26), 
        .ZN(ref_1_maj_100_n28) );
  NAND2_X1 ref_1_maj_100_U18 ( .A1(ref_1_refreshed_0_6_), .A2(
        ref_1_maj_100_n28), .ZN(ref_1_maj_100_n29) );
  NAND2_X1 ref_1_maj_100_U17 ( .A1(ref_1_maj_100_n26), .A2(ref_1_maj_100_n27), 
        .ZN(ref_1_maj_100_n30) );
  NAND2_X1 ref_1_maj_100_U16 ( .A1(ref_1_maj_100_n30), .A2(ref_1_maj_100_n29), 
        .ZN(ref_1_maj_100_n31) );
  OR2_X1 ref_1_maj_100_U15 ( .A1(ref_1_maj_100_n23), .A2(ref_1_maj_100_n22), 
        .ZN(ref_1_maj_100_n32) );
  NAND2_X1 ref_1_maj_100_U14 ( .A1(ref_1_maj_100_n22), .A2(ref_1_maj_100_n23), 
        .ZN(ref_1_maj_100_n34) );
  NAND2_X1 ref_1_maj_100_U13 ( .A1(ref_1_maj_100_n32), .A2(ref_1_maj_100_n31), 
        .ZN(ref_1_maj_100_n33) );
  NAND2_X1 ref_1_maj_100_U12 ( .A1(ref_1_maj_100_n34), .A2(ref_1_maj_100_n33), 
        .ZN(ref_1_maj_100_port_o) );
  NAND2_X1 ref_1_maj_100_U11 ( .A1(ref_1_n36), .A2(ref_1_maj_100_n25), .ZN(
        ref_1_maj_100_n18) );
  NAND2_X1 ref_1_maj_100_U10 ( .A1(ref_1_refreshed_0_3_), .A2(ref_1_n34), .ZN(
        ref_1_maj_100_n19) );
  NAND2_X1 ref_1_maj_100_U9 ( .A1(ref_1_maj_100_n19), .A2(ref_1_maj_100_n18), 
        .ZN(ref_1_maj_100_n22) );
  NAND2_X1 ref_1_maj_100_U8 ( .A1(ref_1_n29), .A2(ref_1_maj_100_n24), .ZN(
        ref_1_maj_100_n20) );
  NAND2_X1 ref_1_maj_100_U7 ( .A1(ref_1_n25), .A2(ref_1_n28), .ZN(
        ref_1_maj_100_n21) );
  NAND2_X1 ref_1_maj_100_U6 ( .A1(ref_1_maj_100_n21), .A2(ref_1_maj_100_n20), 
        .ZN(ref_1_maj_100_n23) );
  XOR2_X1 ref_1_maj_100_U5 ( .A(ref_1_n29), .B(ref_1_maj_100_n24), .Z(
        ref_1_maj_100_n26) );
  XOR2_X1 ref_1_maj_100_U4 ( .A(ref_1_n36), .B(ref_1_maj_100_n25), .Z(
        ref_1_maj_100_n27) );
  XOR2_X1 ref_1_maj_100_U3 ( .A(ref_1_n25), .B(ref_1_n28), .Z(
        ref_1_maj_100_n24) );
  XOR2_X1 ref_1_maj_100_U2 ( .A(ref_1_refreshed_0_3_), .B(ref_1_n34), .Z(
        ref_1_maj_100_n25) );
  OR2_X1 ref_1_maj_101_U19 ( .A1(ref_1_maj_101_n27), .A2(ref_1_maj_101_n26), 
        .ZN(ref_1_maj_101_n28) );
  NAND2_X1 ref_1_maj_101_U18 ( .A1(ref_1_refreshed_0_6_), .A2(
        ref_1_maj_101_n28), .ZN(ref_1_maj_101_n29) );
  NAND2_X1 ref_1_maj_101_U17 ( .A1(ref_1_maj_101_n26), .A2(ref_1_maj_101_n27), 
        .ZN(ref_1_maj_101_n30) );
  NAND2_X1 ref_1_maj_101_U16 ( .A1(ref_1_maj_101_n30), .A2(ref_1_maj_101_n29), 
        .ZN(ref_1_maj_101_n31) );
  OR2_X1 ref_1_maj_101_U15 ( .A1(ref_1_maj_101_n23), .A2(ref_1_maj_101_n22), 
        .ZN(ref_1_maj_101_n32) );
  NAND2_X1 ref_1_maj_101_U14 ( .A1(ref_1_maj_101_n22), .A2(ref_1_maj_101_n23), 
        .ZN(ref_1_maj_101_n34) );
  NAND2_X1 ref_1_maj_101_U13 ( .A1(ref_1_maj_101_n32), .A2(ref_1_maj_101_n31), 
        .ZN(ref_1_maj_101_n33) );
  NAND2_X1 ref_1_maj_101_U12 ( .A1(ref_1_maj_101_n34), .A2(ref_1_maj_101_n33), 
        .ZN(ref_1_maj_101_port_o) );
  NAND2_X1 ref_1_maj_101_U11 ( .A1(ref_1_n36), .A2(ref_1_maj_101_n25), .ZN(
        ref_1_maj_101_n18) );
  NAND2_X1 ref_1_maj_101_U10 ( .A1(ref_1_refreshed_0_3_), .A2(ref_1_n34), .ZN(
        ref_1_maj_101_n19) );
  NAND2_X1 ref_1_maj_101_U9 ( .A1(ref_1_maj_101_n19), .A2(ref_1_maj_101_n18), 
        .ZN(ref_1_maj_101_n22) );
  NAND2_X1 ref_1_maj_101_U8 ( .A1(ref_1_n29), .A2(ref_1_maj_101_n24), .ZN(
        ref_1_maj_101_n20) );
  NAND2_X1 ref_1_maj_101_U7 ( .A1(ref_1_n25), .A2(ref_1_n28), .ZN(
        ref_1_maj_101_n21) );
  NAND2_X1 ref_1_maj_101_U6 ( .A1(ref_1_maj_101_n21), .A2(ref_1_maj_101_n20), 
        .ZN(ref_1_maj_101_n23) );
  XOR2_X1 ref_1_maj_101_U5 ( .A(ref_1_n29), .B(ref_1_maj_101_n24), .Z(
        ref_1_maj_101_n26) );
  XOR2_X1 ref_1_maj_101_U4 ( .A(ref_1_n36), .B(ref_1_maj_101_n25), .Z(
        ref_1_maj_101_n27) );
  XOR2_X1 ref_1_maj_101_U3 ( .A(ref_1_n25), .B(ref_1_n28), .Z(
        ref_1_maj_101_n24) );
  XOR2_X1 ref_1_maj_101_U2 ( .A(ref_1_refreshed_0_3_), .B(ref_1_n34), .Z(
        ref_1_maj_101_n25) );
  OR2_X1 ref_1_maj_102_U19 ( .A1(ref_1_maj_102_n27), .A2(ref_1_maj_102_n26), 
        .ZN(ref_1_maj_102_n28) );
  NAND2_X1 ref_1_maj_102_U18 ( .A1(ref_1_refreshed_1_6_), .A2(
        ref_1_maj_102_n28), .ZN(ref_1_maj_102_n29) );
  NAND2_X1 ref_1_maj_102_U17 ( .A1(ref_1_maj_102_n26), .A2(ref_1_maj_102_n27), 
        .ZN(ref_1_maj_102_n30) );
  NAND2_X1 ref_1_maj_102_U16 ( .A1(ref_1_maj_102_n30), .A2(ref_1_maj_102_n29), 
        .ZN(ref_1_maj_102_n31) );
  OR2_X1 ref_1_maj_102_U15 ( .A1(ref_1_maj_102_n23), .A2(ref_1_maj_102_n22), 
        .ZN(ref_1_maj_102_n32) );
  NAND2_X1 ref_1_maj_102_U14 ( .A1(ref_1_maj_102_n22), .A2(ref_1_maj_102_n23), 
        .ZN(ref_1_maj_102_n34) );
  NAND2_X1 ref_1_maj_102_U13 ( .A1(ref_1_maj_102_n32), .A2(ref_1_maj_102_n31), 
        .ZN(ref_1_maj_102_n33) );
  NAND2_X1 ref_1_maj_102_U12 ( .A1(ref_1_maj_102_n34), .A2(ref_1_maj_102_n33), 
        .ZN(ref_1_maj_102_port_o) );
  NAND2_X1 ref_1_maj_102_U11 ( .A1(ref_1_n24), .A2(ref_1_maj_102_n25), .ZN(
        ref_1_maj_102_n18) );
  NAND2_X1 ref_1_maj_102_U10 ( .A1(ref_1_n20), .A2(ref_1_n22), .ZN(
        ref_1_maj_102_n19) );
  NAND2_X1 ref_1_maj_102_U9 ( .A1(ref_1_maj_102_n19), .A2(ref_1_maj_102_n18), 
        .ZN(ref_1_maj_102_n22) );
  NAND2_X1 ref_1_maj_102_U8 ( .A1(ref_1_n18), .A2(ref_1_maj_102_n24), .ZN(
        ref_1_maj_102_n20) );
  NAND2_X1 ref_1_maj_102_U7 ( .A1(ref_1_n14), .A2(ref_1_n16), .ZN(
        ref_1_maj_102_n21) );
  NAND2_X1 ref_1_maj_102_U6 ( .A1(ref_1_maj_102_n21), .A2(ref_1_maj_102_n20), 
        .ZN(ref_1_maj_102_n23) );
  XOR2_X1 ref_1_maj_102_U5 ( .A(ref_1_n18), .B(ref_1_maj_102_n24), .Z(
        ref_1_maj_102_n26) );
  XOR2_X1 ref_1_maj_102_U4 ( .A(ref_1_n24), .B(ref_1_maj_102_n25), .Z(
        ref_1_maj_102_n27) );
  XOR2_X1 ref_1_maj_102_U3 ( .A(ref_1_n14), .B(ref_1_n16), .Z(
        ref_1_maj_102_n24) );
  XOR2_X1 ref_1_maj_102_U2 ( .A(ref_1_n20), .B(ref_1_n22), .Z(
        ref_1_maj_102_n25) );
  OR2_X1 ref_1_maj_103_U19 ( .A1(ref_1_maj_103_n27), .A2(ref_1_maj_103_n26), 
        .ZN(ref_1_maj_103_n28) );
  NAND2_X1 ref_1_maj_103_U18 ( .A1(ref_1_refreshed_1_6_), .A2(
        ref_1_maj_103_n28), .ZN(ref_1_maj_103_n29) );
  NAND2_X1 ref_1_maj_103_U17 ( .A1(ref_1_maj_103_n26), .A2(ref_1_maj_103_n27), 
        .ZN(ref_1_maj_103_n30) );
  NAND2_X1 ref_1_maj_103_U16 ( .A1(ref_1_maj_103_n30), .A2(ref_1_maj_103_n29), 
        .ZN(ref_1_maj_103_n31) );
  OR2_X1 ref_1_maj_103_U15 ( .A1(ref_1_maj_103_n23), .A2(ref_1_maj_103_n22), 
        .ZN(ref_1_maj_103_n32) );
  NAND2_X1 ref_1_maj_103_U14 ( .A1(ref_1_maj_103_n22), .A2(ref_1_maj_103_n23), 
        .ZN(ref_1_maj_103_n34) );
  NAND2_X1 ref_1_maj_103_U13 ( .A1(ref_1_maj_103_n32), .A2(ref_1_maj_103_n31), 
        .ZN(ref_1_maj_103_n33) );
  NAND2_X1 ref_1_maj_103_U12 ( .A1(ref_1_maj_103_n34), .A2(ref_1_maj_103_n33), 
        .ZN(ref_1_maj_103_port_o) );
  NAND2_X1 ref_1_maj_103_U11 ( .A1(ref_1_n24), .A2(ref_1_maj_103_n25), .ZN(
        ref_1_maj_103_n18) );
  NAND2_X1 ref_1_maj_103_U10 ( .A1(ref_1_n20), .A2(ref_1_n22), .ZN(
        ref_1_maj_103_n19) );
  NAND2_X1 ref_1_maj_103_U9 ( .A1(ref_1_maj_103_n19), .A2(ref_1_maj_103_n18), 
        .ZN(ref_1_maj_103_n22) );
  NAND2_X1 ref_1_maj_103_U8 ( .A1(ref_1_n18), .A2(ref_1_maj_103_n24), .ZN(
        ref_1_maj_103_n20) );
  NAND2_X1 ref_1_maj_103_U7 ( .A1(ref_1_n14), .A2(ref_1_n16), .ZN(
        ref_1_maj_103_n21) );
  NAND2_X1 ref_1_maj_103_U6 ( .A1(ref_1_maj_103_n21), .A2(ref_1_maj_103_n20), 
        .ZN(ref_1_maj_103_n23) );
  XOR2_X1 ref_1_maj_103_U5 ( .A(ref_1_n18), .B(ref_1_maj_103_n24), .Z(
        ref_1_maj_103_n26) );
  XOR2_X1 ref_1_maj_103_U4 ( .A(ref_1_n24), .B(ref_1_maj_103_n25), .Z(
        ref_1_maj_103_n27) );
  XOR2_X1 ref_1_maj_103_U3 ( .A(ref_1_n14), .B(ref_1_n16), .Z(
        ref_1_maj_103_n24) );
  XOR2_X1 ref_1_maj_103_U2 ( .A(ref_1_n20), .B(ref_1_n22), .Z(
        ref_1_maj_103_n25) );
  OR2_X1 ref_1_maj_104_U19 ( .A1(ref_1_maj_104_n27), .A2(ref_1_maj_104_n26), 
        .ZN(ref_1_maj_104_n28) );
  NAND2_X1 ref_1_maj_104_U18 ( .A1(ref_1_refreshed_1_6_), .A2(
        ref_1_maj_104_n28), .ZN(ref_1_maj_104_n29) );
  NAND2_X1 ref_1_maj_104_U17 ( .A1(ref_1_maj_104_n26), .A2(ref_1_maj_104_n27), 
        .ZN(ref_1_maj_104_n30) );
  NAND2_X1 ref_1_maj_104_U16 ( .A1(ref_1_maj_104_n30), .A2(ref_1_maj_104_n29), 
        .ZN(ref_1_maj_104_n31) );
  OR2_X1 ref_1_maj_104_U15 ( .A1(ref_1_maj_104_n23), .A2(ref_1_maj_104_n22), 
        .ZN(ref_1_maj_104_n32) );
  NAND2_X1 ref_1_maj_104_U14 ( .A1(ref_1_maj_104_n22), .A2(ref_1_maj_104_n23), 
        .ZN(ref_1_maj_104_n34) );
  NAND2_X1 ref_1_maj_104_U13 ( .A1(ref_1_maj_104_n32), .A2(ref_1_maj_104_n31), 
        .ZN(ref_1_maj_104_n33) );
  NAND2_X1 ref_1_maj_104_U12 ( .A1(ref_1_maj_104_n34), .A2(ref_1_maj_104_n33), 
        .ZN(ref_1_maj_104_port_o) );
  NAND2_X1 ref_1_maj_104_U11 ( .A1(ref_1_n24), .A2(ref_1_maj_104_n25), .ZN(
        ref_1_maj_104_n18) );
  NAND2_X1 ref_1_maj_104_U10 ( .A1(ref_1_n20), .A2(ref_1_n22), .ZN(
        ref_1_maj_104_n19) );
  NAND2_X1 ref_1_maj_104_U9 ( .A1(ref_1_maj_104_n19), .A2(ref_1_maj_104_n18), 
        .ZN(ref_1_maj_104_n22) );
  NAND2_X1 ref_1_maj_104_U8 ( .A1(ref_1_n18), .A2(ref_1_maj_104_n24), .ZN(
        ref_1_maj_104_n20) );
  NAND2_X1 ref_1_maj_104_U7 ( .A1(ref_1_n14), .A2(ref_1_n16), .ZN(
        ref_1_maj_104_n21) );
  NAND2_X1 ref_1_maj_104_U6 ( .A1(ref_1_maj_104_n21), .A2(ref_1_maj_104_n20), 
        .ZN(ref_1_maj_104_n23) );
  XOR2_X1 ref_1_maj_104_U5 ( .A(ref_1_n18), .B(ref_1_maj_104_n24), .Z(
        ref_1_maj_104_n26) );
  XOR2_X1 ref_1_maj_104_U4 ( .A(ref_1_n24), .B(ref_1_maj_104_n25), .Z(
        ref_1_maj_104_n27) );
  XOR2_X1 ref_1_maj_104_U3 ( .A(ref_1_n14), .B(ref_1_n16), .Z(
        ref_1_maj_104_n24) );
  XOR2_X1 ref_1_maj_104_U2 ( .A(ref_1_n20), .B(ref_1_n22), .Z(
        ref_1_maj_104_n25) );
  OR2_X1 ref_1_maj_105_U19 ( .A1(ref_1_maj_105_n27), .A2(ref_1_maj_105_n26), 
        .ZN(ref_1_maj_105_n28) );
  NAND2_X1 ref_1_maj_105_U18 ( .A1(ref_1_refreshed_2_6_), .A2(
        ref_1_maj_105_n28), .ZN(ref_1_maj_105_n29) );
  NAND2_X1 ref_1_maj_105_U17 ( .A1(ref_1_maj_105_n26), .A2(ref_1_maj_105_n27), 
        .ZN(ref_1_maj_105_n30) );
  NAND2_X1 ref_1_maj_105_U16 ( .A1(ref_1_maj_105_n30), .A2(ref_1_maj_105_n29), 
        .ZN(ref_1_maj_105_n31) );
  OR2_X1 ref_1_maj_105_U15 ( .A1(ref_1_maj_105_n23), .A2(ref_1_maj_105_n22), 
        .ZN(ref_1_maj_105_n32) );
  NAND2_X1 ref_1_maj_105_U14 ( .A1(ref_1_maj_105_n22), .A2(ref_1_maj_105_n23), 
        .ZN(ref_1_maj_105_n34) );
  NAND2_X1 ref_1_maj_105_U13 ( .A1(ref_1_maj_105_n32), .A2(ref_1_maj_105_n31), 
        .ZN(ref_1_maj_105_n33) );
  NAND2_X1 ref_1_maj_105_U12 ( .A1(ref_1_maj_105_n34), .A2(ref_1_maj_105_n33), 
        .ZN(ref_1_maj_105_port_o) );
  NAND2_X1 ref_1_maj_105_U11 ( .A1(ref_1_n12), .A2(ref_1_maj_105_n25), .ZN(
        ref_1_maj_105_n18) );
  NAND2_X1 ref_1_maj_105_U10 ( .A1(ref_1_refreshed_2_3_), .A2(ref_1_n10), .ZN(
        ref_1_maj_105_n19) );
  NAND2_X1 ref_1_maj_105_U9 ( .A1(ref_1_maj_105_n19), .A2(ref_1_maj_105_n18), 
        .ZN(ref_1_maj_105_n22) );
  NAND2_X1 ref_1_maj_105_U8 ( .A1(ref_1_n6), .A2(ref_1_maj_105_n24), .ZN(
        ref_1_maj_105_n20) );
  NAND2_X1 ref_1_maj_105_U7 ( .A1(ref_1_n2), .A2(ref_1_n4), .ZN(
        ref_1_maj_105_n21) );
  NAND2_X1 ref_1_maj_105_U6 ( .A1(ref_1_maj_105_n21), .A2(ref_1_maj_105_n20), 
        .ZN(ref_1_maj_105_n23) );
  XOR2_X1 ref_1_maj_105_U5 ( .A(ref_1_n6), .B(ref_1_maj_105_n24), .Z(
        ref_1_maj_105_n26) );
  XOR2_X1 ref_1_maj_105_U4 ( .A(ref_1_n12), .B(ref_1_maj_105_n25), .Z(
        ref_1_maj_105_n27) );
  XOR2_X1 ref_1_maj_105_U3 ( .A(ref_1_n2), .B(ref_1_n4), .Z(ref_1_maj_105_n24)
         );
  XOR2_X1 ref_1_maj_105_U2 ( .A(ref_1_refreshed_2_3_), .B(ref_1_n10), .Z(
        ref_1_maj_105_n25) );
  OR2_X1 ref_1_maj_106_U19 ( .A1(ref_1_maj_106_n27), .A2(ref_1_maj_106_n26), 
        .ZN(ref_1_maj_106_n28) );
  NAND2_X1 ref_1_maj_106_U18 ( .A1(ref_1_refreshed_2_6_), .A2(
        ref_1_maj_106_n28), .ZN(ref_1_maj_106_n29) );
  NAND2_X1 ref_1_maj_106_U17 ( .A1(ref_1_maj_106_n26), .A2(ref_1_maj_106_n27), 
        .ZN(ref_1_maj_106_n30) );
  NAND2_X1 ref_1_maj_106_U16 ( .A1(ref_1_maj_106_n30), .A2(ref_1_maj_106_n29), 
        .ZN(ref_1_maj_106_n31) );
  OR2_X1 ref_1_maj_106_U15 ( .A1(ref_1_maj_106_n23), .A2(ref_1_maj_106_n22), 
        .ZN(ref_1_maj_106_n32) );
  NAND2_X1 ref_1_maj_106_U14 ( .A1(ref_1_maj_106_n22), .A2(ref_1_maj_106_n23), 
        .ZN(ref_1_maj_106_n34) );
  NAND2_X1 ref_1_maj_106_U13 ( .A1(ref_1_maj_106_n32), .A2(ref_1_maj_106_n31), 
        .ZN(ref_1_maj_106_n33) );
  NAND2_X1 ref_1_maj_106_U12 ( .A1(ref_1_maj_106_n34), .A2(ref_1_maj_106_n33), 
        .ZN(ref_1_maj_106_port_o) );
  NAND2_X1 ref_1_maj_106_U11 ( .A1(ref_1_n12), .A2(ref_1_maj_106_n25), .ZN(
        ref_1_maj_106_n18) );
  NAND2_X1 ref_1_maj_106_U10 ( .A1(ref_1_refreshed_2_3_), .A2(ref_1_n10), .ZN(
        ref_1_maj_106_n19) );
  NAND2_X1 ref_1_maj_106_U9 ( .A1(ref_1_maj_106_n19), .A2(ref_1_maj_106_n18), 
        .ZN(ref_1_maj_106_n22) );
  NAND2_X1 ref_1_maj_106_U8 ( .A1(ref_1_n6), .A2(ref_1_maj_106_n24), .ZN(
        ref_1_maj_106_n20) );
  NAND2_X1 ref_1_maj_106_U7 ( .A1(ref_1_n2), .A2(ref_1_n4), .ZN(
        ref_1_maj_106_n21) );
  NAND2_X1 ref_1_maj_106_U6 ( .A1(ref_1_maj_106_n21), .A2(ref_1_maj_106_n20), 
        .ZN(ref_1_maj_106_n23) );
  XOR2_X1 ref_1_maj_106_U5 ( .A(ref_1_n6), .B(ref_1_maj_106_n24), .Z(
        ref_1_maj_106_n26) );
  XOR2_X1 ref_1_maj_106_U4 ( .A(ref_1_n12), .B(ref_1_maj_106_n25), .Z(
        ref_1_maj_106_n27) );
  XOR2_X1 ref_1_maj_106_U3 ( .A(ref_1_n2), .B(ref_1_n4), .Z(ref_1_maj_106_n24)
         );
  XOR2_X1 ref_1_maj_106_U2 ( .A(ref_1_refreshed_2_3_), .B(ref_1_n10), .Z(
        ref_1_maj_106_n25) );
  OR2_X1 ref_1_maj_107_U19 ( .A1(ref_1_maj_107_n27), .A2(ref_1_maj_107_n26), 
        .ZN(ref_1_maj_107_n28) );
  NAND2_X1 ref_1_maj_107_U18 ( .A1(ref_1_refreshed_2_6_), .A2(
        ref_1_maj_107_n28), .ZN(ref_1_maj_107_n29) );
  NAND2_X1 ref_1_maj_107_U17 ( .A1(ref_1_maj_107_n26), .A2(ref_1_maj_107_n27), 
        .ZN(ref_1_maj_107_n30) );
  NAND2_X1 ref_1_maj_107_U16 ( .A1(ref_1_maj_107_n30), .A2(ref_1_maj_107_n29), 
        .ZN(ref_1_maj_107_n31) );
  OR2_X1 ref_1_maj_107_U15 ( .A1(ref_1_maj_107_n23), .A2(ref_1_maj_107_n22), 
        .ZN(ref_1_maj_107_n32) );
  NAND2_X1 ref_1_maj_107_U14 ( .A1(ref_1_maj_107_n22), .A2(ref_1_maj_107_n23), 
        .ZN(ref_1_maj_107_n34) );
  NAND2_X1 ref_1_maj_107_U13 ( .A1(ref_1_maj_107_n32), .A2(ref_1_maj_107_n31), 
        .ZN(ref_1_maj_107_n33) );
  NAND2_X1 ref_1_maj_107_U12 ( .A1(ref_1_maj_107_n34), .A2(ref_1_maj_107_n33), 
        .ZN(ref_1_maj_107_port_o) );
  NAND2_X1 ref_1_maj_107_U11 ( .A1(ref_1_n12), .A2(ref_1_maj_107_n25), .ZN(
        ref_1_maj_107_n18) );
  NAND2_X1 ref_1_maj_107_U10 ( .A1(ref_1_n8), .A2(ref_1_n10), .ZN(
        ref_1_maj_107_n19) );
  NAND2_X1 ref_1_maj_107_U9 ( .A1(ref_1_maj_107_n19), .A2(ref_1_maj_107_n18), 
        .ZN(ref_1_maj_107_n22) );
  NAND2_X1 ref_1_maj_107_U8 ( .A1(ref_1_n6), .A2(ref_1_maj_107_n24), .ZN(
        ref_1_maj_107_n20) );
  NAND2_X1 ref_1_maj_107_U7 ( .A1(ref_1_n2), .A2(ref_1_n4), .ZN(
        ref_1_maj_107_n21) );
  NAND2_X1 ref_1_maj_107_U6 ( .A1(ref_1_maj_107_n21), .A2(ref_1_maj_107_n20), 
        .ZN(ref_1_maj_107_n23) );
  XOR2_X1 ref_1_maj_107_U5 ( .A(ref_1_n6), .B(ref_1_maj_107_n24), .Z(
        ref_1_maj_107_n26) );
  XOR2_X1 ref_1_maj_107_U4 ( .A(ref_1_n12), .B(ref_1_maj_107_n25), .Z(
        ref_1_maj_107_n27) );
  XOR2_X1 ref_1_maj_107_U3 ( .A(ref_1_n2), .B(ref_1_n4), .Z(ref_1_maj_107_n24)
         );
  XOR2_X1 ref_1_maj_107_U2 ( .A(ref_1_n8), .B(ref_1_n10), .Z(ref_1_maj_107_n25) );
  OR2_X1 ref_1_maj_108_U19 ( .A1(ref_1_maj_108_n27), .A2(ref_1_maj_108_n26), 
        .ZN(ref_1_maj_108_n28) );
  NAND2_X1 ref_1_maj_108_U18 ( .A1(ref_1_refreshed_0_6_), .A2(
        ref_1_maj_108_n28), .ZN(ref_1_maj_108_n29) );
  NAND2_X1 ref_1_maj_108_U17 ( .A1(ref_1_maj_108_n26), .A2(ref_1_maj_108_n27), 
        .ZN(ref_1_maj_108_n30) );
  NAND2_X1 ref_1_maj_108_U16 ( .A1(ref_1_maj_108_n30), .A2(ref_1_maj_108_n29), 
        .ZN(ref_1_maj_108_n31) );
  OR2_X1 ref_1_maj_108_U15 ( .A1(ref_1_maj_108_n23), .A2(ref_1_maj_108_n22), 
        .ZN(ref_1_maj_108_n32) );
  NAND2_X1 ref_1_maj_108_U14 ( .A1(ref_1_maj_108_n22), .A2(ref_1_maj_108_n23), 
        .ZN(ref_1_maj_108_n34) );
  NAND2_X1 ref_1_maj_108_U13 ( .A1(ref_1_maj_108_n32), .A2(ref_1_maj_108_n31), 
        .ZN(ref_1_maj_108_n33) );
  NAND2_X1 ref_1_maj_108_U12 ( .A1(ref_1_maj_108_n34), .A2(ref_1_maj_108_n33), 
        .ZN(ref_1_maj_108_port_o) );
  NAND2_X1 ref_1_maj_108_U11 ( .A1(ref_1_n36), .A2(ref_1_maj_108_n25), .ZN(
        ref_1_maj_108_n18) );
  NAND2_X1 ref_1_maj_108_U10 ( .A1(ref_1_n32), .A2(ref_1_n34), .ZN(
        ref_1_maj_108_n19) );
  NAND2_X1 ref_1_maj_108_U9 ( .A1(ref_1_maj_108_n19), .A2(ref_1_maj_108_n18), 
        .ZN(ref_1_maj_108_n22) );
  NAND2_X1 ref_1_maj_108_U8 ( .A1(ref_1_n30), .A2(ref_1_maj_108_n24), .ZN(
        ref_1_maj_108_n20) );
  NAND2_X1 ref_1_maj_108_U7 ( .A1(ref_1_n26), .A2(ref_1_n28), .ZN(
        ref_1_maj_108_n21) );
  NAND2_X1 ref_1_maj_108_U6 ( .A1(ref_1_maj_108_n21), .A2(ref_1_maj_108_n20), 
        .ZN(ref_1_maj_108_n23) );
  XOR2_X1 ref_1_maj_108_U5 ( .A(ref_1_n30), .B(ref_1_maj_108_n24), .Z(
        ref_1_maj_108_n26) );
  XOR2_X1 ref_1_maj_108_U4 ( .A(ref_1_n36), .B(ref_1_maj_108_n25), .Z(
        ref_1_maj_108_n27) );
  XOR2_X1 ref_1_maj_108_U3 ( .A(ref_1_n26), .B(ref_1_n28), .Z(
        ref_1_maj_108_n24) );
  XOR2_X1 ref_1_maj_108_U2 ( .A(ref_1_n32), .B(ref_1_n34), .Z(
        ref_1_maj_108_n25) );
  OR2_X1 ref_1_maj_109_U19 ( .A1(ref_1_maj_109_n27), .A2(ref_1_maj_109_n26), 
        .ZN(ref_1_maj_109_n28) );
  NAND2_X1 ref_1_maj_109_U18 ( .A1(ref_1_refreshed_0_6_), .A2(
        ref_1_maj_109_n28), .ZN(ref_1_maj_109_n29) );
  NAND2_X1 ref_1_maj_109_U17 ( .A1(ref_1_maj_109_n26), .A2(ref_1_maj_109_n27), 
        .ZN(ref_1_maj_109_n30) );
  NAND2_X1 ref_1_maj_109_U16 ( .A1(ref_1_maj_109_n30), .A2(ref_1_maj_109_n29), 
        .ZN(ref_1_maj_109_n31) );
  OR2_X1 ref_1_maj_109_U15 ( .A1(ref_1_maj_109_n23), .A2(ref_1_maj_109_n22), 
        .ZN(ref_1_maj_109_n32) );
  NAND2_X1 ref_1_maj_109_U14 ( .A1(ref_1_maj_109_n22), .A2(ref_1_maj_109_n23), 
        .ZN(ref_1_maj_109_n34) );
  NAND2_X1 ref_1_maj_109_U13 ( .A1(ref_1_maj_109_n32), .A2(ref_1_maj_109_n31), 
        .ZN(ref_1_maj_109_n33) );
  NAND2_X1 ref_1_maj_109_U12 ( .A1(ref_1_maj_109_n34), .A2(ref_1_maj_109_n33), 
        .ZN(ref_1_maj_109_port_o) );
  NAND2_X1 ref_1_maj_109_U11 ( .A1(ref_1_n35), .A2(ref_1_maj_109_n25), .ZN(
        ref_1_maj_109_n18) );
  NAND2_X1 ref_1_maj_109_U10 ( .A1(ref_1_n32), .A2(ref_1_n33), .ZN(
        ref_1_maj_109_n19) );
  NAND2_X1 ref_1_maj_109_U9 ( .A1(ref_1_maj_109_n19), .A2(ref_1_maj_109_n18), 
        .ZN(ref_1_maj_109_n22) );
  NAND2_X1 ref_1_maj_109_U8 ( .A1(ref_1_n30), .A2(ref_1_maj_109_n24), .ZN(
        ref_1_maj_109_n20) );
  NAND2_X1 ref_1_maj_109_U7 ( .A1(ref_1_n26), .A2(ref_1_n27), .ZN(
        ref_1_maj_109_n21) );
  NAND2_X1 ref_1_maj_109_U6 ( .A1(ref_1_maj_109_n21), .A2(ref_1_maj_109_n20), 
        .ZN(ref_1_maj_109_n23) );
  XOR2_X1 ref_1_maj_109_U5 ( .A(ref_1_n30), .B(ref_1_maj_109_n24), .Z(
        ref_1_maj_109_n26) );
  XOR2_X1 ref_1_maj_109_U4 ( .A(ref_1_n35), .B(ref_1_maj_109_n25), .Z(
        ref_1_maj_109_n27) );
  XOR2_X1 ref_1_maj_109_U3 ( .A(ref_1_n26), .B(ref_1_n27), .Z(
        ref_1_maj_109_n24) );
  XOR2_X1 ref_1_maj_109_U2 ( .A(ref_1_n32), .B(ref_1_n33), .Z(
        ref_1_maj_109_n25) );
  OR2_X1 ref_1_maj_110_U19 ( .A1(ref_1_maj_110_n27), .A2(ref_1_maj_110_n26), 
        .ZN(ref_1_maj_110_n28) );
  NAND2_X1 ref_1_maj_110_U18 ( .A1(ref_1_refreshed_0_6_), .A2(
        ref_1_maj_110_n28), .ZN(ref_1_maj_110_n29) );
  NAND2_X1 ref_1_maj_110_U17 ( .A1(ref_1_maj_110_n26), .A2(ref_1_maj_110_n27), 
        .ZN(ref_1_maj_110_n30) );
  NAND2_X1 ref_1_maj_110_U16 ( .A1(ref_1_maj_110_n30), .A2(ref_1_maj_110_n29), 
        .ZN(ref_1_maj_110_n31) );
  OR2_X1 ref_1_maj_110_U15 ( .A1(ref_1_maj_110_n23), .A2(ref_1_maj_110_n22), 
        .ZN(ref_1_maj_110_n32) );
  NAND2_X1 ref_1_maj_110_U14 ( .A1(ref_1_maj_110_n22), .A2(ref_1_maj_110_n23), 
        .ZN(ref_1_maj_110_n34) );
  NAND2_X1 ref_1_maj_110_U13 ( .A1(ref_1_maj_110_n32), .A2(ref_1_maj_110_n31), 
        .ZN(ref_1_maj_110_n33) );
  NAND2_X1 ref_1_maj_110_U12 ( .A1(ref_1_maj_110_n34), .A2(ref_1_maj_110_n33), 
        .ZN(ref_1_maj_110_port_o) );
  NAND2_X1 ref_1_maj_110_U11 ( .A1(ref_1_n36), .A2(ref_1_maj_110_n25), .ZN(
        ref_1_maj_110_n18) );
  NAND2_X1 ref_1_maj_110_U10 ( .A1(ref_1_n32), .A2(ref_1_n34), .ZN(
        ref_1_maj_110_n19) );
  NAND2_X1 ref_1_maj_110_U9 ( .A1(ref_1_maj_110_n19), .A2(ref_1_maj_110_n18), 
        .ZN(ref_1_maj_110_n22) );
  NAND2_X1 ref_1_maj_110_U8 ( .A1(ref_1_n30), .A2(ref_1_maj_110_n24), .ZN(
        ref_1_maj_110_n20) );
  NAND2_X1 ref_1_maj_110_U7 ( .A1(ref_1_n26), .A2(ref_1_n28), .ZN(
        ref_1_maj_110_n21) );
  NAND2_X1 ref_1_maj_110_U6 ( .A1(ref_1_maj_110_n21), .A2(ref_1_maj_110_n20), 
        .ZN(ref_1_maj_110_n23) );
  XOR2_X1 ref_1_maj_110_U5 ( .A(ref_1_n30), .B(ref_1_maj_110_n24), .Z(
        ref_1_maj_110_n26) );
  XOR2_X1 ref_1_maj_110_U4 ( .A(ref_1_n36), .B(ref_1_maj_110_n25), .Z(
        ref_1_maj_110_n27) );
  XOR2_X1 ref_1_maj_110_U3 ( .A(ref_1_n26), .B(ref_1_n28), .Z(
        ref_1_maj_110_n24) );
  XOR2_X1 ref_1_maj_110_U2 ( .A(ref_1_n32), .B(ref_1_n34), .Z(
        ref_1_maj_110_n25) );
  OR2_X1 ref_1_maj_111_U19 ( .A1(ref_1_maj_111_n27), .A2(ref_1_maj_111_n26), 
        .ZN(ref_1_maj_111_n28) );
  NAND2_X1 ref_1_maj_111_U18 ( .A1(ref_1_refreshed_1_6_), .A2(
        ref_1_maj_111_n28), .ZN(ref_1_maj_111_n29) );
  NAND2_X1 ref_1_maj_111_U17 ( .A1(ref_1_maj_111_n26), .A2(ref_1_maj_111_n27), 
        .ZN(ref_1_maj_111_n30) );
  NAND2_X1 ref_1_maj_111_U16 ( .A1(ref_1_maj_111_n30), .A2(ref_1_maj_111_n29), 
        .ZN(ref_1_maj_111_n31) );
  OR2_X1 ref_1_maj_111_U15 ( .A1(ref_1_maj_111_n23), .A2(ref_1_maj_111_n22), 
        .ZN(ref_1_maj_111_n32) );
  NAND2_X1 ref_1_maj_111_U14 ( .A1(ref_1_maj_111_n22), .A2(ref_1_maj_111_n23), 
        .ZN(ref_1_maj_111_n34) );
  NAND2_X1 ref_1_maj_111_U13 ( .A1(ref_1_maj_111_n32), .A2(ref_1_maj_111_n31), 
        .ZN(ref_1_maj_111_n33) );
  NAND2_X1 ref_1_maj_111_U12 ( .A1(ref_1_maj_111_n34), .A2(ref_1_maj_111_n33), 
        .ZN(ref_1_maj_111_port_o) );
  NAND2_X1 ref_1_maj_111_U11 ( .A1(ref_1_n23), .A2(ref_1_maj_111_n25), .ZN(
        ref_1_maj_111_n18) );
  NAND2_X1 ref_1_maj_111_U10 ( .A1(ref_1_n19), .A2(ref_1_n21), .ZN(
        ref_1_maj_111_n19) );
  NAND2_X1 ref_1_maj_111_U9 ( .A1(ref_1_maj_111_n19), .A2(ref_1_maj_111_n18), 
        .ZN(ref_1_maj_111_n22) );
  NAND2_X1 ref_1_maj_111_U8 ( .A1(ref_1_n17), .A2(ref_1_maj_111_n24), .ZN(
        ref_1_maj_111_n20) );
  NAND2_X1 ref_1_maj_111_U7 ( .A1(ref_1_n13), .A2(ref_1_n15), .ZN(
        ref_1_maj_111_n21) );
  NAND2_X1 ref_1_maj_111_U6 ( .A1(ref_1_maj_111_n21), .A2(ref_1_maj_111_n20), 
        .ZN(ref_1_maj_111_n23) );
  XOR2_X1 ref_1_maj_111_U5 ( .A(ref_1_n17), .B(ref_1_maj_111_n24), .Z(
        ref_1_maj_111_n26) );
  XOR2_X1 ref_1_maj_111_U4 ( .A(ref_1_n23), .B(ref_1_maj_111_n25), .Z(
        ref_1_maj_111_n27) );
  XOR2_X1 ref_1_maj_111_U3 ( .A(ref_1_n13), .B(ref_1_n15), .Z(
        ref_1_maj_111_n24) );
  XOR2_X1 ref_1_maj_111_U2 ( .A(ref_1_n19), .B(ref_1_n21), .Z(
        ref_1_maj_111_n25) );
  OR2_X1 ref_1_maj_112_U19 ( .A1(ref_1_maj_112_n27), .A2(ref_1_maj_112_n26), 
        .ZN(ref_1_maj_112_n28) );
  NAND2_X1 ref_1_maj_112_U18 ( .A1(ref_1_refreshed_1_6_), .A2(
        ref_1_maj_112_n28), .ZN(ref_1_maj_112_n29) );
  NAND2_X1 ref_1_maj_112_U17 ( .A1(ref_1_maj_112_n26), .A2(ref_1_maj_112_n27), 
        .ZN(ref_1_maj_112_n30) );
  NAND2_X1 ref_1_maj_112_U16 ( .A1(ref_1_maj_112_n30), .A2(ref_1_maj_112_n29), 
        .ZN(ref_1_maj_112_n31) );
  OR2_X1 ref_1_maj_112_U15 ( .A1(ref_1_maj_112_n23), .A2(ref_1_maj_112_n22), 
        .ZN(ref_1_maj_112_n32) );
  NAND2_X1 ref_1_maj_112_U14 ( .A1(ref_1_maj_112_n22), .A2(ref_1_maj_112_n23), 
        .ZN(ref_1_maj_112_n34) );
  NAND2_X1 ref_1_maj_112_U13 ( .A1(ref_1_maj_112_n32), .A2(ref_1_maj_112_n31), 
        .ZN(ref_1_maj_112_n33) );
  NAND2_X1 ref_1_maj_112_U12 ( .A1(ref_1_maj_112_n34), .A2(ref_1_maj_112_n33), 
        .ZN(ref_1_maj_112_port_o) );
  NAND2_X1 ref_1_maj_112_U11 ( .A1(ref_1_n24), .A2(ref_1_maj_112_n25), .ZN(
        ref_1_maj_112_n18) );
  NAND2_X1 ref_1_maj_112_U10 ( .A1(ref_1_n20), .A2(ref_1_n22), .ZN(
        ref_1_maj_112_n19) );
  NAND2_X1 ref_1_maj_112_U9 ( .A1(ref_1_maj_112_n19), .A2(ref_1_maj_112_n18), 
        .ZN(ref_1_maj_112_n22) );
  NAND2_X1 ref_1_maj_112_U8 ( .A1(ref_1_n18), .A2(ref_1_maj_112_n24), .ZN(
        ref_1_maj_112_n20) );
  NAND2_X1 ref_1_maj_112_U7 ( .A1(ref_1_n14), .A2(ref_1_n16), .ZN(
        ref_1_maj_112_n21) );
  NAND2_X1 ref_1_maj_112_U6 ( .A1(ref_1_maj_112_n21), .A2(ref_1_maj_112_n20), 
        .ZN(ref_1_maj_112_n23) );
  XOR2_X1 ref_1_maj_112_U5 ( .A(ref_1_n18), .B(ref_1_maj_112_n24), .Z(
        ref_1_maj_112_n26) );
  XOR2_X1 ref_1_maj_112_U4 ( .A(ref_1_n24), .B(ref_1_maj_112_n25), .Z(
        ref_1_maj_112_n27) );
  XOR2_X1 ref_1_maj_112_U3 ( .A(ref_1_n14), .B(ref_1_n16), .Z(
        ref_1_maj_112_n24) );
  XOR2_X1 ref_1_maj_112_U2 ( .A(ref_1_n20), .B(ref_1_n22), .Z(
        ref_1_maj_112_n25) );
  OR2_X1 ref_1_maj_113_U19 ( .A1(ref_1_maj_113_n27), .A2(ref_1_maj_113_n26), 
        .ZN(ref_1_maj_113_n28) );
  NAND2_X1 ref_1_maj_113_U18 ( .A1(ref_1_refreshed_1_6_), .A2(
        ref_1_maj_113_n28), .ZN(ref_1_maj_113_n29) );
  NAND2_X1 ref_1_maj_113_U17 ( .A1(ref_1_maj_113_n26), .A2(ref_1_maj_113_n27), 
        .ZN(ref_1_maj_113_n30) );
  NAND2_X1 ref_1_maj_113_U16 ( .A1(ref_1_maj_113_n30), .A2(ref_1_maj_113_n29), 
        .ZN(ref_1_maj_113_n31) );
  OR2_X1 ref_1_maj_113_U15 ( .A1(ref_1_maj_113_n23), .A2(ref_1_maj_113_n22), 
        .ZN(ref_1_maj_113_n32) );
  NAND2_X1 ref_1_maj_113_U14 ( .A1(ref_1_maj_113_n22), .A2(ref_1_maj_113_n23), 
        .ZN(ref_1_maj_113_n34) );
  NAND2_X1 ref_1_maj_113_U13 ( .A1(ref_1_maj_113_n32), .A2(ref_1_maj_113_n31), 
        .ZN(ref_1_maj_113_n33) );
  NAND2_X1 ref_1_maj_113_U12 ( .A1(ref_1_maj_113_n34), .A2(ref_1_maj_113_n33), 
        .ZN(ref_1_maj_113_port_o) );
  NAND2_X1 ref_1_maj_113_U11 ( .A1(ref_1_n23), .A2(ref_1_maj_113_n25), .ZN(
        ref_1_maj_113_n18) );
  NAND2_X1 ref_1_maj_113_U10 ( .A1(ref_1_n19), .A2(ref_1_n21), .ZN(
        ref_1_maj_113_n19) );
  NAND2_X1 ref_1_maj_113_U9 ( .A1(ref_1_maj_113_n19), .A2(ref_1_maj_113_n18), 
        .ZN(ref_1_maj_113_n22) );
  NAND2_X1 ref_1_maj_113_U8 ( .A1(ref_1_n17), .A2(ref_1_maj_113_n24), .ZN(
        ref_1_maj_113_n20) );
  NAND2_X1 ref_1_maj_113_U7 ( .A1(ref_1_n13), .A2(ref_1_n15), .ZN(
        ref_1_maj_113_n21) );
  NAND2_X1 ref_1_maj_113_U6 ( .A1(ref_1_maj_113_n21), .A2(ref_1_maj_113_n20), 
        .ZN(ref_1_maj_113_n23) );
  XOR2_X1 ref_1_maj_113_U5 ( .A(ref_1_n17), .B(ref_1_maj_113_n24), .Z(
        ref_1_maj_113_n26) );
  XOR2_X1 ref_1_maj_113_U4 ( .A(ref_1_n23), .B(ref_1_maj_113_n25), .Z(
        ref_1_maj_113_n27) );
  XOR2_X1 ref_1_maj_113_U3 ( .A(ref_1_n13), .B(ref_1_n15), .Z(
        ref_1_maj_113_n24) );
  XOR2_X1 ref_1_maj_113_U2 ( .A(ref_1_n19), .B(ref_1_n21), .Z(
        ref_1_maj_113_n25) );
  OR2_X1 ref_1_maj_114_U19 ( .A1(ref_1_maj_114_n27), .A2(ref_1_maj_114_n26), 
        .ZN(ref_1_maj_114_n28) );
  NAND2_X1 ref_1_maj_114_U18 ( .A1(ref_1_refreshed_2_6_), .A2(
        ref_1_maj_114_n28), .ZN(ref_1_maj_114_n29) );
  NAND2_X1 ref_1_maj_114_U17 ( .A1(ref_1_maj_114_n26), .A2(ref_1_maj_114_n27), 
        .ZN(ref_1_maj_114_n30) );
  NAND2_X1 ref_1_maj_114_U16 ( .A1(ref_1_maj_114_n30), .A2(ref_1_maj_114_n29), 
        .ZN(ref_1_maj_114_n31) );
  OR2_X1 ref_1_maj_114_U15 ( .A1(ref_1_maj_114_n23), .A2(ref_1_maj_114_n22), 
        .ZN(ref_1_maj_114_n32) );
  NAND2_X1 ref_1_maj_114_U14 ( .A1(ref_1_maj_114_n22), .A2(ref_1_maj_114_n23), 
        .ZN(ref_1_maj_114_n34) );
  NAND2_X1 ref_1_maj_114_U13 ( .A1(ref_1_maj_114_n32), .A2(ref_1_maj_114_n31), 
        .ZN(ref_1_maj_114_n33) );
  NAND2_X1 ref_1_maj_114_U12 ( .A1(ref_1_maj_114_n34), .A2(ref_1_maj_114_n33), 
        .ZN(ref_1_maj_114_port_o) );
  NAND2_X1 ref_1_maj_114_U11 ( .A1(ref_1_n11), .A2(ref_1_maj_114_n25), .ZN(
        ref_1_maj_114_n18) );
  NAND2_X1 ref_1_maj_114_U10 ( .A1(ref_1_n8), .A2(ref_1_n9), .ZN(
        ref_1_maj_114_n19) );
  NAND2_X1 ref_1_maj_114_U9 ( .A1(ref_1_maj_114_n19), .A2(ref_1_maj_114_n18), 
        .ZN(ref_1_maj_114_n22) );
  NAND2_X1 ref_1_maj_114_U8 ( .A1(ref_1_n5), .A2(ref_1_maj_114_n24), .ZN(
        ref_1_maj_114_n20) );
  NAND2_X1 ref_1_maj_114_U7 ( .A1(ref_1_n1), .A2(ref_1_n3), .ZN(
        ref_1_maj_114_n21) );
  NAND2_X1 ref_1_maj_114_U6 ( .A1(ref_1_maj_114_n21), .A2(ref_1_maj_114_n20), 
        .ZN(ref_1_maj_114_n23) );
  XOR2_X1 ref_1_maj_114_U5 ( .A(ref_1_n5), .B(ref_1_maj_114_n24), .Z(
        ref_1_maj_114_n26) );
  XOR2_X1 ref_1_maj_114_U4 ( .A(ref_1_n11), .B(ref_1_maj_114_n25), .Z(
        ref_1_maj_114_n27) );
  XOR2_X1 ref_1_maj_114_U3 ( .A(ref_1_n1), .B(ref_1_n3), .Z(ref_1_maj_114_n24)
         );
  XOR2_X1 ref_1_maj_114_U2 ( .A(ref_1_n8), .B(ref_1_n9), .Z(ref_1_maj_114_n25)
         );
  OR2_X1 ref_1_maj_115_U19 ( .A1(ref_1_maj_115_n27), .A2(ref_1_maj_115_n26), 
        .ZN(ref_1_maj_115_n28) );
  NAND2_X1 ref_1_maj_115_U18 ( .A1(ref_1_refreshed_2_6_), .A2(
        ref_1_maj_115_n28), .ZN(ref_1_maj_115_n29) );
  NAND2_X1 ref_1_maj_115_U17 ( .A1(ref_1_maj_115_n26), .A2(ref_1_maj_115_n27), 
        .ZN(ref_1_maj_115_n30) );
  NAND2_X1 ref_1_maj_115_U16 ( .A1(ref_1_maj_115_n30), .A2(ref_1_maj_115_n29), 
        .ZN(ref_1_maj_115_n31) );
  OR2_X1 ref_1_maj_115_U15 ( .A1(ref_1_maj_115_n23), .A2(ref_1_maj_115_n22), 
        .ZN(ref_1_maj_115_n32) );
  NAND2_X1 ref_1_maj_115_U14 ( .A1(ref_1_maj_115_n22), .A2(ref_1_maj_115_n23), 
        .ZN(ref_1_maj_115_n34) );
  NAND2_X1 ref_1_maj_115_U13 ( .A1(ref_1_maj_115_n32), .A2(ref_1_maj_115_n31), 
        .ZN(ref_1_maj_115_n33) );
  NAND2_X1 ref_1_maj_115_U12 ( .A1(ref_1_maj_115_n34), .A2(ref_1_maj_115_n33), 
        .ZN(ref_1_maj_115_port_o) );
  NAND2_X1 ref_1_maj_115_U11 ( .A1(ref_1_n12), .A2(ref_1_maj_115_n25), .ZN(
        ref_1_maj_115_n18) );
  NAND2_X1 ref_1_maj_115_U10 ( .A1(ref_1_n8), .A2(ref_1_n10), .ZN(
        ref_1_maj_115_n19) );
  NAND2_X1 ref_1_maj_115_U9 ( .A1(ref_1_maj_115_n19), .A2(ref_1_maj_115_n18), 
        .ZN(ref_1_maj_115_n22) );
  NAND2_X1 ref_1_maj_115_U8 ( .A1(ref_1_n6), .A2(ref_1_maj_115_n24), .ZN(
        ref_1_maj_115_n20) );
  NAND2_X1 ref_1_maj_115_U7 ( .A1(ref_1_n2), .A2(ref_1_n4), .ZN(
        ref_1_maj_115_n21) );
  NAND2_X1 ref_1_maj_115_U6 ( .A1(ref_1_maj_115_n21), .A2(ref_1_maj_115_n20), 
        .ZN(ref_1_maj_115_n23) );
  XOR2_X1 ref_1_maj_115_U5 ( .A(ref_1_n6), .B(ref_1_maj_115_n24), .Z(
        ref_1_maj_115_n26) );
  XOR2_X1 ref_1_maj_115_U4 ( .A(ref_1_n12), .B(ref_1_maj_115_n25), .Z(
        ref_1_maj_115_n27) );
  XOR2_X1 ref_1_maj_115_U3 ( .A(ref_1_n2), .B(ref_1_n4), .Z(ref_1_maj_115_n24)
         );
  XOR2_X1 ref_1_maj_115_U2 ( .A(ref_1_n8), .B(ref_1_n10), .Z(ref_1_maj_115_n25) );
  OR2_X1 ref_1_maj_116_U19 ( .A1(ref_1_maj_116_n27), .A2(ref_1_maj_116_n26), 
        .ZN(ref_1_maj_116_n28) );
  NAND2_X1 ref_1_maj_116_U18 ( .A1(ref_1_refreshed_2_6_), .A2(
        ref_1_maj_116_n28), .ZN(ref_1_maj_116_n29) );
  NAND2_X1 ref_1_maj_116_U17 ( .A1(ref_1_maj_116_n26), .A2(ref_1_maj_116_n27), 
        .ZN(ref_1_maj_116_n30) );
  NAND2_X1 ref_1_maj_116_U16 ( .A1(ref_1_maj_116_n30), .A2(ref_1_maj_116_n29), 
        .ZN(ref_1_maj_116_n31) );
  OR2_X1 ref_1_maj_116_U15 ( .A1(ref_1_maj_116_n23), .A2(ref_1_maj_116_n22), 
        .ZN(ref_1_maj_116_n32) );
  NAND2_X1 ref_1_maj_116_U14 ( .A1(ref_1_maj_116_n22), .A2(ref_1_maj_116_n23), 
        .ZN(ref_1_maj_116_n34) );
  NAND2_X1 ref_1_maj_116_U13 ( .A1(ref_1_maj_116_n32), .A2(ref_1_maj_116_n31), 
        .ZN(ref_1_maj_116_n33) );
  NAND2_X1 ref_1_maj_116_U12 ( .A1(ref_1_maj_116_n34), .A2(ref_1_maj_116_n33), 
        .ZN(ref_1_maj_116_port_o) );
  NAND2_X1 ref_1_maj_116_U11 ( .A1(ref_1_n11), .A2(ref_1_maj_116_n25), .ZN(
        ref_1_maj_116_n18) );
  NAND2_X1 ref_1_maj_116_U10 ( .A1(ref_1_n8), .A2(ref_1_n9), .ZN(
        ref_1_maj_116_n19) );
  NAND2_X1 ref_1_maj_116_U9 ( .A1(ref_1_maj_116_n19), .A2(ref_1_maj_116_n18), 
        .ZN(ref_1_maj_116_n22) );
  NAND2_X1 ref_1_maj_116_U8 ( .A1(ref_1_n5), .A2(ref_1_maj_116_n24), .ZN(
        ref_1_maj_116_n20) );
  NAND2_X1 ref_1_maj_116_U7 ( .A1(ref_1_n1), .A2(ref_1_n3), .ZN(
        ref_1_maj_116_n21) );
  NAND2_X1 ref_1_maj_116_U6 ( .A1(ref_1_maj_116_n21), .A2(ref_1_maj_116_n20), 
        .ZN(ref_1_maj_116_n23) );
  XOR2_X1 ref_1_maj_116_U5 ( .A(ref_1_n5), .B(ref_1_maj_116_n24), .Z(
        ref_1_maj_116_n26) );
  XOR2_X1 ref_1_maj_116_U4 ( .A(ref_1_n11), .B(ref_1_maj_116_n25), .Z(
        ref_1_maj_116_n27) );
  XOR2_X1 ref_1_maj_116_U3 ( .A(ref_1_n1), .B(ref_1_n3), .Z(ref_1_maj_116_n24)
         );
  XOR2_X1 ref_1_maj_116_U2 ( .A(ref_1_n8), .B(ref_1_n9), .Z(ref_1_maj_116_n25)
         );
  OR2_X1 ref_1_maj_117_U19 ( .A1(ref_1_maj_117_n27), .A2(ref_1_maj_117_n26), 
        .ZN(ref_1_maj_117_n28) );
  NAND2_X1 ref_1_maj_117_U18 ( .A1(ref_1_refreshed_0_6_), .A2(
        ref_1_maj_117_n28), .ZN(ref_1_maj_117_n29) );
  NAND2_X1 ref_1_maj_117_U17 ( .A1(ref_1_maj_117_n26), .A2(ref_1_maj_117_n27), 
        .ZN(ref_1_maj_117_n30) );
  NAND2_X1 ref_1_maj_117_U16 ( .A1(ref_1_maj_117_n30), .A2(ref_1_maj_117_n29), 
        .ZN(ref_1_maj_117_n31) );
  OR2_X1 ref_1_maj_117_U15 ( .A1(ref_1_maj_117_n23), .A2(ref_1_maj_117_n22), 
        .ZN(ref_1_maj_117_n32) );
  NAND2_X1 ref_1_maj_117_U14 ( .A1(ref_1_maj_117_n22), .A2(ref_1_maj_117_n23), 
        .ZN(ref_1_maj_117_n34) );
  NAND2_X1 ref_1_maj_117_U13 ( .A1(ref_1_maj_117_n32), .A2(ref_1_maj_117_n31), 
        .ZN(ref_1_maj_117_n33) );
  NAND2_X1 ref_1_maj_117_U12 ( .A1(ref_1_maj_117_n34), .A2(ref_1_maj_117_n33), 
        .ZN(ref_1_maj_117_port_o) );
  NAND2_X1 ref_1_maj_117_U11 ( .A1(ref_1_n35), .A2(ref_1_maj_117_n25), .ZN(
        ref_1_maj_117_n18) );
  NAND2_X1 ref_1_maj_117_U10 ( .A1(ref_1_n32), .A2(ref_1_n33), .ZN(
        ref_1_maj_117_n19) );
  NAND2_X1 ref_1_maj_117_U9 ( .A1(ref_1_maj_117_n19), .A2(ref_1_maj_117_n18), 
        .ZN(ref_1_maj_117_n22) );
  NAND2_X1 ref_1_maj_117_U8 ( .A1(ref_1_n30), .A2(ref_1_maj_117_n24), .ZN(
        ref_1_maj_117_n20) );
  NAND2_X1 ref_1_maj_117_U7 ( .A1(ref_1_n26), .A2(ref_1_n27), .ZN(
        ref_1_maj_117_n21) );
  NAND2_X1 ref_1_maj_117_U6 ( .A1(ref_1_maj_117_n21), .A2(ref_1_maj_117_n20), 
        .ZN(ref_1_maj_117_n23) );
  XOR2_X1 ref_1_maj_117_U5 ( .A(ref_1_n30), .B(ref_1_maj_117_n24), .Z(
        ref_1_maj_117_n26) );
  XOR2_X1 ref_1_maj_117_U4 ( .A(ref_1_n35), .B(ref_1_maj_117_n25), .Z(
        ref_1_maj_117_n27) );
  XOR2_X1 ref_1_maj_117_U3 ( .A(ref_1_n26), .B(ref_1_n27), .Z(
        ref_1_maj_117_n24) );
  XOR2_X1 ref_1_maj_117_U2 ( .A(ref_1_n32), .B(ref_1_n33), .Z(
        ref_1_maj_117_n25) );
  OR2_X1 ref_1_maj_118_U19 ( .A1(ref_1_maj_118_n27), .A2(ref_1_maj_118_n26), 
        .ZN(ref_1_maj_118_n28) );
  NAND2_X1 ref_1_maj_118_U18 ( .A1(ref_1_refreshed_0_6_), .A2(
        ref_1_maj_118_n28), .ZN(ref_1_maj_118_n29) );
  NAND2_X1 ref_1_maj_118_U17 ( .A1(ref_1_maj_118_n26), .A2(ref_1_maj_118_n27), 
        .ZN(ref_1_maj_118_n30) );
  NAND2_X1 ref_1_maj_118_U16 ( .A1(ref_1_maj_118_n30), .A2(ref_1_maj_118_n29), 
        .ZN(ref_1_maj_118_n31) );
  OR2_X1 ref_1_maj_118_U15 ( .A1(ref_1_maj_118_n23), .A2(ref_1_maj_118_n22), 
        .ZN(ref_1_maj_118_n32) );
  NAND2_X1 ref_1_maj_118_U14 ( .A1(ref_1_maj_118_n22), .A2(ref_1_maj_118_n23), 
        .ZN(ref_1_maj_118_n34) );
  NAND2_X1 ref_1_maj_118_U13 ( .A1(ref_1_maj_118_n32), .A2(ref_1_maj_118_n31), 
        .ZN(ref_1_maj_118_n33) );
  NAND2_X1 ref_1_maj_118_U12 ( .A1(ref_1_maj_118_n34), .A2(ref_1_maj_118_n33), 
        .ZN(ref_1_maj_118_port_o) );
  NAND2_X1 ref_1_maj_118_U11 ( .A1(ref_1_refreshed_0_5_), .A2(
        ref_1_maj_118_n25), .ZN(ref_1_maj_118_n18) );
  NAND2_X1 ref_1_maj_118_U10 ( .A1(ref_1_n32), .A2(ref_1_refreshed_0_4_), .ZN(
        ref_1_maj_118_n19) );
  NAND2_X1 ref_1_maj_118_U9 ( .A1(ref_1_maj_118_n19), .A2(ref_1_maj_118_n18), 
        .ZN(ref_1_maj_118_n22) );
  NAND2_X1 ref_1_maj_118_U8 ( .A1(ref_1_n30), .A2(ref_1_maj_118_n24), .ZN(
        ref_1_maj_118_n20) );
  NAND2_X1 ref_1_maj_118_U7 ( .A1(ref_1_n26), .A2(ref_1_refreshed_0_1_), .ZN(
        ref_1_maj_118_n21) );
  NAND2_X1 ref_1_maj_118_U6 ( .A1(ref_1_maj_118_n21), .A2(ref_1_maj_118_n20), 
        .ZN(ref_1_maj_118_n23) );
  XOR2_X1 ref_1_maj_118_U5 ( .A(ref_1_n30), .B(ref_1_maj_118_n24), .Z(
        ref_1_maj_118_n26) );
  XOR2_X1 ref_1_maj_118_U4 ( .A(ref_1_refreshed_0_5_), .B(ref_1_maj_118_n25), 
        .Z(ref_1_maj_118_n27) );
  XOR2_X1 ref_1_maj_118_U3 ( .A(ref_1_n26), .B(ref_1_refreshed_0_1_), .Z(
        ref_1_maj_118_n24) );
  XOR2_X1 ref_1_maj_118_U2 ( .A(ref_1_n32), .B(ref_1_refreshed_0_4_), .Z(
        ref_1_maj_118_n25) );
  OR2_X1 ref_1_maj_119_U19 ( .A1(ref_1_maj_119_n27), .A2(ref_1_maj_119_n26), 
        .ZN(ref_1_maj_119_n28) );
  NAND2_X1 ref_1_maj_119_U18 ( .A1(ref_1_refreshed_0_6_), .A2(
        ref_1_maj_119_n28), .ZN(ref_1_maj_119_n29) );
  NAND2_X1 ref_1_maj_119_U17 ( .A1(ref_1_maj_119_n26), .A2(ref_1_maj_119_n27), 
        .ZN(ref_1_maj_119_n30) );
  NAND2_X1 ref_1_maj_119_U16 ( .A1(ref_1_maj_119_n30), .A2(ref_1_maj_119_n29), 
        .ZN(ref_1_maj_119_n31) );
  OR2_X1 ref_1_maj_119_U15 ( .A1(ref_1_maj_119_n23), .A2(ref_1_maj_119_n22), 
        .ZN(ref_1_maj_119_n32) );
  NAND2_X1 ref_1_maj_119_U14 ( .A1(ref_1_maj_119_n22), .A2(ref_1_maj_119_n23), 
        .ZN(ref_1_maj_119_n34) );
  NAND2_X1 ref_1_maj_119_U13 ( .A1(ref_1_maj_119_n32), .A2(ref_1_maj_119_n31), 
        .ZN(ref_1_maj_119_n33) );
  NAND2_X1 ref_1_maj_119_U12 ( .A1(ref_1_maj_119_n34), .A2(ref_1_maj_119_n33), 
        .ZN(ref_1_maj_119_port_o) );
  NAND2_X1 ref_1_maj_119_U11 ( .A1(ref_1_refreshed_0_5_), .A2(
        ref_1_maj_119_n25), .ZN(ref_1_maj_119_n18) );
  NAND2_X1 ref_1_maj_119_U10 ( .A1(ref_1_n32), .A2(ref_1_refreshed_0_4_), .ZN(
        ref_1_maj_119_n19) );
  NAND2_X1 ref_1_maj_119_U9 ( .A1(ref_1_maj_119_n19), .A2(ref_1_maj_119_n18), 
        .ZN(ref_1_maj_119_n22) );
  NAND2_X1 ref_1_maj_119_U8 ( .A1(ref_1_n30), .A2(ref_1_maj_119_n24), .ZN(
        ref_1_maj_119_n20) );
  NAND2_X1 ref_1_maj_119_U7 ( .A1(ref_1_n26), .A2(ref_1_refreshed_0_1_), .ZN(
        ref_1_maj_119_n21) );
  NAND2_X1 ref_1_maj_119_U6 ( .A1(ref_1_maj_119_n21), .A2(ref_1_maj_119_n20), 
        .ZN(ref_1_maj_119_n23) );
  XOR2_X1 ref_1_maj_119_U5 ( .A(ref_1_n30), .B(ref_1_maj_119_n24), .Z(
        ref_1_maj_119_n26) );
  XOR2_X1 ref_1_maj_119_U4 ( .A(ref_1_refreshed_0_5_), .B(ref_1_maj_119_n25), 
        .Z(ref_1_maj_119_n27) );
  XOR2_X1 ref_1_maj_119_U3 ( .A(ref_1_n26), .B(ref_1_refreshed_0_1_), .Z(
        ref_1_maj_119_n24) );
  XOR2_X1 ref_1_maj_119_U2 ( .A(ref_1_n32), .B(ref_1_refreshed_0_4_), .Z(
        ref_1_maj_119_n25) );
  OR2_X1 ref_1_maj_120_U19 ( .A1(ref_1_maj_120_n27), .A2(ref_1_maj_120_n26), 
        .ZN(ref_1_maj_120_n28) );
  NAND2_X1 ref_1_maj_120_U18 ( .A1(ref_1_refreshed_1_6_), .A2(
        ref_1_maj_120_n28), .ZN(ref_1_maj_120_n29) );
  NAND2_X1 ref_1_maj_120_U17 ( .A1(ref_1_maj_120_n26), .A2(ref_1_maj_120_n27), 
        .ZN(ref_1_maj_120_n30) );
  NAND2_X1 ref_1_maj_120_U16 ( .A1(ref_1_maj_120_n30), .A2(ref_1_maj_120_n29), 
        .ZN(ref_1_maj_120_n31) );
  OR2_X1 ref_1_maj_120_U15 ( .A1(ref_1_maj_120_n23), .A2(ref_1_maj_120_n22), 
        .ZN(ref_1_maj_120_n32) );
  NAND2_X1 ref_1_maj_120_U14 ( .A1(ref_1_maj_120_n22), .A2(ref_1_maj_120_n23), 
        .ZN(ref_1_maj_120_n34) );
  NAND2_X1 ref_1_maj_120_U13 ( .A1(ref_1_maj_120_n32), .A2(ref_1_maj_120_n31), 
        .ZN(ref_1_maj_120_n33) );
  NAND2_X1 ref_1_maj_120_U12 ( .A1(ref_1_maj_120_n34), .A2(ref_1_maj_120_n33), 
        .ZN(ref_1_maj_120_port_o) );
  NAND2_X1 ref_1_maj_120_U11 ( .A1(ref_1_refreshed_1_5_), .A2(
        ref_1_maj_120_n25), .ZN(ref_1_maj_120_n18) );
  NAND2_X1 ref_1_maj_120_U10 ( .A1(ref_1_refreshed_1_3_), .A2(
        ref_1_refreshed_1_4_), .ZN(ref_1_maj_120_n19) );
  NAND2_X1 ref_1_maj_120_U9 ( .A1(ref_1_maj_120_n19), .A2(ref_1_maj_120_n18), 
        .ZN(ref_1_maj_120_n22) );
  NAND2_X1 ref_1_maj_120_U8 ( .A1(ref_1_refreshed_1_2_), .A2(ref_1_maj_120_n24), .ZN(ref_1_maj_120_n20) );
  NAND2_X1 ref_1_maj_120_U7 ( .A1(ref_1_refreshed_1_0_), .A2(
        ref_1_refreshed_1_1_), .ZN(ref_1_maj_120_n21) );
  NAND2_X1 ref_1_maj_120_U6 ( .A1(ref_1_maj_120_n21), .A2(ref_1_maj_120_n20), 
        .ZN(ref_1_maj_120_n23) );
  XOR2_X1 ref_1_maj_120_U5 ( .A(ref_1_refreshed_1_2_), .B(ref_1_maj_120_n24), 
        .Z(ref_1_maj_120_n26) );
  XOR2_X1 ref_1_maj_120_U4 ( .A(ref_1_refreshed_1_5_), .B(ref_1_maj_120_n25), 
        .Z(ref_1_maj_120_n27) );
  XOR2_X1 ref_1_maj_120_U3 ( .A(ref_1_refreshed_1_0_), .B(ref_1_refreshed_1_1_), .Z(ref_1_maj_120_n24) );
  XOR2_X1 ref_1_maj_120_U2 ( .A(ref_1_refreshed_1_3_), .B(ref_1_refreshed_1_4_), .Z(ref_1_maj_120_n25) );
  OR2_X1 ref_1_maj_121_U19 ( .A1(ref_1_maj_121_n27), .A2(ref_1_maj_121_n26), 
        .ZN(ref_1_maj_121_n28) );
  NAND2_X1 ref_1_maj_121_U18 ( .A1(ref_1_refreshed_1_6_), .A2(
        ref_1_maj_121_n28), .ZN(ref_1_maj_121_n29) );
  NAND2_X1 ref_1_maj_121_U17 ( .A1(ref_1_maj_121_n26), .A2(ref_1_maj_121_n27), 
        .ZN(ref_1_maj_121_n30) );
  NAND2_X1 ref_1_maj_121_U16 ( .A1(ref_1_maj_121_n30), .A2(ref_1_maj_121_n29), 
        .ZN(ref_1_maj_121_n31) );
  OR2_X1 ref_1_maj_121_U15 ( .A1(ref_1_maj_121_n23), .A2(ref_1_maj_121_n22), 
        .ZN(ref_1_maj_121_n32) );
  NAND2_X1 ref_1_maj_121_U14 ( .A1(ref_1_maj_121_n22), .A2(ref_1_maj_121_n23), 
        .ZN(ref_1_maj_121_n34) );
  NAND2_X1 ref_1_maj_121_U13 ( .A1(ref_1_maj_121_n32), .A2(ref_1_maj_121_n31), 
        .ZN(ref_1_maj_121_n33) );
  NAND2_X1 ref_1_maj_121_U12 ( .A1(ref_1_maj_121_n34), .A2(ref_1_maj_121_n33), 
        .ZN(ref_1_maj_121_port_o) );
  NAND2_X1 ref_1_maj_121_U11 ( .A1(ref_1_refreshed_1_5_), .A2(
        ref_1_maj_121_n25), .ZN(ref_1_maj_121_n18) );
  NAND2_X1 ref_1_maj_121_U10 ( .A1(ref_1_refreshed_1_3_), .A2(
        ref_1_refreshed_1_4_), .ZN(ref_1_maj_121_n19) );
  NAND2_X1 ref_1_maj_121_U9 ( .A1(ref_1_maj_121_n19), .A2(ref_1_maj_121_n18), 
        .ZN(ref_1_maj_121_n22) );
  NAND2_X1 ref_1_maj_121_U8 ( .A1(ref_1_refreshed_1_2_), .A2(ref_1_maj_121_n24), .ZN(ref_1_maj_121_n20) );
  NAND2_X1 ref_1_maj_121_U7 ( .A1(ref_1_refreshed_1_0_), .A2(
        ref_1_refreshed_1_1_), .ZN(ref_1_maj_121_n21) );
  NAND2_X1 ref_1_maj_121_U6 ( .A1(ref_1_maj_121_n21), .A2(ref_1_maj_121_n20), 
        .ZN(ref_1_maj_121_n23) );
  XOR2_X1 ref_1_maj_121_U5 ( .A(ref_1_refreshed_1_2_), .B(ref_1_maj_121_n24), 
        .Z(ref_1_maj_121_n26) );
  XOR2_X1 ref_1_maj_121_U4 ( .A(ref_1_refreshed_1_5_), .B(ref_1_maj_121_n25), 
        .Z(ref_1_maj_121_n27) );
  XOR2_X1 ref_1_maj_121_U3 ( .A(ref_1_refreshed_1_0_), .B(ref_1_refreshed_1_1_), .Z(ref_1_maj_121_n24) );
  XOR2_X1 ref_1_maj_121_U2 ( .A(ref_1_refreshed_1_3_), .B(ref_1_refreshed_1_4_), .Z(ref_1_maj_121_n25) );
  OR2_X1 ref_1_maj_122_U19 ( .A1(ref_1_maj_122_n27), .A2(ref_1_maj_122_n26), 
        .ZN(ref_1_maj_122_n28) );
  NAND2_X1 ref_1_maj_122_U18 ( .A1(ref_1_refreshed_1_6_), .A2(
        ref_1_maj_122_n28), .ZN(ref_1_maj_122_n29) );
  NAND2_X1 ref_1_maj_122_U17 ( .A1(ref_1_maj_122_n26), .A2(ref_1_maj_122_n27), 
        .ZN(ref_1_maj_122_n30) );
  NAND2_X1 ref_1_maj_122_U16 ( .A1(ref_1_maj_122_n30), .A2(ref_1_maj_122_n29), 
        .ZN(ref_1_maj_122_n31) );
  OR2_X1 ref_1_maj_122_U15 ( .A1(ref_1_maj_122_n23), .A2(ref_1_maj_122_n22), 
        .ZN(ref_1_maj_122_n32) );
  NAND2_X1 ref_1_maj_122_U14 ( .A1(ref_1_maj_122_n22), .A2(ref_1_maj_122_n23), 
        .ZN(ref_1_maj_122_n34) );
  NAND2_X1 ref_1_maj_122_U13 ( .A1(ref_1_maj_122_n32), .A2(ref_1_maj_122_n31), 
        .ZN(ref_1_maj_122_n33) );
  NAND2_X1 ref_1_maj_122_U12 ( .A1(ref_1_maj_122_n34), .A2(ref_1_maj_122_n33), 
        .ZN(ref_1_maj_122_port_o) );
  NAND2_X1 ref_1_maj_122_U11 ( .A1(ref_1_refreshed_1_5_), .A2(
        ref_1_maj_122_n25), .ZN(ref_1_maj_122_n18) );
  NAND2_X1 ref_1_maj_122_U10 ( .A1(ref_1_refreshed_1_3_), .A2(
        ref_1_refreshed_1_4_), .ZN(ref_1_maj_122_n19) );
  NAND2_X1 ref_1_maj_122_U9 ( .A1(ref_1_maj_122_n19), .A2(ref_1_maj_122_n18), 
        .ZN(ref_1_maj_122_n22) );
  NAND2_X1 ref_1_maj_122_U8 ( .A1(ref_1_refreshed_1_2_), .A2(ref_1_maj_122_n24), .ZN(ref_1_maj_122_n20) );
  NAND2_X1 ref_1_maj_122_U7 ( .A1(ref_1_refreshed_1_0_), .A2(
        ref_1_refreshed_1_1_), .ZN(ref_1_maj_122_n21) );
  NAND2_X1 ref_1_maj_122_U6 ( .A1(ref_1_maj_122_n21), .A2(ref_1_maj_122_n20), 
        .ZN(ref_1_maj_122_n23) );
  XOR2_X1 ref_1_maj_122_U5 ( .A(ref_1_refreshed_1_2_), .B(ref_1_maj_122_n24), 
        .Z(ref_1_maj_122_n26) );
  XOR2_X1 ref_1_maj_122_U4 ( .A(ref_1_refreshed_1_5_), .B(ref_1_maj_122_n25), 
        .Z(ref_1_maj_122_n27) );
  XOR2_X1 ref_1_maj_122_U3 ( .A(ref_1_refreshed_1_0_), .B(ref_1_refreshed_1_1_), .Z(ref_1_maj_122_n24) );
  XOR2_X1 ref_1_maj_122_U2 ( .A(ref_1_refreshed_1_3_), .B(ref_1_refreshed_1_4_), .Z(ref_1_maj_122_n25) );
  OR2_X1 ref_1_maj_123_U19 ( .A1(ref_1_maj_123_n27), .A2(ref_1_maj_123_n26), 
        .ZN(ref_1_maj_123_n28) );
  NAND2_X1 ref_1_maj_123_U18 ( .A1(ref_1_refreshed_2_6_), .A2(
        ref_1_maj_123_n28), .ZN(ref_1_maj_123_n29) );
  NAND2_X1 ref_1_maj_123_U17 ( .A1(ref_1_maj_123_n26), .A2(ref_1_maj_123_n27), 
        .ZN(ref_1_maj_123_n30) );
  NAND2_X1 ref_1_maj_123_U16 ( .A1(ref_1_maj_123_n30), .A2(ref_1_maj_123_n29), 
        .ZN(ref_1_maj_123_n31) );
  OR2_X1 ref_1_maj_123_U15 ( .A1(ref_1_maj_123_n23), .A2(ref_1_maj_123_n22), 
        .ZN(ref_1_maj_123_n32) );
  NAND2_X1 ref_1_maj_123_U14 ( .A1(ref_1_maj_123_n22), .A2(ref_1_maj_123_n23), 
        .ZN(ref_1_maj_123_n34) );
  NAND2_X1 ref_1_maj_123_U13 ( .A1(ref_1_maj_123_n32), .A2(ref_1_maj_123_n31), 
        .ZN(ref_1_maj_123_n33) );
  NAND2_X1 ref_1_maj_123_U12 ( .A1(ref_1_maj_123_n34), .A2(ref_1_maj_123_n33), 
        .ZN(ref_1_maj_123_port_o) );
  NAND2_X1 ref_1_maj_123_U11 ( .A1(ref_1_refreshed_2_5_), .A2(
        ref_1_maj_123_n25), .ZN(ref_1_maj_123_n18) );
  NAND2_X1 ref_1_maj_123_U10 ( .A1(ref_1_n8), .A2(ref_1_refreshed_2_4_), .ZN(
        ref_1_maj_123_n19) );
  NAND2_X1 ref_1_maj_123_U9 ( .A1(ref_1_maj_123_n19), .A2(ref_1_maj_123_n18), 
        .ZN(ref_1_maj_123_n22) );
  NAND2_X1 ref_1_maj_123_U8 ( .A1(ref_1_refreshed_2_2_), .A2(ref_1_maj_123_n24), .ZN(ref_1_maj_123_n20) );
  NAND2_X1 ref_1_maj_123_U7 ( .A1(ref_1_refreshed_2_0_), .A2(
        ref_1_refreshed_2_1_), .ZN(ref_1_maj_123_n21) );
  NAND2_X1 ref_1_maj_123_U6 ( .A1(ref_1_maj_123_n21), .A2(ref_1_maj_123_n20), 
        .ZN(ref_1_maj_123_n23) );
  XOR2_X1 ref_1_maj_123_U5 ( .A(ref_1_refreshed_2_2_), .B(ref_1_maj_123_n24), 
        .Z(ref_1_maj_123_n26) );
  XOR2_X1 ref_1_maj_123_U4 ( .A(ref_1_refreshed_2_5_), .B(ref_1_maj_123_n25), 
        .Z(ref_1_maj_123_n27) );
  XOR2_X1 ref_1_maj_123_U3 ( .A(ref_1_refreshed_2_0_), .B(ref_1_refreshed_2_1_), .Z(ref_1_maj_123_n24) );
  XOR2_X1 ref_1_maj_123_U2 ( .A(ref_1_n8), .B(ref_1_refreshed_2_4_), .Z(
        ref_1_maj_123_n25) );
  OR2_X1 ref_1_maj_124_U19 ( .A1(ref_1_maj_124_n27), .A2(ref_1_maj_124_n26), 
        .ZN(ref_1_maj_124_n28) );
  NAND2_X1 ref_1_maj_124_U18 ( .A1(ref_1_refreshed_2_6_), .A2(
        ref_1_maj_124_n28), .ZN(ref_1_maj_124_n29) );
  NAND2_X1 ref_1_maj_124_U17 ( .A1(ref_1_maj_124_n26), .A2(ref_1_maj_124_n27), 
        .ZN(ref_1_maj_124_n30) );
  NAND2_X1 ref_1_maj_124_U16 ( .A1(ref_1_maj_124_n30), .A2(ref_1_maj_124_n29), 
        .ZN(ref_1_maj_124_n31) );
  OR2_X1 ref_1_maj_124_U15 ( .A1(ref_1_maj_124_n23), .A2(ref_1_maj_124_n22), 
        .ZN(ref_1_maj_124_n32) );
  NAND2_X1 ref_1_maj_124_U14 ( .A1(ref_1_maj_124_n22), .A2(ref_1_maj_124_n23), 
        .ZN(ref_1_maj_124_n34) );
  NAND2_X1 ref_1_maj_124_U13 ( .A1(ref_1_maj_124_n32), .A2(ref_1_maj_124_n31), 
        .ZN(ref_1_maj_124_n33) );
  NAND2_X1 ref_1_maj_124_U12 ( .A1(ref_1_maj_124_n34), .A2(ref_1_maj_124_n33), 
        .ZN(ref_1_maj_124_port_o) );
  NAND2_X1 ref_1_maj_124_U11 ( .A1(ref_1_refreshed_2_5_), .A2(
        ref_1_maj_124_n25), .ZN(ref_1_maj_124_n18) );
  NAND2_X1 ref_1_maj_124_U10 ( .A1(ref_1_n8), .A2(ref_1_refreshed_2_4_), .ZN(
        ref_1_maj_124_n19) );
  NAND2_X1 ref_1_maj_124_U9 ( .A1(ref_1_maj_124_n19), .A2(ref_1_maj_124_n18), 
        .ZN(ref_1_maj_124_n22) );
  NAND2_X1 ref_1_maj_124_U8 ( .A1(ref_1_refreshed_2_2_), .A2(ref_1_maj_124_n24), .ZN(ref_1_maj_124_n20) );
  NAND2_X1 ref_1_maj_124_U7 ( .A1(ref_1_refreshed_2_0_), .A2(
        ref_1_refreshed_2_1_), .ZN(ref_1_maj_124_n21) );
  NAND2_X1 ref_1_maj_124_U6 ( .A1(ref_1_maj_124_n21), .A2(ref_1_maj_124_n20), 
        .ZN(ref_1_maj_124_n23) );
  XOR2_X1 ref_1_maj_124_U5 ( .A(ref_1_refreshed_2_2_), .B(ref_1_maj_124_n24), 
        .Z(ref_1_maj_124_n26) );
  XOR2_X1 ref_1_maj_124_U4 ( .A(ref_1_refreshed_2_5_), .B(ref_1_maj_124_n25), 
        .Z(ref_1_maj_124_n27) );
  XOR2_X1 ref_1_maj_124_U3 ( .A(ref_1_refreshed_2_0_), .B(ref_1_refreshed_2_1_), .Z(ref_1_maj_124_n24) );
  XOR2_X1 ref_1_maj_124_U2 ( .A(ref_1_n8), .B(ref_1_refreshed_2_4_), .Z(
        ref_1_maj_124_n25) );
  OR2_X1 ref_1_maj_125_U19 ( .A1(ref_1_maj_125_n27), .A2(ref_1_maj_125_n26), 
        .ZN(ref_1_maj_125_n28) );
  NAND2_X1 ref_1_maj_125_U18 ( .A1(ref_1_refreshed_2_6_), .A2(
        ref_1_maj_125_n28), .ZN(ref_1_maj_125_n29) );
  NAND2_X1 ref_1_maj_125_U17 ( .A1(ref_1_maj_125_n26), .A2(ref_1_maj_125_n27), 
        .ZN(ref_1_maj_125_n30) );
  NAND2_X1 ref_1_maj_125_U16 ( .A1(ref_1_maj_125_n30), .A2(ref_1_maj_125_n29), 
        .ZN(ref_1_maj_125_n31) );
  OR2_X1 ref_1_maj_125_U15 ( .A1(ref_1_maj_125_n23), .A2(ref_1_maj_125_n22), 
        .ZN(ref_1_maj_125_n32) );
  NAND2_X1 ref_1_maj_125_U14 ( .A1(ref_1_maj_125_n22), .A2(ref_1_maj_125_n23), 
        .ZN(ref_1_maj_125_n34) );
  NAND2_X1 ref_1_maj_125_U13 ( .A1(ref_1_maj_125_n32), .A2(ref_1_maj_125_n31), 
        .ZN(ref_1_maj_125_n33) );
  NAND2_X1 ref_1_maj_125_U12 ( .A1(ref_1_maj_125_n34), .A2(ref_1_maj_125_n33), 
        .ZN(ref_1_maj_125_port_o) );
  NAND2_X1 ref_1_maj_125_U11 ( .A1(ref_1_refreshed_2_5_), .A2(
        ref_1_maj_125_n25), .ZN(ref_1_maj_125_n18) );
  NAND2_X1 ref_1_maj_125_U10 ( .A1(ref_1_n8), .A2(ref_1_refreshed_2_4_), .ZN(
        ref_1_maj_125_n19) );
  NAND2_X1 ref_1_maj_125_U9 ( .A1(ref_1_maj_125_n19), .A2(ref_1_maj_125_n18), 
        .ZN(ref_1_maj_125_n22) );
  NAND2_X1 ref_1_maj_125_U8 ( .A1(ref_1_refreshed_2_2_), .A2(ref_1_maj_125_n24), .ZN(ref_1_maj_125_n20) );
  NAND2_X1 ref_1_maj_125_U7 ( .A1(ref_1_refreshed_2_0_), .A2(
        ref_1_refreshed_2_1_), .ZN(ref_1_maj_125_n21) );
  NAND2_X1 ref_1_maj_125_U6 ( .A1(ref_1_maj_125_n21), .A2(ref_1_maj_125_n20), 
        .ZN(ref_1_maj_125_n23) );
  XOR2_X1 ref_1_maj_125_U5 ( .A(ref_1_refreshed_2_2_), .B(ref_1_maj_125_n24), 
        .Z(ref_1_maj_125_n26) );
  XOR2_X1 ref_1_maj_125_U4 ( .A(ref_1_refreshed_2_5_), .B(ref_1_maj_125_n25), 
        .Z(ref_1_maj_125_n27) );
  XOR2_X1 ref_1_maj_125_U3 ( .A(ref_1_refreshed_2_0_), .B(ref_1_refreshed_2_1_), .Z(ref_1_maj_125_n24) );
  XOR2_X1 ref_1_maj_125_U2 ( .A(ref_1_n8), .B(ref_1_refreshed_2_4_), .Z(
        ref_1_maj_125_n25) );
endmodule

