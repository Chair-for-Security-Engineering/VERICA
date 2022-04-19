
module andSININA ( port_a_0, port_a_1, port_a_2, port_b_0, port_b_1, port_b_2, 
        port_c_0, port_c_1, port_c_2, port_r, clk, reset );
  input [4:0] port_a_0;
  input [4:0] port_a_1;
  input [4:0] port_a_2;
  input [4:0] port_b_0;
  input [4:0] port_b_1;
  input [4:0] port_b_2;
  output [4:0] port_c_0;
  output [4:0] port_c_1;
  output [4:0] port_c_2;
  input [8:0] port_r;
  input clk, reset;
  wire   mul_n30, mul_n29, mul_n28, mul_n27, mul_n26, mul_n25, mul_n24,
         mul_n23, mul_n22, mul_n21, mul_n20, mul_n19, mul_n18, mul_n17,
         mul_n16, mul_n15, mul_n14, mul_n13, mul_n12, mul_n11, mul_n10, mul_n9,
         mul_n8, mul_n7, mul_n6, mul_n5, mul_n4, mul_n3, mul_n2, mul_n1,
         mul_N50, mul_N49, mul_N48, mul_N47, mul_N46, mul_N45, mul_N44,
         mul_N43, mul_N42, mul_N41, mul_N40, mul_N39, mul_N38, mul_N37,
         mul_N36, cor_maj_89_port_o, cor_maj_88_port_o, cor_maj_87_port_o,
         cor_maj_86_port_o, cor_maj_85_port_o, cor_maj_84_port_o,
         cor_maj_83_port_o, cor_maj_82_port_o, cor_maj_81_port_o,
         cor_maj_80_port_o, cor_maj_79_port_o, cor_maj_78_port_o,
         cor_maj_77_port_o, cor_maj_76_port_o, cor_maj_75_port_o,
         cor_maj_74_port_o, cor_maj_73_port_o, cor_maj_72_port_o,
         cor_maj_71_port_o, cor_maj_70_port_o, cor_maj_69_port_o,
         cor_maj_68_port_o, cor_maj_67_port_o, cor_maj_66_port_o,
         cor_maj_65_port_o, cor_maj_64_port_o, cor_maj_63_port_o,
         cor_maj_62_port_o, cor_maj_61_port_o, cor_maj_60_port_o,
         cor_maj_59_port_o, cor_maj_58_port_o, cor_maj_57_port_o,
         cor_maj_56_port_o, cor_maj_55_port_o, cor_maj_54_port_o,
         cor_maj_53_port_o, cor_maj_52_port_o, cor_maj_51_port_o,
         cor_maj_50_port_o, cor_maj_49_port_o, cor_maj_48_port_o,
         cor_maj_47_port_o, cor_maj_46_port_o, cor_maj_45_port_o,
         cor_maj_45_n13, cor_maj_45_n12, cor_maj_45_n11, cor_maj_45_n10,
         cor_maj_45_n9, cor_maj_45_n8, cor_maj_45_n7, cor_maj_45_n6,
         cor_maj_45_n5, cor_maj_45_n4, cor_maj_45_n3, cor_maj_45_n2,
         cor_maj_45_n1, cor_maj_46_n26, cor_maj_46_n25, cor_maj_46_n24,
         cor_maj_46_n23, cor_maj_46_n22, cor_maj_46_n21, cor_maj_46_n20,
         cor_maj_46_n19, cor_maj_46_n18, cor_maj_46_n17, cor_maj_46_n16,
         cor_maj_46_n15, cor_maj_46_n14, cor_maj_47_n26, cor_maj_47_n25,
         cor_maj_47_n24, cor_maj_47_n23, cor_maj_47_n22, cor_maj_47_n21,
         cor_maj_47_n20, cor_maj_47_n19, cor_maj_47_n18, cor_maj_47_n17,
         cor_maj_47_n16, cor_maj_47_n15, cor_maj_47_n14, cor_maj_48_n26,
         cor_maj_48_n25, cor_maj_48_n24, cor_maj_48_n23, cor_maj_48_n22,
         cor_maj_48_n21, cor_maj_48_n20, cor_maj_48_n19, cor_maj_48_n18,
         cor_maj_48_n17, cor_maj_48_n16, cor_maj_48_n15, cor_maj_48_n14,
         cor_maj_49_n26, cor_maj_49_n25, cor_maj_49_n24, cor_maj_49_n23,
         cor_maj_49_n22, cor_maj_49_n21, cor_maj_49_n20, cor_maj_49_n19,
         cor_maj_49_n18, cor_maj_49_n17, cor_maj_49_n16, cor_maj_49_n15,
         cor_maj_49_n14, cor_maj_50_n26, cor_maj_50_n25, cor_maj_50_n24,
         cor_maj_50_n23, cor_maj_50_n22, cor_maj_50_n21, cor_maj_50_n20,
         cor_maj_50_n19, cor_maj_50_n18, cor_maj_50_n17, cor_maj_50_n16,
         cor_maj_50_n15, cor_maj_50_n14, cor_maj_51_n26, cor_maj_51_n25,
         cor_maj_51_n24, cor_maj_51_n23, cor_maj_51_n22, cor_maj_51_n21,
         cor_maj_51_n20, cor_maj_51_n19, cor_maj_51_n18, cor_maj_51_n17,
         cor_maj_51_n16, cor_maj_51_n15, cor_maj_51_n14, cor_maj_52_n26,
         cor_maj_52_n25, cor_maj_52_n24, cor_maj_52_n23, cor_maj_52_n22,
         cor_maj_52_n21, cor_maj_52_n20, cor_maj_52_n19, cor_maj_52_n18,
         cor_maj_52_n17, cor_maj_52_n16, cor_maj_52_n15, cor_maj_52_n14,
         cor_maj_53_n26, cor_maj_53_n25, cor_maj_53_n24, cor_maj_53_n23,
         cor_maj_53_n22, cor_maj_53_n21, cor_maj_53_n20, cor_maj_53_n19,
         cor_maj_53_n18, cor_maj_53_n17, cor_maj_53_n16, cor_maj_53_n15,
         cor_maj_53_n14, cor_maj_54_n26, cor_maj_54_n25, cor_maj_54_n24,
         cor_maj_54_n23, cor_maj_54_n22, cor_maj_54_n21, cor_maj_54_n20,
         cor_maj_54_n19, cor_maj_54_n18, cor_maj_54_n17, cor_maj_54_n16,
         cor_maj_54_n15, cor_maj_54_n14, cor_maj_55_n26, cor_maj_55_n25,
         cor_maj_55_n24, cor_maj_55_n23, cor_maj_55_n22, cor_maj_55_n21,
         cor_maj_55_n20, cor_maj_55_n19, cor_maj_55_n18, cor_maj_55_n17,
         cor_maj_55_n16, cor_maj_55_n15, cor_maj_55_n14, cor_maj_56_n26,
         cor_maj_56_n25, cor_maj_56_n24, cor_maj_56_n23, cor_maj_56_n22,
         cor_maj_56_n21, cor_maj_56_n20, cor_maj_56_n19, cor_maj_56_n18,
         cor_maj_56_n17, cor_maj_56_n16, cor_maj_56_n15, cor_maj_56_n14,
         cor_maj_57_n26, cor_maj_57_n25, cor_maj_57_n24, cor_maj_57_n23,
         cor_maj_57_n22, cor_maj_57_n21, cor_maj_57_n20, cor_maj_57_n19,
         cor_maj_57_n18, cor_maj_57_n17, cor_maj_57_n16, cor_maj_57_n15,
         cor_maj_57_n14, cor_maj_58_n26, cor_maj_58_n25, cor_maj_58_n24,
         cor_maj_58_n23, cor_maj_58_n22, cor_maj_58_n21, cor_maj_58_n20,
         cor_maj_58_n19, cor_maj_58_n18, cor_maj_58_n17, cor_maj_58_n16,
         cor_maj_58_n15, cor_maj_58_n14, cor_maj_59_n26, cor_maj_59_n25,
         cor_maj_59_n24, cor_maj_59_n23, cor_maj_59_n22, cor_maj_59_n21,
         cor_maj_59_n20, cor_maj_59_n19, cor_maj_59_n18, cor_maj_59_n17,
         cor_maj_59_n16, cor_maj_59_n15, cor_maj_59_n14, cor_maj_60_n26,
         cor_maj_60_n25, cor_maj_60_n24, cor_maj_60_n23, cor_maj_60_n22,
         cor_maj_60_n21, cor_maj_60_n20, cor_maj_60_n19, cor_maj_60_n18,
         cor_maj_60_n17, cor_maj_60_n16, cor_maj_60_n15, cor_maj_60_n14,
         cor_maj_61_n26, cor_maj_61_n25, cor_maj_61_n24, cor_maj_61_n23,
         cor_maj_61_n22, cor_maj_61_n21, cor_maj_61_n20, cor_maj_61_n19,
         cor_maj_61_n18, cor_maj_61_n17, cor_maj_61_n16, cor_maj_61_n15,
         cor_maj_61_n14, cor_maj_62_n26, cor_maj_62_n25, cor_maj_62_n24,
         cor_maj_62_n23, cor_maj_62_n22, cor_maj_62_n21, cor_maj_62_n20,
         cor_maj_62_n19, cor_maj_62_n18, cor_maj_62_n17, cor_maj_62_n16,
         cor_maj_62_n15, cor_maj_62_n14, cor_maj_63_n26, cor_maj_63_n25,
         cor_maj_63_n24, cor_maj_63_n23, cor_maj_63_n22, cor_maj_63_n21,
         cor_maj_63_n20, cor_maj_63_n19, cor_maj_63_n18, cor_maj_63_n17,
         cor_maj_63_n16, cor_maj_63_n15, cor_maj_63_n14, cor_maj_64_n26,
         cor_maj_64_n25, cor_maj_64_n24, cor_maj_64_n23, cor_maj_64_n22,
         cor_maj_64_n21, cor_maj_64_n20, cor_maj_64_n19, cor_maj_64_n18,
         cor_maj_64_n17, cor_maj_64_n16, cor_maj_64_n15, cor_maj_64_n14,
         cor_maj_65_n26, cor_maj_65_n25, cor_maj_65_n24, cor_maj_65_n23,
         cor_maj_65_n22, cor_maj_65_n21, cor_maj_65_n20, cor_maj_65_n19,
         cor_maj_65_n18, cor_maj_65_n17, cor_maj_65_n16, cor_maj_65_n15,
         cor_maj_65_n14, cor_maj_66_n26, cor_maj_66_n25, cor_maj_66_n24,
         cor_maj_66_n23, cor_maj_66_n22, cor_maj_66_n21, cor_maj_66_n20,
         cor_maj_66_n19, cor_maj_66_n18, cor_maj_66_n17, cor_maj_66_n16,
         cor_maj_66_n15, cor_maj_66_n14, cor_maj_67_n26, cor_maj_67_n25,
         cor_maj_67_n24, cor_maj_67_n23, cor_maj_67_n22, cor_maj_67_n21,
         cor_maj_67_n20, cor_maj_67_n19, cor_maj_67_n18, cor_maj_67_n17,
         cor_maj_67_n16, cor_maj_67_n15, cor_maj_67_n14, cor_maj_68_n26,
         cor_maj_68_n25, cor_maj_68_n24, cor_maj_68_n23, cor_maj_68_n22,
         cor_maj_68_n21, cor_maj_68_n20, cor_maj_68_n19, cor_maj_68_n18,
         cor_maj_68_n17, cor_maj_68_n16, cor_maj_68_n15, cor_maj_68_n14,
         cor_maj_69_n26, cor_maj_69_n25, cor_maj_69_n24, cor_maj_69_n23,
         cor_maj_69_n22, cor_maj_69_n21, cor_maj_69_n20, cor_maj_69_n19,
         cor_maj_69_n18, cor_maj_69_n17, cor_maj_69_n16, cor_maj_69_n15,
         cor_maj_69_n14, cor_maj_70_n26, cor_maj_70_n25, cor_maj_70_n24,
         cor_maj_70_n23, cor_maj_70_n22, cor_maj_70_n21, cor_maj_70_n20,
         cor_maj_70_n19, cor_maj_70_n18, cor_maj_70_n17, cor_maj_70_n16,
         cor_maj_70_n15, cor_maj_70_n14, cor_maj_71_n26, cor_maj_71_n25,
         cor_maj_71_n24, cor_maj_71_n23, cor_maj_71_n22, cor_maj_71_n21,
         cor_maj_71_n20, cor_maj_71_n19, cor_maj_71_n18, cor_maj_71_n17,
         cor_maj_71_n16, cor_maj_71_n15, cor_maj_71_n14, cor_maj_72_n26,
         cor_maj_72_n25, cor_maj_72_n24, cor_maj_72_n23, cor_maj_72_n22,
         cor_maj_72_n21, cor_maj_72_n20, cor_maj_72_n19, cor_maj_72_n18,
         cor_maj_72_n17, cor_maj_72_n16, cor_maj_72_n15, cor_maj_72_n14,
         cor_maj_73_n26, cor_maj_73_n25, cor_maj_73_n24, cor_maj_73_n23,
         cor_maj_73_n22, cor_maj_73_n21, cor_maj_73_n20, cor_maj_73_n19,
         cor_maj_73_n18, cor_maj_73_n17, cor_maj_73_n16, cor_maj_73_n15,
         cor_maj_73_n14, cor_maj_74_n26, cor_maj_74_n25, cor_maj_74_n24,
         cor_maj_74_n23, cor_maj_74_n22, cor_maj_74_n21, cor_maj_74_n20,
         cor_maj_74_n19, cor_maj_74_n18, cor_maj_74_n17, cor_maj_74_n16,
         cor_maj_74_n15, cor_maj_74_n14, cor_maj_75_n26, cor_maj_75_n25,
         cor_maj_75_n24, cor_maj_75_n23, cor_maj_75_n22, cor_maj_75_n21,
         cor_maj_75_n20, cor_maj_75_n19, cor_maj_75_n18, cor_maj_75_n17,
         cor_maj_75_n16, cor_maj_75_n15, cor_maj_75_n14, cor_maj_76_n26,
         cor_maj_76_n25, cor_maj_76_n24, cor_maj_76_n23, cor_maj_76_n22,
         cor_maj_76_n21, cor_maj_76_n20, cor_maj_76_n19, cor_maj_76_n18,
         cor_maj_76_n17, cor_maj_76_n16, cor_maj_76_n15, cor_maj_76_n14,
         cor_maj_77_n26, cor_maj_77_n25, cor_maj_77_n24, cor_maj_77_n23,
         cor_maj_77_n22, cor_maj_77_n21, cor_maj_77_n20, cor_maj_77_n19,
         cor_maj_77_n18, cor_maj_77_n17, cor_maj_77_n16, cor_maj_77_n15,
         cor_maj_77_n14, cor_maj_78_n26, cor_maj_78_n25, cor_maj_78_n24,
         cor_maj_78_n23, cor_maj_78_n22, cor_maj_78_n21, cor_maj_78_n20,
         cor_maj_78_n19, cor_maj_78_n18, cor_maj_78_n17, cor_maj_78_n16,
         cor_maj_78_n15, cor_maj_78_n14, cor_maj_79_n26, cor_maj_79_n25,
         cor_maj_79_n24, cor_maj_79_n23, cor_maj_79_n22, cor_maj_79_n21,
         cor_maj_79_n20, cor_maj_79_n19, cor_maj_79_n18, cor_maj_79_n17,
         cor_maj_79_n16, cor_maj_79_n15, cor_maj_79_n14, cor_maj_80_n26,
         cor_maj_80_n25, cor_maj_80_n24, cor_maj_80_n23, cor_maj_80_n22,
         cor_maj_80_n21, cor_maj_80_n20, cor_maj_80_n19, cor_maj_80_n18,
         cor_maj_80_n17, cor_maj_80_n16, cor_maj_80_n15, cor_maj_80_n14,
         cor_maj_81_n26, cor_maj_81_n25, cor_maj_81_n24, cor_maj_81_n23,
         cor_maj_81_n22, cor_maj_81_n21, cor_maj_81_n20, cor_maj_81_n19,
         cor_maj_81_n18, cor_maj_81_n17, cor_maj_81_n16, cor_maj_81_n15,
         cor_maj_81_n14, cor_maj_82_n26, cor_maj_82_n25, cor_maj_82_n24,
         cor_maj_82_n23, cor_maj_82_n22, cor_maj_82_n21, cor_maj_82_n20,
         cor_maj_82_n19, cor_maj_82_n18, cor_maj_82_n17, cor_maj_82_n16,
         cor_maj_82_n15, cor_maj_82_n14, cor_maj_83_n26, cor_maj_83_n25,
         cor_maj_83_n24, cor_maj_83_n23, cor_maj_83_n22, cor_maj_83_n21,
         cor_maj_83_n20, cor_maj_83_n19, cor_maj_83_n18, cor_maj_83_n17,
         cor_maj_83_n16, cor_maj_83_n15, cor_maj_83_n14, cor_maj_84_n26,
         cor_maj_84_n25, cor_maj_84_n24, cor_maj_84_n23, cor_maj_84_n22,
         cor_maj_84_n21, cor_maj_84_n20, cor_maj_84_n19, cor_maj_84_n18,
         cor_maj_84_n17, cor_maj_84_n16, cor_maj_84_n15, cor_maj_84_n14,
         cor_maj_85_n26, cor_maj_85_n25, cor_maj_85_n24, cor_maj_85_n23,
         cor_maj_85_n22, cor_maj_85_n21, cor_maj_85_n20, cor_maj_85_n19,
         cor_maj_85_n18, cor_maj_85_n17, cor_maj_85_n16, cor_maj_85_n15,
         cor_maj_85_n14, cor_maj_86_n26, cor_maj_86_n25, cor_maj_86_n24,
         cor_maj_86_n23, cor_maj_86_n22, cor_maj_86_n21, cor_maj_86_n20,
         cor_maj_86_n19, cor_maj_86_n18, cor_maj_86_n17, cor_maj_86_n16,
         cor_maj_86_n15, cor_maj_86_n14, cor_maj_87_n26, cor_maj_87_n25,
         cor_maj_87_n24, cor_maj_87_n23, cor_maj_87_n22, cor_maj_87_n21,
         cor_maj_87_n20, cor_maj_87_n19, cor_maj_87_n18, cor_maj_87_n17,
         cor_maj_87_n16, cor_maj_87_n15, cor_maj_87_n14, cor_maj_88_n26,
         cor_maj_88_n25, cor_maj_88_n24, cor_maj_88_n23, cor_maj_88_n22,
         cor_maj_88_n21, cor_maj_88_n20, cor_maj_88_n19, cor_maj_88_n18,
         cor_maj_88_n17, cor_maj_88_n16, cor_maj_88_n15, cor_maj_88_n14,
         cor_maj_89_n26, cor_maj_89_n25, cor_maj_89_n24, cor_maj_89_n23,
         cor_maj_89_n22, cor_maj_89_n21, cor_maj_89_n20, cor_maj_89_n19,
         cor_maj_89_n18, cor_maj_89_n17, cor_maj_89_n16, cor_maj_89_n15,
         cor_maj_89_n14, comp_n15, comp_n14, comp_n13, comp_n12, comp_n11,
         comp_n10, comp_n9, comp_n8, comp_n7, comp_n6, comp_n5, comp_n4,
         comp_n3, comp_n2, comp_n1;
  wire   [4:0] mul_port_c_0_0;
  wire   [4:0] mul_port_c_0_1;
  wire   [4:0] mul_port_c_0_2;
  wire   [4:0] mul_port_c_1_0;
  wire   [4:0] mul_port_c_1_1;
  wire   [4:0] mul_port_c_1_2;
  wire   [4:0] mul_port_c_2_0;
  wire   [4:0] mul_port_c_2_1;
  wire   [4:0] mul_port_c_2_2;
  wire   [4:0] cor_port_v_0_0;
  wire   [4:0] cor_port_v_0_1;
  wire   [4:0] cor_port_v_0_2;
  wire   [4:0] cor_port_v_1_0;
  wire   [4:0] cor_port_v_1_1;
  wire   [4:0] cor_port_v_1_2;
  wire   [4:0] cor_port_v_2_0;
  wire   [4:0] cor_port_v_2_1;
  wire   [4:0] cor_port_v_2_2;
  wire   [4:0] comp_port_c_0;
  wire   [4:0] comp_port_c_1;
  wire   [4:0] comp_port_c_2;
  wire   [4:0] mul_xor2_35_port_z;
  wire   [4:0] mul_xor2_34_port_z;
  wire   [4:0] mul_xor2_33_port_z;
  wire   [4:0] mul_xor2_33_port_a0;
  wire   [4:0] mul_xor2_32_port_z;
  wire   [4:0] mul_xor2_31_port_z;
  wire   [4:0] mul_xor2_30_port_z;
  wire   [4:0] mul_xor2_30_port_a0;
  wire   [4:0] mul_xor2_29_port_z;
  wire   [4:0] mul_xor2_28_port_z;
  wire   [4:0] mul_xor2_27_port_z;
  wire   [4:0] mul_xor2_27_port_a0;
  wire   [4:0] mul_xor2_26_port_z;
  wire   [4:0] mul_xor2_25_port_z;
  wire   [4:0] mul_xor2_24_port_z;
  wire   [4:0] mul_xor2_24_port_a0;
  wire   [4:0] mul_xor2_23_port_z;
  wire   [4:0] mul_xor2_22_port_z;
  wire   [4:0] mul_xor2_21_port_z;
  wire   [4:0] mul_xor2_21_port_a0;
  wire   [4:0] mul_xor2_20_port_z;
  wire   [4:0] mul_xor2_19_port_z;
  wire   [4:0] mul_xor2_18_port_z;
  wire   [4:0] mul_xor2_18_port_a0;

  DFF_X1 result_0_reg_4_ ( .D(comp_port_c_0[4]), .CK(clk), .Q(port_c_0[4]), 
        .QN() );
  DFF_X1 result_0_reg_3_ ( .D(comp_port_c_0[3]), .CK(clk), .Q(port_c_0[3]), 
        .QN() );
  DFF_X1 result_0_reg_2_ ( .D(comp_port_c_0[2]), .CK(clk), .Q(port_c_0[2]), 
        .QN() );
  DFF_X1 result_0_reg_1_ ( .D(comp_port_c_0[1]), .CK(clk), .Q(port_c_0[1]), 
        .QN() );
  DFF_X1 result_0_reg_0_ ( .D(comp_port_c_0[0]), .CK(clk), .Q(port_c_0[0]), 
        .QN() );
  DFF_X1 result_1_reg_4_ ( .D(comp_port_c_1[4]), .CK(clk), .Q(port_c_1[4]), 
        .QN() );
  DFF_X1 result_1_reg_3_ ( .D(comp_port_c_1[3]), .CK(clk), .Q(port_c_1[3]), 
        .QN() );
  DFF_X1 result_1_reg_2_ ( .D(comp_port_c_1[2]), .CK(clk), .Q(port_c_1[2]), 
        .QN() );
  DFF_X1 result_1_reg_1_ ( .D(comp_port_c_1[1]), .CK(clk), .Q(port_c_1[1]), 
        .QN() );
  DFF_X1 result_1_reg_0_ ( .D(comp_port_c_1[0]), .CK(clk), .Q(port_c_1[0]), 
        .QN() );
  DFF_X1 result_2_reg_4_ ( .D(comp_port_c_2[4]), .CK(clk), .Q(port_c_2[4]), 
        .QN() );
  DFF_X1 result_2_reg_3_ ( .D(comp_port_c_2[3]), .CK(clk), .Q(port_c_2[3]), 
        .QN() );
  DFF_X1 result_2_reg_2_ ( .D(comp_port_c_2[2]), .CK(clk), .Q(port_c_2[2]), 
        .QN() );
  DFF_X1 result_2_reg_1_ ( .D(comp_port_c_2[1]), .CK(clk), .Q(port_c_2[1]), 
        .QN() );
  DFF_X1 result_2_reg_0_ ( .D(comp_port_c_2[0]), .CK(clk), .Q(port_c_2[0]), 
        .QN() );
  INV_X1 mul_U77 ( .A(port_a_2[4]), .ZN(mul_n11) );
  INV_X1 mul_U76 ( .A(port_a_2[3]), .ZN(mul_n12) );
  INV_X1 mul_U75 ( .A(port_a_2[2]), .ZN(mul_n13) );
  INV_X1 mul_U74 ( .A(port_a_2[1]), .ZN(mul_n14) );
  INV_X1 mul_U73 ( .A(port_a_2[0]), .ZN(mul_n15) );
  NOR2_X1 mul_U72 ( .A1(mul_n21), .A2(mul_n1), .ZN(mul_xor2_18_port_a0[4]) );
  NOR2_X1 mul_U71 ( .A1(mul_n22), .A2(mul_n2), .ZN(mul_xor2_18_port_a0[3]) );
  NOR2_X1 mul_U70 ( .A1(mul_n23), .A2(mul_n3), .ZN(mul_xor2_18_port_a0[2]) );
  NOR2_X1 mul_U69 ( .A1(mul_n24), .A2(mul_n4), .ZN(mul_xor2_18_port_a0[1]) );
  NOR2_X1 mul_U68 ( .A1(mul_n25), .A2(mul_n5), .ZN(mul_xor2_18_port_a0[0]) );
  NOR2_X1 mul_U67 ( .A1(mul_n26), .A2(mul_n1), .ZN(mul_xor2_21_port_a0[4]) );
  NOR2_X1 mul_U66 ( .A1(mul_n27), .A2(mul_n2), .ZN(mul_xor2_21_port_a0[3]) );
  NOR2_X1 mul_U65 ( .A1(mul_n28), .A2(mul_n3), .ZN(mul_xor2_21_port_a0[2]) );
  NOR2_X1 mul_U64 ( .A1(mul_n29), .A2(mul_n4), .ZN(mul_xor2_21_port_a0[1]) );
  NOR2_X1 mul_U63 ( .A1(mul_n30), .A2(mul_n5), .ZN(mul_xor2_21_port_a0[0]) );
  NOR2_X1 mul_U62 ( .A1(mul_n16), .A2(mul_n6), .ZN(mul_xor2_24_port_a0[4]) );
  NOR2_X1 mul_U61 ( .A1(mul_n17), .A2(mul_n7), .ZN(mul_xor2_24_port_a0[3]) );
  NOR2_X1 mul_U60 ( .A1(mul_n18), .A2(mul_n8), .ZN(mul_xor2_24_port_a0[2]) );
  NOR2_X1 mul_U59 ( .A1(mul_n19), .A2(mul_n9), .ZN(mul_xor2_24_port_a0[1]) );
  NOR2_X1 mul_U58 ( .A1(mul_n20), .A2(mul_n10), .ZN(mul_xor2_24_port_a0[0]) );
  NOR2_X1 mul_U57 ( .A1(mul_n6), .A2(mul_n26), .ZN(mul_xor2_27_port_a0[4]) );
  NOR2_X1 mul_U56 ( .A1(mul_n7), .A2(mul_n27), .ZN(mul_xor2_27_port_a0[3]) );
  NOR2_X1 mul_U55 ( .A1(mul_n8), .A2(mul_n28), .ZN(mul_xor2_27_port_a0[2]) );
  NOR2_X1 mul_U54 ( .A1(mul_n9), .A2(mul_n29), .ZN(mul_xor2_27_port_a0[1]) );
  NOR2_X1 mul_U53 ( .A1(mul_n10), .A2(mul_n30), .ZN(mul_xor2_27_port_a0[0]) );
  NOR2_X1 mul_U52 ( .A1(mul_n11), .A2(mul_n16), .ZN(mul_xor2_30_port_a0[4]) );
  NOR2_X1 mul_U51 ( .A1(mul_n12), .A2(mul_n17), .ZN(mul_xor2_30_port_a0[3]) );
  NOR2_X1 mul_U50 ( .A1(mul_n13), .A2(mul_n18), .ZN(mul_xor2_30_port_a0[2]) );
  NOR2_X1 mul_U49 ( .A1(mul_n14), .A2(mul_n19), .ZN(mul_xor2_30_port_a0[1]) );
  NOR2_X1 mul_U48 ( .A1(mul_n15), .A2(mul_n20), .ZN(mul_xor2_30_port_a0[0]) );
  NOR2_X1 mul_U47 ( .A1(mul_n11), .A2(mul_n21), .ZN(mul_xor2_33_port_a0[4]) );
  NOR2_X1 mul_U46 ( .A1(mul_n12), .A2(mul_n22), .ZN(mul_xor2_33_port_a0[3]) );
  NOR2_X1 mul_U45 ( .A1(mul_n13), .A2(mul_n23), .ZN(mul_xor2_33_port_a0[2]) );
  NOR2_X1 mul_U44 ( .A1(mul_n14), .A2(mul_n24), .ZN(mul_xor2_33_port_a0[1]) );
  NOR2_X1 mul_U43 ( .A1(mul_n15), .A2(mul_n25), .ZN(mul_xor2_33_port_a0[0]) );
  INV_X1 mul_U42 ( .A(port_b_1[4]), .ZN(mul_n21) );
  INV_X1 mul_U41 ( .A(port_b_1[3]), .ZN(mul_n22) );
  INV_X1 mul_U40 ( .A(port_b_1[2]), .ZN(mul_n23) );
  INV_X1 mul_U39 ( .A(port_b_1[1]), .ZN(mul_n24) );
  INV_X1 mul_U38 ( .A(port_b_1[0]), .ZN(mul_n25) );
  INV_X1 mul_U37 ( .A(port_b_0[4]), .ZN(mul_n16) );
  INV_X1 mul_U36 ( .A(port_b_0[3]), .ZN(mul_n17) );
  INV_X1 mul_U35 ( .A(port_b_0[2]), .ZN(mul_n18) );
  INV_X1 mul_U34 ( .A(port_b_0[1]), .ZN(mul_n19) );
  INV_X1 mul_U33 ( .A(port_b_0[0]), .ZN(mul_n20) );
  INV_X1 mul_U32 ( .A(port_b_2[4]), .ZN(mul_n26) );
  INV_X1 mul_U31 ( .A(port_b_2[3]), .ZN(mul_n27) );
  INV_X1 mul_U30 ( .A(port_b_2[2]), .ZN(mul_n28) );
  INV_X1 mul_U29 ( .A(port_b_2[1]), .ZN(mul_n29) );
  INV_X1 mul_U28 ( .A(port_b_2[0]), .ZN(mul_n30) );
  INV_X1 mul_U27 ( .A(port_a_1[4]), .ZN(mul_n6) );
  INV_X1 mul_U26 ( .A(port_a_1[3]), .ZN(mul_n7) );
  INV_X1 mul_U25 ( .A(port_a_1[2]), .ZN(mul_n8) );
  INV_X1 mul_U24 ( .A(port_a_1[1]), .ZN(mul_n9) );
  INV_X1 mul_U23 ( .A(port_a_1[0]), .ZN(mul_n10) );
  INV_X1 mul_U22 ( .A(port_a_0[4]), .ZN(mul_n1) );
  INV_X1 mul_U21 ( .A(port_a_0[3]), .ZN(mul_n2) );
  INV_X1 mul_U20 ( .A(port_a_0[2]), .ZN(mul_n3) );
  INV_X1 mul_U19 ( .A(port_a_0[1]), .ZN(mul_n4) );
  INV_X1 mul_U18 ( .A(port_a_0[0]), .ZN(mul_n5) );
  NOR2_X1 mul_U17 ( .A1(mul_n11), .A2(mul_n26), .ZN(mul_N46) );
  NOR2_X1 mul_U16 ( .A1(mul_n12), .A2(mul_n27), .ZN(mul_N47) );
  NOR2_X1 mul_U15 ( .A1(mul_n13), .A2(mul_n28), .ZN(mul_N48) );
  NOR2_X1 mul_U14 ( .A1(mul_n14), .A2(mul_n29), .ZN(mul_N49) );
  NOR2_X1 mul_U13 ( .A1(mul_n15), .A2(mul_n30), .ZN(mul_N50) );
  NOR2_X1 mul_U12 ( .A1(mul_n16), .A2(mul_n1), .ZN(mul_N36) );
  NOR2_X1 mul_U11 ( .A1(mul_n17), .A2(mul_n2), .ZN(mul_N37) );
  NOR2_X1 mul_U10 ( .A1(mul_n18), .A2(mul_n3), .ZN(mul_N38) );
  NOR2_X1 mul_U9 ( .A1(mul_n19), .A2(mul_n4), .ZN(mul_N39) );
  NOR2_X1 mul_U8 ( .A1(mul_n20), .A2(mul_n5), .ZN(mul_N40) );
  NOR2_X1 mul_U7 ( .A1(mul_n21), .A2(mul_n6), .ZN(mul_N41) );
  NOR2_X1 mul_U6 ( .A1(mul_n22), .A2(mul_n7), .ZN(mul_N42) );
  NOR2_X1 mul_U5 ( .A1(mul_n23), .A2(mul_n8), .ZN(mul_N43) );
  NOR2_X1 mul_U4 ( .A1(mul_n24), .A2(mul_n9), .ZN(mul_N44) );
  NOR2_X1 mul_U3 ( .A1(mul_n25), .A2(mul_n10), .ZN(mul_N45) );
  DFF_X1 mul_u_2_2_reg_0_ ( .D(mul_N50), .CK(clk), .Q(mul_port_c_2_2[0]), 
        .QN() );
  DFF_X1 mul_u_2_2_reg_1_ ( .D(mul_N49), .CK(clk), .Q(mul_port_c_2_2[1]), 
        .QN() );
  DFF_X1 mul_u_2_2_reg_2_ ( .D(mul_N48), .CK(clk), .Q(mul_port_c_2_2[2]), 
        .QN() );
  DFF_X1 mul_u_2_2_reg_3_ ( .D(mul_N47), .CK(clk), .Q(mul_port_c_2_2[3]), 
        .QN() );
  DFF_X1 mul_u_2_2_reg_4_ ( .D(mul_N46), .CK(clk), .Q(mul_port_c_2_2[4]), 
        .QN() );
  DFF_X1 mul_u_2_1_reg_0_ ( .D(mul_xor2_35_port_z[0]), .CK(clk), .Q(
        mul_port_c_2_1[0]), .QN() );
  DFF_X1 mul_u_2_1_reg_1_ ( .D(mul_xor2_35_port_z[1]), .CK(clk), .Q(
        mul_port_c_2_1[1]), .QN() );
  DFF_X1 mul_u_2_1_reg_2_ ( .D(mul_xor2_35_port_z[2]), .CK(clk), .Q(
        mul_port_c_2_1[2]), .QN() );
  DFF_X1 mul_u_2_1_reg_3_ ( .D(mul_xor2_35_port_z[3]), .CK(clk), .Q(
        mul_port_c_2_1[3]), .QN() );
  DFF_X1 mul_u_2_1_reg_4_ ( .D(mul_xor2_35_port_z[4]), .CK(clk), .Q(
        mul_port_c_2_1[4]), .QN() );
  DFF_X1 mul_u_2_0_reg_0_ ( .D(mul_xor2_32_port_z[0]), .CK(clk), .Q(
        mul_port_c_2_0[0]), .QN() );
  DFF_X1 mul_u_2_0_reg_1_ ( .D(mul_xor2_32_port_z[1]), .CK(clk), .Q(
        mul_port_c_2_0[1]), .QN() );
  DFF_X1 mul_u_2_0_reg_2_ ( .D(mul_xor2_32_port_z[2]), .CK(clk), .Q(
        mul_port_c_2_0[2]), .QN() );
  DFF_X1 mul_u_2_0_reg_3_ ( .D(mul_xor2_32_port_z[3]), .CK(clk), .Q(
        mul_port_c_2_0[3]), .QN() );
  DFF_X1 mul_u_2_0_reg_4_ ( .D(mul_xor2_32_port_z[4]), .CK(clk), .Q(
        mul_port_c_2_0[4]), .QN() );
  DFF_X1 mul_u_1_2_reg_0_ ( .D(mul_xor2_29_port_z[0]), .CK(clk), .Q(
        mul_port_c_1_2[0]), .QN() );
  DFF_X1 mul_u_1_2_reg_1_ ( .D(mul_xor2_29_port_z[1]), .CK(clk), .Q(
        mul_port_c_1_2[1]), .QN() );
  DFF_X1 mul_u_1_2_reg_2_ ( .D(mul_xor2_29_port_z[2]), .CK(clk), .Q(
        mul_port_c_1_2[2]), .QN() );
  DFF_X1 mul_u_1_2_reg_3_ ( .D(mul_xor2_29_port_z[3]), .CK(clk), .Q(
        mul_port_c_1_2[3]), .QN() );
  DFF_X1 mul_u_1_2_reg_4_ ( .D(mul_xor2_29_port_z[4]), .CK(clk), .Q(
        mul_port_c_1_2[4]), .QN() );
  DFF_X1 mul_u_1_1_reg_0_ ( .D(mul_N45), .CK(clk), .Q(mul_port_c_1_1[0]), 
        .QN() );
  DFF_X1 mul_u_1_1_reg_1_ ( .D(mul_N44), .CK(clk), .Q(mul_port_c_1_1[1]), 
        .QN() );
  DFF_X1 mul_u_1_1_reg_2_ ( .D(mul_N43), .CK(clk), .Q(mul_port_c_1_1[2]), 
        .QN() );
  DFF_X1 mul_u_1_1_reg_3_ ( .D(mul_N42), .CK(clk), .Q(mul_port_c_1_1[3]), 
        .QN() );
  DFF_X1 mul_u_1_1_reg_4_ ( .D(mul_N41), .CK(clk), .Q(mul_port_c_1_1[4]), 
        .QN() );
  DFF_X1 mul_u_1_0_reg_0_ ( .D(mul_xor2_26_port_z[0]), .CK(clk), .Q(
        mul_port_c_1_0[0]), .QN() );
  DFF_X1 mul_u_1_0_reg_1_ ( .D(mul_xor2_26_port_z[1]), .CK(clk), .Q(
        mul_port_c_1_0[1]), .QN() );
  DFF_X1 mul_u_1_0_reg_2_ ( .D(mul_xor2_26_port_z[2]), .CK(clk), .Q(
        mul_port_c_1_0[2]), .QN() );
  DFF_X1 mul_u_1_0_reg_3_ ( .D(mul_xor2_26_port_z[3]), .CK(clk), .Q(
        mul_port_c_1_0[3]), .QN() );
  DFF_X1 mul_u_1_0_reg_4_ ( .D(mul_xor2_26_port_z[4]), .CK(clk), .Q(
        mul_port_c_1_0[4]), .QN() );
  DFF_X1 mul_u_0_2_reg_0_ ( .D(mul_xor2_23_port_z[0]), .CK(clk), .Q(
        mul_port_c_0_2[0]), .QN() );
  DFF_X1 mul_u_0_2_reg_1_ ( .D(mul_xor2_23_port_z[1]), .CK(clk), .Q(
        mul_port_c_0_2[1]), .QN() );
  DFF_X1 mul_u_0_2_reg_2_ ( .D(mul_xor2_23_port_z[2]), .CK(clk), .Q(
        mul_port_c_0_2[2]), .QN() );
  DFF_X1 mul_u_0_2_reg_3_ ( .D(mul_xor2_23_port_z[3]), .CK(clk), .Q(
        mul_port_c_0_2[3]), .QN() );
  DFF_X1 mul_u_0_2_reg_4_ ( .D(mul_xor2_23_port_z[4]), .CK(clk), .Q(
        mul_port_c_0_2[4]), .QN() );
  DFF_X1 mul_u_0_1_reg_0_ ( .D(mul_xor2_20_port_z[0]), .CK(clk), .Q(
        mul_port_c_0_1[0]), .QN() );
  DFF_X1 mul_u_0_1_reg_1_ ( .D(mul_xor2_20_port_z[1]), .CK(clk), .Q(
        mul_port_c_0_1[1]), .QN() );
  DFF_X1 mul_u_0_1_reg_2_ ( .D(mul_xor2_20_port_z[2]), .CK(clk), .Q(
        mul_port_c_0_1[2]), .QN() );
  DFF_X1 mul_u_0_1_reg_3_ ( .D(mul_xor2_20_port_z[3]), .CK(clk), .Q(
        mul_port_c_0_1[3]), .QN() );
  DFF_X1 mul_u_0_1_reg_4_ ( .D(mul_xor2_20_port_z[4]), .CK(clk), .Q(
        mul_port_c_0_1[4]), .QN() );
  DFF_X1 mul_u_0_0_reg_0_ ( .D(mul_N40), .CK(clk), .Q(mul_port_c_0_0[0]), 
        .QN() );
  DFF_X1 mul_u_0_0_reg_1_ ( .D(mul_N39), .CK(clk), .Q(mul_port_c_0_0[1]), 
        .QN() );
  DFF_X1 mul_u_0_0_reg_2_ ( .D(mul_N38), .CK(clk), .Q(mul_port_c_0_0[2]), 
        .QN() );
  DFF_X1 mul_u_0_0_reg_3_ ( .D(mul_N37), .CK(clk), .Q(mul_port_c_0_0[3]), 
        .QN() );
  DFF_X1 mul_u_0_0_reg_4_ ( .D(mul_N36), .CK(clk), .Q(mul_port_c_0_0[4]), 
        .QN() );
  XOR2_X1 mul_xor2_18_U5 ( .A(port_r[0]), .B(mul_xor2_18_port_a0[4]), .Z(
        mul_xor2_18_port_z[4]) );
  XOR2_X1 mul_xor2_18_U4 ( .A(port_r[0]), .B(mul_xor2_18_port_a0[3]), .Z(
        mul_xor2_18_port_z[3]) );
  XOR2_X1 mul_xor2_18_U3 ( .A(port_r[0]), .B(mul_xor2_18_port_a0[2]), .Z(
        mul_xor2_18_port_z[2]) );
  XOR2_X1 mul_xor2_18_U2 ( .A(port_r[0]), .B(mul_xor2_18_port_a0[1]), .Z(
        mul_xor2_18_port_z[1]) );
  XOR2_X1 mul_xor2_18_U1 ( .A(port_r[0]), .B(mul_xor2_18_port_a0[0]), .Z(
        mul_xor2_18_port_z[0]) );
  XOR2_X1 mul_xor2_19_U5 ( .A(port_r[1]), .B(mul_xor2_18_port_z[4]), .Z(
        mul_xor2_19_port_z[4]) );
  XOR2_X1 mul_xor2_19_U4 ( .A(port_r[1]), .B(mul_xor2_18_port_z[3]), .Z(
        mul_xor2_19_port_z[3]) );
  XOR2_X1 mul_xor2_19_U3 ( .A(port_r[1]), .B(mul_xor2_18_port_z[2]), .Z(
        mul_xor2_19_port_z[2]) );
  XOR2_X1 mul_xor2_19_U2 ( .A(port_r[1]), .B(mul_xor2_18_port_z[1]), .Z(
        mul_xor2_19_port_z[1]) );
  XOR2_X1 mul_xor2_19_U1 ( .A(port_r[1]), .B(mul_xor2_18_port_z[0]), .Z(
        mul_xor2_19_port_z[0]) );
  XOR2_X1 mul_xor2_20_U5 ( .A(port_r[2]), .B(mul_xor2_19_port_z[4]), .Z(
        mul_xor2_20_port_z[4]) );
  XOR2_X1 mul_xor2_20_U4 ( .A(port_r[2]), .B(mul_xor2_19_port_z[3]), .Z(
        mul_xor2_20_port_z[3]) );
  XOR2_X1 mul_xor2_20_U3 ( .A(port_r[2]), .B(mul_xor2_19_port_z[2]), .Z(
        mul_xor2_20_port_z[2]) );
  XOR2_X1 mul_xor2_20_U2 ( .A(port_r[2]), .B(mul_xor2_19_port_z[1]), .Z(
        mul_xor2_20_port_z[1]) );
  XOR2_X1 mul_xor2_20_U1 ( .A(port_r[2]), .B(mul_xor2_19_port_z[0]), .Z(
        mul_xor2_20_port_z[0]) );
  XOR2_X1 mul_xor2_21_U5 ( .A(port_r[3]), .B(mul_xor2_21_port_a0[4]), .Z(
        mul_xor2_21_port_z[4]) );
  XOR2_X1 mul_xor2_21_U4 ( .A(port_r[3]), .B(mul_xor2_21_port_a0[3]), .Z(
        mul_xor2_21_port_z[3]) );
  XOR2_X1 mul_xor2_21_U3 ( .A(port_r[3]), .B(mul_xor2_21_port_a0[2]), .Z(
        mul_xor2_21_port_z[2]) );
  XOR2_X1 mul_xor2_21_U2 ( .A(port_r[3]), .B(mul_xor2_21_port_a0[1]), .Z(
        mul_xor2_21_port_z[1]) );
  XOR2_X1 mul_xor2_21_U1 ( .A(port_r[3]), .B(mul_xor2_21_port_a0[0]), .Z(
        mul_xor2_21_port_z[0]) );
  XOR2_X1 mul_xor2_22_U5 ( .A(port_r[4]), .B(mul_xor2_21_port_z[4]), .Z(
        mul_xor2_22_port_z[4]) );
  XOR2_X1 mul_xor2_22_U4 ( .A(port_r[4]), .B(mul_xor2_21_port_z[3]), .Z(
        mul_xor2_22_port_z[3]) );
  XOR2_X1 mul_xor2_22_U3 ( .A(port_r[4]), .B(mul_xor2_21_port_z[2]), .Z(
        mul_xor2_22_port_z[2]) );
  XOR2_X1 mul_xor2_22_U2 ( .A(port_r[4]), .B(mul_xor2_21_port_z[1]), .Z(
        mul_xor2_22_port_z[1]) );
  XOR2_X1 mul_xor2_22_U1 ( .A(port_r[4]), .B(mul_xor2_21_port_z[0]), .Z(
        mul_xor2_22_port_z[0]) );
  XOR2_X1 mul_xor2_23_U5 ( .A(port_r[5]), .B(mul_xor2_22_port_z[4]), .Z(
        mul_xor2_23_port_z[4]) );
  XOR2_X1 mul_xor2_23_U4 ( .A(port_r[5]), .B(mul_xor2_22_port_z[3]), .Z(
        mul_xor2_23_port_z[3]) );
  XOR2_X1 mul_xor2_23_U3 ( .A(port_r[5]), .B(mul_xor2_22_port_z[2]), .Z(
        mul_xor2_23_port_z[2]) );
  XOR2_X1 mul_xor2_23_U2 ( .A(port_r[5]), .B(mul_xor2_22_port_z[1]), .Z(
        mul_xor2_23_port_z[1]) );
  XOR2_X1 mul_xor2_23_U1 ( .A(port_r[5]), .B(mul_xor2_22_port_z[0]), .Z(
        mul_xor2_23_port_z[0]) );
  XOR2_X1 mul_xor2_24_U5 ( .A(port_r[0]), .B(mul_xor2_24_port_a0[4]), .Z(
        mul_xor2_24_port_z[4]) );
  XOR2_X1 mul_xor2_24_U4 ( .A(port_r[0]), .B(mul_xor2_24_port_a0[3]), .Z(
        mul_xor2_24_port_z[3]) );
  XOR2_X1 mul_xor2_24_U3 ( .A(port_r[0]), .B(mul_xor2_24_port_a0[2]), .Z(
        mul_xor2_24_port_z[2]) );
  XOR2_X1 mul_xor2_24_U2 ( .A(port_r[0]), .B(mul_xor2_24_port_a0[1]), .Z(
        mul_xor2_24_port_z[1]) );
  XOR2_X1 mul_xor2_24_U1 ( .A(port_r[0]), .B(mul_xor2_24_port_a0[0]), .Z(
        mul_xor2_24_port_z[0]) );
  XOR2_X1 mul_xor2_25_U5 ( .A(port_r[1]), .B(mul_xor2_24_port_z[4]), .Z(
        mul_xor2_25_port_z[4]) );
  XOR2_X1 mul_xor2_25_U4 ( .A(port_r[1]), .B(mul_xor2_24_port_z[3]), .Z(
        mul_xor2_25_port_z[3]) );
  XOR2_X1 mul_xor2_25_U3 ( .A(port_r[1]), .B(mul_xor2_24_port_z[2]), .Z(
        mul_xor2_25_port_z[2]) );
  XOR2_X1 mul_xor2_25_U2 ( .A(port_r[1]), .B(mul_xor2_24_port_z[1]), .Z(
        mul_xor2_25_port_z[1]) );
  XOR2_X1 mul_xor2_25_U1 ( .A(port_r[1]), .B(mul_xor2_24_port_z[0]), .Z(
        mul_xor2_25_port_z[0]) );
  XOR2_X1 mul_xor2_26_U5 ( .A(port_r[2]), .B(mul_xor2_25_port_z[4]), .Z(
        mul_xor2_26_port_z[4]) );
  XOR2_X1 mul_xor2_26_U4 ( .A(port_r[2]), .B(mul_xor2_25_port_z[3]), .Z(
        mul_xor2_26_port_z[3]) );
  XOR2_X1 mul_xor2_26_U3 ( .A(port_r[2]), .B(mul_xor2_25_port_z[2]), .Z(
        mul_xor2_26_port_z[2]) );
  XOR2_X1 mul_xor2_26_U2 ( .A(port_r[2]), .B(mul_xor2_25_port_z[1]), .Z(
        mul_xor2_26_port_z[1]) );
  XOR2_X1 mul_xor2_26_U1 ( .A(port_r[2]), .B(mul_xor2_25_port_z[0]), .Z(
        mul_xor2_26_port_z[0]) );
  XOR2_X1 mul_xor2_27_U5 ( .A(port_r[6]), .B(mul_xor2_27_port_a0[4]), .Z(
        mul_xor2_27_port_z[4]) );
  XOR2_X1 mul_xor2_27_U4 ( .A(port_r[6]), .B(mul_xor2_27_port_a0[3]), .Z(
        mul_xor2_27_port_z[3]) );
  XOR2_X1 mul_xor2_27_U3 ( .A(port_r[6]), .B(mul_xor2_27_port_a0[2]), .Z(
        mul_xor2_27_port_z[2]) );
  XOR2_X1 mul_xor2_27_U2 ( .A(port_r[6]), .B(mul_xor2_27_port_a0[1]), .Z(
        mul_xor2_27_port_z[1]) );
  XOR2_X1 mul_xor2_27_U1 ( .A(port_r[6]), .B(mul_xor2_27_port_a0[0]), .Z(
        mul_xor2_27_port_z[0]) );
  XOR2_X1 mul_xor2_28_U5 ( .A(port_r[7]), .B(mul_xor2_27_port_z[4]), .Z(
        mul_xor2_28_port_z[4]) );
  XOR2_X1 mul_xor2_28_U4 ( .A(port_r[7]), .B(mul_xor2_27_port_z[3]), .Z(
        mul_xor2_28_port_z[3]) );
  XOR2_X1 mul_xor2_28_U3 ( .A(port_r[7]), .B(mul_xor2_27_port_z[2]), .Z(
        mul_xor2_28_port_z[2]) );
  XOR2_X1 mul_xor2_28_U2 ( .A(port_r[7]), .B(mul_xor2_27_port_z[1]), .Z(
        mul_xor2_28_port_z[1]) );
  XOR2_X1 mul_xor2_28_U1 ( .A(port_r[7]), .B(mul_xor2_27_port_z[0]), .Z(
        mul_xor2_28_port_z[0]) );
  XOR2_X1 mul_xor2_29_U5 ( .A(port_r[8]), .B(mul_xor2_28_port_z[4]), .Z(
        mul_xor2_29_port_z[4]) );
  XOR2_X1 mul_xor2_29_U4 ( .A(port_r[8]), .B(mul_xor2_28_port_z[3]), .Z(
        mul_xor2_29_port_z[3]) );
  XOR2_X1 mul_xor2_29_U3 ( .A(port_r[8]), .B(mul_xor2_28_port_z[2]), .Z(
        mul_xor2_29_port_z[2]) );
  XOR2_X1 mul_xor2_29_U2 ( .A(port_r[8]), .B(mul_xor2_28_port_z[1]), .Z(
        mul_xor2_29_port_z[1]) );
  XOR2_X1 mul_xor2_29_U1 ( .A(port_r[8]), .B(mul_xor2_28_port_z[0]), .Z(
        mul_xor2_29_port_z[0]) );
  XOR2_X1 mul_xor2_30_U5 ( .A(port_r[3]), .B(mul_xor2_30_port_a0[4]), .Z(
        mul_xor2_30_port_z[4]) );
  XOR2_X1 mul_xor2_30_U4 ( .A(port_r[3]), .B(mul_xor2_30_port_a0[3]), .Z(
        mul_xor2_30_port_z[3]) );
  XOR2_X1 mul_xor2_30_U3 ( .A(port_r[3]), .B(mul_xor2_30_port_a0[2]), .Z(
        mul_xor2_30_port_z[2]) );
  XOR2_X1 mul_xor2_30_U2 ( .A(port_r[3]), .B(mul_xor2_30_port_a0[1]), .Z(
        mul_xor2_30_port_z[1]) );
  XOR2_X1 mul_xor2_30_U1 ( .A(port_r[3]), .B(mul_xor2_30_port_a0[0]), .Z(
        mul_xor2_30_port_z[0]) );
  XOR2_X1 mul_xor2_31_U5 ( .A(port_r[4]), .B(mul_xor2_30_port_z[4]), .Z(
        mul_xor2_31_port_z[4]) );
  XOR2_X1 mul_xor2_31_U4 ( .A(port_r[4]), .B(mul_xor2_30_port_z[3]), .Z(
        mul_xor2_31_port_z[3]) );
  XOR2_X1 mul_xor2_31_U3 ( .A(port_r[4]), .B(mul_xor2_30_port_z[2]), .Z(
        mul_xor2_31_port_z[2]) );
  XOR2_X1 mul_xor2_31_U2 ( .A(port_r[4]), .B(mul_xor2_30_port_z[1]), .Z(
        mul_xor2_31_port_z[1]) );
  XOR2_X1 mul_xor2_31_U1 ( .A(port_r[4]), .B(mul_xor2_30_port_z[0]), .Z(
        mul_xor2_31_port_z[0]) );
  XOR2_X1 mul_xor2_32_U5 ( .A(port_r[5]), .B(mul_xor2_31_port_z[4]), .Z(
        mul_xor2_32_port_z[4]) );
  XOR2_X1 mul_xor2_32_U4 ( .A(port_r[5]), .B(mul_xor2_31_port_z[3]), .Z(
        mul_xor2_32_port_z[3]) );
  XOR2_X1 mul_xor2_32_U3 ( .A(port_r[5]), .B(mul_xor2_31_port_z[2]), .Z(
        mul_xor2_32_port_z[2]) );
  XOR2_X1 mul_xor2_32_U2 ( .A(port_r[5]), .B(mul_xor2_31_port_z[1]), .Z(
        mul_xor2_32_port_z[1]) );
  XOR2_X1 mul_xor2_32_U1 ( .A(port_r[5]), .B(mul_xor2_31_port_z[0]), .Z(
        mul_xor2_32_port_z[0]) );
  XOR2_X1 mul_xor2_33_U5 ( .A(port_r[6]), .B(mul_xor2_33_port_a0[4]), .Z(
        mul_xor2_33_port_z[4]) );
  XOR2_X1 mul_xor2_33_U4 ( .A(port_r[6]), .B(mul_xor2_33_port_a0[3]), .Z(
        mul_xor2_33_port_z[3]) );
  XOR2_X1 mul_xor2_33_U3 ( .A(port_r[6]), .B(mul_xor2_33_port_a0[2]), .Z(
        mul_xor2_33_port_z[2]) );
  XOR2_X1 mul_xor2_33_U2 ( .A(port_r[6]), .B(mul_xor2_33_port_a0[1]), .Z(
        mul_xor2_33_port_z[1]) );
  XOR2_X1 mul_xor2_33_U1 ( .A(port_r[6]), .B(mul_xor2_33_port_a0[0]), .Z(
        mul_xor2_33_port_z[0]) );
  XOR2_X1 mul_xor2_34_U5 ( .A(port_r[7]), .B(mul_xor2_33_port_z[4]), .Z(
        mul_xor2_34_port_z[4]) );
  XOR2_X1 mul_xor2_34_U4 ( .A(port_r[7]), .B(mul_xor2_33_port_z[3]), .Z(
        mul_xor2_34_port_z[3]) );
  XOR2_X1 mul_xor2_34_U3 ( .A(port_r[7]), .B(mul_xor2_33_port_z[2]), .Z(
        mul_xor2_34_port_z[2]) );
  XOR2_X1 mul_xor2_34_U2 ( .A(port_r[7]), .B(mul_xor2_33_port_z[1]), .Z(
        mul_xor2_34_port_z[1]) );
  XOR2_X1 mul_xor2_34_U1 ( .A(port_r[7]), .B(mul_xor2_33_port_z[0]), .Z(
        mul_xor2_34_port_z[0]) );
  XOR2_X1 mul_xor2_35_U5 ( .A(port_r[8]), .B(mul_xor2_34_port_z[4]), .Z(
        mul_xor2_35_port_z[4]) );
  XOR2_X1 mul_xor2_35_U4 ( .A(port_r[8]), .B(mul_xor2_34_port_z[3]), .Z(
        mul_xor2_35_port_z[3]) );
  XOR2_X1 mul_xor2_35_U3 ( .A(port_r[8]), .B(mul_xor2_34_port_z[2]), .Z(
        mul_xor2_35_port_z[2]) );
  XOR2_X1 mul_xor2_35_U2 ( .A(port_r[8]), .B(mul_xor2_34_port_z[1]), .Z(
        mul_xor2_35_port_z[1]) );
  XOR2_X1 mul_xor2_35_U1 ( .A(port_r[8]), .B(mul_xor2_34_port_z[0]), .Z(
        mul_xor2_35_port_z[0]) );
  DFF_X1 cor_m_2_2_reg_0_ ( .D(cor_maj_85_port_o), .CK(clk), .Q(
        cor_port_v_2_2[0]), .QN() );
  DFF_X1 cor_m_2_2_reg_1_ ( .D(cor_maj_86_port_o), .CK(clk), .Q(
        cor_port_v_2_2[1]), .QN() );
  DFF_X1 cor_m_2_2_reg_2_ ( .D(cor_maj_87_port_o), .CK(clk), .Q(
        cor_port_v_2_2[2]), .QN() );
  DFF_X1 cor_m_2_2_reg_3_ ( .D(cor_maj_88_port_o), .CK(clk), .Q(
        cor_port_v_2_2[3]), .QN() );
  DFF_X1 cor_m_2_2_reg_4_ ( .D(cor_maj_89_port_o), .CK(clk), .Q(
        cor_port_v_2_2[4]), .QN() );
  DFF_X1 cor_m_2_1_reg_0_ ( .D(cor_maj_80_port_o), .CK(clk), .Q(
        cor_port_v_2_1[0]), .QN() );
  DFF_X1 cor_m_2_1_reg_1_ ( .D(cor_maj_81_port_o), .CK(clk), .Q(
        cor_port_v_2_1[1]), .QN() );
  DFF_X1 cor_m_2_1_reg_2_ ( .D(cor_maj_82_port_o), .CK(clk), .Q(
        cor_port_v_2_1[2]), .QN() );
  DFF_X1 cor_m_2_1_reg_3_ ( .D(cor_maj_83_port_o), .CK(clk), .Q(
        cor_port_v_2_1[3]), .QN() );
  DFF_X1 cor_m_2_1_reg_4_ ( .D(cor_maj_84_port_o), .CK(clk), .Q(
        cor_port_v_2_1[4]), .QN() );
  DFF_X1 cor_m_2_0_reg_0_ ( .D(cor_maj_75_port_o), .CK(clk), .Q(
        cor_port_v_2_0[0]), .QN() );
  DFF_X1 cor_m_2_0_reg_1_ ( .D(cor_maj_76_port_o), .CK(clk), .Q(
        cor_port_v_2_0[1]), .QN() );
  DFF_X1 cor_m_2_0_reg_2_ ( .D(cor_maj_77_port_o), .CK(clk), .Q(
        cor_port_v_2_0[2]), .QN() );
  DFF_X1 cor_m_2_0_reg_3_ ( .D(cor_maj_78_port_o), .CK(clk), .Q(
        cor_port_v_2_0[3]), .QN() );
  DFF_X1 cor_m_2_0_reg_4_ ( .D(cor_maj_79_port_o), .CK(clk), .Q(
        cor_port_v_2_0[4]), .QN() );
  DFF_X1 cor_m_1_2_reg_0_ ( .D(cor_maj_70_port_o), .CK(clk), .Q(
        cor_port_v_1_2[0]), .QN() );
  DFF_X1 cor_m_1_2_reg_1_ ( .D(cor_maj_71_port_o), .CK(clk), .Q(
        cor_port_v_1_2[1]), .QN() );
  DFF_X1 cor_m_1_2_reg_2_ ( .D(cor_maj_72_port_o), .CK(clk), .Q(
        cor_port_v_1_2[2]), .QN() );
  DFF_X1 cor_m_1_2_reg_3_ ( .D(cor_maj_73_port_o), .CK(clk), .Q(
        cor_port_v_1_2[3]), .QN() );
  DFF_X1 cor_m_1_2_reg_4_ ( .D(cor_maj_74_port_o), .CK(clk), .Q(
        cor_port_v_1_2[4]), .QN() );
  DFF_X1 cor_m_1_1_reg_0_ ( .D(cor_maj_65_port_o), .CK(clk), .Q(
        cor_port_v_1_1[0]), .QN() );
  DFF_X1 cor_m_1_1_reg_1_ ( .D(cor_maj_66_port_o), .CK(clk), .Q(
        cor_port_v_1_1[1]), .QN() );
  DFF_X1 cor_m_1_1_reg_2_ ( .D(cor_maj_67_port_o), .CK(clk), .Q(
        cor_port_v_1_1[2]), .QN() );
  DFF_X1 cor_m_1_1_reg_3_ ( .D(cor_maj_68_port_o), .CK(clk), .Q(
        cor_port_v_1_1[3]), .QN() );
  DFF_X1 cor_m_1_1_reg_4_ ( .D(cor_maj_69_port_o), .CK(clk), .Q(
        cor_port_v_1_1[4]), .QN() );
  DFF_X1 cor_m_1_0_reg_0_ ( .D(cor_maj_60_port_o), .CK(clk), .Q(
        cor_port_v_1_0[0]), .QN() );
  DFF_X1 cor_m_1_0_reg_1_ ( .D(cor_maj_61_port_o), .CK(clk), .Q(
        cor_port_v_1_0[1]), .QN() );
  DFF_X1 cor_m_1_0_reg_2_ ( .D(cor_maj_62_port_o), .CK(clk), .Q(
        cor_port_v_1_0[2]), .QN() );
  DFF_X1 cor_m_1_0_reg_3_ ( .D(cor_maj_63_port_o), .CK(clk), .Q(
        cor_port_v_1_0[3]), .QN() );
  DFF_X1 cor_m_1_0_reg_4_ ( .D(cor_maj_64_port_o), .CK(clk), .Q(
        cor_port_v_1_0[4]), .QN() );
  DFF_X1 cor_m_0_2_reg_0_ ( .D(cor_maj_55_port_o), .CK(clk), .Q(
        cor_port_v_0_2[0]), .QN() );
  DFF_X1 cor_m_0_2_reg_1_ ( .D(cor_maj_56_port_o), .CK(clk), .Q(
        cor_port_v_0_2[1]), .QN() );
  DFF_X1 cor_m_0_2_reg_2_ ( .D(cor_maj_57_port_o), .CK(clk), .Q(
        cor_port_v_0_2[2]), .QN() );
  DFF_X1 cor_m_0_2_reg_3_ ( .D(cor_maj_58_port_o), .CK(clk), .Q(
        cor_port_v_0_2[3]), .QN() );
  DFF_X1 cor_m_0_2_reg_4_ ( .D(cor_maj_59_port_o), .CK(clk), .Q(
        cor_port_v_0_2[4]), .QN() );
  DFF_X1 cor_m_0_1_reg_0_ ( .D(cor_maj_50_port_o), .CK(clk), .Q(
        cor_port_v_0_1[0]), .QN() );
  DFF_X1 cor_m_0_1_reg_1_ ( .D(cor_maj_51_port_o), .CK(clk), .Q(
        cor_port_v_0_1[1]), .QN() );
  DFF_X1 cor_m_0_1_reg_2_ ( .D(cor_maj_52_port_o), .CK(clk), .Q(
        cor_port_v_0_1[2]), .QN() );
  DFF_X1 cor_m_0_1_reg_3_ ( .D(cor_maj_53_port_o), .CK(clk), .Q(
        cor_port_v_0_1[3]), .QN() );
  DFF_X1 cor_m_0_1_reg_4_ ( .D(cor_maj_54_port_o), .CK(clk), .Q(
        cor_port_v_0_1[4]), .QN() );
  DFF_X1 cor_m_0_0_reg_0_ ( .D(cor_maj_45_port_o), .CK(clk), .Q(
        cor_port_v_0_0[0]), .QN() );
  DFF_X1 cor_m_0_0_reg_1_ ( .D(cor_maj_46_port_o), .CK(clk), .Q(
        cor_port_v_0_0[1]), .QN() );
  DFF_X1 cor_m_0_0_reg_2_ ( .D(cor_maj_47_port_o), .CK(clk), .Q(
        cor_port_v_0_0[2]), .QN() );
  DFF_X1 cor_m_0_0_reg_3_ ( .D(cor_maj_48_port_o), .CK(clk), .Q(
        cor_port_v_0_0[3]), .QN() );
  DFF_X1 cor_m_0_0_reg_4_ ( .D(cor_maj_49_port_o), .CK(clk), .Q(
        cor_port_v_0_0[4]), .QN() );
  NAND2_X1 cor_maj_45_U15 ( .A1(cor_maj_45_n6), .A2(cor_maj_45_n5), .ZN(
        cor_maj_45_n10) );
  NAND2_X1 cor_maj_45_U14 ( .A1(mul_port_c_0_0[3]), .A2(mul_port_c_0_0[4]), 
        .ZN(cor_maj_45_n9) );
  NAND2_X1 cor_maj_45_U13 ( .A1(cor_maj_45_n9), .A2(cor_maj_45_n10), .ZN(
        cor_maj_45_n8) );
  NAND2_X1 cor_maj_45_U12 ( .A1(mul_port_c_0_0[2]), .A2(cor_maj_45_n11), .ZN(
        cor_maj_45_n13) );
  NAND2_X1 cor_maj_45_U11 ( .A1(mul_port_c_0_0[0]), .A2(mul_port_c_0_0[1]), 
        .ZN(cor_maj_45_n12) );
  NAND2_X1 cor_maj_45_U10 ( .A1(cor_maj_45_n12), .A2(cor_maj_45_n13), .ZN(
        cor_maj_45_n7) );
  XOR2_X1 cor_maj_45_U9 ( .A(mul_port_c_0_0[2]), .B(cor_maj_45_n11), .Z(
        cor_maj_45_n6) );
  XOR2_X1 cor_maj_45_U8 ( .A(mul_port_c_0_0[3]), .B(mul_port_c_0_0[4]), .Z(
        cor_maj_45_n5) );
  XOR2_X1 cor_maj_45_U7 ( .A(mul_port_c_0_0[0]), .B(mul_port_c_0_0[1]), .Z(
        cor_maj_45_n11) );
  OR2_X1 cor_maj_45_U6 ( .A1(cor_maj_45_n7), .A2(cor_maj_45_n8), .ZN(
        cor_maj_45_n3) );
  XOR2_X1 cor_maj_45_U5 ( .A(cor_maj_45_n5), .B(cor_maj_45_n6), .Z(
        cor_maj_45_n4) );
  NAND2_X1 cor_maj_45_U4 ( .A1(cor_maj_45_n3), .A2(cor_maj_45_n4), .ZN(
        cor_maj_45_n2) );
  NAND2_X1 cor_maj_45_U3 ( .A1(cor_maj_45_n7), .A2(cor_maj_45_n8), .ZN(
        cor_maj_45_n1) );
  NAND2_X1 cor_maj_45_U2 ( .A1(cor_maj_45_n1), .A2(cor_maj_45_n2), .ZN(
        cor_maj_45_port_o) );
  NAND2_X1 cor_maj_46_U15 ( .A1(cor_maj_46_n21), .A2(cor_maj_46_n22), .ZN(
        cor_maj_46_n17) );
  NAND2_X1 cor_maj_46_U14 ( .A1(mul_port_c_0_0[3]), .A2(mul_port_c_0_0[4]), 
        .ZN(cor_maj_46_n18) );
  NAND2_X1 cor_maj_46_U13 ( .A1(cor_maj_46_n18), .A2(cor_maj_46_n17), .ZN(
        cor_maj_46_n19) );
  NAND2_X1 cor_maj_46_U12 ( .A1(mul_port_c_0_0[2]), .A2(cor_maj_46_n16), .ZN(
        cor_maj_46_n14) );
  NAND2_X1 cor_maj_46_U11 ( .A1(mul_port_c_0_0[0]), .A2(mul_port_c_0_0[1]), 
        .ZN(cor_maj_46_n15) );
  NAND2_X1 cor_maj_46_U10 ( .A1(cor_maj_46_n15), .A2(cor_maj_46_n14), .ZN(
        cor_maj_46_n20) );
  XOR2_X1 cor_maj_46_U9 ( .A(mul_port_c_0_0[2]), .B(cor_maj_46_n16), .Z(
        cor_maj_46_n21) );
  XOR2_X1 cor_maj_46_U8 ( .A(mul_port_c_0_0[3]), .B(mul_port_c_0_0[4]), .Z(
        cor_maj_46_n22) );
  XOR2_X1 cor_maj_46_U7 ( .A(mul_port_c_0_0[0]), .B(mul_port_c_0_0[1]), .Z(
        cor_maj_46_n16) );
  OR2_X1 cor_maj_46_U6 ( .A1(cor_maj_46_n20), .A2(cor_maj_46_n19), .ZN(
        cor_maj_46_n24) );
  XOR2_X1 cor_maj_46_U5 ( .A(cor_maj_46_n22), .B(cor_maj_46_n21), .Z(
        cor_maj_46_n23) );
  NAND2_X1 cor_maj_46_U4 ( .A1(cor_maj_46_n24), .A2(cor_maj_46_n23), .ZN(
        cor_maj_46_n25) );
  NAND2_X1 cor_maj_46_U3 ( .A1(cor_maj_46_n20), .A2(cor_maj_46_n19), .ZN(
        cor_maj_46_n26) );
  NAND2_X1 cor_maj_46_U2 ( .A1(cor_maj_46_n26), .A2(cor_maj_46_n25), .ZN(
        cor_maj_46_port_o) );
  NAND2_X1 cor_maj_47_U15 ( .A1(cor_maj_47_n21), .A2(cor_maj_47_n22), .ZN(
        cor_maj_47_n17) );
  NAND2_X1 cor_maj_47_U14 ( .A1(mul_port_c_0_0[3]), .A2(mul_port_c_0_0[4]), 
        .ZN(cor_maj_47_n18) );
  NAND2_X1 cor_maj_47_U13 ( .A1(cor_maj_47_n18), .A2(cor_maj_47_n17), .ZN(
        cor_maj_47_n19) );
  NAND2_X1 cor_maj_47_U12 ( .A1(mul_port_c_0_0[2]), .A2(cor_maj_47_n16), .ZN(
        cor_maj_47_n14) );
  NAND2_X1 cor_maj_47_U11 ( .A1(mul_port_c_0_0[0]), .A2(mul_port_c_0_0[1]), 
        .ZN(cor_maj_47_n15) );
  NAND2_X1 cor_maj_47_U10 ( .A1(cor_maj_47_n15), .A2(cor_maj_47_n14), .ZN(
        cor_maj_47_n20) );
  XOR2_X1 cor_maj_47_U9 ( .A(mul_port_c_0_0[2]), .B(cor_maj_47_n16), .Z(
        cor_maj_47_n21) );
  XOR2_X1 cor_maj_47_U8 ( .A(mul_port_c_0_0[3]), .B(mul_port_c_0_0[4]), .Z(
        cor_maj_47_n22) );
  XOR2_X1 cor_maj_47_U7 ( .A(mul_port_c_0_0[0]), .B(mul_port_c_0_0[1]), .Z(
        cor_maj_47_n16) );
  OR2_X1 cor_maj_47_U6 ( .A1(cor_maj_47_n20), .A2(cor_maj_47_n19), .ZN(
        cor_maj_47_n24) );
  XOR2_X1 cor_maj_47_U5 ( .A(cor_maj_47_n22), .B(cor_maj_47_n21), .Z(
        cor_maj_47_n23) );
  NAND2_X1 cor_maj_47_U4 ( .A1(cor_maj_47_n24), .A2(cor_maj_47_n23), .ZN(
        cor_maj_47_n25) );
  NAND2_X1 cor_maj_47_U3 ( .A1(cor_maj_47_n20), .A2(cor_maj_47_n19), .ZN(
        cor_maj_47_n26) );
  NAND2_X1 cor_maj_47_U2 ( .A1(cor_maj_47_n26), .A2(cor_maj_47_n25), .ZN(
        cor_maj_47_port_o) );
  NAND2_X1 cor_maj_48_U15 ( .A1(cor_maj_48_n21), .A2(cor_maj_48_n22), .ZN(
        cor_maj_48_n17) );
  NAND2_X1 cor_maj_48_U14 ( .A1(mul_port_c_0_0[3]), .A2(mul_port_c_0_0[4]), 
        .ZN(cor_maj_48_n18) );
  NAND2_X1 cor_maj_48_U13 ( .A1(cor_maj_48_n18), .A2(cor_maj_48_n17), .ZN(
        cor_maj_48_n19) );
  NAND2_X1 cor_maj_48_U12 ( .A1(mul_port_c_0_0[2]), .A2(cor_maj_48_n16), .ZN(
        cor_maj_48_n14) );
  NAND2_X1 cor_maj_48_U11 ( .A1(mul_port_c_0_0[0]), .A2(mul_port_c_0_0[1]), 
        .ZN(cor_maj_48_n15) );
  NAND2_X1 cor_maj_48_U10 ( .A1(cor_maj_48_n15), .A2(cor_maj_48_n14), .ZN(
        cor_maj_48_n20) );
  XOR2_X1 cor_maj_48_U9 ( .A(mul_port_c_0_0[2]), .B(cor_maj_48_n16), .Z(
        cor_maj_48_n21) );
  XOR2_X1 cor_maj_48_U8 ( .A(mul_port_c_0_0[3]), .B(mul_port_c_0_0[4]), .Z(
        cor_maj_48_n22) );
  XOR2_X1 cor_maj_48_U7 ( .A(mul_port_c_0_0[0]), .B(mul_port_c_0_0[1]), .Z(
        cor_maj_48_n16) );
  OR2_X1 cor_maj_48_U6 ( .A1(cor_maj_48_n20), .A2(cor_maj_48_n19), .ZN(
        cor_maj_48_n24) );
  XOR2_X1 cor_maj_48_U5 ( .A(cor_maj_48_n22), .B(cor_maj_48_n21), .Z(
        cor_maj_48_n23) );
  NAND2_X1 cor_maj_48_U4 ( .A1(cor_maj_48_n24), .A2(cor_maj_48_n23), .ZN(
        cor_maj_48_n25) );
  NAND2_X1 cor_maj_48_U3 ( .A1(cor_maj_48_n20), .A2(cor_maj_48_n19), .ZN(
        cor_maj_48_n26) );
  NAND2_X1 cor_maj_48_U2 ( .A1(cor_maj_48_n26), .A2(cor_maj_48_n25), .ZN(
        cor_maj_48_port_o) );
  NAND2_X1 cor_maj_49_U15 ( .A1(cor_maj_49_n21), .A2(cor_maj_49_n22), .ZN(
        cor_maj_49_n17) );
  NAND2_X1 cor_maj_49_U14 ( .A1(mul_port_c_0_0[3]), .A2(mul_port_c_0_0[4]), 
        .ZN(cor_maj_49_n18) );
  NAND2_X1 cor_maj_49_U13 ( .A1(cor_maj_49_n18), .A2(cor_maj_49_n17), .ZN(
        cor_maj_49_n19) );
  NAND2_X1 cor_maj_49_U12 ( .A1(mul_port_c_0_0[2]), .A2(cor_maj_49_n16), .ZN(
        cor_maj_49_n14) );
  NAND2_X1 cor_maj_49_U11 ( .A1(mul_port_c_0_0[0]), .A2(mul_port_c_0_0[1]), 
        .ZN(cor_maj_49_n15) );
  NAND2_X1 cor_maj_49_U10 ( .A1(cor_maj_49_n15), .A2(cor_maj_49_n14), .ZN(
        cor_maj_49_n20) );
  XOR2_X1 cor_maj_49_U9 ( .A(mul_port_c_0_0[2]), .B(cor_maj_49_n16), .Z(
        cor_maj_49_n21) );
  XOR2_X1 cor_maj_49_U8 ( .A(mul_port_c_0_0[3]), .B(mul_port_c_0_0[4]), .Z(
        cor_maj_49_n22) );
  XOR2_X1 cor_maj_49_U7 ( .A(mul_port_c_0_0[0]), .B(mul_port_c_0_0[1]), .Z(
        cor_maj_49_n16) );
  OR2_X1 cor_maj_49_U6 ( .A1(cor_maj_49_n20), .A2(cor_maj_49_n19), .ZN(
        cor_maj_49_n24) );
  XOR2_X1 cor_maj_49_U5 ( .A(cor_maj_49_n22), .B(cor_maj_49_n21), .Z(
        cor_maj_49_n23) );
  NAND2_X1 cor_maj_49_U4 ( .A1(cor_maj_49_n24), .A2(cor_maj_49_n23), .ZN(
        cor_maj_49_n25) );
  NAND2_X1 cor_maj_49_U3 ( .A1(cor_maj_49_n20), .A2(cor_maj_49_n19), .ZN(
        cor_maj_49_n26) );
  NAND2_X1 cor_maj_49_U2 ( .A1(cor_maj_49_n26), .A2(cor_maj_49_n25), .ZN(
        cor_maj_49_port_o) );
  NAND2_X1 cor_maj_50_U15 ( .A1(cor_maj_50_n21), .A2(cor_maj_50_n22), .ZN(
        cor_maj_50_n17) );
  NAND2_X1 cor_maj_50_U14 ( .A1(mul_port_c_0_1[3]), .A2(mul_port_c_0_1[4]), 
        .ZN(cor_maj_50_n18) );
  NAND2_X1 cor_maj_50_U13 ( .A1(cor_maj_50_n18), .A2(cor_maj_50_n17), .ZN(
        cor_maj_50_n19) );
  NAND2_X1 cor_maj_50_U12 ( .A1(mul_port_c_0_1[2]), .A2(cor_maj_50_n16), .ZN(
        cor_maj_50_n14) );
  NAND2_X1 cor_maj_50_U11 ( .A1(mul_port_c_0_1[0]), .A2(mul_port_c_0_1[1]), 
        .ZN(cor_maj_50_n15) );
  NAND2_X1 cor_maj_50_U10 ( .A1(cor_maj_50_n15), .A2(cor_maj_50_n14), .ZN(
        cor_maj_50_n20) );
  XOR2_X1 cor_maj_50_U9 ( .A(mul_port_c_0_1[2]), .B(cor_maj_50_n16), .Z(
        cor_maj_50_n21) );
  XOR2_X1 cor_maj_50_U8 ( .A(mul_port_c_0_1[3]), .B(mul_port_c_0_1[4]), .Z(
        cor_maj_50_n22) );
  XOR2_X1 cor_maj_50_U7 ( .A(mul_port_c_0_1[0]), .B(mul_port_c_0_1[1]), .Z(
        cor_maj_50_n16) );
  OR2_X1 cor_maj_50_U6 ( .A1(cor_maj_50_n20), .A2(cor_maj_50_n19), .ZN(
        cor_maj_50_n24) );
  XOR2_X1 cor_maj_50_U5 ( .A(cor_maj_50_n22), .B(cor_maj_50_n21), .Z(
        cor_maj_50_n23) );
  NAND2_X1 cor_maj_50_U4 ( .A1(cor_maj_50_n24), .A2(cor_maj_50_n23), .ZN(
        cor_maj_50_n25) );
  NAND2_X1 cor_maj_50_U3 ( .A1(cor_maj_50_n20), .A2(cor_maj_50_n19), .ZN(
        cor_maj_50_n26) );
  NAND2_X1 cor_maj_50_U2 ( .A1(cor_maj_50_n26), .A2(cor_maj_50_n25), .ZN(
        cor_maj_50_port_o) );
  NAND2_X1 cor_maj_51_U15 ( .A1(cor_maj_51_n21), .A2(cor_maj_51_n22), .ZN(
        cor_maj_51_n17) );
  NAND2_X1 cor_maj_51_U14 ( .A1(mul_port_c_0_1[3]), .A2(mul_port_c_0_1[4]), 
        .ZN(cor_maj_51_n18) );
  NAND2_X1 cor_maj_51_U13 ( .A1(cor_maj_51_n18), .A2(cor_maj_51_n17), .ZN(
        cor_maj_51_n19) );
  NAND2_X1 cor_maj_51_U12 ( .A1(mul_port_c_0_1[2]), .A2(cor_maj_51_n16), .ZN(
        cor_maj_51_n14) );
  NAND2_X1 cor_maj_51_U11 ( .A1(mul_port_c_0_1[0]), .A2(mul_port_c_0_1[1]), 
        .ZN(cor_maj_51_n15) );
  NAND2_X1 cor_maj_51_U10 ( .A1(cor_maj_51_n15), .A2(cor_maj_51_n14), .ZN(
        cor_maj_51_n20) );
  XOR2_X1 cor_maj_51_U9 ( .A(mul_port_c_0_1[2]), .B(cor_maj_51_n16), .Z(
        cor_maj_51_n21) );
  XOR2_X1 cor_maj_51_U8 ( .A(mul_port_c_0_1[3]), .B(mul_port_c_0_1[4]), .Z(
        cor_maj_51_n22) );
  XOR2_X1 cor_maj_51_U7 ( .A(mul_port_c_0_1[0]), .B(mul_port_c_0_1[1]), .Z(
        cor_maj_51_n16) );
  OR2_X1 cor_maj_51_U6 ( .A1(cor_maj_51_n20), .A2(cor_maj_51_n19), .ZN(
        cor_maj_51_n24) );
  XOR2_X1 cor_maj_51_U5 ( .A(cor_maj_51_n22), .B(cor_maj_51_n21), .Z(
        cor_maj_51_n23) );
  NAND2_X1 cor_maj_51_U4 ( .A1(cor_maj_51_n24), .A2(cor_maj_51_n23), .ZN(
        cor_maj_51_n25) );
  NAND2_X1 cor_maj_51_U3 ( .A1(cor_maj_51_n20), .A2(cor_maj_51_n19), .ZN(
        cor_maj_51_n26) );
  NAND2_X1 cor_maj_51_U2 ( .A1(cor_maj_51_n26), .A2(cor_maj_51_n25), .ZN(
        cor_maj_51_port_o) );
  NAND2_X1 cor_maj_52_U15 ( .A1(cor_maj_52_n21), .A2(cor_maj_52_n22), .ZN(
        cor_maj_52_n17) );
  NAND2_X1 cor_maj_52_U14 ( .A1(mul_port_c_0_1[3]), .A2(mul_port_c_0_1[4]), 
        .ZN(cor_maj_52_n18) );
  NAND2_X1 cor_maj_52_U13 ( .A1(cor_maj_52_n18), .A2(cor_maj_52_n17), .ZN(
        cor_maj_52_n19) );
  NAND2_X1 cor_maj_52_U12 ( .A1(mul_port_c_0_1[2]), .A2(cor_maj_52_n16), .ZN(
        cor_maj_52_n14) );
  NAND2_X1 cor_maj_52_U11 ( .A1(mul_port_c_0_1[0]), .A2(mul_port_c_0_1[1]), 
        .ZN(cor_maj_52_n15) );
  NAND2_X1 cor_maj_52_U10 ( .A1(cor_maj_52_n15), .A2(cor_maj_52_n14), .ZN(
        cor_maj_52_n20) );
  XOR2_X1 cor_maj_52_U9 ( .A(mul_port_c_0_1[2]), .B(cor_maj_52_n16), .Z(
        cor_maj_52_n21) );
  XOR2_X1 cor_maj_52_U8 ( .A(mul_port_c_0_1[3]), .B(mul_port_c_0_1[4]), .Z(
        cor_maj_52_n22) );
  XOR2_X1 cor_maj_52_U7 ( .A(mul_port_c_0_1[0]), .B(mul_port_c_0_1[1]), .Z(
        cor_maj_52_n16) );
  OR2_X1 cor_maj_52_U6 ( .A1(cor_maj_52_n20), .A2(cor_maj_52_n19), .ZN(
        cor_maj_52_n24) );
  XOR2_X1 cor_maj_52_U5 ( .A(cor_maj_52_n22), .B(cor_maj_52_n21), .Z(
        cor_maj_52_n23) );
  NAND2_X1 cor_maj_52_U4 ( .A1(cor_maj_52_n24), .A2(cor_maj_52_n23), .ZN(
        cor_maj_52_n25) );
  NAND2_X1 cor_maj_52_U3 ( .A1(cor_maj_52_n20), .A2(cor_maj_52_n19), .ZN(
        cor_maj_52_n26) );
  NAND2_X1 cor_maj_52_U2 ( .A1(cor_maj_52_n26), .A2(cor_maj_52_n25), .ZN(
        cor_maj_52_port_o) );
  NAND2_X1 cor_maj_53_U15 ( .A1(cor_maj_53_n21), .A2(cor_maj_53_n22), .ZN(
        cor_maj_53_n17) );
  NAND2_X1 cor_maj_53_U14 ( .A1(mul_port_c_0_1[3]), .A2(mul_port_c_0_1[4]), 
        .ZN(cor_maj_53_n18) );
  NAND2_X1 cor_maj_53_U13 ( .A1(cor_maj_53_n18), .A2(cor_maj_53_n17), .ZN(
        cor_maj_53_n19) );
  NAND2_X1 cor_maj_53_U12 ( .A1(mul_port_c_0_1[2]), .A2(cor_maj_53_n16), .ZN(
        cor_maj_53_n14) );
  NAND2_X1 cor_maj_53_U11 ( .A1(mul_port_c_0_1[0]), .A2(mul_port_c_0_1[1]), 
        .ZN(cor_maj_53_n15) );
  NAND2_X1 cor_maj_53_U10 ( .A1(cor_maj_53_n15), .A2(cor_maj_53_n14), .ZN(
        cor_maj_53_n20) );
  XOR2_X1 cor_maj_53_U9 ( .A(mul_port_c_0_1[2]), .B(cor_maj_53_n16), .Z(
        cor_maj_53_n21) );
  XOR2_X1 cor_maj_53_U8 ( .A(mul_port_c_0_1[3]), .B(mul_port_c_0_1[4]), .Z(
        cor_maj_53_n22) );
  XOR2_X1 cor_maj_53_U7 ( .A(mul_port_c_0_1[0]), .B(mul_port_c_0_1[1]), .Z(
        cor_maj_53_n16) );
  OR2_X1 cor_maj_53_U6 ( .A1(cor_maj_53_n20), .A2(cor_maj_53_n19), .ZN(
        cor_maj_53_n24) );
  XOR2_X1 cor_maj_53_U5 ( .A(cor_maj_53_n22), .B(cor_maj_53_n21), .Z(
        cor_maj_53_n23) );
  NAND2_X1 cor_maj_53_U4 ( .A1(cor_maj_53_n24), .A2(cor_maj_53_n23), .ZN(
        cor_maj_53_n25) );
  NAND2_X1 cor_maj_53_U3 ( .A1(cor_maj_53_n20), .A2(cor_maj_53_n19), .ZN(
        cor_maj_53_n26) );
  NAND2_X1 cor_maj_53_U2 ( .A1(cor_maj_53_n26), .A2(cor_maj_53_n25), .ZN(
        cor_maj_53_port_o) );
  NAND2_X1 cor_maj_54_U15 ( .A1(cor_maj_54_n21), .A2(cor_maj_54_n22), .ZN(
        cor_maj_54_n17) );
  NAND2_X1 cor_maj_54_U14 ( .A1(mul_port_c_0_1[3]), .A2(mul_port_c_0_1[4]), 
        .ZN(cor_maj_54_n18) );
  NAND2_X1 cor_maj_54_U13 ( .A1(cor_maj_54_n18), .A2(cor_maj_54_n17), .ZN(
        cor_maj_54_n19) );
  NAND2_X1 cor_maj_54_U12 ( .A1(mul_port_c_0_1[2]), .A2(cor_maj_54_n16), .ZN(
        cor_maj_54_n14) );
  NAND2_X1 cor_maj_54_U11 ( .A1(mul_port_c_0_1[0]), .A2(mul_port_c_0_1[1]), 
        .ZN(cor_maj_54_n15) );
  NAND2_X1 cor_maj_54_U10 ( .A1(cor_maj_54_n15), .A2(cor_maj_54_n14), .ZN(
        cor_maj_54_n20) );
  XOR2_X1 cor_maj_54_U9 ( .A(mul_port_c_0_1[2]), .B(cor_maj_54_n16), .Z(
        cor_maj_54_n21) );
  XOR2_X1 cor_maj_54_U8 ( .A(mul_port_c_0_1[3]), .B(mul_port_c_0_1[4]), .Z(
        cor_maj_54_n22) );
  XOR2_X1 cor_maj_54_U7 ( .A(mul_port_c_0_1[0]), .B(mul_port_c_0_1[1]), .Z(
        cor_maj_54_n16) );
  OR2_X1 cor_maj_54_U6 ( .A1(cor_maj_54_n20), .A2(cor_maj_54_n19), .ZN(
        cor_maj_54_n24) );
  XOR2_X1 cor_maj_54_U5 ( .A(cor_maj_54_n22), .B(cor_maj_54_n21), .Z(
        cor_maj_54_n23) );
  NAND2_X1 cor_maj_54_U4 ( .A1(cor_maj_54_n24), .A2(cor_maj_54_n23), .ZN(
        cor_maj_54_n25) );
  NAND2_X1 cor_maj_54_U3 ( .A1(cor_maj_54_n20), .A2(cor_maj_54_n19), .ZN(
        cor_maj_54_n26) );
  NAND2_X1 cor_maj_54_U2 ( .A1(cor_maj_54_n26), .A2(cor_maj_54_n25), .ZN(
        cor_maj_54_port_o) );
  NAND2_X1 cor_maj_55_U15 ( .A1(cor_maj_55_n21), .A2(cor_maj_55_n22), .ZN(
        cor_maj_55_n17) );
  NAND2_X1 cor_maj_55_U14 ( .A1(mul_port_c_0_2[3]), .A2(mul_port_c_0_2[4]), 
        .ZN(cor_maj_55_n18) );
  NAND2_X1 cor_maj_55_U13 ( .A1(cor_maj_55_n18), .A2(cor_maj_55_n17), .ZN(
        cor_maj_55_n19) );
  NAND2_X1 cor_maj_55_U12 ( .A1(mul_port_c_0_2[2]), .A2(cor_maj_55_n16), .ZN(
        cor_maj_55_n14) );
  NAND2_X1 cor_maj_55_U11 ( .A1(mul_port_c_0_2[0]), .A2(mul_port_c_0_2[1]), 
        .ZN(cor_maj_55_n15) );
  NAND2_X1 cor_maj_55_U10 ( .A1(cor_maj_55_n15), .A2(cor_maj_55_n14), .ZN(
        cor_maj_55_n20) );
  XOR2_X1 cor_maj_55_U9 ( .A(mul_port_c_0_2[2]), .B(cor_maj_55_n16), .Z(
        cor_maj_55_n21) );
  XOR2_X1 cor_maj_55_U8 ( .A(mul_port_c_0_2[3]), .B(mul_port_c_0_2[4]), .Z(
        cor_maj_55_n22) );
  XOR2_X1 cor_maj_55_U7 ( .A(mul_port_c_0_2[0]), .B(mul_port_c_0_2[1]), .Z(
        cor_maj_55_n16) );
  OR2_X1 cor_maj_55_U6 ( .A1(cor_maj_55_n20), .A2(cor_maj_55_n19), .ZN(
        cor_maj_55_n24) );
  XOR2_X1 cor_maj_55_U5 ( .A(cor_maj_55_n22), .B(cor_maj_55_n21), .Z(
        cor_maj_55_n23) );
  NAND2_X1 cor_maj_55_U4 ( .A1(cor_maj_55_n24), .A2(cor_maj_55_n23), .ZN(
        cor_maj_55_n25) );
  NAND2_X1 cor_maj_55_U3 ( .A1(cor_maj_55_n20), .A2(cor_maj_55_n19), .ZN(
        cor_maj_55_n26) );
  NAND2_X1 cor_maj_55_U2 ( .A1(cor_maj_55_n26), .A2(cor_maj_55_n25), .ZN(
        cor_maj_55_port_o) );
  NAND2_X1 cor_maj_56_U15 ( .A1(cor_maj_56_n21), .A2(cor_maj_56_n22), .ZN(
        cor_maj_56_n17) );
  NAND2_X1 cor_maj_56_U14 ( .A1(mul_port_c_0_2[3]), .A2(mul_port_c_0_2[4]), 
        .ZN(cor_maj_56_n18) );
  NAND2_X1 cor_maj_56_U13 ( .A1(cor_maj_56_n18), .A2(cor_maj_56_n17), .ZN(
        cor_maj_56_n19) );
  NAND2_X1 cor_maj_56_U12 ( .A1(mul_port_c_0_2[2]), .A2(cor_maj_56_n16), .ZN(
        cor_maj_56_n14) );
  NAND2_X1 cor_maj_56_U11 ( .A1(mul_port_c_0_2[0]), .A2(mul_port_c_0_2[1]), 
        .ZN(cor_maj_56_n15) );
  NAND2_X1 cor_maj_56_U10 ( .A1(cor_maj_56_n15), .A2(cor_maj_56_n14), .ZN(
        cor_maj_56_n20) );
  XOR2_X1 cor_maj_56_U9 ( .A(mul_port_c_0_2[2]), .B(cor_maj_56_n16), .Z(
        cor_maj_56_n21) );
  XOR2_X1 cor_maj_56_U8 ( .A(mul_port_c_0_2[3]), .B(mul_port_c_0_2[4]), .Z(
        cor_maj_56_n22) );
  XOR2_X1 cor_maj_56_U7 ( .A(mul_port_c_0_2[0]), .B(mul_port_c_0_2[1]), .Z(
        cor_maj_56_n16) );
  OR2_X1 cor_maj_56_U6 ( .A1(cor_maj_56_n20), .A2(cor_maj_56_n19), .ZN(
        cor_maj_56_n24) );
  XOR2_X1 cor_maj_56_U5 ( .A(cor_maj_56_n22), .B(cor_maj_56_n21), .Z(
        cor_maj_56_n23) );
  NAND2_X1 cor_maj_56_U4 ( .A1(cor_maj_56_n24), .A2(cor_maj_56_n23), .ZN(
        cor_maj_56_n25) );
  NAND2_X1 cor_maj_56_U3 ( .A1(cor_maj_56_n20), .A2(cor_maj_56_n19), .ZN(
        cor_maj_56_n26) );
  NAND2_X1 cor_maj_56_U2 ( .A1(cor_maj_56_n26), .A2(cor_maj_56_n25), .ZN(
        cor_maj_56_port_o) );
  NAND2_X1 cor_maj_57_U15 ( .A1(cor_maj_57_n21), .A2(cor_maj_57_n22), .ZN(
        cor_maj_57_n17) );
  NAND2_X1 cor_maj_57_U14 ( .A1(mul_port_c_0_2[3]), .A2(mul_port_c_0_2[4]), 
        .ZN(cor_maj_57_n18) );
  NAND2_X1 cor_maj_57_U13 ( .A1(cor_maj_57_n18), .A2(cor_maj_57_n17), .ZN(
        cor_maj_57_n19) );
  NAND2_X1 cor_maj_57_U12 ( .A1(mul_port_c_0_2[2]), .A2(cor_maj_57_n16), .ZN(
        cor_maj_57_n14) );
  NAND2_X1 cor_maj_57_U11 ( .A1(mul_port_c_0_2[0]), .A2(mul_port_c_0_2[1]), 
        .ZN(cor_maj_57_n15) );
  NAND2_X1 cor_maj_57_U10 ( .A1(cor_maj_57_n15), .A2(cor_maj_57_n14), .ZN(
        cor_maj_57_n20) );
  XOR2_X1 cor_maj_57_U9 ( .A(mul_port_c_0_2[2]), .B(cor_maj_57_n16), .Z(
        cor_maj_57_n21) );
  XOR2_X1 cor_maj_57_U8 ( .A(mul_port_c_0_2[3]), .B(mul_port_c_0_2[4]), .Z(
        cor_maj_57_n22) );
  XOR2_X1 cor_maj_57_U7 ( .A(mul_port_c_0_2[0]), .B(mul_port_c_0_2[1]), .Z(
        cor_maj_57_n16) );
  OR2_X1 cor_maj_57_U6 ( .A1(cor_maj_57_n20), .A2(cor_maj_57_n19), .ZN(
        cor_maj_57_n24) );
  XOR2_X1 cor_maj_57_U5 ( .A(cor_maj_57_n22), .B(cor_maj_57_n21), .Z(
        cor_maj_57_n23) );
  NAND2_X1 cor_maj_57_U4 ( .A1(cor_maj_57_n24), .A2(cor_maj_57_n23), .ZN(
        cor_maj_57_n25) );
  NAND2_X1 cor_maj_57_U3 ( .A1(cor_maj_57_n20), .A2(cor_maj_57_n19), .ZN(
        cor_maj_57_n26) );
  NAND2_X1 cor_maj_57_U2 ( .A1(cor_maj_57_n26), .A2(cor_maj_57_n25), .ZN(
        cor_maj_57_port_o) );
  NAND2_X1 cor_maj_58_U15 ( .A1(cor_maj_58_n21), .A2(cor_maj_58_n22), .ZN(
        cor_maj_58_n17) );
  NAND2_X1 cor_maj_58_U14 ( .A1(mul_port_c_0_2[3]), .A2(mul_port_c_0_2[4]), 
        .ZN(cor_maj_58_n18) );
  NAND2_X1 cor_maj_58_U13 ( .A1(cor_maj_58_n18), .A2(cor_maj_58_n17), .ZN(
        cor_maj_58_n19) );
  NAND2_X1 cor_maj_58_U12 ( .A1(mul_port_c_0_2[2]), .A2(cor_maj_58_n16), .ZN(
        cor_maj_58_n14) );
  NAND2_X1 cor_maj_58_U11 ( .A1(mul_port_c_0_2[0]), .A2(mul_port_c_0_2[1]), 
        .ZN(cor_maj_58_n15) );
  NAND2_X1 cor_maj_58_U10 ( .A1(cor_maj_58_n15), .A2(cor_maj_58_n14), .ZN(
        cor_maj_58_n20) );
  XOR2_X1 cor_maj_58_U9 ( .A(mul_port_c_0_2[2]), .B(cor_maj_58_n16), .Z(
        cor_maj_58_n21) );
  XOR2_X1 cor_maj_58_U8 ( .A(mul_port_c_0_2[3]), .B(mul_port_c_0_2[4]), .Z(
        cor_maj_58_n22) );
  XOR2_X1 cor_maj_58_U7 ( .A(mul_port_c_0_2[0]), .B(mul_port_c_0_2[1]), .Z(
        cor_maj_58_n16) );
  OR2_X1 cor_maj_58_U6 ( .A1(cor_maj_58_n20), .A2(cor_maj_58_n19), .ZN(
        cor_maj_58_n24) );
  XOR2_X1 cor_maj_58_U5 ( .A(cor_maj_58_n22), .B(cor_maj_58_n21), .Z(
        cor_maj_58_n23) );
  NAND2_X1 cor_maj_58_U4 ( .A1(cor_maj_58_n24), .A2(cor_maj_58_n23), .ZN(
        cor_maj_58_n25) );
  NAND2_X1 cor_maj_58_U3 ( .A1(cor_maj_58_n20), .A2(cor_maj_58_n19), .ZN(
        cor_maj_58_n26) );
  NAND2_X1 cor_maj_58_U2 ( .A1(cor_maj_58_n26), .A2(cor_maj_58_n25), .ZN(
        cor_maj_58_port_o) );
  NAND2_X1 cor_maj_59_U15 ( .A1(cor_maj_59_n21), .A2(cor_maj_59_n22), .ZN(
        cor_maj_59_n17) );
  NAND2_X1 cor_maj_59_U14 ( .A1(mul_port_c_0_2[3]), .A2(mul_port_c_0_2[4]), 
        .ZN(cor_maj_59_n18) );
  NAND2_X1 cor_maj_59_U13 ( .A1(cor_maj_59_n18), .A2(cor_maj_59_n17), .ZN(
        cor_maj_59_n19) );
  NAND2_X1 cor_maj_59_U12 ( .A1(mul_port_c_0_2[2]), .A2(cor_maj_59_n16), .ZN(
        cor_maj_59_n14) );
  NAND2_X1 cor_maj_59_U11 ( .A1(mul_port_c_0_2[0]), .A2(mul_port_c_0_2[1]), 
        .ZN(cor_maj_59_n15) );
  NAND2_X1 cor_maj_59_U10 ( .A1(cor_maj_59_n15), .A2(cor_maj_59_n14), .ZN(
        cor_maj_59_n20) );
  XOR2_X1 cor_maj_59_U9 ( .A(mul_port_c_0_2[2]), .B(cor_maj_59_n16), .Z(
        cor_maj_59_n21) );
  XOR2_X1 cor_maj_59_U8 ( .A(mul_port_c_0_2[3]), .B(mul_port_c_0_2[4]), .Z(
        cor_maj_59_n22) );
  XOR2_X1 cor_maj_59_U7 ( .A(mul_port_c_0_2[0]), .B(mul_port_c_0_2[1]), .Z(
        cor_maj_59_n16) );
  OR2_X1 cor_maj_59_U6 ( .A1(cor_maj_59_n20), .A2(cor_maj_59_n19), .ZN(
        cor_maj_59_n24) );
  XOR2_X1 cor_maj_59_U5 ( .A(cor_maj_59_n22), .B(cor_maj_59_n21), .Z(
        cor_maj_59_n23) );
  NAND2_X1 cor_maj_59_U4 ( .A1(cor_maj_59_n24), .A2(cor_maj_59_n23), .ZN(
        cor_maj_59_n25) );
  NAND2_X1 cor_maj_59_U3 ( .A1(cor_maj_59_n20), .A2(cor_maj_59_n19), .ZN(
        cor_maj_59_n26) );
  NAND2_X1 cor_maj_59_U2 ( .A1(cor_maj_59_n26), .A2(cor_maj_59_n25), .ZN(
        cor_maj_59_port_o) );
  NAND2_X1 cor_maj_60_U15 ( .A1(cor_maj_60_n21), .A2(cor_maj_60_n22), .ZN(
        cor_maj_60_n17) );
  NAND2_X1 cor_maj_60_U14 ( .A1(mul_port_c_1_0[3]), .A2(mul_port_c_1_0[4]), 
        .ZN(cor_maj_60_n18) );
  NAND2_X1 cor_maj_60_U13 ( .A1(cor_maj_60_n18), .A2(cor_maj_60_n17), .ZN(
        cor_maj_60_n19) );
  NAND2_X1 cor_maj_60_U12 ( .A1(mul_port_c_1_0[2]), .A2(cor_maj_60_n16), .ZN(
        cor_maj_60_n14) );
  NAND2_X1 cor_maj_60_U11 ( .A1(mul_port_c_1_0[0]), .A2(mul_port_c_1_0[1]), 
        .ZN(cor_maj_60_n15) );
  NAND2_X1 cor_maj_60_U10 ( .A1(cor_maj_60_n15), .A2(cor_maj_60_n14), .ZN(
        cor_maj_60_n20) );
  XOR2_X1 cor_maj_60_U9 ( .A(mul_port_c_1_0[2]), .B(cor_maj_60_n16), .Z(
        cor_maj_60_n21) );
  XOR2_X1 cor_maj_60_U8 ( .A(mul_port_c_1_0[3]), .B(mul_port_c_1_0[4]), .Z(
        cor_maj_60_n22) );
  XOR2_X1 cor_maj_60_U7 ( .A(mul_port_c_1_0[0]), .B(mul_port_c_1_0[1]), .Z(
        cor_maj_60_n16) );
  OR2_X1 cor_maj_60_U6 ( .A1(cor_maj_60_n20), .A2(cor_maj_60_n19), .ZN(
        cor_maj_60_n24) );
  XOR2_X1 cor_maj_60_U5 ( .A(cor_maj_60_n22), .B(cor_maj_60_n21), .Z(
        cor_maj_60_n23) );
  NAND2_X1 cor_maj_60_U4 ( .A1(cor_maj_60_n24), .A2(cor_maj_60_n23), .ZN(
        cor_maj_60_n25) );
  NAND2_X1 cor_maj_60_U3 ( .A1(cor_maj_60_n20), .A2(cor_maj_60_n19), .ZN(
        cor_maj_60_n26) );
  NAND2_X1 cor_maj_60_U2 ( .A1(cor_maj_60_n26), .A2(cor_maj_60_n25), .ZN(
        cor_maj_60_port_o) );
  NAND2_X1 cor_maj_61_U15 ( .A1(cor_maj_61_n21), .A2(cor_maj_61_n22), .ZN(
        cor_maj_61_n17) );
  NAND2_X1 cor_maj_61_U14 ( .A1(mul_port_c_1_0[3]), .A2(mul_port_c_1_0[4]), 
        .ZN(cor_maj_61_n18) );
  NAND2_X1 cor_maj_61_U13 ( .A1(cor_maj_61_n18), .A2(cor_maj_61_n17), .ZN(
        cor_maj_61_n19) );
  NAND2_X1 cor_maj_61_U12 ( .A1(mul_port_c_1_0[2]), .A2(cor_maj_61_n16), .ZN(
        cor_maj_61_n14) );
  NAND2_X1 cor_maj_61_U11 ( .A1(mul_port_c_1_0[0]), .A2(mul_port_c_1_0[1]), 
        .ZN(cor_maj_61_n15) );
  NAND2_X1 cor_maj_61_U10 ( .A1(cor_maj_61_n15), .A2(cor_maj_61_n14), .ZN(
        cor_maj_61_n20) );
  XOR2_X1 cor_maj_61_U9 ( .A(mul_port_c_1_0[2]), .B(cor_maj_61_n16), .Z(
        cor_maj_61_n21) );
  XOR2_X1 cor_maj_61_U8 ( .A(mul_port_c_1_0[3]), .B(mul_port_c_1_0[4]), .Z(
        cor_maj_61_n22) );
  XOR2_X1 cor_maj_61_U7 ( .A(mul_port_c_1_0[0]), .B(mul_port_c_1_0[1]), .Z(
        cor_maj_61_n16) );
  OR2_X1 cor_maj_61_U6 ( .A1(cor_maj_61_n20), .A2(cor_maj_61_n19), .ZN(
        cor_maj_61_n24) );
  XOR2_X1 cor_maj_61_U5 ( .A(cor_maj_61_n22), .B(cor_maj_61_n21), .Z(
        cor_maj_61_n23) );
  NAND2_X1 cor_maj_61_U4 ( .A1(cor_maj_61_n24), .A2(cor_maj_61_n23), .ZN(
        cor_maj_61_n25) );
  NAND2_X1 cor_maj_61_U3 ( .A1(cor_maj_61_n20), .A2(cor_maj_61_n19), .ZN(
        cor_maj_61_n26) );
  NAND2_X1 cor_maj_61_U2 ( .A1(cor_maj_61_n26), .A2(cor_maj_61_n25), .ZN(
        cor_maj_61_port_o) );
  NAND2_X1 cor_maj_62_U15 ( .A1(cor_maj_62_n21), .A2(cor_maj_62_n22), .ZN(
        cor_maj_62_n17) );
  NAND2_X1 cor_maj_62_U14 ( .A1(mul_port_c_1_0[3]), .A2(mul_port_c_1_0[4]), 
        .ZN(cor_maj_62_n18) );
  NAND2_X1 cor_maj_62_U13 ( .A1(cor_maj_62_n18), .A2(cor_maj_62_n17), .ZN(
        cor_maj_62_n19) );
  NAND2_X1 cor_maj_62_U12 ( .A1(mul_port_c_1_0[2]), .A2(cor_maj_62_n16), .ZN(
        cor_maj_62_n14) );
  NAND2_X1 cor_maj_62_U11 ( .A1(mul_port_c_1_0[0]), .A2(mul_port_c_1_0[1]), 
        .ZN(cor_maj_62_n15) );
  NAND2_X1 cor_maj_62_U10 ( .A1(cor_maj_62_n15), .A2(cor_maj_62_n14), .ZN(
        cor_maj_62_n20) );
  XOR2_X1 cor_maj_62_U9 ( .A(mul_port_c_1_0[2]), .B(cor_maj_62_n16), .Z(
        cor_maj_62_n21) );
  XOR2_X1 cor_maj_62_U8 ( .A(mul_port_c_1_0[3]), .B(mul_port_c_1_0[4]), .Z(
        cor_maj_62_n22) );
  XOR2_X1 cor_maj_62_U7 ( .A(mul_port_c_1_0[0]), .B(mul_port_c_1_0[1]), .Z(
        cor_maj_62_n16) );
  OR2_X1 cor_maj_62_U6 ( .A1(cor_maj_62_n20), .A2(cor_maj_62_n19), .ZN(
        cor_maj_62_n24) );
  XOR2_X1 cor_maj_62_U5 ( .A(cor_maj_62_n22), .B(cor_maj_62_n21), .Z(
        cor_maj_62_n23) );
  NAND2_X1 cor_maj_62_U4 ( .A1(cor_maj_62_n24), .A2(cor_maj_62_n23), .ZN(
        cor_maj_62_n25) );
  NAND2_X1 cor_maj_62_U3 ( .A1(cor_maj_62_n20), .A2(cor_maj_62_n19), .ZN(
        cor_maj_62_n26) );
  NAND2_X1 cor_maj_62_U2 ( .A1(cor_maj_62_n26), .A2(cor_maj_62_n25), .ZN(
        cor_maj_62_port_o) );
  NAND2_X1 cor_maj_63_U15 ( .A1(cor_maj_63_n21), .A2(cor_maj_63_n22), .ZN(
        cor_maj_63_n17) );
  NAND2_X1 cor_maj_63_U14 ( .A1(mul_port_c_1_0[3]), .A2(mul_port_c_1_0[4]), 
        .ZN(cor_maj_63_n18) );
  NAND2_X1 cor_maj_63_U13 ( .A1(cor_maj_63_n18), .A2(cor_maj_63_n17), .ZN(
        cor_maj_63_n19) );
  NAND2_X1 cor_maj_63_U12 ( .A1(mul_port_c_1_0[2]), .A2(cor_maj_63_n16), .ZN(
        cor_maj_63_n14) );
  NAND2_X1 cor_maj_63_U11 ( .A1(mul_port_c_1_0[0]), .A2(mul_port_c_1_0[1]), 
        .ZN(cor_maj_63_n15) );
  NAND2_X1 cor_maj_63_U10 ( .A1(cor_maj_63_n15), .A2(cor_maj_63_n14), .ZN(
        cor_maj_63_n20) );
  XOR2_X1 cor_maj_63_U9 ( .A(mul_port_c_1_0[2]), .B(cor_maj_63_n16), .Z(
        cor_maj_63_n21) );
  XOR2_X1 cor_maj_63_U8 ( .A(mul_port_c_1_0[3]), .B(mul_port_c_1_0[4]), .Z(
        cor_maj_63_n22) );
  XOR2_X1 cor_maj_63_U7 ( .A(mul_port_c_1_0[0]), .B(mul_port_c_1_0[1]), .Z(
        cor_maj_63_n16) );
  OR2_X1 cor_maj_63_U6 ( .A1(cor_maj_63_n20), .A2(cor_maj_63_n19), .ZN(
        cor_maj_63_n24) );
  XOR2_X1 cor_maj_63_U5 ( .A(cor_maj_63_n22), .B(cor_maj_63_n21), .Z(
        cor_maj_63_n23) );
  NAND2_X1 cor_maj_63_U4 ( .A1(cor_maj_63_n24), .A2(cor_maj_63_n23), .ZN(
        cor_maj_63_n25) );
  NAND2_X1 cor_maj_63_U3 ( .A1(cor_maj_63_n20), .A2(cor_maj_63_n19), .ZN(
        cor_maj_63_n26) );
  NAND2_X1 cor_maj_63_U2 ( .A1(cor_maj_63_n26), .A2(cor_maj_63_n25), .ZN(
        cor_maj_63_port_o) );
  NAND2_X1 cor_maj_64_U15 ( .A1(cor_maj_64_n21), .A2(cor_maj_64_n22), .ZN(
        cor_maj_64_n17) );
  NAND2_X1 cor_maj_64_U14 ( .A1(mul_port_c_1_0[3]), .A2(mul_port_c_1_0[4]), 
        .ZN(cor_maj_64_n18) );
  NAND2_X1 cor_maj_64_U13 ( .A1(cor_maj_64_n18), .A2(cor_maj_64_n17), .ZN(
        cor_maj_64_n19) );
  NAND2_X1 cor_maj_64_U12 ( .A1(mul_port_c_1_0[2]), .A2(cor_maj_64_n16), .ZN(
        cor_maj_64_n14) );
  NAND2_X1 cor_maj_64_U11 ( .A1(mul_port_c_1_0[0]), .A2(mul_port_c_1_0[1]), 
        .ZN(cor_maj_64_n15) );
  NAND2_X1 cor_maj_64_U10 ( .A1(cor_maj_64_n15), .A2(cor_maj_64_n14), .ZN(
        cor_maj_64_n20) );
  XOR2_X1 cor_maj_64_U9 ( .A(mul_port_c_1_0[2]), .B(cor_maj_64_n16), .Z(
        cor_maj_64_n21) );
  XOR2_X1 cor_maj_64_U8 ( .A(mul_port_c_1_0[3]), .B(mul_port_c_1_0[4]), .Z(
        cor_maj_64_n22) );
  XOR2_X1 cor_maj_64_U7 ( .A(mul_port_c_1_0[0]), .B(mul_port_c_1_0[1]), .Z(
        cor_maj_64_n16) );
  OR2_X1 cor_maj_64_U6 ( .A1(cor_maj_64_n20), .A2(cor_maj_64_n19), .ZN(
        cor_maj_64_n24) );
  XOR2_X1 cor_maj_64_U5 ( .A(cor_maj_64_n22), .B(cor_maj_64_n21), .Z(
        cor_maj_64_n23) );
  NAND2_X1 cor_maj_64_U4 ( .A1(cor_maj_64_n24), .A2(cor_maj_64_n23), .ZN(
        cor_maj_64_n25) );
  NAND2_X1 cor_maj_64_U3 ( .A1(cor_maj_64_n20), .A2(cor_maj_64_n19), .ZN(
        cor_maj_64_n26) );
  NAND2_X1 cor_maj_64_U2 ( .A1(cor_maj_64_n26), .A2(cor_maj_64_n25), .ZN(
        cor_maj_64_port_o) );
  NAND2_X1 cor_maj_65_U15 ( .A1(cor_maj_65_n21), .A2(cor_maj_65_n22), .ZN(
        cor_maj_65_n17) );
  NAND2_X1 cor_maj_65_U14 ( .A1(mul_port_c_1_1[3]), .A2(mul_port_c_1_1[4]), 
        .ZN(cor_maj_65_n18) );
  NAND2_X1 cor_maj_65_U13 ( .A1(cor_maj_65_n18), .A2(cor_maj_65_n17), .ZN(
        cor_maj_65_n19) );
  NAND2_X1 cor_maj_65_U12 ( .A1(mul_port_c_1_1[2]), .A2(cor_maj_65_n16), .ZN(
        cor_maj_65_n14) );
  NAND2_X1 cor_maj_65_U11 ( .A1(mul_port_c_1_1[0]), .A2(mul_port_c_1_1[1]), 
        .ZN(cor_maj_65_n15) );
  NAND2_X1 cor_maj_65_U10 ( .A1(cor_maj_65_n15), .A2(cor_maj_65_n14), .ZN(
        cor_maj_65_n20) );
  XOR2_X1 cor_maj_65_U9 ( .A(mul_port_c_1_1[2]), .B(cor_maj_65_n16), .Z(
        cor_maj_65_n21) );
  XOR2_X1 cor_maj_65_U8 ( .A(mul_port_c_1_1[3]), .B(mul_port_c_1_1[4]), .Z(
        cor_maj_65_n22) );
  XOR2_X1 cor_maj_65_U7 ( .A(mul_port_c_1_1[0]), .B(mul_port_c_1_1[1]), .Z(
        cor_maj_65_n16) );
  OR2_X1 cor_maj_65_U6 ( .A1(cor_maj_65_n20), .A2(cor_maj_65_n19), .ZN(
        cor_maj_65_n24) );
  XOR2_X1 cor_maj_65_U5 ( .A(cor_maj_65_n22), .B(cor_maj_65_n21), .Z(
        cor_maj_65_n23) );
  NAND2_X1 cor_maj_65_U4 ( .A1(cor_maj_65_n24), .A2(cor_maj_65_n23), .ZN(
        cor_maj_65_n25) );
  NAND2_X1 cor_maj_65_U3 ( .A1(cor_maj_65_n20), .A2(cor_maj_65_n19), .ZN(
        cor_maj_65_n26) );
  NAND2_X1 cor_maj_65_U2 ( .A1(cor_maj_65_n26), .A2(cor_maj_65_n25), .ZN(
        cor_maj_65_port_o) );
  NAND2_X1 cor_maj_66_U15 ( .A1(cor_maj_66_n21), .A2(cor_maj_66_n22), .ZN(
        cor_maj_66_n17) );
  NAND2_X1 cor_maj_66_U14 ( .A1(mul_port_c_1_1[3]), .A2(mul_port_c_1_1[4]), 
        .ZN(cor_maj_66_n18) );
  NAND2_X1 cor_maj_66_U13 ( .A1(cor_maj_66_n18), .A2(cor_maj_66_n17), .ZN(
        cor_maj_66_n19) );
  NAND2_X1 cor_maj_66_U12 ( .A1(mul_port_c_1_1[2]), .A2(cor_maj_66_n16), .ZN(
        cor_maj_66_n14) );
  NAND2_X1 cor_maj_66_U11 ( .A1(mul_port_c_1_1[0]), .A2(mul_port_c_1_1[1]), 
        .ZN(cor_maj_66_n15) );
  NAND2_X1 cor_maj_66_U10 ( .A1(cor_maj_66_n15), .A2(cor_maj_66_n14), .ZN(
        cor_maj_66_n20) );
  XOR2_X1 cor_maj_66_U9 ( .A(mul_port_c_1_1[2]), .B(cor_maj_66_n16), .Z(
        cor_maj_66_n21) );
  XOR2_X1 cor_maj_66_U8 ( .A(mul_port_c_1_1[3]), .B(mul_port_c_1_1[4]), .Z(
        cor_maj_66_n22) );
  XOR2_X1 cor_maj_66_U7 ( .A(mul_port_c_1_1[0]), .B(mul_port_c_1_1[1]), .Z(
        cor_maj_66_n16) );
  OR2_X1 cor_maj_66_U6 ( .A1(cor_maj_66_n20), .A2(cor_maj_66_n19), .ZN(
        cor_maj_66_n24) );
  XOR2_X1 cor_maj_66_U5 ( .A(cor_maj_66_n22), .B(cor_maj_66_n21), .Z(
        cor_maj_66_n23) );
  NAND2_X1 cor_maj_66_U4 ( .A1(cor_maj_66_n24), .A2(cor_maj_66_n23), .ZN(
        cor_maj_66_n25) );
  NAND2_X1 cor_maj_66_U3 ( .A1(cor_maj_66_n20), .A2(cor_maj_66_n19), .ZN(
        cor_maj_66_n26) );
  NAND2_X1 cor_maj_66_U2 ( .A1(cor_maj_66_n26), .A2(cor_maj_66_n25), .ZN(
        cor_maj_66_port_o) );
  NAND2_X1 cor_maj_67_U15 ( .A1(cor_maj_67_n21), .A2(cor_maj_67_n22), .ZN(
        cor_maj_67_n17) );
  NAND2_X1 cor_maj_67_U14 ( .A1(mul_port_c_1_1[3]), .A2(mul_port_c_1_1[4]), 
        .ZN(cor_maj_67_n18) );
  NAND2_X1 cor_maj_67_U13 ( .A1(cor_maj_67_n18), .A2(cor_maj_67_n17), .ZN(
        cor_maj_67_n19) );
  NAND2_X1 cor_maj_67_U12 ( .A1(mul_port_c_1_1[2]), .A2(cor_maj_67_n16), .ZN(
        cor_maj_67_n14) );
  NAND2_X1 cor_maj_67_U11 ( .A1(mul_port_c_1_1[0]), .A2(mul_port_c_1_1[1]), 
        .ZN(cor_maj_67_n15) );
  NAND2_X1 cor_maj_67_U10 ( .A1(cor_maj_67_n15), .A2(cor_maj_67_n14), .ZN(
        cor_maj_67_n20) );
  XOR2_X1 cor_maj_67_U9 ( .A(mul_port_c_1_1[2]), .B(cor_maj_67_n16), .Z(
        cor_maj_67_n21) );
  XOR2_X1 cor_maj_67_U8 ( .A(mul_port_c_1_1[3]), .B(mul_port_c_1_1[4]), .Z(
        cor_maj_67_n22) );
  XOR2_X1 cor_maj_67_U7 ( .A(mul_port_c_1_1[0]), .B(mul_port_c_1_1[1]), .Z(
        cor_maj_67_n16) );
  OR2_X1 cor_maj_67_U6 ( .A1(cor_maj_67_n20), .A2(cor_maj_67_n19), .ZN(
        cor_maj_67_n24) );
  XOR2_X1 cor_maj_67_U5 ( .A(cor_maj_67_n22), .B(cor_maj_67_n21), .Z(
        cor_maj_67_n23) );
  NAND2_X1 cor_maj_67_U4 ( .A1(cor_maj_67_n24), .A2(cor_maj_67_n23), .ZN(
        cor_maj_67_n25) );
  NAND2_X1 cor_maj_67_U3 ( .A1(cor_maj_67_n20), .A2(cor_maj_67_n19), .ZN(
        cor_maj_67_n26) );
  NAND2_X1 cor_maj_67_U2 ( .A1(cor_maj_67_n26), .A2(cor_maj_67_n25), .ZN(
        cor_maj_67_port_o) );
  NAND2_X1 cor_maj_68_U15 ( .A1(cor_maj_68_n21), .A2(cor_maj_68_n22), .ZN(
        cor_maj_68_n17) );
  NAND2_X1 cor_maj_68_U14 ( .A1(mul_port_c_1_1[3]), .A2(mul_port_c_1_1[4]), 
        .ZN(cor_maj_68_n18) );
  NAND2_X1 cor_maj_68_U13 ( .A1(cor_maj_68_n18), .A2(cor_maj_68_n17), .ZN(
        cor_maj_68_n19) );
  NAND2_X1 cor_maj_68_U12 ( .A1(mul_port_c_1_1[2]), .A2(cor_maj_68_n16), .ZN(
        cor_maj_68_n14) );
  NAND2_X1 cor_maj_68_U11 ( .A1(mul_port_c_1_1[0]), .A2(mul_port_c_1_1[1]), 
        .ZN(cor_maj_68_n15) );
  NAND2_X1 cor_maj_68_U10 ( .A1(cor_maj_68_n15), .A2(cor_maj_68_n14), .ZN(
        cor_maj_68_n20) );
  XOR2_X1 cor_maj_68_U9 ( .A(mul_port_c_1_1[2]), .B(cor_maj_68_n16), .Z(
        cor_maj_68_n21) );
  XOR2_X1 cor_maj_68_U8 ( .A(mul_port_c_1_1[3]), .B(mul_port_c_1_1[4]), .Z(
        cor_maj_68_n22) );
  XOR2_X1 cor_maj_68_U7 ( .A(mul_port_c_1_1[0]), .B(mul_port_c_1_1[1]), .Z(
        cor_maj_68_n16) );
  OR2_X1 cor_maj_68_U6 ( .A1(cor_maj_68_n20), .A2(cor_maj_68_n19), .ZN(
        cor_maj_68_n24) );
  XOR2_X1 cor_maj_68_U5 ( .A(cor_maj_68_n22), .B(cor_maj_68_n21), .Z(
        cor_maj_68_n23) );
  NAND2_X1 cor_maj_68_U4 ( .A1(cor_maj_68_n24), .A2(cor_maj_68_n23), .ZN(
        cor_maj_68_n25) );
  NAND2_X1 cor_maj_68_U3 ( .A1(cor_maj_68_n20), .A2(cor_maj_68_n19), .ZN(
        cor_maj_68_n26) );
  NAND2_X1 cor_maj_68_U2 ( .A1(cor_maj_68_n26), .A2(cor_maj_68_n25), .ZN(
        cor_maj_68_port_o) );
  NAND2_X1 cor_maj_69_U15 ( .A1(cor_maj_69_n21), .A2(cor_maj_69_n22), .ZN(
        cor_maj_69_n17) );
  NAND2_X1 cor_maj_69_U14 ( .A1(mul_port_c_1_1[3]), .A2(mul_port_c_1_1[4]), 
        .ZN(cor_maj_69_n18) );
  NAND2_X1 cor_maj_69_U13 ( .A1(cor_maj_69_n18), .A2(cor_maj_69_n17), .ZN(
        cor_maj_69_n19) );
  NAND2_X1 cor_maj_69_U12 ( .A1(mul_port_c_1_1[2]), .A2(cor_maj_69_n16), .ZN(
        cor_maj_69_n14) );
  NAND2_X1 cor_maj_69_U11 ( .A1(mul_port_c_1_1[0]), .A2(mul_port_c_1_1[1]), 
        .ZN(cor_maj_69_n15) );
  NAND2_X1 cor_maj_69_U10 ( .A1(cor_maj_69_n15), .A2(cor_maj_69_n14), .ZN(
        cor_maj_69_n20) );
  XOR2_X1 cor_maj_69_U9 ( .A(mul_port_c_1_1[2]), .B(cor_maj_69_n16), .Z(
        cor_maj_69_n21) );
  XOR2_X1 cor_maj_69_U8 ( .A(mul_port_c_1_1[3]), .B(mul_port_c_1_1[4]), .Z(
        cor_maj_69_n22) );
  XOR2_X1 cor_maj_69_U7 ( .A(mul_port_c_1_1[0]), .B(mul_port_c_1_1[1]), .Z(
        cor_maj_69_n16) );
  OR2_X1 cor_maj_69_U6 ( .A1(cor_maj_69_n20), .A2(cor_maj_69_n19), .ZN(
        cor_maj_69_n24) );
  XOR2_X1 cor_maj_69_U5 ( .A(cor_maj_69_n22), .B(cor_maj_69_n21), .Z(
        cor_maj_69_n23) );
  NAND2_X1 cor_maj_69_U4 ( .A1(cor_maj_69_n24), .A2(cor_maj_69_n23), .ZN(
        cor_maj_69_n25) );
  NAND2_X1 cor_maj_69_U3 ( .A1(cor_maj_69_n20), .A2(cor_maj_69_n19), .ZN(
        cor_maj_69_n26) );
  NAND2_X1 cor_maj_69_U2 ( .A1(cor_maj_69_n26), .A2(cor_maj_69_n25), .ZN(
        cor_maj_69_port_o) );
  NAND2_X1 cor_maj_70_U15 ( .A1(cor_maj_70_n21), .A2(cor_maj_70_n22), .ZN(
        cor_maj_70_n17) );
  NAND2_X1 cor_maj_70_U14 ( .A1(mul_port_c_1_2[3]), .A2(mul_port_c_1_2[4]), 
        .ZN(cor_maj_70_n18) );
  NAND2_X1 cor_maj_70_U13 ( .A1(cor_maj_70_n18), .A2(cor_maj_70_n17), .ZN(
        cor_maj_70_n19) );
  NAND2_X1 cor_maj_70_U12 ( .A1(mul_port_c_1_2[2]), .A2(cor_maj_70_n16), .ZN(
        cor_maj_70_n14) );
  NAND2_X1 cor_maj_70_U11 ( .A1(mul_port_c_1_2[0]), .A2(mul_port_c_1_2[1]), 
        .ZN(cor_maj_70_n15) );
  NAND2_X1 cor_maj_70_U10 ( .A1(cor_maj_70_n15), .A2(cor_maj_70_n14), .ZN(
        cor_maj_70_n20) );
  XOR2_X1 cor_maj_70_U9 ( .A(mul_port_c_1_2[2]), .B(cor_maj_70_n16), .Z(
        cor_maj_70_n21) );
  XOR2_X1 cor_maj_70_U8 ( .A(mul_port_c_1_2[3]), .B(mul_port_c_1_2[4]), .Z(
        cor_maj_70_n22) );
  XOR2_X1 cor_maj_70_U7 ( .A(mul_port_c_1_2[0]), .B(mul_port_c_1_2[1]), .Z(
        cor_maj_70_n16) );
  OR2_X1 cor_maj_70_U6 ( .A1(cor_maj_70_n20), .A2(cor_maj_70_n19), .ZN(
        cor_maj_70_n24) );
  XOR2_X1 cor_maj_70_U5 ( .A(cor_maj_70_n22), .B(cor_maj_70_n21), .Z(
        cor_maj_70_n23) );
  NAND2_X1 cor_maj_70_U4 ( .A1(cor_maj_70_n24), .A2(cor_maj_70_n23), .ZN(
        cor_maj_70_n25) );
  NAND2_X1 cor_maj_70_U3 ( .A1(cor_maj_70_n20), .A2(cor_maj_70_n19), .ZN(
        cor_maj_70_n26) );
  NAND2_X1 cor_maj_70_U2 ( .A1(cor_maj_70_n26), .A2(cor_maj_70_n25), .ZN(
        cor_maj_70_port_o) );
  NAND2_X1 cor_maj_71_U15 ( .A1(cor_maj_71_n21), .A2(cor_maj_71_n22), .ZN(
        cor_maj_71_n17) );
  NAND2_X1 cor_maj_71_U14 ( .A1(mul_port_c_1_2[3]), .A2(mul_port_c_1_2[4]), 
        .ZN(cor_maj_71_n18) );
  NAND2_X1 cor_maj_71_U13 ( .A1(cor_maj_71_n18), .A2(cor_maj_71_n17), .ZN(
        cor_maj_71_n19) );
  NAND2_X1 cor_maj_71_U12 ( .A1(mul_port_c_1_2[2]), .A2(cor_maj_71_n16), .ZN(
        cor_maj_71_n14) );
  NAND2_X1 cor_maj_71_U11 ( .A1(mul_port_c_1_2[0]), .A2(mul_port_c_1_2[1]), 
        .ZN(cor_maj_71_n15) );
  NAND2_X1 cor_maj_71_U10 ( .A1(cor_maj_71_n15), .A2(cor_maj_71_n14), .ZN(
        cor_maj_71_n20) );
  XOR2_X1 cor_maj_71_U9 ( .A(mul_port_c_1_2[2]), .B(cor_maj_71_n16), .Z(
        cor_maj_71_n21) );
  XOR2_X1 cor_maj_71_U8 ( .A(mul_port_c_1_2[3]), .B(mul_port_c_1_2[4]), .Z(
        cor_maj_71_n22) );
  XOR2_X1 cor_maj_71_U7 ( .A(mul_port_c_1_2[0]), .B(mul_port_c_1_2[1]), .Z(
        cor_maj_71_n16) );
  OR2_X1 cor_maj_71_U6 ( .A1(cor_maj_71_n20), .A2(cor_maj_71_n19), .ZN(
        cor_maj_71_n24) );
  XOR2_X1 cor_maj_71_U5 ( .A(cor_maj_71_n22), .B(cor_maj_71_n21), .Z(
        cor_maj_71_n23) );
  NAND2_X1 cor_maj_71_U4 ( .A1(cor_maj_71_n24), .A2(cor_maj_71_n23), .ZN(
        cor_maj_71_n25) );
  NAND2_X1 cor_maj_71_U3 ( .A1(cor_maj_71_n20), .A2(cor_maj_71_n19), .ZN(
        cor_maj_71_n26) );
  NAND2_X1 cor_maj_71_U2 ( .A1(cor_maj_71_n26), .A2(cor_maj_71_n25), .ZN(
        cor_maj_71_port_o) );
  NAND2_X1 cor_maj_72_U15 ( .A1(cor_maj_72_n21), .A2(cor_maj_72_n22), .ZN(
        cor_maj_72_n17) );
  NAND2_X1 cor_maj_72_U14 ( .A1(mul_port_c_1_2[3]), .A2(mul_port_c_1_2[4]), 
        .ZN(cor_maj_72_n18) );
  NAND2_X1 cor_maj_72_U13 ( .A1(cor_maj_72_n18), .A2(cor_maj_72_n17), .ZN(
        cor_maj_72_n19) );
  NAND2_X1 cor_maj_72_U12 ( .A1(mul_port_c_1_2[2]), .A2(cor_maj_72_n16), .ZN(
        cor_maj_72_n14) );
  NAND2_X1 cor_maj_72_U11 ( .A1(mul_port_c_1_2[0]), .A2(mul_port_c_1_2[1]), 
        .ZN(cor_maj_72_n15) );
  NAND2_X1 cor_maj_72_U10 ( .A1(cor_maj_72_n15), .A2(cor_maj_72_n14), .ZN(
        cor_maj_72_n20) );
  XOR2_X1 cor_maj_72_U9 ( .A(mul_port_c_1_2[2]), .B(cor_maj_72_n16), .Z(
        cor_maj_72_n21) );
  XOR2_X1 cor_maj_72_U8 ( .A(mul_port_c_1_2[3]), .B(mul_port_c_1_2[4]), .Z(
        cor_maj_72_n22) );
  XOR2_X1 cor_maj_72_U7 ( .A(mul_port_c_1_2[0]), .B(mul_port_c_1_2[1]), .Z(
        cor_maj_72_n16) );
  OR2_X1 cor_maj_72_U6 ( .A1(cor_maj_72_n20), .A2(cor_maj_72_n19), .ZN(
        cor_maj_72_n24) );
  XOR2_X1 cor_maj_72_U5 ( .A(cor_maj_72_n22), .B(cor_maj_72_n21), .Z(
        cor_maj_72_n23) );
  NAND2_X1 cor_maj_72_U4 ( .A1(cor_maj_72_n24), .A2(cor_maj_72_n23), .ZN(
        cor_maj_72_n25) );
  NAND2_X1 cor_maj_72_U3 ( .A1(cor_maj_72_n20), .A2(cor_maj_72_n19), .ZN(
        cor_maj_72_n26) );
  NAND2_X1 cor_maj_72_U2 ( .A1(cor_maj_72_n26), .A2(cor_maj_72_n25), .ZN(
        cor_maj_72_port_o) );
  NAND2_X1 cor_maj_73_U15 ( .A1(cor_maj_73_n21), .A2(cor_maj_73_n22), .ZN(
        cor_maj_73_n17) );
  NAND2_X1 cor_maj_73_U14 ( .A1(mul_port_c_1_2[3]), .A2(mul_port_c_1_2[4]), 
        .ZN(cor_maj_73_n18) );
  NAND2_X1 cor_maj_73_U13 ( .A1(cor_maj_73_n18), .A2(cor_maj_73_n17), .ZN(
        cor_maj_73_n19) );
  NAND2_X1 cor_maj_73_U12 ( .A1(mul_port_c_1_2[2]), .A2(cor_maj_73_n16), .ZN(
        cor_maj_73_n14) );
  NAND2_X1 cor_maj_73_U11 ( .A1(mul_port_c_1_2[0]), .A2(mul_port_c_1_2[1]), 
        .ZN(cor_maj_73_n15) );
  NAND2_X1 cor_maj_73_U10 ( .A1(cor_maj_73_n15), .A2(cor_maj_73_n14), .ZN(
        cor_maj_73_n20) );
  XOR2_X1 cor_maj_73_U9 ( .A(mul_port_c_1_2[2]), .B(cor_maj_73_n16), .Z(
        cor_maj_73_n21) );
  XOR2_X1 cor_maj_73_U8 ( .A(mul_port_c_1_2[3]), .B(mul_port_c_1_2[4]), .Z(
        cor_maj_73_n22) );
  XOR2_X1 cor_maj_73_U7 ( .A(mul_port_c_1_2[0]), .B(mul_port_c_1_2[1]), .Z(
        cor_maj_73_n16) );
  OR2_X1 cor_maj_73_U6 ( .A1(cor_maj_73_n20), .A2(cor_maj_73_n19), .ZN(
        cor_maj_73_n24) );
  XOR2_X1 cor_maj_73_U5 ( .A(cor_maj_73_n22), .B(cor_maj_73_n21), .Z(
        cor_maj_73_n23) );
  NAND2_X1 cor_maj_73_U4 ( .A1(cor_maj_73_n24), .A2(cor_maj_73_n23), .ZN(
        cor_maj_73_n25) );
  NAND2_X1 cor_maj_73_U3 ( .A1(cor_maj_73_n20), .A2(cor_maj_73_n19), .ZN(
        cor_maj_73_n26) );
  NAND2_X1 cor_maj_73_U2 ( .A1(cor_maj_73_n26), .A2(cor_maj_73_n25), .ZN(
        cor_maj_73_port_o) );
  NAND2_X1 cor_maj_74_U15 ( .A1(cor_maj_74_n21), .A2(cor_maj_74_n22), .ZN(
        cor_maj_74_n17) );
  NAND2_X1 cor_maj_74_U14 ( .A1(mul_port_c_1_2[3]), .A2(mul_port_c_1_2[4]), 
        .ZN(cor_maj_74_n18) );
  NAND2_X1 cor_maj_74_U13 ( .A1(cor_maj_74_n18), .A2(cor_maj_74_n17), .ZN(
        cor_maj_74_n19) );
  NAND2_X1 cor_maj_74_U12 ( .A1(mul_port_c_1_2[2]), .A2(cor_maj_74_n16), .ZN(
        cor_maj_74_n14) );
  NAND2_X1 cor_maj_74_U11 ( .A1(mul_port_c_1_2[0]), .A2(mul_port_c_1_2[1]), 
        .ZN(cor_maj_74_n15) );
  NAND2_X1 cor_maj_74_U10 ( .A1(cor_maj_74_n15), .A2(cor_maj_74_n14), .ZN(
        cor_maj_74_n20) );
  XOR2_X1 cor_maj_74_U9 ( .A(mul_port_c_1_2[2]), .B(cor_maj_74_n16), .Z(
        cor_maj_74_n21) );
  XOR2_X1 cor_maj_74_U8 ( .A(mul_port_c_1_2[3]), .B(mul_port_c_1_2[4]), .Z(
        cor_maj_74_n22) );
  XOR2_X1 cor_maj_74_U7 ( .A(mul_port_c_1_2[0]), .B(mul_port_c_1_2[1]), .Z(
        cor_maj_74_n16) );
  OR2_X1 cor_maj_74_U6 ( .A1(cor_maj_74_n20), .A2(cor_maj_74_n19), .ZN(
        cor_maj_74_n24) );
  XOR2_X1 cor_maj_74_U5 ( .A(cor_maj_74_n22), .B(cor_maj_74_n21), .Z(
        cor_maj_74_n23) );
  NAND2_X1 cor_maj_74_U4 ( .A1(cor_maj_74_n24), .A2(cor_maj_74_n23), .ZN(
        cor_maj_74_n25) );
  NAND2_X1 cor_maj_74_U3 ( .A1(cor_maj_74_n20), .A2(cor_maj_74_n19), .ZN(
        cor_maj_74_n26) );
  NAND2_X1 cor_maj_74_U2 ( .A1(cor_maj_74_n26), .A2(cor_maj_74_n25), .ZN(
        cor_maj_74_port_o) );
  NAND2_X1 cor_maj_75_U15 ( .A1(cor_maj_75_n21), .A2(cor_maj_75_n22), .ZN(
        cor_maj_75_n17) );
  NAND2_X1 cor_maj_75_U14 ( .A1(mul_port_c_2_0[3]), .A2(mul_port_c_2_0[4]), 
        .ZN(cor_maj_75_n18) );
  NAND2_X1 cor_maj_75_U13 ( .A1(cor_maj_75_n18), .A2(cor_maj_75_n17), .ZN(
        cor_maj_75_n19) );
  NAND2_X1 cor_maj_75_U12 ( .A1(mul_port_c_2_0[2]), .A2(cor_maj_75_n16), .ZN(
        cor_maj_75_n14) );
  NAND2_X1 cor_maj_75_U11 ( .A1(mul_port_c_2_0[0]), .A2(mul_port_c_2_0[1]), 
        .ZN(cor_maj_75_n15) );
  NAND2_X1 cor_maj_75_U10 ( .A1(cor_maj_75_n15), .A2(cor_maj_75_n14), .ZN(
        cor_maj_75_n20) );
  XOR2_X1 cor_maj_75_U9 ( .A(mul_port_c_2_0[2]), .B(cor_maj_75_n16), .Z(
        cor_maj_75_n21) );
  XOR2_X1 cor_maj_75_U8 ( .A(mul_port_c_2_0[3]), .B(mul_port_c_2_0[4]), .Z(
        cor_maj_75_n22) );
  XOR2_X1 cor_maj_75_U7 ( .A(mul_port_c_2_0[0]), .B(mul_port_c_2_0[1]), .Z(
        cor_maj_75_n16) );
  OR2_X1 cor_maj_75_U6 ( .A1(cor_maj_75_n20), .A2(cor_maj_75_n19), .ZN(
        cor_maj_75_n24) );
  XOR2_X1 cor_maj_75_U5 ( .A(cor_maj_75_n22), .B(cor_maj_75_n21), .Z(
        cor_maj_75_n23) );
  NAND2_X1 cor_maj_75_U4 ( .A1(cor_maj_75_n24), .A2(cor_maj_75_n23), .ZN(
        cor_maj_75_n25) );
  NAND2_X1 cor_maj_75_U3 ( .A1(cor_maj_75_n20), .A2(cor_maj_75_n19), .ZN(
        cor_maj_75_n26) );
  NAND2_X1 cor_maj_75_U2 ( .A1(cor_maj_75_n26), .A2(cor_maj_75_n25), .ZN(
        cor_maj_75_port_o) );
  NAND2_X1 cor_maj_76_U15 ( .A1(cor_maj_76_n21), .A2(cor_maj_76_n22), .ZN(
        cor_maj_76_n17) );
  NAND2_X1 cor_maj_76_U14 ( .A1(mul_port_c_2_0[3]), .A2(mul_port_c_2_0[4]), 
        .ZN(cor_maj_76_n18) );
  NAND2_X1 cor_maj_76_U13 ( .A1(cor_maj_76_n18), .A2(cor_maj_76_n17), .ZN(
        cor_maj_76_n19) );
  NAND2_X1 cor_maj_76_U12 ( .A1(mul_port_c_2_0[2]), .A2(cor_maj_76_n16), .ZN(
        cor_maj_76_n14) );
  NAND2_X1 cor_maj_76_U11 ( .A1(mul_port_c_2_0[0]), .A2(mul_port_c_2_0[1]), 
        .ZN(cor_maj_76_n15) );
  NAND2_X1 cor_maj_76_U10 ( .A1(cor_maj_76_n15), .A2(cor_maj_76_n14), .ZN(
        cor_maj_76_n20) );
  XOR2_X1 cor_maj_76_U9 ( .A(mul_port_c_2_0[2]), .B(cor_maj_76_n16), .Z(
        cor_maj_76_n21) );
  XOR2_X1 cor_maj_76_U8 ( .A(mul_port_c_2_0[3]), .B(mul_port_c_2_0[4]), .Z(
        cor_maj_76_n22) );
  XOR2_X1 cor_maj_76_U7 ( .A(mul_port_c_2_0[0]), .B(mul_port_c_2_0[1]), .Z(
        cor_maj_76_n16) );
  OR2_X1 cor_maj_76_U6 ( .A1(cor_maj_76_n20), .A2(cor_maj_76_n19), .ZN(
        cor_maj_76_n24) );
  XOR2_X1 cor_maj_76_U5 ( .A(cor_maj_76_n22), .B(cor_maj_76_n21), .Z(
        cor_maj_76_n23) );
  NAND2_X1 cor_maj_76_U4 ( .A1(cor_maj_76_n24), .A2(cor_maj_76_n23), .ZN(
        cor_maj_76_n25) );
  NAND2_X1 cor_maj_76_U3 ( .A1(cor_maj_76_n20), .A2(cor_maj_76_n19), .ZN(
        cor_maj_76_n26) );
  NAND2_X1 cor_maj_76_U2 ( .A1(cor_maj_76_n26), .A2(cor_maj_76_n25), .ZN(
        cor_maj_76_port_o) );
  NAND2_X1 cor_maj_77_U15 ( .A1(cor_maj_77_n21), .A2(cor_maj_77_n22), .ZN(
        cor_maj_77_n17) );
  NAND2_X1 cor_maj_77_U14 ( .A1(mul_port_c_2_0[3]), .A2(mul_port_c_2_0[4]), 
        .ZN(cor_maj_77_n18) );
  NAND2_X1 cor_maj_77_U13 ( .A1(cor_maj_77_n18), .A2(cor_maj_77_n17), .ZN(
        cor_maj_77_n19) );
  NAND2_X1 cor_maj_77_U12 ( .A1(mul_port_c_2_0[2]), .A2(cor_maj_77_n16), .ZN(
        cor_maj_77_n14) );
  NAND2_X1 cor_maj_77_U11 ( .A1(mul_port_c_2_0[0]), .A2(mul_port_c_2_0[1]), 
        .ZN(cor_maj_77_n15) );
  NAND2_X1 cor_maj_77_U10 ( .A1(cor_maj_77_n15), .A2(cor_maj_77_n14), .ZN(
        cor_maj_77_n20) );
  XOR2_X1 cor_maj_77_U9 ( .A(mul_port_c_2_0[2]), .B(cor_maj_77_n16), .Z(
        cor_maj_77_n21) );
  XOR2_X1 cor_maj_77_U8 ( .A(mul_port_c_2_0[3]), .B(mul_port_c_2_0[4]), .Z(
        cor_maj_77_n22) );
  XOR2_X1 cor_maj_77_U7 ( .A(mul_port_c_2_0[0]), .B(mul_port_c_2_0[1]), .Z(
        cor_maj_77_n16) );
  OR2_X1 cor_maj_77_U6 ( .A1(cor_maj_77_n20), .A2(cor_maj_77_n19), .ZN(
        cor_maj_77_n24) );
  XOR2_X1 cor_maj_77_U5 ( .A(cor_maj_77_n22), .B(cor_maj_77_n21), .Z(
        cor_maj_77_n23) );
  NAND2_X1 cor_maj_77_U4 ( .A1(cor_maj_77_n24), .A2(cor_maj_77_n23), .ZN(
        cor_maj_77_n25) );
  NAND2_X1 cor_maj_77_U3 ( .A1(cor_maj_77_n20), .A2(cor_maj_77_n19), .ZN(
        cor_maj_77_n26) );
  NAND2_X1 cor_maj_77_U2 ( .A1(cor_maj_77_n26), .A2(cor_maj_77_n25), .ZN(
        cor_maj_77_port_o) );
  NAND2_X1 cor_maj_78_U15 ( .A1(cor_maj_78_n21), .A2(cor_maj_78_n22), .ZN(
        cor_maj_78_n17) );
  NAND2_X1 cor_maj_78_U14 ( .A1(mul_port_c_2_0[3]), .A2(mul_port_c_2_0[4]), 
        .ZN(cor_maj_78_n18) );
  NAND2_X1 cor_maj_78_U13 ( .A1(cor_maj_78_n18), .A2(cor_maj_78_n17), .ZN(
        cor_maj_78_n19) );
  NAND2_X1 cor_maj_78_U12 ( .A1(mul_port_c_2_0[2]), .A2(cor_maj_78_n16), .ZN(
        cor_maj_78_n14) );
  NAND2_X1 cor_maj_78_U11 ( .A1(mul_port_c_2_0[0]), .A2(mul_port_c_2_0[1]), 
        .ZN(cor_maj_78_n15) );
  NAND2_X1 cor_maj_78_U10 ( .A1(cor_maj_78_n15), .A2(cor_maj_78_n14), .ZN(
        cor_maj_78_n20) );
  XOR2_X1 cor_maj_78_U9 ( .A(mul_port_c_2_0[2]), .B(cor_maj_78_n16), .Z(
        cor_maj_78_n21) );
  XOR2_X1 cor_maj_78_U8 ( .A(mul_port_c_2_0[3]), .B(mul_port_c_2_0[4]), .Z(
        cor_maj_78_n22) );
  XOR2_X1 cor_maj_78_U7 ( .A(mul_port_c_2_0[0]), .B(mul_port_c_2_0[1]), .Z(
        cor_maj_78_n16) );
  OR2_X1 cor_maj_78_U6 ( .A1(cor_maj_78_n20), .A2(cor_maj_78_n19), .ZN(
        cor_maj_78_n24) );
  XOR2_X1 cor_maj_78_U5 ( .A(cor_maj_78_n22), .B(cor_maj_78_n21), .Z(
        cor_maj_78_n23) );
  NAND2_X1 cor_maj_78_U4 ( .A1(cor_maj_78_n24), .A2(cor_maj_78_n23), .ZN(
        cor_maj_78_n25) );
  NAND2_X1 cor_maj_78_U3 ( .A1(cor_maj_78_n20), .A2(cor_maj_78_n19), .ZN(
        cor_maj_78_n26) );
  NAND2_X1 cor_maj_78_U2 ( .A1(cor_maj_78_n26), .A2(cor_maj_78_n25), .ZN(
        cor_maj_78_port_o) );
  NAND2_X1 cor_maj_79_U15 ( .A1(cor_maj_79_n21), .A2(cor_maj_79_n22), .ZN(
        cor_maj_79_n17) );
  NAND2_X1 cor_maj_79_U14 ( .A1(mul_port_c_2_0[3]), .A2(mul_port_c_2_0[4]), 
        .ZN(cor_maj_79_n18) );
  NAND2_X1 cor_maj_79_U13 ( .A1(cor_maj_79_n18), .A2(cor_maj_79_n17), .ZN(
        cor_maj_79_n19) );
  NAND2_X1 cor_maj_79_U12 ( .A1(mul_port_c_2_0[2]), .A2(cor_maj_79_n16), .ZN(
        cor_maj_79_n14) );
  NAND2_X1 cor_maj_79_U11 ( .A1(mul_port_c_2_0[0]), .A2(mul_port_c_2_0[1]), 
        .ZN(cor_maj_79_n15) );
  NAND2_X1 cor_maj_79_U10 ( .A1(cor_maj_79_n15), .A2(cor_maj_79_n14), .ZN(
        cor_maj_79_n20) );
  XOR2_X1 cor_maj_79_U9 ( .A(mul_port_c_2_0[2]), .B(cor_maj_79_n16), .Z(
        cor_maj_79_n21) );
  XOR2_X1 cor_maj_79_U8 ( .A(mul_port_c_2_0[3]), .B(mul_port_c_2_0[4]), .Z(
        cor_maj_79_n22) );
  XOR2_X1 cor_maj_79_U7 ( .A(mul_port_c_2_0[0]), .B(mul_port_c_2_0[1]), .Z(
        cor_maj_79_n16) );
  OR2_X1 cor_maj_79_U6 ( .A1(cor_maj_79_n20), .A2(cor_maj_79_n19), .ZN(
        cor_maj_79_n24) );
  XOR2_X1 cor_maj_79_U5 ( .A(cor_maj_79_n22), .B(cor_maj_79_n21), .Z(
        cor_maj_79_n23) );
  NAND2_X1 cor_maj_79_U4 ( .A1(cor_maj_79_n24), .A2(cor_maj_79_n23), .ZN(
        cor_maj_79_n25) );
  NAND2_X1 cor_maj_79_U3 ( .A1(cor_maj_79_n20), .A2(cor_maj_79_n19), .ZN(
        cor_maj_79_n26) );
  NAND2_X1 cor_maj_79_U2 ( .A1(cor_maj_79_n26), .A2(cor_maj_79_n25), .ZN(
        cor_maj_79_port_o) );
  NAND2_X1 cor_maj_80_U15 ( .A1(cor_maj_80_n21), .A2(cor_maj_80_n22), .ZN(
        cor_maj_80_n17) );
  NAND2_X1 cor_maj_80_U14 ( .A1(mul_port_c_2_1[3]), .A2(mul_port_c_2_1[4]), 
        .ZN(cor_maj_80_n18) );
  NAND2_X1 cor_maj_80_U13 ( .A1(cor_maj_80_n18), .A2(cor_maj_80_n17), .ZN(
        cor_maj_80_n19) );
  NAND2_X1 cor_maj_80_U12 ( .A1(mul_port_c_2_1[2]), .A2(cor_maj_80_n16), .ZN(
        cor_maj_80_n14) );
  NAND2_X1 cor_maj_80_U11 ( .A1(mul_port_c_2_1[0]), .A2(mul_port_c_2_1[1]), 
        .ZN(cor_maj_80_n15) );
  NAND2_X1 cor_maj_80_U10 ( .A1(cor_maj_80_n15), .A2(cor_maj_80_n14), .ZN(
        cor_maj_80_n20) );
  XOR2_X1 cor_maj_80_U9 ( .A(mul_port_c_2_1[2]), .B(cor_maj_80_n16), .Z(
        cor_maj_80_n21) );
  XOR2_X1 cor_maj_80_U8 ( .A(mul_port_c_2_1[3]), .B(mul_port_c_2_1[4]), .Z(
        cor_maj_80_n22) );
  XOR2_X1 cor_maj_80_U7 ( .A(mul_port_c_2_1[0]), .B(mul_port_c_2_1[1]), .Z(
        cor_maj_80_n16) );
  OR2_X1 cor_maj_80_U6 ( .A1(cor_maj_80_n20), .A2(cor_maj_80_n19), .ZN(
        cor_maj_80_n24) );
  XOR2_X1 cor_maj_80_U5 ( .A(cor_maj_80_n22), .B(cor_maj_80_n21), .Z(
        cor_maj_80_n23) );
  NAND2_X1 cor_maj_80_U4 ( .A1(cor_maj_80_n24), .A2(cor_maj_80_n23), .ZN(
        cor_maj_80_n25) );
  NAND2_X1 cor_maj_80_U3 ( .A1(cor_maj_80_n20), .A2(cor_maj_80_n19), .ZN(
        cor_maj_80_n26) );
  NAND2_X1 cor_maj_80_U2 ( .A1(cor_maj_80_n26), .A2(cor_maj_80_n25), .ZN(
        cor_maj_80_port_o) );
  NAND2_X1 cor_maj_81_U15 ( .A1(cor_maj_81_n21), .A2(cor_maj_81_n22), .ZN(
        cor_maj_81_n17) );
  NAND2_X1 cor_maj_81_U14 ( .A1(mul_port_c_2_1[3]), .A2(mul_port_c_2_1[4]), 
        .ZN(cor_maj_81_n18) );
  NAND2_X1 cor_maj_81_U13 ( .A1(cor_maj_81_n18), .A2(cor_maj_81_n17), .ZN(
        cor_maj_81_n19) );
  NAND2_X1 cor_maj_81_U12 ( .A1(mul_port_c_2_1[2]), .A2(cor_maj_81_n16), .ZN(
        cor_maj_81_n14) );
  NAND2_X1 cor_maj_81_U11 ( .A1(mul_port_c_2_1[0]), .A2(mul_port_c_2_1[1]), 
        .ZN(cor_maj_81_n15) );
  NAND2_X1 cor_maj_81_U10 ( .A1(cor_maj_81_n15), .A2(cor_maj_81_n14), .ZN(
        cor_maj_81_n20) );
  XOR2_X1 cor_maj_81_U9 ( .A(mul_port_c_2_1[2]), .B(cor_maj_81_n16), .Z(
        cor_maj_81_n21) );
  XOR2_X1 cor_maj_81_U8 ( .A(mul_port_c_2_1[3]), .B(mul_port_c_2_1[4]), .Z(
        cor_maj_81_n22) );
  XOR2_X1 cor_maj_81_U7 ( .A(mul_port_c_2_1[0]), .B(mul_port_c_2_1[1]), .Z(
        cor_maj_81_n16) );
  OR2_X1 cor_maj_81_U6 ( .A1(cor_maj_81_n20), .A2(cor_maj_81_n19), .ZN(
        cor_maj_81_n24) );
  XOR2_X1 cor_maj_81_U5 ( .A(cor_maj_81_n22), .B(cor_maj_81_n21), .Z(
        cor_maj_81_n23) );
  NAND2_X1 cor_maj_81_U4 ( .A1(cor_maj_81_n24), .A2(cor_maj_81_n23), .ZN(
        cor_maj_81_n25) );
  NAND2_X1 cor_maj_81_U3 ( .A1(cor_maj_81_n20), .A2(cor_maj_81_n19), .ZN(
        cor_maj_81_n26) );
  NAND2_X1 cor_maj_81_U2 ( .A1(cor_maj_81_n26), .A2(cor_maj_81_n25), .ZN(
        cor_maj_81_port_o) );
  NAND2_X1 cor_maj_82_U15 ( .A1(cor_maj_82_n21), .A2(cor_maj_82_n22), .ZN(
        cor_maj_82_n17) );
  NAND2_X1 cor_maj_82_U14 ( .A1(mul_port_c_2_1[3]), .A2(mul_port_c_2_1[4]), 
        .ZN(cor_maj_82_n18) );
  NAND2_X1 cor_maj_82_U13 ( .A1(cor_maj_82_n18), .A2(cor_maj_82_n17), .ZN(
        cor_maj_82_n19) );
  NAND2_X1 cor_maj_82_U12 ( .A1(mul_port_c_2_1[2]), .A2(cor_maj_82_n16), .ZN(
        cor_maj_82_n14) );
  NAND2_X1 cor_maj_82_U11 ( .A1(mul_port_c_2_1[0]), .A2(mul_port_c_2_1[1]), 
        .ZN(cor_maj_82_n15) );
  NAND2_X1 cor_maj_82_U10 ( .A1(cor_maj_82_n15), .A2(cor_maj_82_n14), .ZN(
        cor_maj_82_n20) );
  XOR2_X1 cor_maj_82_U9 ( .A(mul_port_c_2_1[2]), .B(cor_maj_82_n16), .Z(
        cor_maj_82_n21) );
  XOR2_X1 cor_maj_82_U8 ( .A(mul_port_c_2_1[3]), .B(mul_port_c_2_1[4]), .Z(
        cor_maj_82_n22) );
  XOR2_X1 cor_maj_82_U7 ( .A(mul_port_c_2_1[0]), .B(mul_port_c_2_1[1]), .Z(
        cor_maj_82_n16) );
  OR2_X1 cor_maj_82_U6 ( .A1(cor_maj_82_n20), .A2(cor_maj_82_n19), .ZN(
        cor_maj_82_n24) );
  XOR2_X1 cor_maj_82_U5 ( .A(cor_maj_82_n22), .B(cor_maj_82_n21), .Z(
        cor_maj_82_n23) );
  NAND2_X1 cor_maj_82_U4 ( .A1(cor_maj_82_n24), .A2(cor_maj_82_n23), .ZN(
        cor_maj_82_n25) );
  NAND2_X1 cor_maj_82_U3 ( .A1(cor_maj_82_n20), .A2(cor_maj_82_n19), .ZN(
        cor_maj_82_n26) );
  NAND2_X1 cor_maj_82_U2 ( .A1(cor_maj_82_n26), .A2(cor_maj_82_n25), .ZN(
        cor_maj_82_port_o) );
  NAND2_X1 cor_maj_83_U15 ( .A1(cor_maj_83_n21), .A2(cor_maj_83_n22), .ZN(
        cor_maj_83_n17) );
  NAND2_X1 cor_maj_83_U14 ( .A1(mul_port_c_2_1[3]), .A2(mul_port_c_2_1[4]), 
        .ZN(cor_maj_83_n18) );
  NAND2_X1 cor_maj_83_U13 ( .A1(cor_maj_83_n18), .A2(cor_maj_83_n17), .ZN(
        cor_maj_83_n19) );
  NAND2_X1 cor_maj_83_U12 ( .A1(mul_port_c_2_1[2]), .A2(cor_maj_83_n16), .ZN(
        cor_maj_83_n14) );
  NAND2_X1 cor_maj_83_U11 ( .A1(mul_port_c_2_1[0]), .A2(mul_port_c_2_1[1]), 
        .ZN(cor_maj_83_n15) );
  NAND2_X1 cor_maj_83_U10 ( .A1(cor_maj_83_n15), .A2(cor_maj_83_n14), .ZN(
        cor_maj_83_n20) );
  XOR2_X1 cor_maj_83_U9 ( .A(mul_port_c_2_1[2]), .B(cor_maj_83_n16), .Z(
        cor_maj_83_n21) );
  XOR2_X1 cor_maj_83_U8 ( .A(mul_port_c_2_1[3]), .B(mul_port_c_2_1[4]), .Z(
        cor_maj_83_n22) );
  XOR2_X1 cor_maj_83_U7 ( .A(mul_port_c_2_1[0]), .B(mul_port_c_2_1[1]), .Z(
        cor_maj_83_n16) );
  OR2_X1 cor_maj_83_U6 ( .A1(cor_maj_83_n20), .A2(cor_maj_83_n19), .ZN(
        cor_maj_83_n24) );
  XOR2_X1 cor_maj_83_U5 ( .A(cor_maj_83_n22), .B(cor_maj_83_n21), .Z(
        cor_maj_83_n23) );
  NAND2_X1 cor_maj_83_U4 ( .A1(cor_maj_83_n24), .A2(cor_maj_83_n23), .ZN(
        cor_maj_83_n25) );
  NAND2_X1 cor_maj_83_U3 ( .A1(cor_maj_83_n20), .A2(cor_maj_83_n19), .ZN(
        cor_maj_83_n26) );
  NAND2_X1 cor_maj_83_U2 ( .A1(cor_maj_83_n26), .A2(cor_maj_83_n25), .ZN(
        cor_maj_83_port_o) );
  NAND2_X1 cor_maj_84_U15 ( .A1(cor_maj_84_n21), .A2(cor_maj_84_n22), .ZN(
        cor_maj_84_n17) );
  NAND2_X1 cor_maj_84_U14 ( .A1(mul_port_c_2_1[3]), .A2(mul_port_c_2_1[4]), 
        .ZN(cor_maj_84_n18) );
  NAND2_X1 cor_maj_84_U13 ( .A1(cor_maj_84_n18), .A2(cor_maj_84_n17), .ZN(
        cor_maj_84_n19) );
  NAND2_X1 cor_maj_84_U12 ( .A1(mul_port_c_2_1[2]), .A2(cor_maj_84_n16), .ZN(
        cor_maj_84_n14) );
  NAND2_X1 cor_maj_84_U11 ( .A1(mul_port_c_2_1[0]), .A2(mul_port_c_2_1[1]), 
        .ZN(cor_maj_84_n15) );
  NAND2_X1 cor_maj_84_U10 ( .A1(cor_maj_84_n15), .A2(cor_maj_84_n14), .ZN(
        cor_maj_84_n20) );
  XOR2_X1 cor_maj_84_U9 ( .A(mul_port_c_2_1[2]), .B(cor_maj_84_n16), .Z(
        cor_maj_84_n21) );
  XOR2_X1 cor_maj_84_U8 ( .A(mul_port_c_2_1[3]), .B(mul_port_c_2_1[4]), .Z(
        cor_maj_84_n22) );
  XOR2_X1 cor_maj_84_U7 ( .A(mul_port_c_2_1[0]), .B(mul_port_c_2_1[1]), .Z(
        cor_maj_84_n16) );
  OR2_X1 cor_maj_84_U6 ( .A1(cor_maj_84_n20), .A2(cor_maj_84_n19), .ZN(
        cor_maj_84_n24) );
  XOR2_X1 cor_maj_84_U5 ( .A(cor_maj_84_n22), .B(cor_maj_84_n21), .Z(
        cor_maj_84_n23) );
  NAND2_X1 cor_maj_84_U4 ( .A1(cor_maj_84_n24), .A2(cor_maj_84_n23), .ZN(
        cor_maj_84_n25) );
  NAND2_X1 cor_maj_84_U3 ( .A1(cor_maj_84_n20), .A2(cor_maj_84_n19), .ZN(
        cor_maj_84_n26) );
  NAND2_X1 cor_maj_84_U2 ( .A1(cor_maj_84_n26), .A2(cor_maj_84_n25), .ZN(
        cor_maj_84_port_o) );
  NAND2_X1 cor_maj_85_U15 ( .A1(cor_maj_85_n21), .A2(cor_maj_85_n22), .ZN(
        cor_maj_85_n17) );
  NAND2_X1 cor_maj_85_U14 ( .A1(mul_port_c_2_2[3]), .A2(mul_port_c_2_2[4]), 
        .ZN(cor_maj_85_n18) );
  NAND2_X1 cor_maj_85_U13 ( .A1(cor_maj_85_n18), .A2(cor_maj_85_n17), .ZN(
        cor_maj_85_n19) );
  NAND2_X1 cor_maj_85_U12 ( .A1(mul_port_c_2_2[2]), .A2(cor_maj_85_n16), .ZN(
        cor_maj_85_n14) );
  NAND2_X1 cor_maj_85_U11 ( .A1(mul_port_c_2_2[0]), .A2(mul_port_c_2_2[1]), 
        .ZN(cor_maj_85_n15) );
  NAND2_X1 cor_maj_85_U10 ( .A1(cor_maj_85_n15), .A2(cor_maj_85_n14), .ZN(
        cor_maj_85_n20) );
  XOR2_X1 cor_maj_85_U9 ( .A(mul_port_c_2_2[2]), .B(cor_maj_85_n16), .Z(
        cor_maj_85_n21) );
  XOR2_X1 cor_maj_85_U8 ( .A(mul_port_c_2_2[3]), .B(mul_port_c_2_2[4]), .Z(
        cor_maj_85_n22) );
  XOR2_X1 cor_maj_85_U7 ( .A(mul_port_c_2_2[0]), .B(mul_port_c_2_2[1]), .Z(
        cor_maj_85_n16) );
  OR2_X1 cor_maj_85_U6 ( .A1(cor_maj_85_n20), .A2(cor_maj_85_n19), .ZN(
        cor_maj_85_n24) );
  XOR2_X1 cor_maj_85_U5 ( .A(cor_maj_85_n22), .B(cor_maj_85_n21), .Z(
        cor_maj_85_n23) );
  NAND2_X1 cor_maj_85_U4 ( .A1(cor_maj_85_n24), .A2(cor_maj_85_n23), .ZN(
        cor_maj_85_n25) );
  NAND2_X1 cor_maj_85_U3 ( .A1(cor_maj_85_n20), .A2(cor_maj_85_n19), .ZN(
        cor_maj_85_n26) );
  NAND2_X1 cor_maj_85_U2 ( .A1(cor_maj_85_n26), .A2(cor_maj_85_n25), .ZN(
        cor_maj_85_port_o) );
  NAND2_X1 cor_maj_86_U15 ( .A1(cor_maj_86_n21), .A2(cor_maj_86_n22), .ZN(
        cor_maj_86_n17) );
  NAND2_X1 cor_maj_86_U14 ( .A1(mul_port_c_2_2[3]), .A2(mul_port_c_2_2[4]), 
        .ZN(cor_maj_86_n18) );
  NAND2_X1 cor_maj_86_U13 ( .A1(cor_maj_86_n18), .A2(cor_maj_86_n17), .ZN(
        cor_maj_86_n19) );
  NAND2_X1 cor_maj_86_U12 ( .A1(mul_port_c_2_2[2]), .A2(cor_maj_86_n16), .ZN(
        cor_maj_86_n14) );
  NAND2_X1 cor_maj_86_U11 ( .A1(mul_port_c_2_2[0]), .A2(mul_port_c_2_2[1]), 
        .ZN(cor_maj_86_n15) );
  NAND2_X1 cor_maj_86_U10 ( .A1(cor_maj_86_n15), .A2(cor_maj_86_n14), .ZN(
        cor_maj_86_n20) );
  XOR2_X1 cor_maj_86_U9 ( .A(mul_port_c_2_2[2]), .B(cor_maj_86_n16), .Z(
        cor_maj_86_n21) );
  XOR2_X1 cor_maj_86_U8 ( .A(mul_port_c_2_2[3]), .B(mul_port_c_2_2[4]), .Z(
        cor_maj_86_n22) );
  XOR2_X1 cor_maj_86_U7 ( .A(mul_port_c_2_2[0]), .B(mul_port_c_2_2[1]), .Z(
        cor_maj_86_n16) );
  OR2_X1 cor_maj_86_U6 ( .A1(cor_maj_86_n20), .A2(cor_maj_86_n19), .ZN(
        cor_maj_86_n24) );
  XOR2_X1 cor_maj_86_U5 ( .A(cor_maj_86_n22), .B(cor_maj_86_n21), .Z(
        cor_maj_86_n23) );
  NAND2_X1 cor_maj_86_U4 ( .A1(cor_maj_86_n24), .A2(cor_maj_86_n23), .ZN(
        cor_maj_86_n25) );
  NAND2_X1 cor_maj_86_U3 ( .A1(cor_maj_86_n20), .A2(cor_maj_86_n19), .ZN(
        cor_maj_86_n26) );
  NAND2_X1 cor_maj_86_U2 ( .A1(cor_maj_86_n26), .A2(cor_maj_86_n25), .ZN(
        cor_maj_86_port_o) );
  NAND2_X1 cor_maj_87_U15 ( .A1(cor_maj_87_n21), .A2(cor_maj_87_n22), .ZN(
        cor_maj_87_n17) );
  NAND2_X1 cor_maj_87_U14 ( .A1(mul_port_c_2_2[3]), .A2(mul_port_c_2_2[4]), 
        .ZN(cor_maj_87_n18) );
  NAND2_X1 cor_maj_87_U13 ( .A1(cor_maj_87_n18), .A2(cor_maj_87_n17), .ZN(
        cor_maj_87_n19) );
  NAND2_X1 cor_maj_87_U12 ( .A1(mul_port_c_2_2[2]), .A2(cor_maj_87_n16), .ZN(
        cor_maj_87_n14) );
  NAND2_X1 cor_maj_87_U11 ( .A1(mul_port_c_2_2[0]), .A2(mul_port_c_2_2[1]), 
        .ZN(cor_maj_87_n15) );
  NAND2_X1 cor_maj_87_U10 ( .A1(cor_maj_87_n15), .A2(cor_maj_87_n14), .ZN(
        cor_maj_87_n20) );
  XOR2_X1 cor_maj_87_U9 ( .A(mul_port_c_2_2[2]), .B(cor_maj_87_n16), .Z(
        cor_maj_87_n21) );
  XOR2_X1 cor_maj_87_U8 ( .A(mul_port_c_2_2[3]), .B(mul_port_c_2_2[4]), .Z(
        cor_maj_87_n22) );
  XOR2_X1 cor_maj_87_U7 ( .A(mul_port_c_2_2[0]), .B(mul_port_c_2_2[1]), .Z(
        cor_maj_87_n16) );
  OR2_X1 cor_maj_87_U6 ( .A1(cor_maj_87_n20), .A2(cor_maj_87_n19), .ZN(
        cor_maj_87_n24) );
  XOR2_X1 cor_maj_87_U5 ( .A(cor_maj_87_n22), .B(cor_maj_87_n21), .Z(
        cor_maj_87_n23) );
  NAND2_X1 cor_maj_87_U4 ( .A1(cor_maj_87_n24), .A2(cor_maj_87_n23), .ZN(
        cor_maj_87_n25) );
  NAND2_X1 cor_maj_87_U3 ( .A1(cor_maj_87_n20), .A2(cor_maj_87_n19), .ZN(
        cor_maj_87_n26) );
  NAND2_X1 cor_maj_87_U2 ( .A1(cor_maj_87_n26), .A2(cor_maj_87_n25), .ZN(
        cor_maj_87_port_o) );
  NAND2_X1 cor_maj_88_U15 ( .A1(cor_maj_88_n21), .A2(cor_maj_88_n22), .ZN(
        cor_maj_88_n17) );
  NAND2_X1 cor_maj_88_U14 ( .A1(mul_port_c_2_2[3]), .A2(mul_port_c_2_2[4]), 
        .ZN(cor_maj_88_n18) );
  NAND2_X1 cor_maj_88_U13 ( .A1(cor_maj_88_n18), .A2(cor_maj_88_n17), .ZN(
        cor_maj_88_n19) );
  NAND2_X1 cor_maj_88_U12 ( .A1(mul_port_c_2_2[2]), .A2(cor_maj_88_n16), .ZN(
        cor_maj_88_n14) );
  NAND2_X1 cor_maj_88_U11 ( .A1(mul_port_c_2_2[0]), .A2(mul_port_c_2_2[1]), 
        .ZN(cor_maj_88_n15) );
  NAND2_X1 cor_maj_88_U10 ( .A1(cor_maj_88_n15), .A2(cor_maj_88_n14), .ZN(
        cor_maj_88_n20) );
  XOR2_X1 cor_maj_88_U9 ( .A(mul_port_c_2_2[2]), .B(cor_maj_88_n16), .Z(
        cor_maj_88_n21) );
  XOR2_X1 cor_maj_88_U8 ( .A(mul_port_c_2_2[3]), .B(mul_port_c_2_2[4]), .Z(
        cor_maj_88_n22) );
  XOR2_X1 cor_maj_88_U7 ( .A(mul_port_c_2_2[0]), .B(mul_port_c_2_2[1]), .Z(
        cor_maj_88_n16) );
  OR2_X1 cor_maj_88_U6 ( .A1(cor_maj_88_n20), .A2(cor_maj_88_n19), .ZN(
        cor_maj_88_n24) );
  XOR2_X1 cor_maj_88_U5 ( .A(cor_maj_88_n22), .B(cor_maj_88_n21), .Z(
        cor_maj_88_n23) );
  NAND2_X1 cor_maj_88_U4 ( .A1(cor_maj_88_n24), .A2(cor_maj_88_n23), .ZN(
        cor_maj_88_n25) );
  NAND2_X1 cor_maj_88_U3 ( .A1(cor_maj_88_n20), .A2(cor_maj_88_n19), .ZN(
        cor_maj_88_n26) );
  NAND2_X1 cor_maj_88_U2 ( .A1(cor_maj_88_n26), .A2(cor_maj_88_n25), .ZN(
        cor_maj_88_port_o) );
  NAND2_X1 cor_maj_89_U15 ( .A1(cor_maj_89_n21), .A2(cor_maj_89_n22), .ZN(
        cor_maj_89_n17) );
  NAND2_X1 cor_maj_89_U14 ( .A1(mul_port_c_2_2[3]), .A2(mul_port_c_2_2[4]), 
        .ZN(cor_maj_89_n18) );
  NAND2_X1 cor_maj_89_U13 ( .A1(cor_maj_89_n18), .A2(cor_maj_89_n17), .ZN(
        cor_maj_89_n19) );
  NAND2_X1 cor_maj_89_U12 ( .A1(mul_port_c_2_2[2]), .A2(cor_maj_89_n16), .ZN(
        cor_maj_89_n14) );
  NAND2_X1 cor_maj_89_U11 ( .A1(mul_port_c_2_2[0]), .A2(mul_port_c_2_2[1]), 
        .ZN(cor_maj_89_n15) );
  NAND2_X1 cor_maj_89_U10 ( .A1(cor_maj_89_n15), .A2(cor_maj_89_n14), .ZN(
        cor_maj_89_n20) );
  XOR2_X1 cor_maj_89_U9 ( .A(mul_port_c_2_2[2]), .B(cor_maj_89_n16), .Z(
        cor_maj_89_n21) );
  XOR2_X1 cor_maj_89_U8 ( .A(mul_port_c_2_2[3]), .B(mul_port_c_2_2[4]), .Z(
        cor_maj_89_n22) );
  XOR2_X1 cor_maj_89_U7 ( .A(mul_port_c_2_2[0]), .B(mul_port_c_2_2[1]), .Z(
        cor_maj_89_n16) );
  OR2_X1 cor_maj_89_U6 ( .A1(cor_maj_89_n20), .A2(cor_maj_89_n19), .ZN(
        cor_maj_89_n24) );
  XOR2_X1 cor_maj_89_U5 ( .A(cor_maj_89_n22), .B(cor_maj_89_n21), .Z(
        cor_maj_89_n23) );
  NAND2_X1 cor_maj_89_U4 ( .A1(cor_maj_89_n24), .A2(cor_maj_89_n23), .ZN(
        cor_maj_89_n25) );
  NAND2_X1 cor_maj_89_U3 ( .A1(cor_maj_89_n20), .A2(cor_maj_89_n19), .ZN(
        cor_maj_89_n26) );
  NAND2_X1 cor_maj_89_U2 ( .A1(cor_maj_89_n26), .A2(cor_maj_89_n25), .ZN(
        cor_maj_89_port_o) );
  XOR2_X1 comp_U30 ( .A(cor_port_v_0_2[4]), .B(cor_port_v_0_1[4]), .Z(comp_n11) );
  XOR2_X1 comp_U29 ( .A(cor_port_v_0_0[4]), .B(comp_n11), .Z(comp_port_c_0[4])
         );
  XOR2_X1 comp_U28 ( .A(cor_port_v_0_2[3]), .B(cor_port_v_0_1[3]), .Z(comp_n12) );
  XOR2_X1 comp_U27 ( .A(cor_port_v_0_0[3]), .B(comp_n12), .Z(comp_port_c_0[3])
         );
  XOR2_X1 comp_U26 ( .A(cor_port_v_0_2[2]), .B(cor_port_v_0_1[2]), .Z(comp_n13) );
  XOR2_X1 comp_U25 ( .A(cor_port_v_0_0[2]), .B(comp_n13), .Z(comp_port_c_0[2])
         );
  XOR2_X1 comp_U24 ( .A(cor_port_v_0_2[1]), .B(cor_port_v_0_1[1]), .Z(comp_n14) );
  XOR2_X1 comp_U23 ( .A(cor_port_v_0_0[1]), .B(comp_n14), .Z(comp_port_c_0[1])
         );
  XOR2_X1 comp_U22 ( .A(cor_port_v_0_2[0]), .B(cor_port_v_0_1[0]), .Z(comp_n15) );
  XOR2_X1 comp_U21 ( .A(cor_port_v_0_0[0]), .B(comp_n15), .Z(comp_port_c_0[0])
         );
  XOR2_X1 comp_U20 ( .A(cor_port_v_1_2[4]), .B(cor_port_v_1_1[4]), .Z(comp_n6)
         );
  XOR2_X1 comp_U19 ( .A(cor_port_v_1_0[4]), .B(comp_n6), .Z(comp_port_c_1[4])
         );
  XOR2_X1 comp_U18 ( .A(cor_port_v_1_2[3]), .B(cor_port_v_1_1[3]), .Z(comp_n7)
         );
  XOR2_X1 comp_U17 ( .A(cor_port_v_1_0[3]), .B(comp_n7), .Z(comp_port_c_1[3])
         );
  XOR2_X1 comp_U16 ( .A(cor_port_v_1_2[2]), .B(cor_port_v_1_1[2]), .Z(comp_n8)
         );
  XOR2_X1 comp_U15 ( .A(cor_port_v_1_0[2]), .B(comp_n8), .Z(comp_port_c_1[2])
         );
  XOR2_X1 comp_U14 ( .A(cor_port_v_1_2[1]), .B(cor_port_v_1_1[1]), .Z(comp_n9)
         );
  XOR2_X1 comp_U13 ( .A(cor_port_v_1_0[1]), .B(comp_n9), .Z(comp_port_c_1[1])
         );
  XOR2_X1 comp_U12 ( .A(cor_port_v_1_2[0]), .B(cor_port_v_1_1[0]), .Z(comp_n10) );
  XOR2_X1 comp_U11 ( .A(cor_port_v_1_0[0]), .B(comp_n10), .Z(comp_port_c_1[0])
         );
  XOR2_X1 comp_U10 ( .A(cor_port_v_2_2[4]), .B(cor_port_v_2_1[4]), .Z(comp_n1)
         );
  XOR2_X1 comp_U9 ( .A(cor_port_v_2_0[4]), .B(comp_n1), .Z(comp_port_c_2[4])
         );
  XOR2_X1 comp_U8 ( .A(cor_port_v_2_2[3]), .B(cor_port_v_2_1[3]), .Z(comp_n2)
         );
  XOR2_X1 comp_U7 ( .A(cor_port_v_2_0[3]), .B(comp_n2), .Z(comp_port_c_2[3])
         );
  XOR2_X1 comp_U6 ( .A(cor_port_v_2_2[2]), .B(cor_port_v_2_1[2]), .Z(comp_n3)
         );
  XOR2_X1 comp_U5 ( .A(cor_port_v_2_0[2]), .B(comp_n3), .Z(comp_port_c_2[2])
         );
  XOR2_X1 comp_U4 ( .A(cor_port_v_2_2[1]), .B(cor_port_v_2_1[1]), .Z(comp_n4)
         );
  XOR2_X1 comp_U3 ( .A(cor_port_v_2_0[1]), .B(comp_n4), .Z(comp_port_c_2[1])
         );
  XOR2_X1 comp_U2 ( .A(cor_port_v_2_2[0]), .B(cor_port_v_2_1[0]), .Z(comp_n5)
         );
  XOR2_X1 comp_U1 ( .A(cor_port_v_2_0[0]), .B(comp_n5), .Z(comp_port_c_2[0])
         );
endmodule

