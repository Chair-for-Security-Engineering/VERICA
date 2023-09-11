
module CINI3 ( port_a_0, port_a_1, port_a_2, port_b_0, port_b_1, port_b_2, 
        port_c_0, port_c_1, port_c_2, port_rand_ref, port_rand_mul, clk, reset
 );
  input [4:0] port_a_0;
  input [4:0] port_a_1;
  input [4:0] port_a_2;
  input [4:0] port_b_0;
  input [4:0] port_b_1;
  input [4:0] port_b_2;
  output [4:0] port_c_0;
  output [4:0] port_c_1;
  output [4:0] port_c_2;
  input [2:0] port_rand_ref;
  input [2:0] port_rand_mul;
  input clk, reset;
  wire   N0, N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15,
         N16, N17, N18, N19, N20, N21, N22, N23, N24, N25, N26, N27, N28, N29,
         N30, N31, N32, N33, N34, N35, N36, N37, N38, N39, N40, N41, N42, N43,
         N44, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15,
         n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, ref_1_n30, ref_1_n29, ref_1_n28, ref_1_n27, ref_1_n26,
         ref_1_n25, ref_1_n24, ref_1_n23, ref_1_n22, ref_1_n21, ref_1_n20,
         ref_1_n19, ref_1_n18, ref_1_n17, ref_1_n16, ref_1_n15, ref_1_n14,
         ref_1_n13, ref_1_n12, ref_1_n11, ref_1_n10, ref_1_n9, ref_1_n8,
         ref_1_n7, ref_1_n6, ref_1_n5, ref_1_n4, ref_1_n3, ref_1_n2, ref_1_n1,
         ref_1_maj_89_port_o, ref_1_maj_88_port_o, ref_1_maj_87_port_o,
         ref_1_maj_86_port_o, ref_1_maj_85_port_o, ref_1_maj_84_port_o,
         ref_1_maj_83_port_o, ref_1_maj_82_port_o, ref_1_maj_81_port_o,
         ref_1_maj_80_port_o, ref_1_maj_79_port_o, ref_1_maj_78_port_o,
         ref_1_maj_77_port_o, ref_1_maj_76_port_o, ref_1_maj_75_port_o,
         ref_1_maj_74_port_o, ref_1_maj_73_port_o, ref_1_maj_72_port_o,
         ref_1_maj_71_port_o, ref_1_maj_70_port_o, ref_1_maj_69_port_o,
         ref_1_maj_68_port_o, ref_1_maj_67_port_o, ref_1_maj_66_port_o,
         ref_1_maj_65_port_o, ref_1_maj_64_port_o, ref_1_maj_63_port_o,
         ref_1_maj_62_port_o, ref_1_maj_61_port_o, ref_1_maj_60_port_o,
         ref_1_maj_59_port_o, ref_1_maj_58_port_o, ref_1_maj_57_port_o,
         ref_1_maj_56_port_o, ref_1_maj_55_port_o, ref_1_maj_54_port_o,
         ref_1_maj_53_port_o, ref_1_maj_52_port_o, ref_1_maj_51_port_o,
         ref_1_refreshed_2_0_, ref_1_refreshed_2_1_, ref_1_refreshed_2_2_,
         ref_1_refreshed_2_3_, ref_1_refreshed_2_4_, ref_1_maj_50_port_o,
         ref_1_maj_49_port_o, ref_1_maj_48_port_o, ref_1_refreshed_1_0_,
         ref_1_refreshed_1_1_, ref_1_refreshed_1_2_, ref_1_refreshed_1_3_,
         ref_1_refreshed_1_4_, ref_1_maj_47_port_o, ref_1_maj_46_port_o,
         ref_1_maj_45_port_o, ref_1_refreshed_0_0_, ref_1_refreshed_0_1_,
         ref_1_refreshed_0_2_, ref_1_refreshed_0_3_, ref_1_refreshed_0_4_,
         ref_1_simpleXor_58_port_z, ref_1_simpleXor_56_port_z,
         ref_1_simpleXor_54_port_z, ref_1_simpleXor_52_port_z,
         ref_1_simpleXor_50_port_z, ref_1_simpleXor_48_port_z,
         ref_1_simpleXor_46_port_z, ref_1_simpleXor_44_port_z,
         ref_1_simpleXor_42_port_z, ref_1_simpleXor_40_port_z,
         ref_1_simpleXor_38_port_z, ref_1_simpleXor_36_port_z,
         ref_1_simpleXor_34_port_z, ref_1_simpleXor_32_port_z,
         ref_1_simpleXor_30_port_z, ref_1_maj_45_n13, ref_1_maj_45_n12,
         ref_1_maj_45_n11, ref_1_maj_45_n10, ref_1_maj_45_n9, ref_1_maj_45_n8,
         ref_1_maj_45_n7, ref_1_maj_45_n6, ref_1_maj_45_n5, ref_1_maj_45_n4,
         ref_1_maj_45_n3, ref_1_maj_45_n2, ref_1_maj_45_n1, ref_1_maj_46_n26,
         ref_1_maj_46_n25, ref_1_maj_46_n24, ref_1_maj_46_n23,
         ref_1_maj_46_n22, ref_1_maj_46_n21, ref_1_maj_46_n20,
         ref_1_maj_46_n19, ref_1_maj_46_n18, ref_1_maj_46_n17,
         ref_1_maj_46_n16, ref_1_maj_46_n15, ref_1_maj_46_n14,
         ref_1_maj_47_n26, ref_1_maj_47_n25, ref_1_maj_47_n24,
         ref_1_maj_47_n23, ref_1_maj_47_n22, ref_1_maj_47_n21,
         ref_1_maj_47_n20, ref_1_maj_47_n19, ref_1_maj_47_n18,
         ref_1_maj_47_n17, ref_1_maj_47_n16, ref_1_maj_47_n15,
         ref_1_maj_47_n14, ref_1_maj_48_n26, ref_1_maj_48_n25,
         ref_1_maj_48_n24, ref_1_maj_48_n23, ref_1_maj_48_n22,
         ref_1_maj_48_n21, ref_1_maj_48_n20, ref_1_maj_48_n19,
         ref_1_maj_48_n18, ref_1_maj_48_n17, ref_1_maj_48_n16,
         ref_1_maj_48_n15, ref_1_maj_48_n14, ref_1_maj_49_n26,
         ref_1_maj_49_n25, ref_1_maj_49_n24, ref_1_maj_49_n23,
         ref_1_maj_49_n22, ref_1_maj_49_n21, ref_1_maj_49_n20,
         ref_1_maj_49_n19, ref_1_maj_49_n18, ref_1_maj_49_n17,
         ref_1_maj_49_n16, ref_1_maj_49_n15, ref_1_maj_49_n14,
         ref_1_maj_50_n26, ref_1_maj_50_n25, ref_1_maj_50_n24,
         ref_1_maj_50_n23, ref_1_maj_50_n22, ref_1_maj_50_n21,
         ref_1_maj_50_n20, ref_1_maj_50_n19, ref_1_maj_50_n18,
         ref_1_maj_50_n17, ref_1_maj_50_n16, ref_1_maj_50_n15,
         ref_1_maj_50_n14, ref_1_maj_51_n26, ref_1_maj_51_n25,
         ref_1_maj_51_n24, ref_1_maj_51_n23, ref_1_maj_51_n22,
         ref_1_maj_51_n21, ref_1_maj_51_n20, ref_1_maj_51_n19,
         ref_1_maj_51_n18, ref_1_maj_51_n17, ref_1_maj_51_n16,
         ref_1_maj_51_n15, ref_1_maj_51_n14, ref_1_maj_52_n26,
         ref_1_maj_52_n25, ref_1_maj_52_n24, ref_1_maj_52_n23,
         ref_1_maj_52_n22, ref_1_maj_52_n21, ref_1_maj_52_n20,
         ref_1_maj_52_n19, ref_1_maj_52_n18, ref_1_maj_52_n17,
         ref_1_maj_52_n16, ref_1_maj_52_n15, ref_1_maj_52_n14,
         ref_1_maj_53_n26, ref_1_maj_53_n25, ref_1_maj_53_n24,
         ref_1_maj_53_n23, ref_1_maj_53_n22, ref_1_maj_53_n21,
         ref_1_maj_53_n20, ref_1_maj_53_n19, ref_1_maj_53_n18,
         ref_1_maj_53_n17, ref_1_maj_53_n16, ref_1_maj_53_n15,
         ref_1_maj_53_n14, ref_1_maj_54_n26, ref_1_maj_54_n25,
         ref_1_maj_54_n24, ref_1_maj_54_n23, ref_1_maj_54_n22,
         ref_1_maj_54_n21, ref_1_maj_54_n20, ref_1_maj_54_n19,
         ref_1_maj_54_n18, ref_1_maj_54_n17, ref_1_maj_54_n16,
         ref_1_maj_54_n15, ref_1_maj_54_n14, ref_1_maj_55_n26,
         ref_1_maj_55_n25, ref_1_maj_55_n24, ref_1_maj_55_n23,
         ref_1_maj_55_n22, ref_1_maj_55_n21, ref_1_maj_55_n20,
         ref_1_maj_55_n19, ref_1_maj_55_n18, ref_1_maj_55_n17,
         ref_1_maj_55_n16, ref_1_maj_55_n15, ref_1_maj_55_n14,
         ref_1_maj_56_n26, ref_1_maj_56_n25, ref_1_maj_56_n24,
         ref_1_maj_56_n23, ref_1_maj_56_n22, ref_1_maj_56_n21,
         ref_1_maj_56_n20, ref_1_maj_56_n19, ref_1_maj_56_n18,
         ref_1_maj_56_n17, ref_1_maj_56_n16, ref_1_maj_56_n15,
         ref_1_maj_56_n14, ref_1_maj_57_n26, ref_1_maj_57_n25,
         ref_1_maj_57_n24, ref_1_maj_57_n23, ref_1_maj_57_n22,
         ref_1_maj_57_n21, ref_1_maj_57_n20, ref_1_maj_57_n19,
         ref_1_maj_57_n18, ref_1_maj_57_n17, ref_1_maj_57_n16,
         ref_1_maj_57_n15, ref_1_maj_57_n14, ref_1_maj_58_n26,
         ref_1_maj_58_n25, ref_1_maj_58_n24, ref_1_maj_58_n23,
         ref_1_maj_58_n22, ref_1_maj_58_n21, ref_1_maj_58_n20,
         ref_1_maj_58_n19, ref_1_maj_58_n18, ref_1_maj_58_n17,
         ref_1_maj_58_n16, ref_1_maj_58_n15, ref_1_maj_58_n14,
         ref_1_maj_59_n26, ref_1_maj_59_n25, ref_1_maj_59_n24,
         ref_1_maj_59_n23, ref_1_maj_59_n22, ref_1_maj_59_n21,
         ref_1_maj_59_n20, ref_1_maj_59_n19, ref_1_maj_59_n18,
         ref_1_maj_59_n17, ref_1_maj_59_n16, ref_1_maj_59_n15,
         ref_1_maj_59_n14, ref_1_maj_60_n26, ref_1_maj_60_n25,
         ref_1_maj_60_n24, ref_1_maj_60_n23, ref_1_maj_60_n22,
         ref_1_maj_60_n21, ref_1_maj_60_n20, ref_1_maj_60_n19,
         ref_1_maj_60_n18, ref_1_maj_60_n17, ref_1_maj_60_n16,
         ref_1_maj_60_n15, ref_1_maj_60_n14, ref_1_maj_61_n26,
         ref_1_maj_61_n25, ref_1_maj_61_n24, ref_1_maj_61_n23,
         ref_1_maj_61_n22, ref_1_maj_61_n21, ref_1_maj_61_n20,
         ref_1_maj_61_n19, ref_1_maj_61_n18, ref_1_maj_61_n17,
         ref_1_maj_61_n16, ref_1_maj_61_n15, ref_1_maj_61_n14,
         ref_1_maj_62_n26, ref_1_maj_62_n25, ref_1_maj_62_n24,
         ref_1_maj_62_n23, ref_1_maj_62_n22, ref_1_maj_62_n21,
         ref_1_maj_62_n20, ref_1_maj_62_n19, ref_1_maj_62_n18,
         ref_1_maj_62_n17, ref_1_maj_62_n16, ref_1_maj_62_n15,
         ref_1_maj_62_n14, ref_1_maj_63_n26, ref_1_maj_63_n25,
         ref_1_maj_63_n24, ref_1_maj_63_n23, ref_1_maj_63_n22,
         ref_1_maj_63_n21, ref_1_maj_63_n20, ref_1_maj_63_n19,
         ref_1_maj_63_n18, ref_1_maj_63_n17, ref_1_maj_63_n16,
         ref_1_maj_63_n15, ref_1_maj_63_n14, ref_1_maj_64_n26,
         ref_1_maj_64_n25, ref_1_maj_64_n24, ref_1_maj_64_n23,
         ref_1_maj_64_n22, ref_1_maj_64_n21, ref_1_maj_64_n20,
         ref_1_maj_64_n19, ref_1_maj_64_n18, ref_1_maj_64_n17,
         ref_1_maj_64_n16, ref_1_maj_64_n15, ref_1_maj_64_n14,
         ref_1_maj_65_n26, ref_1_maj_65_n25, ref_1_maj_65_n24,
         ref_1_maj_65_n23, ref_1_maj_65_n22, ref_1_maj_65_n21,
         ref_1_maj_65_n20, ref_1_maj_65_n19, ref_1_maj_65_n18,
         ref_1_maj_65_n17, ref_1_maj_65_n16, ref_1_maj_65_n15,
         ref_1_maj_65_n14, ref_1_maj_66_n26, ref_1_maj_66_n25,
         ref_1_maj_66_n24, ref_1_maj_66_n23, ref_1_maj_66_n22,
         ref_1_maj_66_n21, ref_1_maj_66_n20, ref_1_maj_66_n19,
         ref_1_maj_66_n18, ref_1_maj_66_n17, ref_1_maj_66_n16,
         ref_1_maj_66_n15, ref_1_maj_66_n14, ref_1_maj_67_n26,
         ref_1_maj_67_n25, ref_1_maj_67_n24, ref_1_maj_67_n23,
         ref_1_maj_67_n22, ref_1_maj_67_n21, ref_1_maj_67_n20,
         ref_1_maj_67_n19, ref_1_maj_67_n18, ref_1_maj_67_n17,
         ref_1_maj_67_n16, ref_1_maj_67_n15, ref_1_maj_67_n14,
         ref_1_maj_68_n26, ref_1_maj_68_n25, ref_1_maj_68_n24,
         ref_1_maj_68_n23, ref_1_maj_68_n22, ref_1_maj_68_n21,
         ref_1_maj_68_n20, ref_1_maj_68_n19, ref_1_maj_68_n18,
         ref_1_maj_68_n17, ref_1_maj_68_n16, ref_1_maj_68_n15,
         ref_1_maj_68_n14, ref_1_maj_69_n26, ref_1_maj_69_n25,
         ref_1_maj_69_n24, ref_1_maj_69_n23, ref_1_maj_69_n22,
         ref_1_maj_69_n21, ref_1_maj_69_n20, ref_1_maj_69_n19,
         ref_1_maj_69_n18, ref_1_maj_69_n17, ref_1_maj_69_n16,
         ref_1_maj_69_n15, ref_1_maj_69_n14, ref_1_maj_70_n26,
         ref_1_maj_70_n25, ref_1_maj_70_n24, ref_1_maj_70_n23,
         ref_1_maj_70_n22, ref_1_maj_70_n21, ref_1_maj_70_n20,
         ref_1_maj_70_n19, ref_1_maj_70_n18, ref_1_maj_70_n17,
         ref_1_maj_70_n16, ref_1_maj_70_n15, ref_1_maj_70_n14,
         ref_1_maj_71_n26, ref_1_maj_71_n25, ref_1_maj_71_n24,
         ref_1_maj_71_n23, ref_1_maj_71_n22, ref_1_maj_71_n21,
         ref_1_maj_71_n20, ref_1_maj_71_n19, ref_1_maj_71_n18,
         ref_1_maj_71_n17, ref_1_maj_71_n16, ref_1_maj_71_n15,
         ref_1_maj_71_n14, ref_1_maj_72_n26, ref_1_maj_72_n25,
         ref_1_maj_72_n24, ref_1_maj_72_n23, ref_1_maj_72_n22,
         ref_1_maj_72_n21, ref_1_maj_72_n20, ref_1_maj_72_n19,
         ref_1_maj_72_n18, ref_1_maj_72_n17, ref_1_maj_72_n16,
         ref_1_maj_72_n15, ref_1_maj_72_n14, ref_1_maj_73_n26,
         ref_1_maj_73_n25, ref_1_maj_73_n24, ref_1_maj_73_n23,
         ref_1_maj_73_n22, ref_1_maj_73_n21, ref_1_maj_73_n20,
         ref_1_maj_73_n19, ref_1_maj_73_n18, ref_1_maj_73_n17,
         ref_1_maj_73_n16, ref_1_maj_73_n15, ref_1_maj_73_n14,
         ref_1_maj_74_n26, ref_1_maj_74_n25, ref_1_maj_74_n24,
         ref_1_maj_74_n23, ref_1_maj_74_n22, ref_1_maj_74_n21,
         ref_1_maj_74_n20, ref_1_maj_74_n19, ref_1_maj_74_n18,
         ref_1_maj_74_n17, ref_1_maj_74_n16, ref_1_maj_74_n15,
         ref_1_maj_74_n14, ref_1_maj_75_n26, ref_1_maj_75_n25,
         ref_1_maj_75_n24, ref_1_maj_75_n23, ref_1_maj_75_n22,
         ref_1_maj_75_n21, ref_1_maj_75_n20, ref_1_maj_75_n19,
         ref_1_maj_75_n18, ref_1_maj_75_n17, ref_1_maj_75_n16,
         ref_1_maj_75_n15, ref_1_maj_75_n14, ref_1_maj_76_n26,
         ref_1_maj_76_n25, ref_1_maj_76_n24, ref_1_maj_76_n23,
         ref_1_maj_76_n22, ref_1_maj_76_n21, ref_1_maj_76_n20,
         ref_1_maj_76_n19, ref_1_maj_76_n18, ref_1_maj_76_n17,
         ref_1_maj_76_n16, ref_1_maj_76_n15, ref_1_maj_76_n14,
         ref_1_maj_77_n26, ref_1_maj_77_n25, ref_1_maj_77_n24,
         ref_1_maj_77_n23, ref_1_maj_77_n22, ref_1_maj_77_n21,
         ref_1_maj_77_n20, ref_1_maj_77_n19, ref_1_maj_77_n18,
         ref_1_maj_77_n17, ref_1_maj_77_n16, ref_1_maj_77_n15,
         ref_1_maj_77_n14, ref_1_maj_78_n26, ref_1_maj_78_n25,
         ref_1_maj_78_n24, ref_1_maj_78_n23, ref_1_maj_78_n22,
         ref_1_maj_78_n21, ref_1_maj_78_n20, ref_1_maj_78_n19,
         ref_1_maj_78_n18, ref_1_maj_78_n17, ref_1_maj_78_n16,
         ref_1_maj_78_n15, ref_1_maj_78_n14, ref_1_maj_79_n26,
         ref_1_maj_79_n25, ref_1_maj_79_n24, ref_1_maj_79_n23,
         ref_1_maj_79_n22, ref_1_maj_79_n21, ref_1_maj_79_n20,
         ref_1_maj_79_n19, ref_1_maj_79_n18, ref_1_maj_79_n17,
         ref_1_maj_79_n16, ref_1_maj_79_n15, ref_1_maj_79_n14,
         ref_1_maj_80_n26, ref_1_maj_80_n25, ref_1_maj_80_n24,
         ref_1_maj_80_n23, ref_1_maj_80_n22, ref_1_maj_80_n21,
         ref_1_maj_80_n20, ref_1_maj_80_n19, ref_1_maj_80_n18,
         ref_1_maj_80_n17, ref_1_maj_80_n16, ref_1_maj_80_n15,
         ref_1_maj_80_n14, ref_1_maj_81_n26, ref_1_maj_81_n25,
         ref_1_maj_81_n24, ref_1_maj_81_n23, ref_1_maj_81_n22,
         ref_1_maj_81_n21, ref_1_maj_81_n20, ref_1_maj_81_n19,
         ref_1_maj_81_n18, ref_1_maj_81_n17, ref_1_maj_81_n16,
         ref_1_maj_81_n15, ref_1_maj_81_n14, ref_1_maj_82_n26,
         ref_1_maj_82_n25, ref_1_maj_82_n24, ref_1_maj_82_n23,
         ref_1_maj_82_n22, ref_1_maj_82_n21, ref_1_maj_82_n20,
         ref_1_maj_82_n19, ref_1_maj_82_n18, ref_1_maj_82_n17,
         ref_1_maj_82_n16, ref_1_maj_82_n15, ref_1_maj_82_n14,
         ref_1_maj_83_n26, ref_1_maj_83_n25, ref_1_maj_83_n24,
         ref_1_maj_83_n23, ref_1_maj_83_n22, ref_1_maj_83_n21,
         ref_1_maj_83_n20, ref_1_maj_83_n19, ref_1_maj_83_n18,
         ref_1_maj_83_n17, ref_1_maj_83_n16, ref_1_maj_83_n15,
         ref_1_maj_83_n14, ref_1_maj_84_n26, ref_1_maj_84_n25,
         ref_1_maj_84_n24, ref_1_maj_84_n23, ref_1_maj_84_n22,
         ref_1_maj_84_n21, ref_1_maj_84_n20, ref_1_maj_84_n19,
         ref_1_maj_84_n18, ref_1_maj_84_n17, ref_1_maj_84_n16,
         ref_1_maj_84_n15, ref_1_maj_84_n14, ref_1_maj_85_n26,
         ref_1_maj_85_n25, ref_1_maj_85_n24, ref_1_maj_85_n23,
         ref_1_maj_85_n22, ref_1_maj_85_n21, ref_1_maj_85_n20,
         ref_1_maj_85_n19, ref_1_maj_85_n18, ref_1_maj_85_n17,
         ref_1_maj_85_n16, ref_1_maj_85_n15, ref_1_maj_85_n14,
         ref_1_maj_86_n26, ref_1_maj_86_n25, ref_1_maj_86_n24,
         ref_1_maj_86_n23, ref_1_maj_86_n22, ref_1_maj_86_n21,
         ref_1_maj_86_n20, ref_1_maj_86_n19, ref_1_maj_86_n18,
         ref_1_maj_86_n17, ref_1_maj_86_n16, ref_1_maj_86_n15,
         ref_1_maj_86_n14, ref_1_maj_87_n26, ref_1_maj_87_n25,
         ref_1_maj_87_n24, ref_1_maj_87_n23, ref_1_maj_87_n22,
         ref_1_maj_87_n21, ref_1_maj_87_n20, ref_1_maj_87_n19,
         ref_1_maj_87_n18, ref_1_maj_87_n17, ref_1_maj_87_n16,
         ref_1_maj_87_n15, ref_1_maj_87_n14, ref_1_maj_88_n26,
         ref_1_maj_88_n25, ref_1_maj_88_n24, ref_1_maj_88_n23,
         ref_1_maj_88_n22, ref_1_maj_88_n21, ref_1_maj_88_n20,
         ref_1_maj_88_n19, ref_1_maj_88_n18, ref_1_maj_88_n17,
         ref_1_maj_88_n16, ref_1_maj_88_n15, ref_1_maj_88_n14,
         ref_1_maj_89_n26, ref_1_maj_89_n25, ref_1_maj_89_n24,
         ref_1_maj_89_n23, ref_1_maj_89_n22, ref_1_maj_89_n21,
         ref_1_maj_89_n20, ref_1_maj_89_n19, ref_1_maj_89_n18,
         ref_1_maj_89_n17, ref_1_maj_89_n16, ref_1_maj_89_n15,
         ref_1_maj_89_n14;
  wire   [4:0] ref_1_port_o_0_0;
  wire   [4:0] ref_1_port_o_0_1;
  wire   [4:0] ref_1_port_o_0_2;
  wire   [4:0] ref_1_port_o_1_0;
  wire   [4:0] ref_1_port_o_1_1;
  wire   [4:0] ref_1_port_o_1_2;
  wire   [4:0] ref_1_port_o_2_0;
  wire   [4:0] ref_1_port_o_2_1;
  wire   [4:0] ref_1_port_o_2_2;
  wire   [4:0] temp_0_0;
  wire   [4:0] mult_ab_0_1;
  wire   [4:0] mult_ab_0_2;
  wire   [4:0] temp_0_1;
  wire   [4:0] mult_ab_1_0;
  wire   [4:0] mult_ab_1_2;
  wire   [4:0] temp_0_2;
  wire   [4:0] mult_ab_2_0;
  wire   [4:0] mult_ab_2_1;

  DFF_X1 mult_ab_0_0_reg_4_ ( .D(N36), .CK(clk), .Q(temp_0_0[4]), .QN() );
  DFF_X1 mult_ab_0_0_reg_3_ ( .D(N27), .CK(clk), .Q(temp_0_0[3]), .QN() );
  DFF_X1 mult_ab_0_0_reg_2_ ( .D(N18), .CK(clk), .Q(temp_0_0[2]), .QN() );
  DFF_X1 mult_ab_0_0_reg_1_ ( .D(N9), .CK(clk), .Q(temp_0_0[1]), .QN() );
  DFF_X1 mult_ab_0_0_reg_0_ ( .D(N0), .CK(clk), .Q(temp_0_0[0]), .QN() );
  DFF_X1 mult_ab_2_2_reg_4_ ( .D(N44), .CK(clk), .Q(temp_0_2[4]), .QN() );
  DFF_X1 mult_ab_2_2_reg_3_ ( .D(N35), .CK(clk), .Q(temp_0_2[3]), .QN() );
  DFF_X1 mult_ab_2_2_reg_2_ ( .D(N26), .CK(clk), .Q(temp_0_2[2]), .QN() );
  DFF_X1 mult_ab_2_2_reg_1_ ( .D(N17), .CK(clk), .Q(temp_0_2[1]), .QN() );
  DFF_X1 mult_ab_2_2_reg_0_ ( .D(N8), .CK(clk), .Q(temp_0_2[0]), .QN() );
  DFF_X1 mult_ab_0_1_reg_4_ ( .D(N37), .CK(clk), .Q(mult_ab_0_1[4]), .QN() );
  DFF_X1 mult_ab_0_1_reg_3_ ( .D(N28), .CK(clk), .Q(mult_ab_0_1[3]), .QN() );
  DFF_X1 mult_ab_0_1_reg_2_ ( .D(N19), .CK(clk), .Q(mult_ab_0_1[2]), .QN() );
  DFF_X1 mult_ab_0_1_reg_1_ ( .D(N10), .CK(clk), .Q(mult_ab_0_1[1]), .QN() );
  DFF_X1 mult_ab_0_1_reg_0_ ( .D(N1), .CK(clk), .Q(mult_ab_0_1[0]), .QN() );
  DFF_X1 mult_ab_0_2_reg_4_ ( .D(N38), .CK(clk), .Q(mult_ab_0_2[4]), .QN() );
  DFF_X1 mult_ab_0_2_reg_3_ ( .D(N29), .CK(clk), .Q(mult_ab_0_2[3]), .QN() );
  DFF_X1 mult_ab_0_2_reg_2_ ( .D(N20), .CK(clk), .Q(mult_ab_0_2[2]), .QN() );
  DFF_X1 mult_ab_0_2_reg_1_ ( .D(N11), .CK(clk), .Q(mult_ab_0_2[1]), .QN() );
  DFF_X1 mult_ab_0_2_reg_0_ ( .D(N2), .CK(clk), .Q(mult_ab_0_2[0]), .QN() );
  DFF_X1 mult_ab_1_2_reg_4_ ( .D(N41), .CK(clk), .Q(mult_ab_1_2[4]), .QN() );
  DFF_X1 mult_ab_1_2_reg_3_ ( .D(N32), .CK(clk), .Q(mult_ab_1_2[3]), .QN() );
  DFF_X1 mult_ab_1_2_reg_2_ ( .D(N23), .CK(clk), .Q(mult_ab_1_2[2]), .QN() );
  DFF_X1 mult_ab_1_2_reg_1_ ( .D(N14), .CK(clk), .Q(mult_ab_1_2[1]), .QN() );
  DFF_X1 mult_ab_1_2_reg_0_ ( .D(N5), .CK(clk), .Q(mult_ab_1_2[0]), .QN() );
  DFF_X1 mult_ab_2_1_reg_4_ ( .D(N43), .CK(clk), .Q(mult_ab_2_1[4]), .QN() );
  DFF_X1 mult_ab_2_1_reg_3_ ( .D(N34), .CK(clk), .Q(mult_ab_2_1[3]), .QN() );
  DFF_X1 mult_ab_2_1_reg_2_ ( .D(N25), .CK(clk), .Q(mult_ab_2_1[2]), .QN() );
  DFF_X1 mult_ab_2_1_reg_1_ ( .D(N16), .CK(clk), .Q(mult_ab_2_1[1]), .QN() );
  DFF_X1 mult_ab_2_1_reg_0_ ( .D(N7), .CK(clk), .Q(mult_ab_2_1[0]), .QN() );
  DFF_X1 mult_ab_1_1_reg_4_ ( .D(N40), .CK(clk), .Q(temp_0_1[4]), .QN() );
  DFF_X1 mult_ab_1_1_reg_3_ ( .D(N31), .CK(clk), .Q(temp_0_1[3]), .QN() );
  DFF_X1 mult_ab_1_1_reg_2_ ( .D(N22), .CK(clk), .Q(temp_0_1[2]), .QN() );
  DFF_X1 mult_ab_1_1_reg_1_ ( .D(N13), .CK(clk), .Q(temp_0_1[1]), .QN() );
  DFF_X1 mult_ab_1_1_reg_0_ ( .D(N4), .CK(clk), .Q(temp_0_1[0]), .QN() );
  DFF_X1 mult_ab_2_0_reg_4_ ( .D(N42), .CK(clk), .Q(mult_ab_2_0[4]), .QN() );
  DFF_X1 mult_ab_2_0_reg_3_ ( .D(N33), .CK(clk), .Q(mult_ab_2_0[3]), .QN() );
  DFF_X1 mult_ab_2_0_reg_2_ ( .D(N24), .CK(clk), .Q(mult_ab_2_0[2]), .QN() );
  DFF_X1 mult_ab_2_0_reg_1_ ( .D(N15), .CK(clk), .Q(mult_ab_2_0[1]), .QN() );
  DFF_X1 mult_ab_2_0_reg_0_ ( .D(N6), .CK(clk), .Q(mult_ab_2_0[0]), .QN() );
  DFF_X1 mult_ab_1_0_reg_4_ ( .D(N39), .CK(clk), .Q(mult_ab_1_0[4]), .QN() );
  DFF_X1 mult_ab_1_0_reg_3_ ( .D(N30), .CK(clk), .Q(mult_ab_1_0[3]), .QN() );
  DFF_X1 mult_ab_1_0_reg_2_ ( .D(N21), .CK(clk), .Q(mult_ab_1_0[2]), .QN() );
  DFF_X1 mult_ab_1_0_reg_1_ ( .D(N12), .CK(clk), .Q(mult_ab_1_0[1]), .QN() );
  DFF_X1 mult_ab_1_0_reg_0_ ( .D(N3), .CK(clk), .Q(mult_ab_1_0[0]), .QN() );
  XNOR2_X1 U108 ( .A(port_rand_mul[0]), .B(n29), .ZN(N3) );
  NAND2_X1 U109 ( .A1(ref_1_port_o_1_0[0]), .A2(port_a_1[0]), .ZN(n29) );
  XNOR2_X1 U110 ( .A(port_rand_mul[0]), .B(n42), .ZN(N12) );
  NAND2_X1 U111 ( .A1(ref_1_port_o_1_0[1]), .A2(port_a_1[1]), .ZN(n42) );
  XNOR2_X1 U112 ( .A(port_rand_mul[0]), .B(n35), .ZN(N21) );
  NAND2_X1 U113 ( .A1(ref_1_port_o_1_0[2]), .A2(port_a_1[2]), .ZN(n35) );
  XNOR2_X1 U114 ( .A(port_rand_mul[0]), .B(n28), .ZN(N30) );
  NAND2_X1 U115 ( .A1(ref_1_port_o_1_0[3]), .A2(port_a_1[3]), .ZN(n28) );
  XNOR2_X1 U116 ( .A(port_rand_mul[0]), .B(n22), .ZN(N39) );
  NAND2_X1 U117 ( .A1(ref_1_port_o_1_0[4]), .A2(port_a_1[4]), .ZN(n22) );
  XNOR2_X1 U118 ( .A(port_rand_mul[1]), .B(n17), .ZN(N6) );
  NAND2_X1 U119 ( .A1(ref_1_port_o_2_0[0]), .A2(port_a_2[0]), .ZN(n17) );
  XNOR2_X1 U120 ( .A(port_rand_mul[1]), .B(n40), .ZN(N15) );
  NAND2_X1 U121 ( .A1(ref_1_port_o_2_0[1]), .A2(port_a_2[1]), .ZN(n40) );
  XNOR2_X1 U122 ( .A(port_rand_mul[1]), .B(n33), .ZN(N24) );
  NAND2_X1 U123 ( .A1(ref_1_port_o_2_0[2]), .A2(port_a_2[2]), .ZN(n33) );
  XNOR2_X1 U124 ( .A(port_rand_mul[1]), .B(n26), .ZN(N33) );
  NAND2_X1 U125 ( .A1(ref_1_port_o_2_0[3]), .A2(port_a_2[3]), .ZN(n26) );
  XNOR2_X1 U126 ( .A(port_rand_mul[1]), .B(n20), .ZN(N42) );
  NAND2_X1 U127 ( .A1(ref_1_port_o_2_0[4]), .A2(port_a_2[4]), .ZN(n20) );
  XNOR2_X1 U128 ( .A(port_rand_mul[2]), .B(n16), .ZN(N7) );
  NAND2_X1 U129 ( .A1(ref_1_port_o_2_1[0]), .A2(port_a_2[0]), .ZN(n16) );
  XNOR2_X1 U130 ( .A(port_rand_mul[2]), .B(n39), .ZN(N16) );
  NAND2_X1 U131 ( .A1(ref_1_port_o_2_1[1]), .A2(port_a_2[1]), .ZN(n39) );
  XNOR2_X1 U132 ( .A(port_rand_mul[2]), .B(n32), .ZN(N25) );
  NAND2_X1 U133 ( .A1(ref_1_port_o_2_1[2]), .A2(port_a_2[2]), .ZN(n32) );
  XNOR2_X1 U134 ( .A(port_rand_mul[2]), .B(n25), .ZN(N34) );
  NAND2_X1 U135 ( .A1(ref_1_port_o_2_1[3]), .A2(port_a_2[3]), .ZN(n25) );
  XNOR2_X1 U136 ( .A(port_rand_mul[2]), .B(n19), .ZN(N43) );
  NAND2_X1 U137 ( .A1(ref_1_port_o_2_1[4]), .A2(port_a_2[4]), .ZN(n19) );
  XNOR2_X1 U138 ( .A(port_rand_mul[2]), .B(n18), .ZN(N5) );
  NAND2_X1 U139 ( .A1(ref_1_port_o_1_2[0]), .A2(port_a_1[0]), .ZN(n18) );
  XNOR2_X1 U140 ( .A(port_rand_mul[2]), .B(n41), .ZN(N14) );
  NAND2_X1 U141 ( .A1(ref_1_port_o_1_2[1]), .A2(port_a_1[1]), .ZN(n41) );
  XNOR2_X1 U142 ( .A(port_rand_mul[2]), .B(n34), .ZN(N23) );
  NAND2_X1 U143 ( .A1(ref_1_port_o_1_2[2]), .A2(port_a_1[2]), .ZN(n34) );
  XNOR2_X1 U144 ( .A(port_rand_mul[2]), .B(n27), .ZN(N32) );
  NAND2_X1 U145 ( .A1(ref_1_port_o_1_2[3]), .A2(port_a_1[3]), .ZN(n27) );
  XNOR2_X1 U146 ( .A(port_rand_mul[2]), .B(n21), .ZN(N41) );
  NAND2_X1 U147 ( .A1(ref_1_port_o_1_2[4]), .A2(port_a_1[4]), .ZN(n21) );
  XNOR2_X1 U148 ( .A(port_rand_mul[1]), .B(n37), .ZN(N2) );
  NAND2_X1 U149 ( .A1(ref_1_port_o_0_2[0]), .A2(port_a_0[0]), .ZN(n37) );
  XNOR2_X1 U150 ( .A(port_rand_mul[1]), .B(n43), .ZN(N11) );
  NAND2_X1 U151 ( .A1(ref_1_port_o_0_2[1]), .A2(port_a_0[1]), .ZN(n43) );
  XNOR2_X1 U152 ( .A(port_rand_mul[1]), .B(n36), .ZN(N20) );
  NAND2_X1 U153 ( .A1(ref_1_port_o_0_2[2]), .A2(port_a_0[2]), .ZN(n36) );
  XNOR2_X1 U154 ( .A(port_rand_mul[1]), .B(n30), .ZN(N29) );
  NAND2_X1 U155 ( .A1(ref_1_port_o_0_2[3]), .A2(port_a_0[3]), .ZN(n30) );
  XNOR2_X1 U156 ( .A(port_rand_mul[1]), .B(n23), .ZN(N38) );
  NAND2_X1 U157 ( .A1(ref_1_port_o_0_2[4]), .A2(port_a_0[4]), .ZN(n23) );
  XNOR2_X1 U158 ( .A(port_rand_mul[0]), .B(n45), .ZN(N1) );
  NAND2_X1 U159 ( .A1(ref_1_port_o_0_1[0]), .A2(port_a_0[0]), .ZN(n45) );
  XNOR2_X1 U160 ( .A(port_rand_mul[0]), .B(n44), .ZN(N10) );
  NAND2_X1 U161 ( .A1(ref_1_port_o_0_1[1]), .A2(port_a_0[1]), .ZN(n44) );
  XNOR2_X1 U162 ( .A(port_rand_mul[0]), .B(n38), .ZN(N19) );
  NAND2_X1 U163 ( .A1(ref_1_port_o_0_1[2]), .A2(port_a_0[2]), .ZN(n38) );
  XNOR2_X1 U164 ( .A(port_rand_mul[0]), .B(n31), .ZN(N28) );
  NAND2_X1 U165 ( .A1(ref_1_port_o_0_1[3]), .A2(port_a_0[3]), .ZN(n31) );
  XNOR2_X1 U166 ( .A(port_rand_mul[0]), .B(n24), .ZN(N37) );
  NAND2_X1 U167 ( .A1(ref_1_port_o_0_1[4]), .A2(port_a_0[4]), .ZN(n24) );
  AND2_X1 U168 ( .A1(ref_1_port_o_1_1[0]), .A2(port_a_1[0]), .ZN(N4) );
  AND2_X1 U169 ( .A1(ref_1_port_o_1_1[1]), .A2(port_a_1[1]), .ZN(N13) );
  AND2_X1 U170 ( .A1(ref_1_port_o_1_1[2]), .A2(port_a_1[2]), .ZN(N22) );
  AND2_X1 U171 ( .A1(ref_1_port_o_1_1[3]), .A2(port_a_1[3]), .ZN(N31) );
  AND2_X1 U172 ( .A1(ref_1_port_o_1_1[4]), .A2(port_a_1[4]), .ZN(N40) );
  AND2_X1 U173 ( .A1(ref_1_port_o_2_2[0]), .A2(port_a_2[0]), .ZN(N8) );
  AND2_X1 U174 ( .A1(ref_1_port_o_2_2[1]), .A2(port_a_2[1]), .ZN(N17) );
  AND2_X1 U175 ( .A1(ref_1_port_o_2_2[2]), .A2(port_a_2[2]), .ZN(N26) );
  AND2_X1 U176 ( .A1(ref_1_port_o_2_2[3]), .A2(port_a_2[3]), .ZN(N35) );
  AND2_X1 U177 ( .A1(ref_1_port_o_2_2[4]), .A2(port_a_2[4]), .ZN(N44) );
  AND2_X1 U178 ( .A1(ref_1_port_o_0_0[0]), .A2(port_a_0[0]), .ZN(N0) );
  AND2_X1 U179 ( .A1(ref_1_port_o_0_0[1]), .A2(port_a_0[1]), .ZN(N9) );
  AND2_X1 U180 ( .A1(ref_1_port_o_0_0[2]), .A2(port_a_0[2]), .ZN(N18) );
  AND2_X1 U181 ( .A1(ref_1_port_o_0_0[3]), .A2(port_a_0[3]), .ZN(N27) );
  AND2_X1 U182 ( .A1(ref_1_port_o_0_0[4]), .A2(port_a_0[4]), .ZN(N36) );
  XOR2_X1 U183 ( .A(mult_ab_2_0[0]), .B(n5), .Z(port_c_2[0]) );
  XOR2_X1 U184 ( .A(temp_0_2[0]), .B(mult_ab_2_1[0]), .Z(n5) );
  XOR2_X1 U185 ( .A(mult_ab_2_0[1]), .B(n4), .Z(port_c_2[1]) );
  XOR2_X1 U186 ( .A(temp_0_2[1]), .B(mult_ab_2_1[1]), .Z(n4) );
  XOR2_X1 U187 ( .A(mult_ab_2_0[2]), .B(n3), .Z(port_c_2[2]) );
  XOR2_X1 U188 ( .A(temp_0_2[2]), .B(mult_ab_2_1[2]), .Z(n3) );
  XOR2_X1 U189 ( .A(mult_ab_2_0[3]), .B(n2), .Z(port_c_2[3]) );
  XOR2_X1 U190 ( .A(temp_0_2[3]), .B(mult_ab_2_1[3]), .Z(n2) );
  XOR2_X1 U191 ( .A(mult_ab_2_0[4]), .B(n1), .Z(port_c_2[4]) );
  XOR2_X1 U192 ( .A(temp_0_2[4]), .B(mult_ab_2_1[4]), .Z(n1) );
  XOR2_X1 U193 ( .A(mult_ab_1_0[0]), .B(n10), .Z(port_c_1[0]) );
  XOR2_X1 U194 ( .A(temp_0_1[0]), .B(mult_ab_1_2[0]), .Z(n10) );
  XOR2_X1 U195 ( .A(mult_ab_1_0[1]), .B(n9), .Z(port_c_1[1]) );
  XOR2_X1 U196 ( .A(temp_0_1[1]), .B(mult_ab_1_2[1]), .Z(n9) );
  XOR2_X1 U197 ( .A(mult_ab_1_0[2]), .B(n8), .Z(port_c_1[2]) );
  XOR2_X1 U198 ( .A(temp_0_1[2]), .B(mult_ab_1_2[2]), .Z(n8) );
  XOR2_X1 U199 ( .A(mult_ab_1_0[3]), .B(n7), .Z(port_c_1[3]) );
  XOR2_X1 U200 ( .A(temp_0_1[3]), .B(mult_ab_1_2[3]), .Z(n7) );
  XOR2_X1 U201 ( .A(mult_ab_1_0[4]), .B(n6), .Z(port_c_1[4]) );
  XOR2_X1 U202 ( .A(temp_0_1[4]), .B(mult_ab_1_2[4]), .Z(n6) );
  XOR2_X1 U203 ( .A(mult_ab_0_1[0]), .B(n15), .Z(port_c_0[0]) );
  XOR2_X1 U204 ( .A(temp_0_0[0]), .B(mult_ab_0_2[0]), .Z(n15) );
  XOR2_X1 U205 ( .A(mult_ab_0_1[1]), .B(n14), .Z(port_c_0[1]) );
  XOR2_X1 U206 ( .A(temp_0_0[1]), .B(mult_ab_0_2[1]), .Z(n14) );
  XOR2_X1 U207 ( .A(mult_ab_0_1[2]), .B(n13), .Z(port_c_0[2]) );
  XOR2_X1 U208 ( .A(temp_0_0[2]), .B(mult_ab_0_2[2]), .Z(n13) );
  XOR2_X1 U209 ( .A(mult_ab_0_1[3]), .B(n12), .Z(port_c_0[3]) );
  XOR2_X1 U210 ( .A(temp_0_0[3]), .B(mult_ab_0_2[3]), .Z(n12) );
  XOR2_X1 U211 ( .A(mult_ab_0_1[4]), .B(n11), .Z(port_c_0[4]) );
  XOR2_X1 U212 ( .A(temp_0_0[4]), .B(mult_ab_0_2[4]), .Z(n11) );
  BUF_X1 ref_1_U32 ( .A(ref_1_refreshed_0_4_), .Z(ref_1_n30) );
  BUF_X1 ref_1_U31 ( .A(ref_1_refreshed_0_4_), .Z(ref_1_n29) );
  BUF_X1 ref_1_U30 ( .A(ref_1_refreshed_0_3_), .Z(ref_1_n28) );
  BUF_X1 ref_1_U29 ( .A(ref_1_refreshed_0_3_), .Z(ref_1_n27) );
  BUF_X1 ref_1_U28 ( .A(ref_1_refreshed_0_2_), .Z(ref_1_n26) );
  BUF_X1 ref_1_U27 ( .A(ref_1_refreshed_0_2_), .Z(ref_1_n25) );
  BUF_X1 ref_1_U26 ( .A(ref_1_refreshed_0_1_), .Z(ref_1_n24) );
  BUF_X1 ref_1_U25 ( .A(ref_1_refreshed_0_1_), .Z(ref_1_n23) );
  BUF_X1 ref_1_U24 ( .A(ref_1_refreshed_0_0_), .Z(ref_1_n22) );
  BUF_X1 ref_1_U23 ( .A(ref_1_refreshed_0_0_), .Z(ref_1_n21) );
  BUF_X1 ref_1_U22 ( .A(ref_1_refreshed_1_4_), .Z(ref_1_n20) );
  BUF_X1 ref_1_U21 ( .A(ref_1_refreshed_1_4_), .Z(ref_1_n19) );
  BUF_X1 ref_1_U20 ( .A(ref_1_refreshed_1_3_), .Z(ref_1_n18) );
  BUF_X1 ref_1_U19 ( .A(ref_1_refreshed_1_3_), .Z(ref_1_n17) );
  BUF_X1 ref_1_U18 ( .A(ref_1_refreshed_1_2_), .Z(ref_1_n16) );
  BUF_X1 ref_1_U17 ( .A(ref_1_refreshed_1_2_), .Z(ref_1_n15) );
  BUF_X1 ref_1_U16 ( .A(ref_1_refreshed_1_1_), .Z(ref_1_n14) );
  BUF_X1 ref_1_U15 ( .A(ref_1_refreshed_1_1_), .Z(ref_1_n13) );
  BUF_X1 ref_1_U14 ( .A(ref_1_refreshed_1_0_), .Z(ref_1_n12) );
  BUF_X1 ref_1_U13 ( .A(ref_1_refreshed_1_0_), .Z(ref_1_n11) );
  BUF_X1 ref_1_U12 ( .A(ref_1_refreshed_2_4_), .Z(ref_1_n10) );
  BUF_X1 ref_1_U11 ( .A(ref_1_refreshed_2_4_), .Z(ref_1_n9) );
  BUF_X1 ref_1_U10 ( .A(ref_1_refreshed_2_3_), .Z(ref_1_n8) );
  BUF_X1 ref_1_U9 ( .A(ref_1_refreshed_2_3_), .Z(ref_1_n7) );
  BUF_X1 ref_1_U8 ( .A(ref_1_refreshed_2_2_), .Z(ref_1_n6) );
  BUF_X1 ref_1_U7 ( .A(ref_1_refreshed_2_2_), .Z(ref_1_n5) );
  BUF_X1 ref_1_U6 ( .A(ref_1_refreshed_2_1_), .Z(ref_1_n4) );
  BUF_X1 ref_1_U5 ( .A(ref_1_refreshed_2_1_), .Z(ref_1_n3) );
  BUF_X1 ref_1_U4 ( .A(ref_1_refreshed_2_0_), .Z(ref_1_n2) );
  BUF_X1 ref_1_U3 ( .A(ref_1_refreshed_2_0_), .Z(ref_1_n1) );
  DFF_X1 ref_1_reg_out_2_2_reg_0_ ( .D(ref_1_maj_53_port_o), .CK(clk), .Q(
        ref_1_port_o_2_2[0]), .QN() );
  DFF_X1 ref_1_reg_out_2_2_reg_1_ ( .D(ref_1_maj_62_port_o), .CK(clk), .Q(
        ref_1_port_o_2_2[1]), .QN() );
  DFF_X1 ref_1_reg_out_2_2_reg_2_ ( .D(ref_1_maj_71_port_o), .CK(clk), .Q(
        ref_1_port_o_2_2[2]), .QN() );
  DFF_X1 ref_1_reg_out_2_2_reg_3_ ( .D(ref_1_maj_80_port_o), .CK(clk), .Q(
        ref_1_port_o_2_2[3]), .QN() );
  DFF_X1 ref_1_reg_out_2_2_reg_4_ ( .D(ref_1_maj_89_port_o), .CK(clk), .Q(
        ref_1_port_o_2_2[4]), .QN() );
  DFF_X1 ref_1_reg_out_2_1_reg_0_ ( .D(ref_1_maj_52_port_o), .CK(clk), .Q(
        ref_1_port_o_2_1[0]), .QN() );
  DFF_X1 ref_1_reg_out_2_1_reg_1_ ( .D(ref_1_maj_61_port_o), .CK(clk), .Q(
        ref_1_port_o_2_1[1]), .QN() );
  DFF_X1 ref_1_reg_out_2_1_reg_2_ ( .D(ref_1_maj_70_port_o), .CK(clk), .Q(
        ref_1_port_o_2_1[2]), .QN() );
  DFF_X1 ref_1_reg_out_2_1_reg_3_ ( .D(ref_1_maj_79_port_o), .CK(clk), .Q(
        ref_1_port_o_2_1[3]), .QN() );
  DFF_X1 ref_1_reg_out_2_1_reg_4_ ( .D(ref_1_maj_88_port_o), .CK(clk), .Q(
        ref_1_port_o_2_1[4]), .QN() );
  DFF_X1 ref_1_reg_out_2_0_reg_0_ ( .D(ref_1_maj_51_port_o), .CK(clk), .Q(
        ref_1_port_o_2_0[0]), .QN() );
  DFF_X1 ref_1_reg_out_2_0_reg_1_ ( .D(ref_1_maj_60_port_o), .CK(clk), .Q(
        ref_1_port_o_2_0[1]), .QN() );
  DFF_X1 ref_1_reg_out_2_0_reg_2_ ( .D(ref_1_maj_69_port_o), .CK(clk), .Q(
        ref_1_port_o_2_0[2]), .QN() );
  DFF_X1 ref_1_reg_out_2_0_reg_3_ ( .D(ref_1_maj_78_port_o), .CK(clk), .Q(
        ref_1_port_o_2_0[3]), .QN() );
  DFF_X1 ref_1_reg_out_2_0_reg_4_ ( .D(ref_1_maj_87_port_o), .CK(clk), .Q(
        ref_1_port_o_2_0[4]), .QN() );
  DFF_X1 ref_1_reg_out_1_2_reg_0_ ( .D(ref_1_maj_50_port_o), .CK(clk), .Q(
        ref_1_port_o_1_2[0]), .QN() );
  DFF_X1 ref_1_reg_out_1_2_reg_1_ ( .D(ref_1_maj_59_port_o), .CK(clk), .Q(
        ref_1_port_o_1_2[1]), .QN() );
  DFF_X1 ref_1_reg_out_1_2_reg_2_ ( .D(ref_1_maj_68_port_o), .CK(clk), .Q(
        ref_1_port_o_1_2[2]), .QN() );
  DFF_X1 ref_1_reg_out_1_2_reg_3_ ( .D(ref_1_maj_77_port_o), .CK(clk), .Q(
        ref_1_port_o_1_2[3]), .QN() );
  DFF_X1 ref_1_reg_out_1_2_reg_4_ ( .D(ref_1_maj_86_port_o), .CK(clk), .Q(
        ref_1_port_o_1_2[4]), .QN() );
  DFF_X1 ref_1_reg_out_1_1_reg_0_ ( .D(ref_1_maj_49_port_o), .CK(clk), .Q(
        ref_1_port_o_1_1[0]), .QN() );
  DFF_X1 ref_1_reg_out_1_1_reg_1_ ( .D(ref_1_maj_58_port_o), .CK(clk), .Q(
        ref_1_port_o_1_1[1]), .QN() );
  DFF_X1 ref_1_reg_out_1_1_reg_2_ ( .D(ref_1_maj_67_port_o), .CK(clk), .Q(
        ref_1_port_o_1_1[2]), .QN() );
  DFF_X1 ref_1_reg_out_1_1_reg_3_ ( .D(ref_1_maj_76_port_o), .CK(clk), .Q(
        ref_1_port_o_1_1[3]), .QN() );
  DFF_X1 ref_1_reg_out_1_1_reg_4_ ( .D(ref_1_maj_85_port_o), .CK(clk), .Q(
        ref_1_port_o_1_1[4]), .QN() );
  DFF_X1 ref_1_reg_out_1_0_reg_0_ ( .D(ref_1_maj_48_port_o), .CK(clk), .Q(
        ref_1_port_o_1_0[0]), .QN() );
  DFF_X1 ref_1_reg_out_1_0_reg_1_ ( .D(ref_1_maj_57_port_o), .CK(clk), .Q(
        ref_1_port_o_1_0[1]), .QN() );
  DFF_X1 ref_1_reg_out_1_0_reg_2_ ( .D(ref_1_maj_66_port_o), .CK(clk), .Q(
        ref_1_port_o_1_0[2]), .QN() );
  DFF_X1 ref_1_reg_out_1_0_reg_3_ ( .D(ref_1_maj_75_port_o), .CK(clk), .Q(
        ref_1_port_o_1_0[3]), .QN() );
  DFF_X1 ref_1_reg_out_1_0_reg_4_ ( .D(ref_1_maj_84_port_o), .CK(clk), .Q(
        ref_1_port_o_1_0[4]), .QN() );
  DFF_X1 ref_1_reg_out_0_2_reg_0_ ( .D(ref_1_maj_47_port_o), .CK(clk), .Q(
        ref_1_port_o_0_2[0]), .QN() );
  DFF_X1 ref_1_reg_out_0_2_reg_1_ ( .D(ref_1_maj_56_port_o), .CK(clk), .Q(
        ref_1_port_o_0_2[1]), .QN() );
  DFF_X1 ref_1_reg_out_0_2_reg_2_ ( .D(ref_1_maj_65_port_o), .CK(clk), .Q(
        ref_1_port_o_0_2[2]), .QN() );
  DFF_X1 ref_1_reg_out_0_2_reg_3_ ( .D(ref_1_maj_74_port_o), .CK(clk), .Q(
        ref_1_port_o_0_2[3]), .QN() );
  DFF_X1 ref_1_reg_out_0_2_reg_4_ ( .D(ref_1_maj_83_port_o), .CK(clk), .Q(
        ref_1_port_o_0_2[4]), .QN() );
  DFF_X1 ref_1_reg_out_0_1_reg_0_ ( .D(ref_1_maj_46_port_o), .CK(clk), .Q(
        ref_1_port_o_0_1[0]), .QN() );
  DFF_X1 ref_1_reg_out_0_1_reg_1_ ( .D(ref_1_maj_55_port_o), .CK(clk), .Q(
        ref_1_port_o_0_1[1]), .QN() );
  DFF_X1 ref_1_reg_out_0_1_reg_2_ ( .D(ref_1_maj_64_port_o), .CK(clk), .Q(
        ref_1_port_o_0_1[2]), .QN() );
  DFF_X1 ref_1_reg_out_0_1_reg_3_ ( .D(ref_1_maj_73_port_o), .CK(clk), .Q(
        ref_1_port_o_0_1[3]), .QN() );
  DFF_X1 ref_1_reg_out_0_1_reg_4_ ( .D(ref_1_maj_82_port_o), .CK(clk), .Q(
        ref_1_port_o_0_1[4]), .QN() );
  DFF_X1 ref_1_reg_out_0_0_reg_0_ ( .D(ref_1_maj_45_port_o), .CK(clk), .Q(
        ref_1_port_o_0_0[0]), .QN() );
  DFF_X1 ref_1_reg_out_0_0_reg_1_ ( .D(ref_1_maj_54_port_o), .CK(clk), .Q(
        ref_1_port_o_0_0[1]), .QN() );
  DFF_X1 ref_1_reg_out_0_0_reg_2_ ( .D(ref_1_maj_63_port_o), .CK(clk), .Q(
        ref_1_port_o_0_0[2]), .QN() );
  DFF_X1 ref_1_reg_out_0_0_reg_3_ ( .D(ref_1_maj_72_port_o), .CK(clk), .Q(
        ref_1_port_o_0_0[3]), .QN() );
  DFF_X1 ref_1_reg_out_0_0_reg_4_ ( .D(ref_1_maj_81_port_o), .CK(clk), .Q(
        ref_1_port_o_0_0[4]), .QN() );
  XOR2_X1 ref_1_simpleXor_30_U1 ( .A(port_rand_ref[0]), .B(port_b_0[0]), .Z(
        ref_1_simpleXor_30_port_z) );
  XOR2_X1 ref_1_simpleXor_31_U1 ( .A(port_rand_ref[1]), .B(
        ref_1_simpleXor_30_port_z), .Z(ref_1_refreshed_0_0_) );
  XOR2_X1 ref_1_simpleXor_32_U1 ( .A(port_rand_ref[0]), .B(port_b_1[0]), .Z(
        ref_1_simpleXor_32_port_z) );
  XOR2_X1 ref_1_simpleXor_33_U1 ( .A(port_rand_ref[2]), .B(
        ref_1_simpleXor_32_port_z), .Z(ref_1_refreshed_1_0_) );
  XOR2_X1 ref_1_simpleXor_34_U1 ( .A(port_rand_ref[1]), .B(port_b_2[0]), .Z(
        ref_1_simpleXor_34_port_z) );
  XOR2_X1 ref_1_simpleXor_35_U1 ( .A(port_rand_ref[2]), .B(
        ref_1_simpleXor_34_port_z), .Z(ref_1_refreshed_2_0_) );
  XOR2_X1 ref_1_simpleXor_36_U1 ( .A(port_rand_ref[0]), .B(port_b_0[1]), .Z(
        ref_1_simpleXor_36_port_z) );
  XOR2_X1 ref_1_simpleXor_37_U1 ( .A(port_rand_ref[1]), .B(
        ref_1_simpleXor_36_port_z), .Z(ref_1_refreshed_0_1_) );
  XOR2_X1 ref_1_simpleXor_38_U1 ( .A(port_rand_ref[0]), .B(port_b_1[1]), .Z(
        ref_1_simpleXor_38_port_z) );
  XOR2_X1 ref_1_simpleXor_39_U1 ( .A(port_rand_ref[2]), .B(
        ref_1_simpleXor_38_port_z), .Z(ref_1_refreshed_1_1_) );
  XOR2_X1 ref_1_simpleXor_40_U1 ( .A(port_rand_ref[1]), .B(port_b_2[1]), .Z(
        ref_1_simpleXor_40_port_z) );
  XOR2_X1 ref_1_simpleXor_41_U1 ( .A(port_rand_ref[2]), .B(
        ref_1_simpleXor_40_port_z), .Z(ref_1_refreshed_2_1_) );
  XOR2_X1 ref_1_simpleXor_42_U1 ( .A(port_rand_ref[0]), .B(port_b_0[2]), .Z(
        ref_1_simpleXor_42_port_z) );
  XOR2_X1 ref_1_simpleXor_43_U1 ( .A(port_rand_ref[1]), .B(
        ref_1_simpleXor_42_port_z), .Z(ref_1_refreshed_0_2_) );
  XOR2_X1 ref_1_simpleXor_44_U1 ( .A(port_rand_ref[0]), .B(port_b_1[2]), .Z(
        ref_1_simpleXor_44_port_z) );
  XOR2_X1 ref_1_simpleXor_45_U1 ( .A(port_rand_ref[2]), .B(
        ref_1_simpleXor_44_port_z), .Z(ref_1_refreshed_1_2_) );
  XOR2_X1 ref_1_simpleXor_46_U1 ( .A(port_rand_ref[1]), .B(port_b_2[2]), .Z(
        ref_1_simpleXor_46_port_z) );
  XOR2_X1 ref_1_simpleXor_47_U1 ( .A(port_rand_ref[2]), .B(
        ref_1_simpleXor_46_port_z), .Z(ref_1_refreshed_2_2_) );
  XOR2_X1 ref_1_simpleXor_48_U1 ( .A(port_rand_ref[0]), .B(port_b_0[3]), .Z(
        ref_1_simpleXor_48_port_z) );
  XOR2_X1 ref_1_simpleXor_49_U1 ( .A(port_rand_ref[1]), .B(
        ref_1_simpleXor_48_port_z), .Z(ref_1_refreshed_0_3_) );
  XOR2_X1 ref_1_simpleXor_50_U1 ( .A(port_rand_ref[0]), .B(port_b_1[3]), .Z(
        ref_1_simpleXor_50_port_z) );
  XOR2_X1 ref_1_simpleXor_51_U1 ( .A(port_rand_ref[2]), .B(
        ref_1_simpleXor_50_port_z), .Z(ref_1_refreshed_1_3_) );
  XOR2_X1 ref_1_simpleXor_52_U1 ( .A(port_rand_ref[1]), .B(port_b_2[3]), .Z(
        ref_1_simpleXor_52_port_z) );
  XOR2_X1 ref_1_simpleXor_53_U1 ( .A(port_rand_ref[2]), .B(
        ref_1_simpleXor_52_port_z), .Z(ref_1_refreshed_2_3_) );
  XOR2_X1 ref_1_simpleXor_54_U1 ( .A(port_rand_ref[0]), .B(port_b_0[4]), .Z(
        ref_1_simpleXor_54_port_z) );
  XOR2_X1 ref_1_simpleXor_55_U1 ( .A(port_rand_ref[1]), .B(
        ref_1_simpleXor_54_port_z), .Z(ref_1_refreshed_0_4_) );
  XOR2_X1 ref_1_simpleXor_56_U1 ( .A(port_rand_ref[0]), .B(port_b_1[4]), .Z(
        ref_1_simpleXor_56_port_z) );
  XOR2_X1 ref_1_simpleXor_57_U1 ( .A(port_rand_ref[2]), .B(
        ref_1_simpleXor_56_port_z), .Z(ref_1_refreshed_1_4_) );
  XOR2_X1 ref_1_simpleXor_58_U1 ( .A(port_rand_ref[1]), .B(port_b_2[4]), .Z(
        ref_1_simpleXor_58_port_z) );
  XOR2_X1 ref_1_simpleXor_59_U1 ( .A(port_rand_ref[2]), .B(
        ref_1_simpleXor_58_port_z), .Z(ref_1_refreshed_2_4_) );
  NAND2_X1 ref_1_maj_45_U15 ( .A1(ref_1_n28), .A2(ref_1_n30), .ZN(
        ref_1_maj_45_n9) );
  NAND2_X1 ref_1_maj_45_U14 ( .A1(ref_1_maj_45_n6), .A2(ref_1_maj_45_n5), .ZN(
        ref_1_maj_45_n10) );
  NAND2_X1 ref_1_maj_45_U13 ( .A1(ref_1_maj_45_n9), .A2(ref_1_maj_45_n10), 
        .ZN(ref_1_maj_45_n8) );
  NAND2_X1 ref_1_maj_45_U12 ( .A1(ref_1_n26), .A2(ref_1_maj_45_n11), .ZN(
        ref_1_maj_45_n13) );
  NAND2_X1 ref_1_maj_45_U11 ( .A1(ref_1_n22), .A2(ref_1_n23), .ZN(
        ref_1_maj_45_n12) );
  NAND2_X1 ref_1_maj_45_U10 ( .A1(ref_1_maj_45_n12), .A2(ref_1_maj_45_n13), 
        .ZN(ref_1_maj_45_n7) );
  XOR2_X1 ref_1_maj_45_U9 ( .A(ref_1_n26), .B(ref_1_maj_45_n11), .Z(
        ref_1_maj_45_n6) );
  XOR2_X1 ref_1_maj_45_U8 ( .A(ref_1_n28), .B(ref_1_n30), .Z(ref_1_maj_45_n5)
         );
  XOR2_X1 ref_1_maj_45_U7 ( .A(ref_1_n22), .B(ref_1_n23), .Z(ref_1_maj_45_n11)
         );
  OR2_X1 ref_1_maj_45_U6 ( .A1(ref_1_maj_45_n7), .A2(ref_1_maj_45_n8), .ZN(
        ref_1_maj_45_n3) );
  NAND2_X1 ref_1_maj_45_U5 ( .A1(ref_1_maj_45_n3), .A2(ref_1_maj_45_n4), .ZN(
        ref_1_maj_45_n2) );
  NAND2_X1 ref_1_maj_45_U4 ( .A1(ref_1_maj_45_n7), .A2(ref_1_maj_45_n8), .ZN(
        ref_1_maj_45_n1) );
  NAND2_X1 ref_1_maj_45_U3 ( .A1(ref_1_maj_45_n1), .A2(ref_1_maj_45_n2), .ZN(
        ref_1_maj_45_port_o) );
  XOR2_X1 ref_1_maj_45_U2 ( .A(ref_1_maj_45_n5), .B(ref_1_maj_45_n6), .Z(
        ref_1_maj_45_n4) );
  NAND2_X1 ref_1_maj_46_U15 ( .A1(ref_1_n28), .A2(ref_1_n30), .ZN(
        ref_1_maj_46_n18) );
  NAND2_X1 ref_1_maj_46_U14 ( .A1(ref_1_maj_46_n21), .A2(ref_1_maj_46_n22), 
        .ZN(ref_1_maj_46_n17) );
  NAND2_X1 ref_1_maj_46_U13 ( .A1(ref_1_maj_46_n18), .A2(ref_1_maj_46_n17), 
        .ZN(ref_1_maj_46_n19) );
  NAND2_X1 ref_1_maj_46_U12 ( .A1(ref_1_n26), .A2(ref_1_maj_46_n16), .ZN(
        ref_1_maj_46_n14) );
  NAND2_X1 ref_1_maj_46_U11 ( .A1(ref_1_n22), .A2(ref_1_n23), .ZN(
        ref_1_maj_46_n15) );
  NAND2_X1 ref_1_maj_46_U10 ( .A1(ref_1_maj_46_n15), .A2(ref_1_maj_46_n14), 
        .ZN(ref_1_maj_46_n20) );
  XOR2_X1 ref_1_maj_46_U9 ( .A(ref_1_n26), .B(ref_1_maj_46_n16), .Z(
        ref_1_maj_46_n21) );
  XOR2_X1 ref_1_maj_46_U8 ( .A(ref_1_n28), .B(ref_1_n30), .Z(ref_1_maj_46_n22)
         );
  XOR2_X1 ref_1_maj_46_U7 ( .A(ref_1_n22), .B(ref_1_n23), .Z(ref_1_maj_46_n16)
         );
  OR2_X1 ref_1_maj_46_U6 ( .A1(ref_1_maj_46_n20), .A2(ref_1_maj_46_n19), .ZN(
        ref_1_maj_46_n24) );
  NAND2_X1 ref_1_maj_46_U5 ( .A1(ref_1_maj_46_n24), .A2(ref_1_maj_46_n23), 
        .ZN(ref_1_maj_46_n25) );
  NAND2_X1 ref_1_maj_46_U4 ( .A1(ref_1_maj_46_n20), .A2(ref_1_maj_46_n19), 
        .ZN(ref_1_maj_46_n26) );
  NAND2_X1 ref_1_maj_46_U3 ( .A1(ref_1_maj_46_n26), .A2(ref_1_maj_46_n25), 
        .ZN(ref_1_maj_46_port_o) );
  XOR2_X1 ref_1_maj_46_U2 ( .A(ref_1_maj_46_n22), .B(ref_1_maj_46_n21), .Z(
        ref_1_maj_46_n23) );
  NAND2_X1 ref_1_maj_47_U15 ( .A1(ref_1_refreshed_0_3_), .A2(
        ref_1_refreshed_0_4_), .ZN(ref_1_maj_47_n18) );
  NAND2_X1 ref_1_maj_47_U14 ( .A1(ref_1_maj_47_n21), .A2(ref_1_maj_47_n22), 
        .ZN(ref_1_maj_47_n17) );
  NAND2_X1 ref_1_maj_47_U13 ( .A1(ref_1_maj_47_n18), .A2(ref_1_maj_47_n17), 
        .ZN(ref_1_maj_47_n19) );
  NAND2_X1 ref_1_maj_47_U12 ( .A1(ref_1_refreshed_0_2_), .A2(ref_1_maj_47_n16), 
        .ZN(ref_1_maj_47_n14) );
  NAND2_X1 ref_1_maj_47_U11 ( .A1(ref_1_refreshed_0_0_), .A2(ref_1_n23), .ZN(
        ref_1_maj_47_n15) );
  NAND2_X1 ref_1_maj_47_U10 ( .A1(ref_1_maj_47_n15), .A2(ref_1_maj_47_n14), 
        .ZN(ref_1_maj_47_n20) );
  XOR2_X1 ref_1_maj_47_U9 ( .A(ref_1_refreshed_0_2_), .B(ref_1_maj_47_n16), 
        .Z(ref_1_maj_47_n21) );
  XOR2_X1 ref_1_maj_47_U8 ( .A(ref_1_refreshed_0_3_), .B(ref_1_refreshed_0_4_), 
        .Z(ref_1_maj_47_n22) );
  XOR2_X1 ref_1_maj_47_U7 ( .A(ref_1_refreshed_0_0_), .B(ref_1_n23), .Z(
        ref_1_maj_47_n16) );
  OR2_X1 ref_1_maj_47_U6 ( .A1(ref_1_maj_47_n20), .A2(ref_1_maj_47_n19), .ZN(
        ref_1_maj_47_n24) );
  NAND2_X1 ref_1_maj_47_U5 ( .A1(ref_1_maj_47_n24), .A2(ref_1_maj_47_n23), 
        .ZN(ref_1_maj_47_n25) );
  NAND2_X1 ref_1_maj_47_U4 ( .A1(ref_1_maj_47_n20), .A2(ref_1_maj_47_n19), 
        .ZN(ref_1_maj_47_n26) );
  NAND2_X1 ref_1_maj_47_U3 ( .A1(ref_1_maj_47_n26), .A2(ref_1_maj_47_n25), 
        .ZN(ref_1_maj_47_port_o) );
  XOR2_X1 ref_1_maj_47_U2 ( .A(ref_1_maj_47_n22), .B(ref_1_maj_47_n21), .Z(
        ref_1_maj_47_n23) );
  NAND2_X1 ref_1_maj_48_U15 ( .A1(ref_1_n18), .A2(ref_1_n20), .ZN(
        ref_1_maj_48_n18) );
  NAND2_X1 ref_1_maj_48_U14 ( .A1(ref_1_maj_48_n21), .A2(ref_1_maj_48_n22), 
        .ZN(ref_1_maj_48_n17) );
  NAND2_X1 ref_1_maj_48_U13 ( .A1(ref_1_maj_48_n18), .A2(ref_1_maj_48_n17), 
        .ZN(ref_1_maj_48_n19) );
  NAND2_X1 ref_1_maj_48_U12 ( .A1(ref_1_n16), .A2(ref_1_maj_48_n16), .ZN(
        ref_1_maj_48_n14) );
  NAND2_X1 ref_1_maj_48_U11 ( .A1(ref_1_n12), .A2(ref_1_n13), .ZN(
        ref_1_maj_48_n15) );
  NAND2_X1 ref_1_maj_48_U10 ( .A1(ref_1_maj_48_n15), .A2(ref_1_maj_48_n14), 
        .ZN(ref_1_maj_48_n20) );
  XOR2_X1 ref_1_maj_48_U9 ( .A(ref_1_n16), .B(ref_1_maj_48_n16), .Z(
        ref_1_maj_48_n21) );
  XOR2_X1 ref_1_maj_48_U8 ( .A(ref_1_n18), .B(ref_1_n20), .Z(ref_1_maj_48_n22)
         );
  XOR2_X1 ref_1_maj_48_U7 ( .A(ref_1_n12), .B(ref_1_n13), .Z(ref_1_maj_48_n16)
         );
  OR2_X1 ref_1_maj_48_U6 ( .A1(ref_1_maj_48_n20), .A2(ref_1_maj_48_n19), .ZN(
        ref_1_maj_48_n24) );
  NAND2_X1 ref_1_maj_48_U5 ( .A1(ref_1_maj_48_n24), .A2(ref_1_maj_48_n23), 
        .ZN(ref_1_maj_48_n25) );
  NAND2_X1 ref_1_maj_48_U4 ( .A1(ref_1_maj_48_n20), .A2(ref_1_maj_48_n19), 
        .ZN(ref_1_maj_48_n26) );
  NAND2_X1 ref_1_maj_48_U3 ( .A1(ref_1_maj_48_n26), .A2(ref_1_maj_48_n25), 
        .ZN(ref_1_maj_48_port_o) );
  XOR2_X1 ref_1_maj_48_U2 ( .A(ref_1_maj_48_n22), .B(ref_1_maj_48_n21), .Z(
        ref_1_maj_48_n23) );
  NAND2_X1 ref_1_maj_49_U15 ( .A1(ref_1_refreshed_1_3_), .A2(
        ref_1_refreshed_1_4_), .ZN(ref_1_maj_49_n18) );
  NAND2_X1 ref_1_maj_49_U14 ( .A1(ref_1_maj_49_n21), .A2(ref_1_maj_49_n22), 
        .ZN(ref_1_maj_49_n17) );
  NAND2_X1 ref_1_maj_49_U13 ( .A1(ref_1_maj_49_n18), .A2(ref_1_maj_49_n17), 
        .ZN(ref_1_maj_49_n19) );
  NAND2_X1 ref_1_maj_49_U12 ( .A1(ref_1_refreshed_1_2_), .A2(ref_1_maj_49_n16), 
        .ZN(ref_1_maj_49_n14) );
  NAND2_X1 ref_1_maj_49_U11 ( .A1(ref_1_refreshed_1_0_), .A2(ref_1_n13), .ZN(
        ref_1_maj_49_n15) );
  NAND2_X1 ref_1_maj_49_U10 ( .A1(ref_1_maj_49_n15), .A2(ref_1_maj_49_n14), 
        .ZN(ref_1_maj_49_n20) );
  XOR2_X1 ref_1_maj_49_U9 ( .A(ref_1_refreshed_1_2_), .B(ref_1_maj_49_n16), 
        .Z(ref_1_maj_49_n21) );
  XOR2_X1 ref_1_maj_49_U8 ( .A(ref_1_refreshed_1_3_), .B(ref_1_refreshed_1_4_), 
        .Z(ref_1_maj_49_n22) );
  XOR2_X1 ref_1_maj_49_U7 ( .A(ref_1_refreshed_1_0_), .B(ref_1_n13), .Z(
        ref_1_maj_49_n16) );
  OR2_X1 ref_1_maj_49_U6 ( .A1(ref_1_maj_49_n20), .A2(ref_1_maj_49_n19), .ZN(
        ref_1_maj_49_n24) );
  NAND2_X1 ref_1_maj_49_U5 ( .A1(ref_1_maj_49_n24), .A2(ref_1_maj_49_n23), 
        .ZN(ref_1_maj_49_n25) );
  NAND2_X1 ref_1_maj_49_U4 ( .A1(ref_1_maj_49_n20), .A2(ref_1_maj_49_n19), 
        .ZN(ref_1_maj_49_n26) );
  NAND2_X1 ref_1_maj_49_U3 ( .A1(ref_1_maj_49_n26), .A2(ref_1_maj_49_n25), 
        .ZN(ref_1_maj_49_port_o) );
  XOR2_X1 ref_1_maj_49_U2 ( .A(ref_1_maj_49_n22), .B(ref_1_maj_49_n21), .Z(
        ref_1_maj_49_n23) );
  NAND2_X1 ref_1_maj_50_U15 ( .A1(ref_1_refreshed_1_3_), .A2(
        ref_1_refreshed_1_4_), .ZN(ref_1_maj_50_n18) );
  NAND2_X1 ref_1_maj_50_U14 ( .A1(ref_1_maj_50_n21), .A2(ref_1_maj_50_n22), 
        .ZN(ref_1_maj_50_n17) );
  NAND2_X1 ref_1_maj_50_U13 ( .A1(ref_1_maj_50_n18), .A2(ref_1_maj_50_n17), 
        .ZN(ref_1_maj_50_n19) );
  NAND2_X1 ref_1_maj_50_U12 ( .A1(ref_1_refreshed_1_2_), .A2(ref_1_maj_50_n16), 
        .ZN(ref_1_maj_50_n14) );
  NAND2_X1 ref_1_maj_50_U11 ( .A1(ref_1_refreshed_1_0_), .A2(ref_1_n13), .ZN(
        ref_1_maj_50_n15) );
  NAND2_X1 ref_1_maj_50_U10 ( .A1(ref_1_maj_50_n15), .A2(ref_1_maj_50_n14), 
        .ZN(ref_1_maj_50_n20) );
  XOR2_X1 ref_1_maj_50_U9 ( .A(ref_1_refreshed_1_2_), .B(ref_1_maj_50_n16), 
        .Z(ref_1_maj_50_n21) );
  XOR2_X1 ref_1_maj_50_U8 ( .A(ref_1_refreshed_1_3_), .B(ref_1_refreshed_1_4_), 
        .Z(ref_1_maj_50_n22) );
  XOR2_X1 ref_1_maj_50_U7 ( .A(ref_1_refreshed_1_0_), .B(ref_1_n13), .Z(
        ref_1_maj_50_n16) );
  OR2_X1 ref_1_maj_50_U6 ( .A1(ref_1_maj_50_n20), .A2(ref_1_maj_50_n19), .ZN(
        ref_1_maj_50_n24) );
  NAND2_X1 ref_1_maj_50_U5 ( .A1(ref_1_maj_50_n24), .A2(ref_1_maj_50_n23), 
        .ZN(ref_1_maj_50_n25) );
  NAND2_X1 ref_1_maj_50_U4 ( .A1(ref_1_maj_50_n20), .A2(ref_1_maj_50_n19), 
        .ZN(ref_1_maj_50_n26) );
  NAND2_X1 ref_1_maj_50_U3 ( .A1(ref_1_maj_50_n26), .A2(ref_1_maj_50_n25), 
        .ZN(ref_1_maj_50_port_o) );
  XOR2_X1 ref_1_maj_50_U2 ( .A(ref_1_maj_50_n22), .B(ref_1_maj_50_n21), .Z(
        ref_1_maj_50_n23) );
  NAND2_X1 ref_1_maj_51_U15 ( .A1(ref_1_n8), .A2(ref_1_n10), .ZN(
        ref_1_maj_51_n18) );
  NAND2_X1 ref_1_maj_51_U14 ( .A1(ref_1_maj_51_n21), .A2(ref_1_maj_51_n22), 
        .ZN(ref_1_maj_51_n17) );
  NAND2_X1 ref_1_maj_51_U13 ( .A1(ref_1_maj_51_n18), .A2(ref_1_maj_51_n17), 
        .ZN(ref_1_maj_51_n19) );
  NAND2_X1 ref_1_maj_51_U12 ( .A1(ref_1_n6), .A2(ref_1_maj_51_n16), .ZN(
        ref_1_maj_51_n14) );
  NAND2_X1 ref_1_maj_51_U11 ( .A1(ref_1_n2), .A2(ref_1_n3), .ZN(
        ref_1_maj_51_n15) );
  NAND2_X1 ref_1_maj_51_U10 ( .A1(ref_1_maj_51_n15), .A2(ref_1_maj_51_n14), 
        .ZN(ref_1_maj_51_n20) );
  XOR2_X1 ref_1_maj_51_U9 ( .A(ref_1_n6), .B(ref_1_maj_51_n16), .Z(
        ref_1_maj_51_n21) );
  XOR2_X1 ref_1_maj_51_U8 ( .A(ref_1_n8), .B(ref_1_n10), .Z(ref_1_maj_51_n22)
         );
  XOR2_X1 ref_1_maj_51_U7 ( .A(ref_1_n2), .B(ref_1_n3), .Z(ref_1_maj_51_n16)
         );
  OR2_X1 ref_1_maj_51_U6 ( .A1(ref_1_maj_51_n20), .A2(ref_1_maj_51_n19), .ZN(
        ref_1_maj_51_n24) );
  NAND2_X1 ref_1_maj_51_U5 ( .A1(ref_1_maj_51_n24), .A2(ref_1_maj_51_n23), 
        .ZN(ref_1_maj_51_n25) );
  NAND2_X1 ref_1_maj_51_U4 ( .A1(ref_1_maj_51_n20), .A2(ref_1_maj_51_n19), 
        .ZN(ref_1_maj_51_n26) );
  NAND2_X1 ref_1_maj_51_U3 ( .A1(ref_1_maj_51_n26), .A2(ref_1_maj_51_n25), 
        .ZN(ref_1_maj_51_port_o) );
  XOR2_X1 ref_1_maj_51_U2 ( .A(ref_1_maj_51_n22), .B(ref_1_maj_51_n21), .Z(
        ref_1_maj_51_n23) );
  NAND2_X1 ref_1_maj_52_U15 ( .A1(ref_1_refreshed_2_3_), .A2(
        ref_1_refreshed_2_4_), .ZN(ref_1_maj_52_n18) );
  NAND2_X1 ref_1_maj_52_U14 ( .A1(ref_1_maj_52_n21), .A2(ref_1_maj_52_n22), 
        .ZN(ref_1_maj_52_n17) );
  NAND2_X1 ref_1_maj_52_U13 ( .A1(ref_1_maj_52_n18), .A2(ref_1_maj_52_n17), 
        .ZN(ref_1_maj_52_n19) );
  NAND2_X1 ref_1_maj_52_U12 ( .A1(ref_1_refreshed_2_2_), .A2(ref_1_maj_52_n16), 
        .ZN(ref_1_maj_52_n14) );
  NAND2_X1 ref_1_maj_52_U11 ( .A1(ref_1_refreshed_2_0_), .A2(ref_1_n3), .ZN(
        ref_1_maj_52_n15) );
  NAND2_X1 ref_1_maj_52_U10 ( .A1(ref_1_maj_52_n15), .A2(ref_1_maj_52_n14), 
        .ZN(ref_1_maj_52_n20) );
  XOR2_X1 ref_1_maj_52_U9 ( .A(ref_1_refreshed_2_2_), .B(ref_1_maj_52_n16), 
        .Z(ref_1_maj_52_n21) );
  XOR2_X1 ref_1_maj_52_U8 ( .A(ref_1_refreshed_2_3_), .B(ref_1_refreshed_2_4_), 
        .Z(ref_1_maj_52_n22) );
  XOR2_X1 ref_1_maj_52_U7 ( .A(ref_1_refreshed_2_0_), .B(ref_1_n3), .Z(
        ref_1_maj_52_n16) );
  OR2_X1 ref_1_maj_52_U6 ( .A1(ref_1_maj_52_n20), .A2(ref_1_maj_52_n19), .ZN(
        ref_1_maj_52_n24) );
  NAND2_X1 ref_1_maj_52_U5 ( .A1(ref_1_maj_52_n24), .A2(ref_1_maj_52_n23), 
        .ZN(ref_1_maj_52_n25) );
  NAND2_X1 ref_1_maj_52_U4 ( .A1(ref_1_maj_52_n20), .A2(ref_1_maj_52_n19), 
        .ZN(ref_1_maj_52_n26) );
  NAND2_X1 ref_1_maj_52_U3 ( .A1(ref_1_maj_52_n26), .A2(ref_1_maj_52_n25), 
        .ZN(ref_1_maj_52_port_o) );
  XOR2_X1 ref_1_maj_52_U2 ( .A(ref_1_maj_52_n22), .B(ref_1_maj_52_n21), .Z(
        ref_1_maj_52_n23) );
  NAND2_X1 ref_1_maj_53_U15 ( .A1(ref_1_refreshed_2_3_), .A2(
        ref_1_refreshed_2_4_), .ZN(ref_1_maj_53_n18) );
  NAND2_X1 ref_1_maj_53_U14 ( .A1(ref_1_maj_53_n21), .A2(ref_1_maj_53_n22), 
        .ZN(ref_1_maj_53_n17) );
  NAND2_X1 ref_1_maj_53_U13 ( .A1(ref_1_maj_53_n18), .A2(ref_1_maj_53_n17), 
        .ZN(ref_1_maj_53_n19) );
  NAND2_X1 ref_1_maj_53_U12 ( .A1(ref_1_refreshed_2_2_), .A2(ref_1_maj_53_n16), 
        .ZN(ref_1_maj_53_n14) );
  NAND2_X1 ref_1_maj_53_U11 ( .A1(ref_1_refreshed_2_0_), .A2(ref_1_n3), .ZN(
        ref_1_maj_53_n15) );
  NAND2_X1 ref_1_maj_53_U10 ( .A1(ref_1_maj_53_n15), .A2(ref_1_maj_53_n14), 
        .ZN(ref_1_maj_53_n20) );
  XOR2_X1 ref_1_maj_53_U9 ( .A(ref_1_refreshed_2_2_), .B(ref_1_maj_53_n16), 
        .Z(ref_1_maj_53_n21) );
  XOR2_X1 ref_1_maj_53_U8 ( .A(ref_1_refreshed_2_3_), .B(ref_1_refreshed_2_4_), 
        .Z(ref_1_maj_53_n22) );
  XOR2_X1 ref_1_maj_53_U7 ( .A(ref_1_refreshed_2_0_), .B(ref_1_n3), .Z(
        ref_1_maj_53_n16) );
  OR2_X1 ref_1_maj_53_U6 ( .A1(ref_1_maj_53_n20), .A2(ref_1_maj_53_n19), .ZN(
        ref_1_maj_53_n24) );
  NAND2_X1 ref_1_maj_53_U5 ( .A1(ref_1_maj_53_n24), .A2(ref_1_maj_53_n23), 
        .ZN(ref_1_maj_53_n25) );
  NAND2_X1 ref_1_maj_53_U4 ( .A1(ref_1_maj_53_n20), .A2(ref_1_maj_53_n19), 
        .ZN(ref_1_maj_53_n26) );
  NAND2_X1 ref_1_maj_53_U3 ( .A1(ref_1_maj_53_n26), .A2(ref_1_maj_53_n25), 
        .ZN(ref_1_maj_53_port_o) );
  XOR2_X1 ref_1_maj_53_U2 ( .A(ref_1_maj_53_n22), .B(ref_1_maj_53_n21), .Z(
        ref_1_maj_53_n23) );
  NAND2_X1 ref_1_maj_54_U15 ( .A1(ref_1_refreshed_0_3_), .A2(
        ref_1_refreshed_0_4_), .ZN(ref_1_maj_54_n18) );
  NAND2_X1 ref_1_maj_54_U14 ( .A1(ref_1_maj_54_n21), .A2(ref_1_maj_54_n22), 
        .ZN(ref_1_maj_54_n17) );
  NAND2_X1 ref_1_maj_54_U13 ( .A1(ref_1_maj_54_n18), .A2(ref_1_maj_54_n17), 
        .ZN(ref_1_maj_54_n19) );
  NAND2_X1 ref_1_maj_54_U12 ( .A1(ref_1_refreshed_0_2_), .A2(ref_1_maj_54_n16), 
        .ZN(ref_1_maj_54_n14) );
  NAND2_X1 ref_1_maj_54_U11 ( .A1(ref_1_refreshed_0_0_), .A2(ref_1_n23), .ZN(
        ref_1_maj_54_n15) );
  NAND2_X1 ref_1_maj_54_U10 ( .A1(ref_1_maj_54_n15), .A2(ref_1_maj_54_n14), 
        .ZN(ref_1_maj_54_n20) );
  XOR2_X1 ref_1_maj_54_U9 ( .A(ref_1_refreshed_0_2_), .B(ref_1_maj_54_n16), 
        .Z(ref_1_maj_54_n21) );
  XOR2_X1 ref_1_maj_54_U8 ( .A(ref_1_refreshed_0_3_), .B(ref_1_refreshed_0_4_), 
        .Z(ref_1_maj_54_n22) );
  XOR2_X1 ref_1_maj_54_U7 ( .A(ref_1_refreshed_0_0_), .B(ref_1_n23), .Z(
        ref_1_maj_54_n16) );
  OR2_X1 ref_1_maj_54_U6 ( .A1(ref_1_maj_54_n20), .A2(ref_1_maj_54_n19), .ZN(
        ref_1_maj_54_n24) );
  NAND2_X1 ref_1_maj_54_U5 ( .A1(ref_1_maj_54_n24), .A2(ref_1_maj_54_n23), 
        .ZN(ref_1_maj_54_n25) );
  NAND2_X1 ref_1_maj_54_U4 ( .A1(ref_1_maj_54_n20), .A2(ref_1_maj_54_n19), 
        .ZN(ref_1_maj_54_n26) );
  NAND2_X1 ref_1_maj_54_U3 ( .A1(ref_1_maj_54_n26), .A2(ref_1_maj_54_n25), 
        .ZN(ref_1_maj_54_port_o) );
  XOR2_X1 ref_1_maj_54_U2 ( .A(ref_1_maj_54_n22), .B(ref_1_maj_54_n21), .Z(
        ref_1_maj_54_n23) );
  NAND2_X1 ref_1_maj_55_U15 ( .A1(ref_1_refreshed_0_3_), .A2(
        ref_1_refreshed_0_4_), .ZN(ref_1_maj_55_n18) );
  NAND2_X1 ref_1_maj_55_U14 ( .A1(ref_1_maj_55_n21), .A2(ref_1_maj_55_n22), 
        .ZN(ref_1_maj_55_n17) );
  NAND2_X1 ref_1_maj_55_U13 ( .A1(ref_1_maj_55_n18), .A2(ref_1_maj_55_n17), 
        .ZN(ref_1_maj_55_n19) );
  NAND2_X1 ref_1_maj_55_U12 ( .A1(ref_1_refreshed_0_2_), .A2(ref_1_maj_55_n16), 
        .ZN(ref_1_maj_55_n14) );
  NAND2_X1 ref_1_maj_55_U11 ( .A1(ref_1_refreshed_0_0_), .A2(ref_1_n23), .ZN(
        ref_1_maj_55_n15) );
  NAND2_X1 ref_1_maj_55_U10 ( .A1(ref_1_maj_55_n15), .A2(ref_1_maj_55_n14), 
        .ZN(ref_1_maj_55_n20) );
  XOR2_X1 ref_1_maj_55_U9 ( .A(ref_1_refreshed_0_2_), .B(ref_1_maj_55_n16), 
        .Z(ref_1_maj_55_n21) );
  XOR2_X1 ref_1_maj_55_U8 ( .A(ref_1_refreshed_0_3_), .B(ref_1_refreshed_0_4_), 
        .Z(ref_1_maj_55_n22) );
  XOR2_X1 ref_1_maj_55_U7 ( .A(ref_1_refreshed_0_0_), .B(ref_1_n23), .Z(
        ref_1_maj_55_n16) );
  OR2_X1 ref_1_maj_55_U6 ( .A1(ref_1_maj_55_n20), .A2(ref_1_maj_55_n19), .ZN(
        ref_1_maj_55_n24) );
  NAND2_X1 ref_1_maj_55_U5 ( .A1(ref_1_maj_55_n24), .A2(ref_1_maj_55_n23), 
        .ZN(ref_1_maj_55_n25) );
  NAND2_X1 ref_1_maj_55_U4 ( .A1(ref_1_maj_55_n20), .A2(ref_1_maj_55_n19), 
        .ZN(ref_1_maj_55_n26) );
  NAND2_X1 ref_1_maj_55_U3 ( .A1(ref_1_maj_55_n26), .A2(ref_1_maj_55_n25), 
        .ZN(ref_1_maj_55_port_o) );
  XOR2_X1 ref_1_maj_55_U2 ( .A(ref_1_maj_55_n22), .B(ref_1_maj_55_n21), .Z(
        ref_1_maj_55_n23) );
  NAND2_X1 ref_1_maj_56_U15 ( .A1(ref_1_n27), .A2(ref_1_n29), .ZN(
        ref_1_maj_56_n18) );
  NAND2_X1 ref_1_maj_56_U14 ( .A1(ref_1_maj_56_n21), .A2(ref_1_maj_56_n22), 
        .ZN(ref_1_maj_56_n17) );
  NAND2_X1 ref_1_maj_56_U13 ( .A1(ref_1_maj_56_n18), .A2(ref_1_maj_56_n17), 
        .ZN(ref_1_maj_56_n19) );
  NAND2_X1 ref_1_maj_56_U12 ( .A1(ref_1_n25), .A2(ref_1_maj_56_n16), .ZN(
        ref_1_maj_56_n14) );
  NAND2_X1 ref_1_maj_56_U11 ( .A1(ref_1_n21), .A2(ref_1_n24), .ZN(
        ref_1_maj_56_n15) );
  NAND2_X1 ref_1_maj_56_U10 ( .A1(ref_1_maj_56_n15), .A2(ref_1_maj_56_n14), 
        .ZN(ref_1_maj_56_n20) );
  XOR2_X1 ref_1_maj_56_U9 ( .A(ref_1_n25), .B(ref_1_maj_56_n16), .Z(
        ref_1_maj_56_n21) );
  XOR2_X1 ref_1_maj_56_U8 ( .A(ref_1_n27), .B(ref_1_n29), .Z(ref_1_maj_56_n22)
         );
  XOR2_X1 ref_1_maj_56_U7 ( .A(ref_1_n21), .B(ref_1_n24), .Z(ref_1_maj_56_n16)
         );
  OR2_X1 ref_1_maj_56_U6 ( .A1(ref_1_maj_56_n20), .A2(ref_1_maj_56_n19), .ZN(
        ref_1_maj_56_n24) );
  NAND2_X1 ref_1_maj_56_U5 ( .A1(ref_1_maj_56_n24), .A2(ref_1_maj_56_n23), 
        .ZN(ref_1_maj_56_n25) );
  NAND2_X1 ref_1_maj_56_U4 ( .A1(ref_1_maj_56_n20), .A2(ref_1_maj_56_n19), 
        .ZN(ref_1_maj_56_n26) );
  NAND2_X1 ref_1_maj_56_U3 ( .A1(ref_1_maj_56_n26), .A2(ref_1_maj_56_n25), 
        .ZN(ref_1_maj_56_port_o) );
  XOR2_X1 ref_1_maj_56_U2 ( .A(ref_1_maj_56_n22), .B(ref_1_maj_56_n21), .Z(
        ref_1_maj_56_n23) );
  NAND2_X1 ref_1_maj_57_U15 ( .A1(ref_1_refreshed_1_3_), .A2(
        ref_1_refreshed_1_4_), .ZN(ref_1_maj_57_n18) );
  NAND2_X1 ref_1_maj_57_U14 ( .A1(ref_1_maj_57_n21), .A2(ref_1_maj_57_n22), 
        .ZN(ref_1_maj_57_n17) );
  NAND2_X1 ref_1_maj_57_U13 ( .A1(ref_1_maj_57_n18), .A2(ref_1_maj_57_n17), 
        .ZN(ref_1_maj_57_n19) );
  NAND2_X1 ref_1_maj_57_U12 ( .A1(ref_1_refreshed_1_2_), .A2(ref_1_maj_57_n16), 
        .ZN(ref_1_maj_57_n14) );
  NAND2_X1 ref_1_maj_57_U11 ( .A1(ref_1_refreshed_1_0_), .A2(ref_1_n13), .ZN(
        ref_1_maj_57_n15) );
  NAND2_X1 ref_1_maj_57_U10 ( .A1(ref_1_maj_57_n15), .A2(ref_1_maj_57_n14), 
        .ZN(ref_1_maj_57_n20) );
  XOR2_X1 ref_1_maj_57_U9 ( .A(ref_1_refreshed_1_2_), .B(ref_1_maj_57_n16), 
        .Z(ref_1_maj_57_n21) );
  XOR2_X1 ref_1_maj_57_U8 ( .A(ref_1_refreshed_1_3_), .B(ref_1_refreshed_1_4_), 
        .Z(ref_1_maj_57_n22) );
  XOR2_X1 ref_1_maj_57_U7 ( .A(ref_1_refreshed_1_0_), .B(ref_1_n13), .Z(
        ref_1_maj_57_n16) );
  OR2_X1 ref_1_maj_57_U6 ( .A1(ref_1_maj_57_n20), .A2(ref_1_maj_57_n19), .ZN(
        ref_1_maj_57_n24) );
  NAND2_X1 ref_1_maj_57_U5 ( .A1(ref_1_maj_57_n24), .A2(ref_1_maj_57_n23), 
        .ZN(ref_1_maj_57_n25) );
  NAND2_X1 ref_1_maj_57_U4 ( .A1(ref_1_maj_57_n20), .A2(ref_1_maj_57_n19), 
        .ZN(ref_1_maj_57_n26) );
  NAND2_X1 ref_1_maj_57_U3 ( .A1(ref_1_maj_57_n26), .A2(ref_1_maj_57_n25), 
        .ZN(ref_1_maj_57_port_o) );
  XOR2_X1 ref_1_maj_57_U2 ( .A(ref_1_maj_57_n22), .B(ref_1_maj_57_n21), .Z(
        ref_1_maj_57_n23) );
  NAND2_X1 ref_1_maj_58_U15 ( .A1(ref_1_n17), .A2(ref_1_n19), .ZN(
        ref_1_maj_58_n18) );
  NAND2_X1 ref_1_maj_58_U14 ( .A1(ref_1_maj_58_n21), .A2(ref_1_maj_58_n22), 
        .ZN(ref_1_maj_58_n17) );
  NAND2_X1 ref_1_maj_58_U13 ( .A1(ref_1_maj_58_n18), .A2(ref_1_maj_58_n17), 
        .ZN(ref_1_maj_58_n19) );
  NAND2_X1 ref_1_maj_58_U12 ( .A1(ref_1_n15), .A2(ref_1_maj_58_n16), .ZN(
        ref_1_maj_58_n14) );
  NAND2_X1 ref_1_maj_58_U11 ( .A1(ref_1_n11), .A2(ref_1_n14), .ZN(
        ref_1_maj_58_n15) );
  NAND2_X1 ref_1_maj_58_U10 ( .A1(ref_1_maj_58_n15), .A2(ref_1_maj_58_n14), 
        .ZN(ref_1_maj_58_n20) );
  XOR2_X1 ref_1_maj_58_U9 ( .A(ref_1_n15), .B(ref_1_maj_58_n16), .Z(
        ref_1_maj_58_n21) );
  XOR2_X1 ref_1_maj_58_U8 ( .A(ref_1_n17), .B(ref_1_n19), .Z(ref_1_maj_58_n22)
         );
  XOR2_X1 ref_1_maj_58_U7 ( .A(ref_1_n11), .B(ref_1_n14), .Z(ref_1_maj_58_n16)
         );
  OR2_X1 ref_1_maj_58_U6 ( .A1(ref_1_maj_58_n20), .A2(ref_1_maj_58_n19), .ZN(
        ref_1_maj_58_n24) );
  NAND2_X1 ref_1_maj_58_U5 ( .A1(ref_1_maj_58_n24), .A2(ref_1_maj_58_n23), 
        .ZN(ref_1_maj_58_n25) );
  NAND2_X1 ref_1_maj_58_U4 ( .A1(ref_1_maj_58_n20), .A2(ref_1_maj_58_n19), 
        .ZN(ref_1_maj_58_n26) );
  NAND2_X1 ref_1_maj_58_U3 ( .A1(ref_1_maj_58_n26), .A2(ref_1_maj_58_n25), 
        .ZN(ref_1_maj_58_port_o) );
  XOR2_X1 ref_1_maj_58_U2 ( .A(ref_1_maj_58_n22), .B(ref_1_maj_58_n21), .Z(
        ref_1_maj_58_n23) );
  NAND2_X1 ref_1_maj_59_U15 ( .A1(ref_1_n18), .A2(ref_1_n20), .ZN(
        ref_1_maj_59_n18) );
  NAND2_X1 ref_1_maj_59_U14 ( .A1(ref_1_maj_59_n21), .A2(ref_1_maj_59_n22), 
        .ZN(ref_1_maj_59_n17) );
  NAND2_X1 ref_1_maj_59_U13 ( .A1(ref_1_maj_59_n18), .A2(ref_1_maj_59_n17), 
        .ZN(ref_1_maj_59_n19) );
  NAND2_X1 ref_1_maj_59_U12 ( .A1(ref_1_n16), .A2(ref_1_maj_59_n16), .ZN(
        ref_1_maj_59_n14) );
  NAND2_X1 ref_1_maj_59_U11 ( .A1(ref_1_n12), .A2(ref_1_n14), .ZN(
        ref_1_maj_59_n15) );
  NAND2_X1 ref_1_maj_59_U10 ( .A1(ref_1_maj_59_n15), .A2(ref_1_maj_59_n14), 
        .ZN(ref_1_maj_59_n20) );
  XOR2_X1 ref_1_maj_59_U9 ( .A(ref_1_n16), .B(ref_1_maj_59_n16), .Z(
        ref_1_maj_59_n21) );
  XOR2_X1 ref_1_maj_59_U8 ( .A(ref_1_n18), .B(ref_1_n20), .Z(ref_1_maj_59_n22)
         );
  XOR2_X1 ref_1_maj_59_U7 ( .A(ref_1_n12), .B(ref_1_n14), .Z(ref_1_maj_59_n16)
         );
  OR2_X1 ref_1_maj_59_U6 ( .A1(ref_1_maj_59_n20), .A2(ref_1_maj_59_n19), .ZN(
        ref_1_maj_59_n24) );
  NAND2_X1 ref_1_maj_59_U5 ( .A1(ref_1_maj_59_n24), .A2(ref_1_maj_59_n23), 
        .ZN(ref_1_maj_59_n25) );
  NAND2_X1 ref_1_maj_59_U4 ( .A1(ref_1_maj_59_n20), .A2(ref_1_maj_59_n19), 
        .ZN(ref_1_maj_59_n26) );
  NAND2_X1 ref_1_maj_59_U3 ( .A1(ref_1_maj_59_n26), .A2(ref_1_maj_59_n25), 
        .ZN(ref_1_maj_59_port_o) );
  XOR2_X1 ref_1_maj_59_U2 ( .A(ref_1_maj_59_n22), .B(ref_1_maj_59_n21), .Z(
        ref_1_maj_59_n23) );
  NAND2_X1 ref_1_maj_60_U15 ( .A1(ref_1_refreshed_2_3_), .A2(
        ref_1_refreshed_2_4_), .ZN(ref_1_maj_60_n18) );
  NAND2_X1 ref_1_maj_60_U14 ( .A1(ref_1_maj_60_n21), .A2(ref_1_maj_60_n22), 
        .ZN(ref_1_maj_60_n17) );
  NAND2_X1 ref_1_maj_60_U13 ( .A1(ref_1_maj_60_n18), .A2(ref_1_maj_60_n17), 
        .ZN(ref_1_maj_60_n19) );
  NAND2_X1 ref_1_maj_60_U12 ( .A1(ref_1_refreshed_2_2_), .A2(ref_1_maj_60_n16), 
        .ZN(ref_1_maj_60_n14) );
  NAND2_X1 ref_1_maj_60_U11 ( .A1(ref_1_refreshed_2_0_), .A2(ref_1_n3), .ZN(
        ref_1_maj_60_n15) );
  NAND2_X1 ref_1_maj_60_U10 ( .A1(ref_1_maj_60_n15), .A2(ref_1_maj_60_n14), 
        .ZN(ref_1_maj_60_n20) );
  XOR2_X1 ref_1_maj_60_U9 ( .A(ref_1_refreshed_2_2_), .B(ref_1_maj_60_n16), 
        .Z(ref_1_maj_60_n21) );
  XOR2_X1 ref_1_maj_60_U8 ( .A(ref_1_refreshed_2_3_), .B(ref_1_refreshed_2_4_), 
        .Z(ref_1_maj_60_n22) );
  XOR2_X1 ref_1_maj_60_U7 ( .A(ref_1_refreshed_2_0_), .B(ref_1_n3), .Z(
        ref_1_maj_60_n16) );
  OR2_X1 ref_1_maj_60_U6 ( .A1(ref_1_maj_60_n20), .A2(ref_1_maj_60_n19), .ZN(
        ref_1_maj_60_n24) );
  NAND2_X1 ref_1_maj_60_U5 ( .A1(ref_1_maj_60_n24), .A2(ref_1_maj_60_n23), 
        .ZN(ref_1_maj_60_n25) );
  NAND2_X1 ref_1_maj_60_U4 ( .A1(ref_1_maj_60_n20), .A2(ref_1_maj_60_n19), 
        .ZN(ref_1_maj_60_n26) );
  NAND2_X1 ref_1_maj_60_U3 ( .A1(ref_1_maj_60_n26), .A2(ref_1_maj_60_n25), 
        .ZN(ref_1_maj_60_port_o) );
  XOR2_X1 ref_1_maj_60_U2 ( .A(ref_1_maj_60_n22), .B(ref_1_maj_60_n21), .Z(
        ref_1_maj_60_n23) );
  NAND2_X1 ref_1_maj_61_U15 ( .A1(ref_1_n7), .A2(ref_1_n9), .ZN(
        ref_1_maj_61_n18) );
  NAND2_X1 ref_1_maj_61_U14 ( .A1(ref_1_maj_61_n21), .A2(ref_1_maj_61_n22), 
        .ZN(ref_1_maj_61_n17) );
  NAND2_X1 ref_1_maj_61_U13 ( .A1(ref_1_maj_61_n18), .A2(ref_1_maj_61_n17), 
        .ZN(ref_1_maj_61_n19) );
  NAND2_X1 ref_1_maj_61_U12 ( .A1(ref_1_n5), .A2(ref_1_maj_61_n16), .ZN(
        ref_1_maj_61_n14) );
  NAND2_X1 ref_1_maj_61_U11 ( .A1(ref_1_n1), .A2(ref_1_n4), .ZN(
        ref_1_maj_61_n15) );
  NAND2_X1 ref_1_maj_61_U10 ( .A1(ref_1_maj_61_n15), .A2(ref_1_maj_61_n14), 
        .ZN(ref_1_maj_61_n20) );
  XOR2_X1 ref_1_maj_61_U9 ( .A(ref_1_n5), .B(ref_1_maj_61_n16), .Z(
        ref_1_maj_61_n21) );
  XOR2_X1 ref_1_maj_61_U8 ( .A(ref_1_n7), .B(ref_1_n9), .Z(ref_1_maj_61_n22)
         );
  XOR2_X1 ref_1_maj_61_U7 ( .A(ref_1_n1), .B(ref_1_n4), .Z(ref_1_maj_61_n16)
         );
  OR2_X1 ref_1_maj_61_U6 ( .A1(ref_1_maj_61_n20), .A2(ref_1_maj_61_n19), .ZN(
        ref_1_maj_61_n24) );
  NAND2_X1 ref_1_maj_61_U5 ( .A1(ref_1_maj_61_n24), .A2(ref_1_maj_61_n23), 
        .ZN(ref_1_maj_61_n25) );
  NAND2_X1 ref_1_maj_61_U4 ( .A1(ref_1_maj_61_n20), .A2(ref_1_maj_61_n19), 
        .ZN(ref_1_maj_61_n26) );
  NAND2_X1 ref_1_maj_61_U3 ( .A1(ref_1_maj_61_n26), .A2(ref_1_maj_61_n25), 
        .ZN(ref_1_maj_61_port_o) );
  XOR2_X1 ref_1_maj_61_U2 ( .A(ref_1_maj_61_n22), .B(ref_1_maj_61_n21), .Z(
        ref_1_maj_61_n23) );
  NAND2_X1 ref_1_maj_62_U15 ( .A1(ref_1_n8), .A2(ref_1_n10), .ZN(
        ref_1_maj_62_n18) );
  NAND2_X1 ref_1_maj_62_U14 ( .A1(ref_1_maj_62_n21), .A2(ref_1_maj_62_n22), 
        .ZN(ref_1_maj_62_n17) );
  NAND2_X1 ref_1_maj_62_U13 ( .A1(ref_1_maj_62_n18), .A2(ref_1_maj_62_n17), 
        .ZN(ref_1_maj_62_n19) );
  NAND2_X1 ref_1_maj_62_U12 ( .A1(ref_1_n6), .A2(ref_1_maj_62_n16), .ZN(
        ref_1_maj_62_n14) );
  NAND2_X1 ref_1_maj_62_U11 ( .A1(ref_1_n2), .A2(ref_1_n4), .ZN(
        ref_1_maj_62_n15) );
  NAND2_X1 ref_1_maj_62_U10 ( .A1(ref_1_maj_62_n15), .A2(ref_1_maj_62_n14), 
        .ZN(ref_1_maj_62_n20) );
  XOR2_X1 ref_1_maj_62_U9 ( .A(ref_1_n6), .B(ref_1_maj_62_n16), .Z(
        ref_1_maj_62_n21) );
  XOR2_X1 ref_1_maj_62_U8 ( .A(ref_1_n8), .B(ref_1_n10), .Z(ref_1_maj_62_n22)
         );
  XOR2_X1 ref_1_maj_62_U7 ( .A(ref_1_n2), .B(ref_1_n4), .Z(ref_1_maj_62_n16)
         );
  OR2_X1 ref_1_maj_62_U6 ( .A1(ref_1_maj_62_n20), .A2(ref_1_maj_62_n19), .ZN(
        ref_1_maj_62_n24) );
  NAND2_X1 ref_1_maj_62_U5 ( .A1(ref_1_maj_62_n24), .A2(ref_1_maj_62_n23), 
        .ZN(ref_1_maj_62_n25) );
  NAND2_X1 ref_1_maj_62_U4 ( .A1(ref_1_maj_62_n20), .A2(ref_1_maj_62_n19), 
        .ZN(ref_1_maj_62_n26) );
  NAND2_X1 ref_1_maj_62_U3 ( .A1(ref_1_maj_62_n26), .A2(ref_1_maj_62_n25), 
        .ZN(ref_1_maj_62_port_o) );
  XOR2_X1 ref_1_maj_62_U2 ( .A(ref_1_maj_62_n22), .B(ref_1_maj_62_n21), .Z(
        ref_1_maj_62_n23) );
  NAND2_X1 ref_1_maj_63_U15 ( .A1(ref_1_n28), .A2(ref_1_n30), .ZN(
        ref_1_maj_63_n18) );
  NAND2_X1 ref_1_maj_63_U14 ( .A1(ref_1_maj_63_n21), .A2(ref_1_maj_63_n22), 
        .ZN(ref_1_maj_63_n17) );
  NAND2_X1 ref_1_maj_63_U13 ( .A1(ref_1_maj_63_n18), .A2(ref_1_maj_63_n17), 
        .ZN(ref_1_maj_63_n19) );
  NAND2_X1 ref_1_maj_63_U12 ( .A1(ref_1_n26), .A2(ref_1_maj_63_n16), .ZN(
        ref_1_maj_63_n14) );
  NAND2_X1 ref_1_maj_63_U11 ( .A1(ref_1_n22), .A2(ref_1_n24), .ZN(
        ref_1_maj_63_n15) );
  NAND2_X1 ref_1_maj_63_U10 ( .A1(ref_1_maj_63_n15), .A2(ref_1_maj_63_n14), 
        .ZN(ref_1_maj_63_n20) );
  XOR2_X1 ref_1_maj_63_U9 ( .A(ref_1_n26), .B(ref_1_maj_63_n16), .Z(
        ref_1_maj_63_n21) );
  XOR2_X1 ref_1_maj_63_U8 ( .A(ref_1_n28), .B(ref_1_n30), .Z(ref_1_maj_63_n22)
         );
  XOR2_X1 ref_1_maj_63_U7 ( .A(ref_1_n22), .B(ref_1_n24), .Z(ref_1_maj_63_n16)
         );
  OR2_X1 ref_1_maj_63_U6 ( .A1(ref_1_maj_63_n20), .A2(ref_1_maj_63_n19), .ZN(
        ref_1_maj_63_n24) );
  NAND2_X1 ref_1_maj_63_U5 ( .A1(ref_1_maj_63_n24), .A2(ref_1_maj_63_n23), 
        .ZN(ref_1_maj_63_n25) );
  NAND2_X1 ref_1_maj_63_U4 ( .A1(ref_1_maj_63_n20), .A2(ref_1_maj_63_n19), 
        .ZN(ref_1_maj_63_n26) );
  NAND2_X1 ref_1_maj_63_U3 ( .A1(ref_1_maj_63_n26), .A2(ref_1_maj_63_n25), 
        .ZN(ref_1_maj_63_port_o) );
  XOR2_X1 ref_1_maj_63_U2 ( .A(ref_1_maj_63_n22), .B(ref_1_maj_63_n21), .Z(
        ref_1_maj_63_n23) );
  NAND2_X1 ref_1_maj_64_U15 ( .A1(ref_1_n27), .A2(ref_1_n29), .ZN(
        ref_1_maj_64_n18) );
  NAND2_X1 ref_1_maj_64_U14 ( .A1(ref_1_maj_64_n21), .A2(ref_1_maj_64_n22), 
        .ZN(ref_1_maj_64_n17) );
  NAND2_X1 ref_1_maj_64_U13 ( .A1(ref_1_maj_64_n18), .A2(ref_1_maj_64_n17), 
        .ZN(ref_1_maj_64_n19) );
  NAND2_X1 ref_1_maj_64_U12 ( .A1(ref_1_n25), .A2(ref_1_maj_64_n16), .ZN(
        ref_1_maj_64_n14) );
  NAND2_X1 ref_1_maj_64_U11 ( .A1(ref_1_n21), .A2(ref_1_n24), .ZN(
        ref_1_maj_64_n15) );
  NAND2_X1 ref_1_maj_64_U10 ( .A1(ref_1_maj_64_n15), .A2(ref_1_maj_64_n14), 
        .ZN(ref_1_maj_64_n20) );
  XOR2_X1 ref_1_maj_64_U9 ( .A(ref_1_n25), .B(ref_1_maj_64_n16), .Z(
        ref_1_maj_64_n21) );
  XOR2_X1 ref_1_maj_64_U8 ( .A(ref_1_n27), .B(ref_1_n29), .Z(ref_1_maj_64_n22)
         );
  XOR2_X1 ref_1_maj_64_U7 ( .A(ref_1_n21), .B(ref_1_n24), .Z(ref_1_maj_64_n16)
         );
  OR2_X1 ref_1_maj_64_U6 ( .A1(ref_1_maj_64_n20), .A2(ref_1_maj_64_n19), .ZN(
        ref_1_maj_64_n24) );
  NAND2_X1 ref_1_maj_64_U5 ( .A1(ref_1_maj_64_n24), .A2(ref_1_maj_64_n23), 
        .ZN(ref_1_maj_64_n25) );
  NAND2_X1 ref_1_maj_64_U4 ( .A1(ref_1_maj_64_n20), .A2(ref_1_maj_64_n19), 
        .ZN(ref_1_maj_64_n26) );
  NAND2_X1 ref_1_maj_64_U3 ( .A1(ref_1_maj_64_n26), .A2(ref_1_maj_64_n25), 
        .ZN(ref_1_maj_64_port_o) );
  XOR2_X1 ref_1_maj_64_U2 ( .A(ref_1_maj_64_n22), .B(ref_1_maj_64_n21), .Z(
        ref_1_maj_64_n23) );
  NAND2_X1 ref_1_maj_65_U15 ( .A1(ref_1_n28), .A2(ref_1_n30), .ZN(
        ref_1_maj_65_n18) );
  NAND2_X1 ref_1_maj_65_U14 ( .A1(ref_1_maj_65_n21), .A2(ref_1_maj_65_n22), 
        .ZN(ref_1_maj_65_n17) );
  NAND2_X1 ref_1_maj_65_U13 ( .A1(ref_1_maj_65_n18), .A2(ref_1_maj_65_n17), 
        .ZN(ref_1_maj_65_n19) );
  NAND2_X1 ref_1_maj_65_U12 ( .A1(ref_1_n26), .A2(ref_1_maj_65_n16), .ZN(
        ref_1_maj_65_n14) );
  NAND2_X1 ref_1_maj_65_U11 ( .A1(ref_1_n22), .A2(ref_1_n24), .ZN(
        ref_1_maj_65_n15) );
  NAND2_X1 ref_1_maj_65_U10 ( .A1(ref_1_maj_65_n15), .A2(ref_1_maj_65_n14), 
        .ZN(ref_1_maj_65_n20) );
  XOR2_X1 ref_1_maj_65_U9 ( .A(ref_1_n26), .B(ref_1_maj_65_n16), .Z(
        ref_1_maj_65_n21) );
  XOR2_X1 ref_1_maj_65_U8 ( .A(ref_1_n28), .B(ref_1_n30), .Z(ref_1_maj_65_n22)
         );
  XOR2_X1 ref_1_maj_65_U7 ( .A(ref_1_n22), .B(ref_1_n24), .Z(ref_1_maj_65_n16)
         );
  OR2_X1 ref_1_maj_65_U6 ( .A1(ref_1_maj_65_n20), .A2(ref_1_maj_65_n19), .ZN(
        ref_1_maj_65_n24) );
  NAND2_X1 ref_1_maj_65_U5 ( .A1(ref_1_maj_65_n24), .A2(ref_1_maj_65_n23), 
        .ZN(ref_1_maj_65_n25) );
  NAND2_X1 ref_1_maj_65_U4 ( .A1(ref_1_maj_65_n20), .A2(ref_1_maj_65_n19), 
        .ZN(ref_1_maj_65_n26) );
  NAND2_X1 ref_1_maj_65_U3 ( .A1(ref_1_maj_65_n26), .A2(ref_1_maj_65_n25), 
        .ZN(ref_1_maj_65_port_o) );
  XOR2_X1 ref_1_maj_65_U2 ( .A(ref_1_maj_65_n22), .B(ref_1_maj_65_n21), .Z(
        ref_1_maj_65_n23) );
  NAND2_X1 ref_1_maj_66_U15 ( .A1(ref_1_n17), .A2(ref_1_n19), .ZN(
        ref_1_maj_66_n18) );
  NAND2_X1 ref_1_maj_66_U14 ( .A1(ref_1_maj_66_n21), .A2(ref_1_maj_66_n22), 
        .ZN(ref_1_maj_66_n17) );
  NAND2_X1 ref_1_maj_66_U13 ( .A1(ref_1_maj_66_n18), .A2(ref_1_maj_66_n17), 
        .ZN(ref_1_maj_66_n19) );
  NAND2_X1 ref_1_maj_66_U12 ( .A1(ref_1_n15), .A2(ref_1_maj_66_n16), .ZN(
        ref_1_maj_66_n14) );
  NAND2_X1 ref_1_maj_66_U11 ( .A1(ref_1_n11), .A2(ref_1_n14), .ZN(
        ref_1_maj_66_n15) );
  NAND2_X1 ref_1_maj_66_U10 ( .A1(ref_1_maj_66_n15), .A2(ref_1_maj_66_n14), 
        .ZN(ref_1_maj_66_n20) );
  XOR2_X1 ref_1_maj_66_U9 ( .A(ref_1_n15), .B(ref_1_maj_66_n16), .Z(
        ref_1_maj_66_n21) );
  XOR2_X1 ref_1_maj_66_U8 ( .A(ref_1_n17), .B(ref_1_n19), .Z(ref_1_maj_66_n22)
         );
  XOR2_X1 ref_1_maj_66_U7 ( .A(ref_1_n11), .B(ref_1_n14), .Z(ref_1_maj_66_n16)
         );
  OR2_X1 ref_1_maj_66_U6 ( .A1(ref_1_maj_66_n20), .A2(ref_1_maj_66_n19), .ZN(
        ref_1_maj_66_n24) );
  NAND2_X1 ref_1_maj_66_U5 ( .A1(ref_1_maj_66_n24), .A2(ref_1_maj_66_n23), 
        .ZN(ref_1_maj_66_n25) );
  NAND2_X1 ref_1_maj_66_U4 ( .A1(ref_1_maj_66_n20), .A2(ref_1_maj_66_n19), 
        .ZN(ref_1_maj_66_n26) );
  NAND2_X1 ref_1_maj_66_U3 ( .A1(ref_1_maj_66_n26), .A2(ref_1_maj_66_n25), 
        .ZN(ref_1_maj_66_port_o) );
  XOR2_X1 ref_1_maj_66_U2 ( .A(ref_1_maj_66_n22), .B(ref_1_maj_66_n21), .Z(
        ref_1_maj_66_n23) );
  NAND2_X1 ref_1_maj_67_U15 ( .A1(ref_1_n18), .A2(ref_1_n20), .ZN(
        ref_1_maj_67_n18) );
  NAND2_X1 ref_1_maj_67_U14 ( .A1(ref_1_maj_67_n21), .A2(ref_1_maj_67_n22), 
        .ZN(ref_1_maj_67_n17) );
  NAND2_X1 ref_1_maj_67_U13 ( .A1(ref_1_maj_67_n18), .A2(ref_1_maj_67_n17), 
        .ZN(ref_1_maj_67_n19) );
  NAND2_X1 ref_1_maj_67_U12 ( .A1(ref_1_n16), .A2(ref_1_maj_67_n16), .ZN(
        ref_1_maj_67_n14) );
  NAND2_X1 ref_1_maj_67_U11 ( .A1(ref_1_n12), .A2(ref_1_n14), .ZN(
        ref_1_maj_67_n15) );
  NAND2_X1 ref_1_maj_67_U10 ( .A1(ref_1_maj_67_n15), .A2(ref_1_maj_67_n14), 
        .ZN(ref_1_maj_67_n20) );
  XOR2_X1 ref_1_maj_67_U9 ( .A(ref_1_n16), .B(ref_1_maj_67_n16), .Z(
        ref_1_maj_67_n21) );
  XOR2_X1 ref_1_maj_67_U8 ( .A(ref_1_n18), .B(ref_1_n20), .Z(ref_1_maj_67_n22)
         );
  XOR2_X1 ref_1_maj_67_U7 ( .A(ref_1_n12), .B(ref_1_n14), .Z(ref_1_maj_67_n16)
         );
  OR2_X1 ref_1_maj_67_U6 ( .A1(ref_1_maj_67_n20), .A2(ref_1_maj_67_n19), .ZN(
        ref_1_maj_67_n24) );
  NAND2_X1 ref_1_maj_67_U5 ( .A1(ref_1_maj_67_n24), .A2(ref_1_maj_67_n23), 
        .ZN(ref_1_maj_67_n25) );
  NAND2_X1 ref_1_maj_67_U4 ( .A1(ref_1_maj_67_n20), .A2(ref_1_maj_67_n19), 
        .ZN(ref_1_maj_67_n26) );
  NAND2_X1 ref_1_maj_67_U3 ( .A1(ref_1_maj_67_n26), .A2(ref_1_maj_67_n25), 
        .ZN(ref_1_maj_67_port_o) );
  XOR2_X1 ref_1_maj_67_U2 ( .A(ref_1_maj_67_n22), .B(ref_1_maj_67_n21), .Z(
        ref_1_maj_67_n23) );
  NAND2_X1 ref_1_maj_68_U15 ( .A1(ref_1_n17), .A2(ref_1_n19), .ZN(
        ref_1_maj_68_n18) );
  NAND2_X1 ref_1_maj_68_U14 ( .A1(ref_1_maj_68_n21), .A2(ref_1_maj_68_n22), 
        .ZN(ref_1_maj_68_n17) );
  NAND2_X1 ref_1_maj_68_U13 ( .A1(ref_1_maj_68_n18), .A2(ref_1_maj_68_n17), 
        .ZN(ref_1_maj_68_n19) );
  NAND2_X1 ref_1_maj_68_U12 ( .A1(ref_1_n15), .A2(ref_1_maj_68_n16), .ZN(
        ref_1_maj_68_n14) );
  NAND2_X1 ref_1_maj_68_U11 ( .A1(ref_1_n11), .A2(ref_1_n14), .ZN(
        ref_1_maj_68_n15) );
  NAND2_X1 ref_1_maj_68_U10 ( .A1(ref_1_maj_68_n15), .A2(ref_1_maj_68_n14), 
        .ZN(ref_1_maj_68_n20) );
  XOR2_X1 ref_1_maj_68_U9 ( .A(ref_1_n15), .B(ref_1_maj_68_n16), .Z(
        ref_1_maj_68_n21) );
  XOR2_X1 ref_1_maj_68_U8 ( .A(ref_1_n17), .B(ref_1_n19), .Z(ref_1_maj_68_n22)
         );
  XOR2_X1 ref_1_maj_68_U7 ( .A(ref_1_n11), .B(ref_1_n14), .Z(ref_1_maj_68_n16)
         );
  OR2_X1 ref_1_maj_68_U6 ( .A1(ref_1_maj_68_n20), .A2(ref_1_maj_68_n19), .ZN(
        ref_1_maj_68_n24) );
  NAND2_X1 ref_1_maj_68_U5 ( .A1(ref_1_maj_68_n24), .A2(ref_1_maj_68_n23), 
        .ZN(ref_1_maj_68_n25) );
  NAND2_X1 ref_1_maj_68_U4 ( .A1(ref_1_maj_68_n20), .A2(ref_1_maj_68_n19), 
        .ZN(ref_1_maj_68_n26) );
  NAND2_X1 ref_1_maj_68_U3 ( .A1(ref_1_maj_68_n26), .A2(ref_1_maj_68_n25), 
        .ZN(ref_1_maj_68_port_o) );
  XOR2_X1 ref_1_maj_68_U2 ( .A(ref_1_maj_68_n22), .B(ref_1_maj_68_n21), .Z(
        ref_1_maj_68_n23) );
  NAND2_X1 ref_1_maj_69_U15 ( .A1(ref_1_n7), .A2(ref_1_n9), .ZN(
        ref_1_maj_69_n18) );
  NAND2_X1 ref_1_maj_69_U14 ( .A1(ref_1_maj_69_n21), .A2(ref_1_maj_69_n22), 
        .ZN(ref_1_maj_69_n17) );
  NAND2_X1 ref_1_maj_69_U13 ( .A1(ref_1_maj_69_n18), .A2(ref_1_maj_69_n17), 
        .ZN(ref_1_maj_69_n19) );
  NAND2_X1 ref_1_maj_69_U12 ( .A1(ref_1_n5), .A2(ref_1_maj_69_n16), .ZN(
        ref_1_maj_69_n14) );
  NAND2_X1 ref_1_maj_69_U11 ( .A1(ref_1_n1), .A2(ref_1_n4), .ZN(
        ref_1_maj_69_n15) );
  NAND2_X1 ref_1_maj_69_U10 ( .A1(ref_1_maj_69_n15), .A2(ref_1_maj_69_n14), 
        .ZN(ref_1_maj_69_n20) );
  XOR2_X1 ref_1_maj_69_U9 ( .A(ref_1_n5), .B(ref_1_maj_69_n16), .Z(
        ref_1_maj_69_n21) );
  XOR2_X1 ref_1_maj_69_U8 ( .A(ref_1_n7), .B(ref_1_n9), .Z(ref_1_maj_69_n22)
         );
  XOR2_X1 ref_1_maj_69_U7 ( .A(ref_1_n1), .B(ref_1_n4), .Z(ref_1_maj_69_n16)
         );
  OR2_X1 ref_1_maj_69_U6 ( .A1(ref_1_maj_69_n20), .A2(ref_1_maj_69_n19), .ZN(
        ref_1_maj_69_n24) );
  NAND2_X1 ref_1_maj_69_U5 ( .A1(ref_1_maj_69_n24), .A2(ref_1_maj_69_n23), 
        .ZN(ref_1_maj_69_n25) );
  NAND2_X1 ref_1_maj_69_U4 ( .A1(ref_1_maj_69_n20), .A2(ref_1_maj_69_n19), 
        .ZN(ref_1_maj_69_n26) );
  NAND2_X1 ref_1_maj_69_U3 ( .A1(ref_1_maj_69_n26), .A2(ref_1_maj_69_n25), 
        .ZN(ref_1_maj_69_port_o) );
  XOR2_X1 ref_1_maj_69_U2 ( .A(ref_1_maj_69_n22), .B(ref_1_maj_69_n21), .Z(
        ref_1_maj_69_n23) );
  NAND2_X1 ref_1_maj_70_U15 ( .A1(ref_1_n8), .A2(ref_1_n10), .ZN(
        ref_1_maj_70_n18) );
  NAND2_X1 ref_1_maj_70_U14 ( .A1(ref_1_maj_70_n21), .A2(ref_1_maj_70_n22), 
        .ZN(ref_1_maj_70_n17) );
  NAND2_X1 ref_1_maj_70_U13 ( .A1(ref_1_maj_70_n18), .A2(ref_1_maj_70_n17), 
        .ZN(ref_1_maj_70_n19) );
  NAND2_X1 ref_1_maj_70_U12 ( .A1(ref_1_n6), .A2(ref_1_maj_70_n16), .ZN(
        ref_1_maj_70_n14) );
  NAND2_X1 ref_1_maj_70_U11 ( .A1(ref_1_n2), .A2(ref_1_n4), .ZN(
        ref_1_maj_70_n15) );
  NAND2_X1 ref_1_maj_70_U10 ( .A1(ref_1_maj_70_n15), .A2(ref_1_maj_70_n14), 
        .ZN(ref_1_maj_70_n20) );
  XOR2_X1 ref_1_maj_70_U9 ( .A(ref_1_n6), .B(ref_1_maj_70_n16), .Z(
        ref_1_maj_70_n21) );
  XOR2_X1 ref_1_maj_70_U8 ( .A(ref_1_n8), .B(ref_1_n10), .Z(ref_1_maj_70_n22)
         );
  XOR2_X1 ref_1_maj_70_U7 ( .A(ref_1_n2), .B(ref_1_n4), .Z(ref_1_maj_70_n16)
         );
  OR2_X1 ref_1_maj_70_U6 ( .A1(ref_1_maj_70_n20), .A2(ref_1_maj_70_n19), .ZN(
        ref_1_maj_70_n24) );
  NAND2_X1 ref_1_maj_70_U5 ( .A1(ref_1_maj_70_n24), .A2(ref_1_maj_70_n23), 
        .ZN(ref_1_maj_70_n25) );
  NAND2_X1 ref_1_maj_70_U4 ( .A1(ref_1_maj_70_n20), .A2(ref_1_maj_70_n19), 
        .ZN(ref_1_maj_70_n26) );
  NAND2_X1 ref_1_maj_70_U3 ( .A1(ref_1_maj_70_n26), .A2(ref_1_maj_70_n25), 
        .ZN(ref_1_maj_70_port_o) );
  XOR2_X1 ref_1_maj_70_U2 ( .A(ref_1_maj_70_n22), .B(ref_1_maj_70_n21), .Z(
        ref_1_maj_70_n23) );
  NAND2_X1 ref_1_maj_71_U15 ( .A1(ref_1_n7), .A2(ref_1_n9), .ZN(
        ref_1_maj_71_n18) );
  NAND2_X1 ref_1_maj_71_U14 ( .A1(ref_1_maj_71_n21), .A2(ref_1_maj_71_n22), 
        .ZN(ref_1_maj_71_n17) );
  NAND2_X1 ref_1_maj_71_U13 ( .A1(ref_1_maj_71_n18), .A2(ref_1_maj_71_n17), 
        .ZN(ref_1_maj_71_n19) );
  NAND2_X1 ref_1_maj_71_U12 ( .A1(ref_1_n5), .A2(ref_1_maj_71_n16), .ZN(
        ref_1_maj_71_n14) );
  NAND2_X1 ref_1_maj_71_U11 ( .A1(ref_1_n1), .A2(ref_1_n4), .ZN(
        ref_1_maj_71_n15) );
  NAND2_X1 ref_1_maj_71_U10 ( .A1(ref_1_maj_71_n15), .A2(ref_1_maj_71_n14), 
        .ZN(ref_1_maj_71_n20) );
  XOR2_X1 ref_1_maj_71_U9 ( .A(ref_1_n5), .B(ref_1_maj_71_n16), .Z(
        ref_1_maj_71_n21) );
  XOR2_X1 ref_1_maj_71_U8 ( .A(ref_1_n7), .B(ref_1_n9), .Z(ref_1_maj_71_n22)
         );
  XOR2_X1 ref_1_maj_71_U7 ( .A(ref_1_n1), .B(ref_1_n4), .Z(ref_1_maj_71_n16)
         );
  OR2_X1 ref_1_maj_71_U6 ( .A1(ref_1_maj_71_n20), .A2(ref_1_maj_71_n19), .ZN(
        ref_1_maj_71_n24) );
  NAND2_X1 ref_1_maj_71_U5 ( .A1(ref_1_maj_71_n24), .A2(ref_1_maj_71_n23), 
        .ZN(ref_1_maj_71_n25) );
  NAND2_X1 ref_1_maj_71_U4 ( .A1(ref_1_maj_71_n20), .A2(ref_1_maj_71_n19), 
        .ZN(ref_1_maj_71_n26) );
  NAND2_X1 ref_1_maj_71_U3 ( .A1(ref_1_maj_71_n26), .A2(ref_1_maj_71_n25), 
        .ZN(ref_1_maj_71_port_o) );
  XOR2_X1 ref_1_maj_71_U2 ( .A(ref_1_maj_71_n22), .B(ref_1_maj_71_n21), .Z(
        ref_1_maj_71_n23) );
  NAND2_X1 ref_1_maj_72_U15 ( .A1(ref_1_n27), .A2(ref_1_n29), .ZN(
        ref_1_maj_72_n18) );
  NAND2_X1 ref_1_maj_72_U14 ( .A1(ref_1_maj_72_n21), .A2(ref_1_maj_72_n22), 
        .ZN(ref_1_maj_72_n17) );
  NAND2_X1 ref_1_maj_72_U13 ( .A1(ref_1_maj_72_n18), .A2(ref_1_maj_72_n17), 
        .ZN(ref_1_maj_72_n19) );
  NAND2_X1 ref_1_maj_72_U12 ( .A1(ref_1_n25), .A2(ref_1_maj_72_n16), .ZN(
        ref_1_maj_72_n14) );
  NAND2_X1 ref_1_maj_72_U11 ( .A1(ref_1_n21), .A2(ref_1_n24), .ZN(
        ref_1_maj_72_n15) );
  NAND2_X1 ref_1_maj_72_U10 ( .A1(ref_1_maj_72_n15), .A2(ref_1_maj_72_n14), 
        .ZN(ref_1_maj_72_n20) );
  XOR2_X1 ref_1_maj_72_U9 ( .A(ref_1_n25), .B(ref_1_maj_72_n16), .Z(
        ref_1_maj_72_n21) );
  XOR2_X1 ref_1_maj_72_U8 ( .A(ref_1_n27), .B(ref_1_n29), .Z(ref_1_maj_72_n22)
         );
  XOR2_X1 ref_1_maj_72_U7 ( .A(ref_1_n21), .B(ref_1_n24), .Z(ref_1_maj_72_n16)
         );
  OR2_X1 ref_1_maj_72_U6 ( .A1(ref_1_maj_72_n20), .A2(ref_1_maj_72_n19), .ZN(
        ref_1_maj_72_n24) );
  NAND2_X1 ref_1_maj_72_U5 ( .A1(ref_1_maj_72_n24), .A2(ref_1_maj_72_n23), 
        .ZN(ref_1_maj_72_n25) );
  NAND2_X1 ref_1_maj_72_U4 ( .A1(ref_1_maj_72_n20), .A2(ref_1_maj_72_n19), 
        .ZN(ref_1_maj_72_n26) );
  NAND2_X1 ref_1_maj_72_U3 ( .A1(ref_1_maj_72_n26), .A2(ref_1_maj_72_n25), 
        .ZN(ref_1_maj_72_port_o) );
  XOR2_X1 ref_1_maj_72_U2 ( .A(ref_1_maj_72_n22), .B(ref_1_maj_72_n21), .Z(
        ref_1_maj_72_n23) );
  NAND2_X1 ref_1_maj_73_U15 ( .A1(ref_1_n27), .A2(ref_1_n29), .ZN(
        ref_1_maj_73_n18) );
  NAND2_X1 ref_1_maj_73_U14 ( .A1(ref_1_maj_73_n21), .A2(ref_1_maj_73_n22), 
        .ZN(ref_1_maj_73_n17) );
  NAND2_X1 ref_1_maj_73_U13 ( .A1(ref_1_maj_73_n18), .A2(ref_1_maj_73_n17), 
        .ZN(ref_1_maj_73_n19) );
  NAND2_X1 ref_1_maj_73_U12 ( .A1(ref_1_n25), .A2(ref_1_maj_73_n16), .ZN(
        ref_1_maj_73_n14) );
  NAND2_X1 ref_1_maj_73_U11 ( .A1(ref_1_n21), .A2(ref_1_refreshed_0_1_), .ZN(
        ref_1_maj_73_n15) );
  NAND2_X1 ref_1_maj_73_U10 ( .A1(ref_1_maj_73_n15), .A2(ref_1_maj_73_n14), 
        .ZN(ref_1_maj_73_n20) );
  XOR2_X1 ref_1_maj_73_U9 ( .A(ref_1_n25), .B(ref_1_maj_73_n16), .Z(
        ref_1_maj_73_n21) );
  XOR2_X1 ref_1_maj_73_U8 ( .A(ref_1_n27), .B(ref_1_n29), .Z(ref_1_maj_73_n22)
         );
  XOR2_X1 ref_1_maj_73_U7 ( .A(ref_1_n21), .B(ref_1_refreshed_0_1_), .Z(
        ref_1_maj_73_n16) );
  OR2_X1 ref_1_maj_73_U6 ( .A1(ref_1_maj_73_n20), .A2(ref_1_maj_73_n19), .ZN(
        ref_1_maj_73_n24) );
  NAND2_X1 ref_1_maj_73_U5 ( .A1(ref_1_maj_73_n24), .A2(ref_1_maj_73_n23), 
        .ZN(ref_1_maj_73_n25) );
  NAND2_X1 ref_1_maj_73_U4 ( .A1(ref_1_maj_73_n20), .A2(ref_1_maj_73_n19), 
        .ZN(ref_1_maj_73_n26) );
  NAND2_X1 ref_1_maj_73_U3 ( .A1(ref_1_maj_73_n26), .A2(ref_1_maj_73_n25), 
        .ZN(ref_1_maj_73_port_o) );
  XOR2_X1 ref_1_maj_73_U2 ( .A(ref_1_maj_73_n22), .B(ref_1_maj_73_n21), .Z(
        ref_1_maj_73_n23) );
  NAND2_X1 ref_1_maj_74_U15 ( .A1(ref_1_n27), .A2(ref_1_n29), .ZN(
        ref_1_maj_74_n18) );
  NAND2_X1 ref_1_maj_74_U14 ( .A1(ref_1_maj_74_n21), .A2(ref_1_maj_74_n22), 
        .ZN(ref_1_maj_74_n17) );
  NAND2_X1 ref_1_maj_74_U13 ( .A1(ref_1_maj_74_n18), .A2(ref_1_maj_74_n17), 
        .ZN(ref_1_maj_74_n19) );
  NAND2_X1 ref_1_maj_74_U12 ( .A1(ref_1_n25), .A2(ref_1_maj_74_n16), .ZN(
        ref_1_maj_74_n14) );
  NAND2_X1 ref_1_maj_74_U11 ( .A1(ref_1_n21), .A2(ref_1_refreshed_0_1_), .ZN(
        ref_1_maj_74_n15) );
  NAND2_X1 ref_1_maj_74_U10 ( .A1(ref_1_maj_74_n15), .A2(ref_1_maj_74_n14), 
        .ZN(ref_1_maj_74_n20) );
  XOR2_X1 ref_1_maj_74_U9 ( .A(ref_1_n25), .B(ref_1_maj_74_n16), .Z(
        ref_1_maj_74_n21) );
  XOR2_X1 ref_1_maj_74_U8 ( .A(ref_1_n27), .B(ref_1_n29), .Z(ref_1_maj_74_n22)
         );
  XOR2_X1 ref_1_maj_74_U7 ( .A(ref_1_n21), .B(ref_1_refreshed_0_1_), .Z(
        ref_1_maj_74_n16) );
  OR2_X1 ref_1_maj_74_U6 ( .A1(ref_1_maj_74_n20), .A2(ref_1_maj_74_n19), .ZN(
        ref_1_maj_74_n24) );
  NAND2_X1 ref_1_maj_74_U5 ( .A1(ref_1_maj_74_n24), .A2(ref_1_maj_74_n23), 
        .ZN(ref_1_maj_74_n25) );
  NAND2_X1 ref_1_maj_74_U4 ( .A1(ref_1_maj_74_n20), .A2(ref_1_maj_74_n19), 
        .ZN(ref_1_maj_74_n26) );
  NAND2_X1 ref_1_maj_74_U3 ( .A1(ref_1_maj_74_n26), .A2(ref_1_maj_74_n25), 
        .ZN(ref_1_maj_74_port_o) );
  XOR2_X1 ref_1_maj_74_U2 ( .A(ref_1_maj_74_n22), .B(ref_1_maj_74_n21), .Z(
        ref_1_maj_74_n23) );
  NAND2_X1 ref_1_maj_75_U15 ( .A1(ref_1_n17), .A2(ref_1_n19), .ZN(
        ref_1_maj_75_n18) );
  NAND2_X1 ref_1_maj_75_U14 ( .A1(ref_1_maj_75_n21), .A2(ref_1_maj_75_n22), 
        .ZN(ref_1_maj_75_n17) );
  NAND2_X1 ref_1_maj_75_U13 ( .A1(ref_1_maj_75_n18), .A2(ref_1_maj_75_n17), 
        .ZN(ref_1_maj_75_n19) );
  NAND2_X1 ref_1_maj_75_U12 ( .A1(ref_1_n15), .A2(ref_1_maj_75_n16), .ZN(
        ref_1_maj_75_n14) );
  NAND2_X1 ref_1_maj_75_U11 ( .A1(ref_1_n11), .A2(ref_1_refreshed_1_1_), .ZN(
        ref_1_maj_75_n15) );
  NAND2_X1 ref_1_maj_75_U10 ( .A1(ref_1_maj_75_n15), .A2(ref_1_maj_75_n14), 
        .ZN(ref_1_maj_75_n20) );
  XOR2_X1 ref_1_maj_75_U9 ( .A(ref_1_n15), .B(ref_1_maj_75_n16), .Z(
        ref_1_maj_75_n21) );
  XOR2_X1 ref_1_maj_75_U8 ( .A(ref_1_n17), .B(ref_1_n19), .Z(ref_1_maj_75_n22)
         );
  XOR2_X1 ref_1_maj_75_U7 ( .A(ref_1_n11), .B(ref_1_refreshed_1_1_), .Z(
        ref_1_maj_75_n16) );
  OR2_X1 ref_1_maj_75_U6 ( .A1(ref_1_maj_75_n20), .A2(ref_1_maj_75_n19), .ZN(
        ref_1_maj_75_n24) );
  NAND2_X1 ref_1_maj_75_U5 ( .A1(ref_1_maj_75_n24), .A2(ref_1_maj_75_n23), 
        .ZN(ref_1_maj_75_n25) );
  NAND2_X1 ref_1_maj_75_U4 ( .A1(ref_1_maj_75_n20), .A2(ref_1_maj_75_n19), 
        .ZN(ref_1_maj_75_n26) );
  NAND2_X1 ref_1_maj_75_U3 ( .A1(ref_1_maj_75_n26), .A2(ref_1_maj_75_n25), 
        .ZN(ref_1_maj_75_port_o) );
  XOR2_X1 ref_1_maj_75_U2 ( .A(ref_1_maj_75_n22), .B(ref_1_maj_75_n21), .Z(
        ref_1_maj_75_n23) );
  NAND2_X1 ref_1_maj_76_U15 ( .A1(ref_1_n17), .A2(ref_1_n19), .ZN(
        ref_1_maj_76_n18) );
  NAND2_X1 ref_1_maj_76_U14 ( .A1(ref_1_maj_76_n21), .A2(ref_1_maj_76_n22), 
        .ZN(ref_1_maj_76_n17) );
  NAND2_X1 ref_1_maj_76_U13 ( .A1(ref_1_maj_76_n18), .A2(ref_1_maj_76_n17), 
        .ZN(ref_1_maj_76_n19) );
  NAND2_X1 ref_1_maj_76_U12 ( .A1(ref_1_n15), .A2(ref_1_maj_76_n16), .ZN(
        ref_1_maj_76_n14) );
  NAND2_X1 ref_1_maj_76_U11 ( .A1(ref_1_n11), .A2(ref_1_refreshed_1_1_), .ZN(
        ref_1_maj_76_n15) );
  NAND2_X1 ref_1_maj_76_U10 ( .A1(ref_1_maj_76_n15), .A2(ref_1_maj_76_n14), 
        .ZN(ref_1_maj_76_n20) );
  XOR2_X1 ref_1_maj_76_U9 ( .A(ref_1_n15), .B(ref_1_maj_76_n16), .Z(
        ref_1_maj_76_n21) );
  XOR2_X1 ref_1_maj_76_U8 ( .A(ref_1_n17), .B(ref_1_n19), .Z(ref_1_maj_76_n22)
         );
  XOR2_X1 ref_1_maj_76_U7 ( .A(ref_1_n11), .B(ref_1_refreshed_1_1_), .Z(
        ref_1_maj_76_n16) );
  OR2_X1 ref_1_maj_76_U6 ( .A1(ref_1_maj_76_n20), .A2(ref_1_maj_76_n19), .ZN(
        ref_1_maj_76_n24) );
  NAND2_X1 ref_1_maj_76_U5 ( .A1(ref_1_maj_76_n24), .A2(ref_1_maj_76_n23), 
        .ZN(ref_1_maj_76_n25) );
  NAND2_X1 ref_1_maj_76_U4 ( .A1(ref_1_maj_76_n20), .A2(ref_1_maj_76_n19), 
        .ZN(ref_1_maj_76_n26) );
  NAND2_X1 ref_1_maj_76_U3 ( .A1(ref_1_maj_76_n26), .A2(ref_1_maj_76_n25), 
        .ZN(ref_1_maj_76_port_o) );
  XOR2_X1 ref_1_maj_76_U2 ( .A(ref_1_maj_76_n22), .B(ref_1_maj_76_n21), .Z(
        ref_1_maj_76_n23) );
  NAND2_X1 ref_1_maj_77_U15 ( .A1(ref_1_n17), .A2(ref_1_n19), .ZN(
        ref_1_maj_77_n18) );
  NAND2_X1 ref_1_maj_77_U14 ( .A1(ref_1_maj_77_n21), .A2(ref_1_maj_77_n22), 
        .ZN(ref_1_maj_77_n17) );
  NAND2_X1 ref_1_maj_77_U13 ( .A1(ref_1_maj_77_n18), .A2(ref_1_maj_77_n17), 
        .ZN(ref_1_maj_77_n19) );
  NAND2_X1 ref_1_maj_77_U12 ( .A1(ref_1_n15), .A2(ref_1_maj_77_n16), .ZN(
        ref_1_maj_77_n14) );
  NAND2_X1 ref_1_maj_77_U11 ( .A1(ref_1_n11), .A2(ref_1_refreshed_1_1_), .ZN(
        ref_1_maj_77_n15) );
  NAND2_X1 ref_1_maj_77_U10 ( .A1(ref_1_maj_77_n15), .A2(ref_1_maj_77_n14), 
        .ZN(ref_1_maj_77_n20) );
  XOR2_X1 ref_1_maj_77_U9 ( .A(ref_1_n15), .B(ref_1_maj_77_n16), .Z(
        ref_1_maj_77_n21) );
  XOR2_X1 ref_1_maj_77_U8 ( .A(ref_1_n17), .B(ref_1_n19), .Z(ref_1_maj_77_n22)
         );
  XOR2_X1 ref_1_maj_77_U7 ( .A(ref_1_n11), .B(ref_1_refreshed_1_1_), .Z(
        ref_1_maj_77_n16) );
  OR2_X1 ref_1_maj_77_U6 ( .A1(ref_1_maj_77_n20), .A2(ref_1_maj_77_n19), .ZN(
        ref_1_maj_77_n24) );
  NAND2_X1 ref_1_maj_77_U5 ( .A1(ref_1_maj_77_n24), .A2(ref_1_maj_77_n23), 
        .ZN(ref_1_maj_77_n25) );
  NAND2_X1 ref_1_maj_77_U4 ( .A1(ref_1_maj_77_n20), .A2(ref_1_maj_77_n19), 
        .ZN(ref_1_maj_77_n26) );
  NAND2_X1 ref_1_maj_77_U3 ( .A1(ref_1_maj_77_n26), .A2(ref_1_maj_77_n25), 
        .ZN(ref_1_maj_77_port_o) );
  XOR2_X1 ref_1_maj_77_U2 ( .A(ref_1_maj_77_n22), .B(ref_1_maj_77_n21), .Z(
        ref_1_maj_77_n23) );
  NAND2_X1 ref_1_maj_78_U15 ( .A1(ref_1_n7), .A2(ref_1_n9), .ZN(
        ref_1_maj_78_n18) );
  NAND2_X1 ref_1_maj_78_U14 ( .A1(ref_1_maj_78_n21), .A2(ref_1_maj_78_n22), 
        .ZN(ref_1_maj_78_n17) );
  NAND2_X1 ref_1_maj_78_U13 ( .A1(ref_1_maj_78_n18), .A2(ref_1_maj_78_n17), 
        .ZN(ref_1_maj_78_n19) );
  NAND2_X1 ref_1_maj_78_U12 ( .A1(ref_1_n5), .A2(ref_1_maj_78_n16), .ZN(
        ref_1_maj_78_n14) );
  NAND2_X1 ref_1_maj_78_U11 ( .A1(ref_1_n1), .A2(ref_1_refreshed_2_1_), .ZN(
        ref_1_maj_78_n15) );
  NAND2_X1 ref_1_maj_78_U10 ( .A1(ref_1_maj_78_n15), .A2(ref_1_maj_78_n14), 
        .ZN(ref_1_maj_78_n20) );
  XOR2_X1 ref_1_maj_78_U9 ( .A(ref_1_n5), .B(ref_1_maj_78_n16), .Z(
        ref_1_maj_78_n21) );
  XOR2_X1 ref_1_maj_78_U8 ( .A(ref_1_n7), .B(ref_1_n9), .Z(ref_1_maj_78_n22)
         );
  XOR2_X1 ref_1_maj_78_U7 ( .A(ref_1_n1), .B(ref_1_refreshed_2_1_), .Z(
        ref_1_maj_78_n16) );
  OR2_X1 ref_1_maj_78_U6 ( .A1(ref_1_maj_78_n20), .A2(ref_1_maj_78_n19), .ZN(
        ref_1_maj_78_n24) );
  NAND2_X1 ref_1_maj_78_U5 ( .A1(ref_1_maj_78_n24), .A2(ref_1_maj_78_n23), 
        .ZN(ref_1_maj_78_n25) );
  NAND2_X1 ref_1_maj_78_U4 ( .A1(ref_1_maj_78_n20), .A2(ref_1_maj_78_n19), 
        .ZN(ref_1_maj_78_n26) );
  NAND2_X1 ref_1_maj_78_U3 ( .A1(ref_1_maj_78_n26), .A2(ref_1_maj_78_n25), 
        .ZN(ref_1_maj_78_port_o) );
  XOR2_X1 ref_1_maj_78_U2 ( .A(ref_1_maj_78_n22), .B(ref_1_maj_78_n21), .Z(
        ref_1_maj_78_n23) );
  NAND2_X1 ref_1_maj_79_U15 ( .A1(ref_1_n7), .A2(ref_1_n9), .ZN(
        ref_1_maj_79_n18) );
  NAND2_X1 ref_1_maj_79_U14 ( .A1(ref_1_maj_79_n21), .A2(ref_1_maj_79_n22), 
        .ZN(ref_1_maj_79_n17) );
  NAND2_X1 ref_1_maj_79_U13 ( .A1(ref_1_maj_79_n18), .A2(ref_1_maj_79_n17), 
        .ZN(ref_1_maj_79_n19) );
  NAND2_X1 ref_1_maj_79_U12 ( .A1(ref_1_n5), .A2(ref_1_maj_79_n16), .ZN(
        ref_1_maj_79_n14) );
  NAND2_X1 ref_1_maj_79_U11 ( .A1(ref_1_n1), .A2(ref_1_refreshed_2_1_), .ZN(
        ref_1_maj_79_n15) );
  NAND2_X1 ref_1_maj_79_U10 ( .A1(ref_1_maj_79_n15), .A2(ref_1_maj_79_n14), 
        .ZN(ref_1_maj_79_n20) );
  XOR2_X1 ref_1_maj_79_U9 ( .A(ref_1_n5), .B(ref_1_maj_79_n16), .Z(
        ref_1_maj_79_n21) );
  XOR2_X1 ref_1_maj_79_U8 ( .A(ref_1_n7), .B(ref_1_n9), .Z(ref_1_maj_79_n22)
         );
  XOR2_X1 ref_1_maj_79_U7 ( .A(ref_1_n1), .B(ref_1_refreshed_2_1_), .Z(
        ref_1_maj_79_n16) );
  OR2_X1 ref_1_maj_79_U6 ( .A1(ref_1_maj_79_n20), .A2(ref_1_maj_79_n19), .ZN(
        ref_1_maj_79_n24) );
  NAND2_X1 ref_1_maj_79_U5 ( .A1(ref_1_maj_79_n24), .A2(ref_1_maj_79_n23), 
        .ZN(ref_1_maj_79_n25) );
  NAND2_X1 ref_1_maj_79_U4 ( .A1(ref_1_maj_79_n20), .A2(ref_1_maj_79_n19), 
        .ZN(ref_1_maj_79_n26) );
  NAND2_X1 ref_1_maj_79_U3 ( .A1(ref_1_maj_79_n26), .A2(ref_1_maj_79_n25), 
        .ZN(ref_1_maj_79_port_o) );
  XOR2_X1 ref_1_maj_79_U2 ( .A(ref_1_maj_79_n22), .B(ref_1_maj_79_n21), .Z(
        ref_1_maj_79_n23) );
  NAND2_X1 ref_1_maj_80_U15 ( .A1(ref_1_n7), .A2(ref_1_n9), .ZN(
        ref_1_maj_80_n18) );
  NAND2_X1 ref_1_maj_80_U14 ( .A1(ref_1_maj_80_n21), .A2(ref_1_maj_80_n22), 
        .ZN(ref_1_maj_80_n17) );
  NAND2_X1 ref_1_maj_80_U13 ( .A1(ref_1_maj_80_n18), .A2(ref_1_maj_80_n17), 
        .ZN(ref_1_maj_80_n19) );
  NAND2_X1 ref_1_maj_80_U12 ( .A1(ref_1_n5), .A2(ref_1_maj_80_n16), .ZN(
        ref_1_maj_80_n14) );
  NAND2_X1 ref_1_maj_80_U11 ( .A1(ref_1_n1), .A2(ref_1_refreshed_2_1_), .ZN(
        ref_1_maj_80_n15) );
  NAND2_X1 ref_1_maj_80_U10 ( .A1(ref_1_maj_80_n15), .A2(ref_1_maj_80_n14), 
        .ZN(ref_1_maj_80_n20) );
  XOR2_X1 ref_1_maj_80_U9 ( .A(ref_1_n5), .B(ref_1_maj_80_n16), .Z(
        ref_1_maj_80_n21) );
  XOR2_X1 ref_1_maj_80_U8 ( .A(ref_1_n7), .B(ref_1_n9), .Z(ref_1_maj_80_n22)
         );
  XOR2_X1 ref_1_maj_80_U7 ( .A(ref_1_n1), .B(ref_1_refreshed_2_1_), .Z(
        ref_1_maj_80_n16) );
  OR2_X1 ref_1_maj_80_U6 ( .A1(ref_1_maj_80_n20), .A2(ref_1_maj_80_n19), .ZN(
        ref_1_maj_80_n24) );
  NAND2_X1 ref_1_maj_80_U5 ( .A1(ref_1_maj_80_n24), .A2(ref_1_maj_80_n23), 
        .ZN(ref_1_maj_80_n25) );
  NAND2_X1 ref_1_maj_80_U4 ( .A1(ref_1_maj_80_n20), .A2(ref_1_maj_80_n19), 
        .ZN(ref_1_maj_80_n26) );
  NAND2_X1 ref_1_maj_80_U3 ( .A1(ref_1_maj_80_n26), .A2(ref_1_maj_80_n25), 
        .ZN(ref_1_maj_80_port_o) );
  XOR2_X1 ref_1_maj_80_U2 ( .A(ref_1_maj_80_n22), .B(ref_1_maj_80_n21), .Z(
        ref_1_maj_80_n23) );
  NAND2_X1 ref_1_maj_81_U15 ( .A1(ref_1_n27), .A2(ref_1_n29), .ZN(
        ref_1_maj_81_n18) );
  NAND2_X1 ref_1_maj_81_U14 ( .A1(ref_1_maj_81_n21), .A2(ref_1_maj_81_n22), 
        .ZN(ref_1_maj_81_n17) );
  NAND2_X1 ref_1_maj_81_U13 ( .A1(ref_1_maj_81_n18), .A2(ref_1_maj_81_n17), 
        .ZN(ref_1_maj_81_n19) );
  NAND2_X1 ref_1_maj_81_U12 ( .A1(ref_1_n25), .A2(ref_1_maj_81_n16), .ZN(
        ref_1_maj_81_n14) );
  NAND2_X1 ref_1_maj_81_U11 ( .A1(ref_1_n21), .A2(ref_1_refreshed_0_1_), .ZN(
        ref_1_maj_81_n15) );
  NAND2_X1 ref_1_maj_81_U10 ( .A1(ref_1_maj_81_n15), .A2(ref_1_maj_81_n14), 
        .ZN(ref_1_maj_81_n20) );
  XOR2_X1 ref_1_maj_81_U9 ( .A(ref_1_n25), .B(ref_1_maj_81_n16), .Z(
        ref_1_maj_81_n21) );
  XOR2_X1 ref_1_maj_81_U8 ( .A(ref_1_n27), .B(ref_1_n29), .Z(ref_1_maj_81_n22)
         );
  XOR2_X1 ref_1_maj_81_U7 ( .A(ref_1_n21), .B(ref_1_refreshed_0_1_), .Z(
        ref_1_maj_81_n16) );
  OR2_X1 ref_1_maj_81_U6 ( .A1(ref_1_maj_81_n20), .A2(ref_1_maj_81_n19), .ZN(
        ref_1_maj_81_n24) );
  NAND2_X1 ref_1_maj_81_U5 ( .A1(ref_1_maj_81_n24), .A2(ref_1_maj_81_n23), 
        .ZN(ref_1_maj_81_n25) );
  NAND2_X1 ref_1_maj_81_U4 ( .A1(ref_1_maj_81_n20), .A2(ref_1_maj_81_n19), 
        .ZN(ref_1_maj_81_n26) );
  NAND2_X1 ref_1_maj_81_U3 ( .A1(ref_1_maj_81_n26), .A2(ref_1_maj_81_n25), 
        .ZN(ref_1_maj_81_port_o) );
  XOR2_X1 ref_1_maj_81_U2 ( .A(ref_1_maj_81_n22), .B(ref_1_maj_81_n21), .Z(
        ref_1_maj_81_n23) );
  NAND2_X1 ref_1_maj_82_U15 ( .A1(ref_1_n28), .A2(ref_1_n30), .ZN(
        ref_1_maj_82_n18) );
  NAND2_X1 ref_1_maj_82_U14 ( .A1(ref_1_maj_82_n21), .A2(ref_1_maj_82_n22), 
        .ZN(ref_1_maj_82_n17) );
  NAND2_X1 ref_1_maj_82_U13 ( .A1(ref_1_maj_82_n18), .A2(ref_1_maj_82_n17), 
        .ZN(ref_1_maj_82_n19) );
  NAND2_X1 ref_1_maj_82_U12 ( .A1(ref_1_n26), .A2(ref_1_maj_82_n16), .ZN(
        ref_1_maj_82_n14) );
  NAND2_X1 ref_1_maj_82_U11 ( .A1(ref_1_n22), .A2(ref_1_n23), .ZN(
        ref_1_maj_82_n15) );
  NAND2_X1 ref_1_maj_82_U10 ( .A1(ref_1_maj_82_n15), .A2(ref_1_maj_82_n14), 
        .ZN(ref_1_maj_82_n20) );
  XOR2_X1 ref_1_maj_82_U9 ( .A(ref_1_n26), .B(ref_1_maj_82_n16), .Z(
        ref_1_maj_82_n21) );
  XOR2_X1 ref_1_maj_82_U8 ( .A(ref_1_n28), .B(ref_1_n30), .Z(ref_1_maj_82_n22)
         );
  XOR2_X1 ref_1_maj_82_U7 ( .A(ref_1_n22), .B(ref_1_n23), .Z(ref_1_maj_82_n16)
         );
  OR2_X1 ref_1_maj_82_U6 ( .A1(ref_1_maj_82_n20), .A2(ref_1_maj_82_n19), .ZN(
        ref_1_maj_82_n24) );
  NAND2_X1 ref_1_maj_82_U5 ( .A1(ref_1_maj_82_n24), .A2(ref_1_maj_82_n23), 
        .ZN(ref_1_maj_82_n25) );
  NAND2_X1 ref_1_maj_82_U4 ( .A1(ref_1_maj_82_n20), .A2(ref_1_maj_82_n19), 
        .ZN(ref_1_maj_82_n26) );
  NAND2_X1 ref_1_maj_82_U3 ( .A1(ref_1_maj_82_n26), .A2(ref_1_maj_82_n25), 
        .ZN(ref_1_maj_82_port_o) );
  XOR2_X1 ref_1_maj_82_U2 ( .A(ref_1_maj_82_n22), .B(ref_1_maj_82_n21), .Z(
        ref_1_maj_82_n23) );
  NAND2_X1 ref_1_maj_83_U15 ( .A1(ref_1_n28), .A2(ref_1_n30), .ZN(
        ref_1_maj_83_n18) );
  NAND2_X1 ref_1_maj_83_U14 ( .A1(ref_1_maj_83_n21), .A2(ref_1_maj_83_n22), 
        .ZN(ref_1_maj_83_n17) );
  NAND2_X1 ref_1_maj_83_U13 ( .A1(ref_1_maj_83_n18), .A2(ref_1_maj_83_n17), 
        .ZN(ref_1_maj_83_n19) );
  NAND2_X1 ref_1_maj_83_U12 ( .A1(ref_1_n26), .A2(ref_1_maj_83_n16), .ZN(
        ref_1_maj_83_n14) );
  NAND2_X1 ref_1_maj_83_U11 ( .A1(ref_1_n22), .A2(ref_1_n24), .ZN(
        ref_1_maj_83_n15) );
  NAND2_X1 ref_1_maj_83_U10 ( .A1(ref_1_maj_83_n15), .A2(ref_1_maj_83_n14), 
        .ZN(ref_1_maj_83_n20) );
  XOR2_X1 ref_1_maj_83_U9 ( .A(ref_1_n26), .B(ref_1_maj_83_n16), .Z(
        ref_1_maj_83_n21) );
  XOR2_X1 ref_1_maj_83_U8 ( .A(ref_1_n28), .B(ref_1_n30), .Z(ref_1_maj_83_n22)
         );
  XOR2_X1 ref_1_maj_83_U7 ( .A(ref_1_n22), .B(ref_1_n24), .Z(ref_1_maj_83_n16)
         );
  OR2_X1 ref_1_maj_83_U6 ( .A1(ref_1_maj_83_n20), .A2(ref_1_maj_83_n19), .ZN(
        ref_1_maj_83_n24) );
  NAND2_X1 ref_1_maj_83_U5 ( .A1(ref_1_maj_83_n24), .A2(ref_1_maj_83_n23), 
        .ZN(ref_1_maj_83_n25) );
  NAND2_X1 ref_1_maj_83_U4 ( .A1(ref_1_maj_83_n20), .A2(ref_1_maj_83_n19), 
        .ZN(ref_1_maj_83_n26) );
  NAND2_X1 ref_1_maj_83_U3 ( .A1(ref_1_maj_83_n26), .A2(ref_1_maj_83_n25), 
        .ZN(ref_1_maj_83_port_o) );
  XOR2_X1 ref_1_maj_83_U2 ( .A(ref_1_maj_83_n22), .B(ref_1_maj_83_n21), .Z(
        ref_1_maj_83_n23) );
  NAND2_X1 ref_1_maj_84_U15 ( .A1(ref_1_n18), .A2(ref_1_n20), .ZN(
        ref_1_maj_84_n18) );
  NAND2_X1 ref_1_maj_84_U14 ( .A1(ref_1_maj_84_n21), .A2(ref_1_maj_84_n22), 
        .ZN(ref_1_maj_84_n17) );
  NAND2_X1 ref_1_maj_84_U13 ( .A1(ref_1_maj_84_n18), .A2(ref_1_maj_84_n17), 
        .ZN(ref_1_maj_84_n19) );
  NAND2_X1 ref_1_maj_84_U12 ( .A1(ref_1_n16), .A2(ref_1_maj_84_n16), .ZN(
        ref_1_maj_84_n14) );
  NAND2_X1 ref_1_maj_84_U11 ( .A1(ref_1_n12), .A2(ref_1_n13), .ZN(
        ref_1_maj_84_n15) );
  NAND2_X1 ref_1_maj_84_U10 ( .A1(ref_1_maj_84_n15), .A2(ref_1_maj_84_n14), 
        .ZN(ref_1_maj_84_n20) );
  XOR2_X1 ref_1_maj_84_U9 ( .A(ref_1_n16), .B(ref_1_maj_84_n16), .Z(
        ref_1_maj_84_n21) );
  XOR2_X1 ref_1_maj_84_U8 ( .A(ref_1_n18), .B(ref_1_n20), .Z(ref_1_maj_84_n22)
         );
  XOR2_X1 ref_1_maj_84_U7 ( .A(ref_1_n12), .B(ref_1_n13), .Z(ref_1_maj_84_n16)
         );
  OR2_X1 ref_1_maj_84_U6 ( .A1(ref_1_maj_84_n20), .A2(ref_1_maj_84_n19), .ZN(
        ref_1_maj_84_n24) );
  NAND2_X1 ref_1_maj_84_U5 ( .A1(ref_1_maj_84_n24), .A2(ref_1_maj_84_n23), 
        .ZN(ref_1_maj_84_n25) );
  NAND2_X1 ref_1_maj_84_U4 ( .A1(ref_1_maj_84_n20), .A2(ref_1_maj_84_n19), 
        .ZN(ref_1_maj_84_n26) );
  NAND2_X1 ref_1_maj_84_U3 ( .A1(ref_1_maj_84_n26), .A2(ref_1_maj_84_n25), 
        .ZN(ref_1_maj_84_port_o) );
  XOR2_X1 ref_1_maj_84_U2 ( .A(ref_1_maj_84_n22), .B(ref_1_maj_84_n21), .Z(
        ref_1_maj_84_n23) );
  NAND2_X1 ref_1_maj_85_U15 ( .A1(ref_1_n18), .A2(ref_1_n20), .ZN(
        ref_1_maj_85_n18) );
  NAND2_X1 ref_1_maj_85_U14 ( .A1(ref_1_maj_85_n21), .A2(ref_1_maj_85_n22), 
        .ZN(ref_1_maj_85_n17) );
  NAND2_X1 ref_1_maj_85_U13 ( .A1(ref_1_maj_85_n18), .A2(ref_1_maj_85_n17), 
        .ZN(ref_1_maj_85_n19) );
  NAND2_X1 ref_1_maj_85_U12 ( .A1(ref_1_n16), .A2(ref_1_maj_85_n16), .ZN(
        ref_1_maj_85_n14) );
  NAND2_X1 ref_1_maj_85_U11 ( .A1(ref_1_n12), .A2(ref_1_n14), .ZN(
        ref_1_maj_85_n15) );
  NAND2_X1 ref_1_maj_85_U10 ( .A1(ref_1_maj_85_n15), .A2(ref_1_maj_85_n14), 
        .ZN(ref_1_maj_85_n20) );
  XOR2_X1 ref_1_maj_85_U9 ( .A(ref_1_n16), .B(ref_1_maj_85_n16), .Z(
        ref_1_maj_85_n21) );
  XOR2_X1 ref_1_maj_85_U8 ( .A(ref_1_n18), .B(ref_1_n20), .Z(ref_1_maj_85_n22)
         );
  XOR2_X1 ref_1_maj_85_U7 ( .A(ref_1_n12), .B(ref_1_n14), .Z(ref_1_maj_85_n16)
         );
  OR2_X1 ref_1_maj_85_U6 ( .A1(ref_1_maj_85_n20), .A2(ref_1_maj_85_n19), .ZN(
        ref_1_maj_85_n24) );
  NAND2_X1 ref_1_maj_85_U5 ( .A1(ref_1_maj_85_n24), .A2(ref_1_maj_85_n23), 
        .ZN(ref_1_maj_85_n25) );
  NAND2_X1 ref_1_maj_85_U4 ( .A1(ref_1_maj_85_n20), .A2(ref_1_maj_85_n19), 
        .ZN(ref_1_maj_85_n26) );
  NAND2_X1 ref_1_maj_85_U3 ( .A1(ref_1_maj_85_n26), .A2(ref_1_maj_85_n25), 
        .ZN(ref_1_maj_85_port_o) );
  XOR2_X1 ref_1_maj_85_U2 ( .A(ref_1_maj_85_n22), .B(ref_1_maj_85_n21), .Z(
        ref_1_maj_85_n23) );
  NAND2_X1 ref_1_maj_86_U15 ( .A1(ref_1_n18), .A2(ref_1_n20), .ZN(
        ref_1_maj_86_n18) );
  NAND2_X1 ref_1_maj_86_U14 ( .A1(ref_1_maj_86_n21), .A2(ref_1_maj_86_n22), 
        .ZN(ref_1_maj_86_n17) );
  NAND2_X1 ref_1_maj_86_U13 ( .A1(ref_1_maj_86_n18), .A2(ref_1_maj_86_n17), 
        .ZN(ref_1_maj_86_n19) );
  NAND2_X1 ref_1_maj_86_U12 ( .A1(ref_1_n16), .A2(ref_1_maj_86_n16), .ZN(
        ref_1_maj_86_n14) );
  NAND2_X1 ref_1_maj_86_U11 ( .A1(ref_1_n12), .A2(ref_1_n13), .ZN(
        ref_1_maj_86_n15) );
  NAND2_X1 ref_1_maj_86_U10 ( .A1(ref_1_maj_86_n15), .A2(ref_1_maj_86_n14), 
        .ZN(ref_1_maj_86_n20) );
  XOR2_X1 ref_1_maj_86_U9 ( .A(ref_1_n16), .B(ref_1_maj_86_n16), .Z(
        ref_1_maj_86_n21) );
  XOR2_X1 ref_1_maj_86_U8 ( .A(ref_1_n18), .B(ref_1_n20), .Z(ref_1_maj_86_n22)
         );
  XOR2_X1 ref_1_maj_86_U7 ( .A(ref_1_n12), .B(ref_1_n13), .Z(ref_1_maj_86_n16)
         );
  OR2_X1 ref_1_maj_86_U6 ( .A1(ref_1_maj_86_n20), .A2(ref_1_maj_86_n19), .ZN(
        ref_1_maj_86_n24) );
  NAND2_X1 ref_1_maj_86_U5 ( .A1(ref_1_maj_86_n24), .A2(ref_1_maj_86_n23), 
        .ZN(ref_1_maj_86_n25) );
  NAND2_X1 ref_1_maj_86_U4 ( .A1(ref_1_maj_86_n20), .A2(ref_1_maj_86_n19), 
        .ZN(ref_1_maj_86_n26) );
  NAND2_X1 ref_1_maj_86_U3 ( .A1(ref_1_maj_86_n26), .A2(ref_1_maj_86_n25), 
        .ZN(ref_1_maj_86_port_o) );
  XOR2_X1 ref_1_maj_86_U2 ( .A(ref_1_maj_86_n22), .B(ref_1_maj_86_n21), .Z(
        ref_1_maj_86_n23) );
  NAND2_X1 ref_1_maj_87_U15 ( .A1(ref_1_n8), .A2(ref_1_n10), .ZN(
        ref_1_maj_87_n18) );
  NAND2_X1 ref_1_maj_87_U14 ( .A1(ref_1_maj_87_n21), .A2(ref_1_maj_87_n22), 
        .ZN(ref_1_maj_87_n17) );
  NAND2_X1 ref_1_maj_87_U13 ( .A1(ref_1_maj_87_n18), .A2(ref_1_maj_87_n17), 
        .ZN(ref_1_maj_87_n19) );
  NAND2_X1 ref_1_maj_87_U12 ( .A1(ref_1_n6), .A2(ref_1_maj_87_n16), .ZN(
        ref_1_maj_87_n14) );
  NAND2_X1 ref_1_maj_87_U11 ( .A1(ref_1_n2), .A2(ref_1_n3), .ZN(
        ref_1_maj_87_n15) );
  NAND2_X1 ref_1_maj_87_U10 ( .A1(ref_1_maj_87_n15), .A2(ref_1_maj_87_n14), 
        .ZN(ref_1_maj_87_n20) );
  XOR2_X1 ref_1_maj_87_U9 ( .A(ref_1_n6), .B(ref_1_maj_87_n16), .Z(
        ref_1_maj_87_n21) );
  XOR2_X1 ref_1_maj_87_U8 ( .A(ref_1_n8), .B(ref_1_n10), .Z(ref_1_maj_87_n22)
         );
  XOR2_X1 ref_1_maj_87_U7 ( .A(ref_1_n2), .B(ref_1_n3), .Z(ref_1_maj_87_n16)
         );
  OR2_X1 ref_1_maj_87_U6 ( .A1(ref_1_maj_87_n20), .A2(ref_1_maj_87_n19), .ZN(
        ref_1_maj_87_n24) );
  NAND2_X1 ref_1_maj_87_U5 ( .A1(ref_1_maj_87_n24), .A2(ref_1_maj_87_n23), 
        .ZN(ref_1_maj_87_n25) );
  NAND2_X1 ref_1_maj_87_U4 ( .A1(ref_1_maj_87_n20), .A2(ref_1_maj_87_n19), 
        .ZN(ref_1_maj_87_n26) );
  NAND2_X1 ref_1_maj_87_U3 ( .A1(ref_1_maj_87_n26), .A2(ref_1_maj_87_n25), 
        .ZN(ref_1_maj_87_port_o) );
  XOR2_X1 ref_1_maj_87_U2 ( .A(ref_1_maj_87_n22), .B(ref_1_maj_87_n21), .Z(
        ref_1_maj_87_n23) );
  NAND2_X1 ref_1_maj_88_U15 ( .A1(ref_1_n8), .A2(ref_1_n10), .ZN(
        ref_1_maj_88_n18) );
  NAND2_X1 ref_1_maj_88_U14 ( .A1(ref_1_maj_88_n21), .A2(ref_1_maj_88_n22), 
        .ZN(ref_1_maj_88_n17) );
  NAND2_X1 ref_1_maj_88_U13 ( .A1(ref_1_maj_88_n18), .A2(ref_1_maj_88_n17), 
        .ZN(ref_1_maj_88_n19) );
  NAND2_X1 ref_1_maj_88_U12 ( .A1(ref_1_n6), .A2(ref_1_maj_88_n16), .ZN(
        ref_1_maj_88_n14) );
  NAND2_X1 ref_1_maj_88_U11 ( .A1(ref_1_n2), .A2(ref_1_n4), .ZN(
        ref_1_maj_88_n15) );
  NAND2_X1 ref_1_maj_88_U10 ( .A1(ref_1_maj_88_n15), .A2(ref_1_maj_88_n14), 
        .ZN(ref_1_maj_88_n20) );
  XOR2_X1 ref_1_maj_88_U9 ( .A(ref_1_n6), .B(ref_1_maj_88_n16), .Z(
        ref_1_maj_88_n21) );
  XOR2_X1 ref_1_maj_88_U8 ( .A(ref_1_n8), .B(ref_1_n10), .Z(ref_1_maj_88_n22)
         );
  XOR2_X1 ref_1_maj_88_U7 ( .A(ref_1_n2), .B(ref_1_n4), .Z(ref_1_maj_88_n16)
         );
  OR2_X1 ref_1_maj_88_U6 ( .A1(ref_1_maj_88_n20), .A2(ref_1_maj_88_n19), .ZN(
        ref_1_maj_88_n24) );
  NAND2_X1 ref_1_maj_88_U5 ( .A1(ref_1_maj_88_n24), .A2(ref_1_maj_88_n23), 
        .ZN(ref_1_maj_88_n25) );
  NAND2_X1 ref_1_maj_88_U4 ( .A1(ref_1_maj_88_n20), .A2(ref_1_maj_88_n19), 
        .ZN(ref_1_maj_88_n26) );
  NAND2_X1 ref_1_maj_88_U3 ( .A1(ref_1_maj_88_n26), .A2(ref_1_maj_88_n25), 
        .ZN(ref_1_maj_88_port_o) );
  XOR2_X1 ref_1_maj_88_U2 ( .A(ref_1_maj_88_n22), .B(ref_1_maj_88_n21), .Z(
        ref_1_maj_88_n23) );
  NAND2_X1 ref_1_maj_89_U15 ( .A1(ref_1_n8), .A2(ref_1_n10), .ZN(
        ref_1_maj_89_n18) );
  NAND2_X1 ref_1_maj_89_U14 ( .A1(ref_1_maj_89_n21), .A2(ref_1_maj_89_n22), 
        .ZN(ref_1_maj_89_n17) );
  NAND2_X1 ref_1_maj_89_U13 ( .A1(ref_1_maj_89_n18), .A2(ref_1_maj_89_n17), 
        .ZN(ref_1_maj_89_n19) );
  NAND2_X1 ref_1_maj_89_U12 ( .A1(ref_1_n6), .A2(ref_1_maj_89_n16), .ZN(
        ref_1_maj_89_n14) );
  NAND2_X1 ref_1_maj_89_U11 ( .A1(ref_1_n2), .A2(ref_1_n3), .ZN(
        ref_1_maj_89_n15) );
  NAND2_X1 ref_1_maj_89_U10 ( .A1(ref_1_maj_89_n15), .A2(ref_1_maj_89_n14), 
        .ZN(ref_1_maj_89_n20) );
  XOR2_X1 ref_1_maj_89_U9 ( .A(ref_1_n6), .B(ref_1_maj_89_n16), .Z(
        ref_1_maj_89_n21) );
  XOR2_X1 ref_1_maj_89_U8 ( .A(ref_1_n8), .B(ref_1_n10), .Z(ref_1_maj_89_n22)
         );
  XOR2_X1 ref_1_maj_89_U7 ( .A(ref_1_n2), .B(ref_1_n3), .Z(ref_1_maj_89_n16)
         );
  OR2_X1 ref_1_maj_89_U6 ( .A1(ref_1_maj_89_n20), .A2(ref_1_maj_89_n19), .ZN(
        ref_1_maj_89_n24) );
  NAND2_X1 ref_1_maj_89_U5 ( .A1(ref_1_maj_89_n24), .A2(ref_1_maj_89_n23), 
        .ZN(ref_1_maj_89_n25) );
  NAND2_X1 ref_1_maj_89_U4 ( .A1(ref_1_maj_89_n20), .A2(ref_1_maj_89_n19), 
        .ZN(ref_1_maj_89_n26) );
  NAND2_X1 ref_1_maj_89_U3 ( .A1(ref_1_maj_89_n26), .A2(ref_1_maj_89_n25), 
        .ZN(ref_1_maj_89_port_o) );
  XOR2_X1 ref_1_maj_89_U2 ( .A(ref_1_maj_89_n22), .B(ref_1_maj_89_n21), .Z(
        ref_1_maj_89_n23) );
endmodule

