/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP4
// Date      : Thu Apr 21 09:56:28 2022
/////////////////////////////////////////////////////////////


module And_gate ( clock_0, clock_1, clock_2, clock_3, clock_4, clock_5, 
        clock_6, io_a_s0_d0, io_a_s0_d1, io_a_s0_d2, io_a_s0_d3, io_a_s0_d4, 
        io_a_s0_d5, io_a_s0_d6, io_a_s1_d0, io_a_s1_d1, io_a_s1_d2, io_a_s1_d3, 
        io_a_s1_d4, io_a_s1_d5, io_a_s1_d6, io_a_s2_d0, io_a_s2_d1, io_a_s2_d2, 
        io_a_s2_d3, io_a_s2_d4, io_a_s2_d5, io_a_s2_d6, io_a_s3_d0, io_a_s3_d1, 
        io_a_s3_d2, io_a_s3_d3, io_a_s3_d4, io_a_s3_d5, io_a_s3_d6, io_b_s0_d0, 
        io_b_s0_d1, io_b_s0_d2, io_b_s0_d3, io_b_s0_d4, io_b_s0_d5, io_b_s0_d6, 
        io_b_s1_d0, io_b_s1_d1, io_b_s1_d2, io_b_s1_d3, io_b_s1_d4, io_b_s1_d5, 
        io_b_s1_d6, io_b_s2_d0, io_b_s2_d1, io_b_s2_d2, io_b_s2_d3, io_b_s2_d4, 
        io_b_s2_d5, io_b_s2_d6, io_b_s3_d0, io_b_s3_d1, io_b_s3_d2, io_b_s3_d3, 
        io_b_s3_d4, io_b_s3_d5, io_b_s3_d6, p_rand_0, p_rand_1, p_rand_2, 
        p_rand_3, p_rand_4, p_rand_5, io_c_s0_d0, io_c_s0_d1, io_c_s0_d2, 
        io_c_s0_d3, io_c_s0_d4, io_c_s0_d5, io_c_s0_d6, io_c_s1_d0, io_c_s1_d1, 
        io_c_s1_d2, io_c_s1_d3, io_c_s1_d4, io_c_s1_d5, io_c_s1_d6, io_c_s2_d0, 
        io_c_s2_d1, io_c_s2_d2, io_c_s2_d3, io_c_s2_d4, io_c_s2_d5, io_c_s2_d6, 
        io_c_s3_d0, io_c_s3_d1, io_c_s3_d2, io_c_s3_d3, io_c_s3_d4, io_c_s3_d5, 
        io_c_s3_d6 );
  input clock_0, clock_1, clock_2, clock_3, clock_4, clock_5, clock_6,
         io_a_s0_d0, io_a_s0_d1, io_a_s0_d2, io_a_s0_d3, io_a_s0_d4,
         io_a_s0_d5, io_a_s0_d6, io_a_s1_d0, io_a_s1_d1, io_a_s1_d2,
         io_a_s1_d3, io_a_s1_d4, io_a_s1_d5, io_a_s1_d6, io_a_s2_d0,
         io_a_s2_d1, io_a_s2_d2, io_a_s2_d3, io_a_s2_d4, io_a_s2_d5,
         io_a_s2_d6, io_a_s3_d0, io_a_s3_d1, io_a_s3_d2, io_a_s3_d3,
         io_a_s3_d4, io_a_s3_d5, io_a_s3_d6, io_b_s0_d0, io_b_s0_d1,
         io_b_s0_d2, io_b_s0_d3, io_b_s0_d4, io_b_s0_d5, io_b_s0_d6,
         io_b_s1_d0, io_b_s1_d1, io_b_s1_d2, io_b_s1_d3, io_b_s1_d4,
         io_b_s1_d5, io_b_s1_d6, io_b_s2_d0, io_b_s2_d1, io_b_s2_d2,
         io_b_s2_d3, io_b_s2_d4, io_b_s2_d5, io_b_s2_d6, io_b_s3_d0,
         io_b_s3_d1, io_b_s3_d2, io_b_s3_d3, io_b_s3_d4, io_b_s3_d5,
         io_b_s3_d6, p_rand_0, p_rand_1, p_rand_2, p_rand_3, p_rand_4,
         p_rand_5;
  output io_c_s0_d0, io_c_s0_d1, io_c_s0_d2, io_c_s0_d3, io_c_s0_d4,
         io_c_s0_d5, io_c_s0_d6, io_c_s1_d0, io_c_s1_d1, io_c_s1_d2,
         io_c_s1_d3, io_c_s1_d4, io_c_s1_d5, io_c_s1_d6, io_c_s2_d0,
         io_c_s2_d1, io_c_s2_d2, io_c_s2_d3, io_c_s2_d4, io_c_s2_d5,
         io_c_s2_d6, io_c_s3_d0, io_c_s3_d1, io_c_s3_d2, io_c_s3_d3,
         io_c_s3_d4, io_c_s3_d5, io_c_s3_d6;
  wire   n_cini_module_0__xor_module_251_res,
         n_cini_module_0__xor_module_250_res,
         n_cini_module_0__reg_module_392_res,
         n_cini_module_0__and_module_196_res,
         n_cini_module_0__reg_module_391_res,
         n_cini_module_0__majority7_module_83_res,
         n_cini_module_0__reg_module_390_res,
         n_cini_module_0__and_module_195_res,
         n_cini_module_0__not_module_84_res,
         n_cini_module_0__reg_module_389_res,
         n_cini_module_0__xor_module_249_res,
         n_cini_module_0__xor_module_248_res,
         n_cini_module_0__reg_module_388_res,
         n_cini_module_0__and_module_194_res,
         n_cini_module_0__reg_module_387_res,
         n_cini_module_0__majority7_module_82_res,
         n_cini_module_0__reg_module_386_res,
         n_cini_module_0__and_module_193_res,
         n_cini_module_0__not_module_83_res,
         n_cini_module_0__reg_module_385_res,
         n_cini_module_0__xor_module_247_res,
         n_cini_module_0__reg_module_384_res,
         n_cini_module_0__and_module_192_res,
         n_cini_module_0__reg_module_383_res,
         n_cini_module_0__majority7_module_81_res,
         n_cini_module_0__reg_module_382_res,
         n_cini_module_0__and_module_191_res,
         n_cini_module_0__not_module_82_res,
         n_cini_module_0__reg_module_381_res,
         n_cini_module_0__reg_module_380_res,
         n_cini_module_0__and_module_190_res,
         n_cini_module_0__reg_module_379_res,
         n_cini_module_0__xor_module_245_res,
         n_cini_module_0__xor_module_244_res,
         n_cini_module_0__reg_module_378_res,
         n_cini_module_0__and_module_189_res,
         n_cini_module_0__reg_module_377_res,
         n_cini_module_0__majority7_module_80_res,
         n_cini_module_0__reg_module_376_res,
         n_cini_module_0__and_module_188_res,
         n_cini_module_0__not_module_81_res,
         n_cini_module_0__reg_module_375_res,
         n_cini_module_0__xor_module_243_res,
         n_cini_module_0__xor_module_242_res,
         n_cini_module_0__reg_module_374_res,
         n_cini_module_0__and_module_187_res,
         n_cini_module_0__reg_module_373_res,
         n_cini_module_0__majority7_module_79_res,
         n_cini_module_0__reg_module_372_res,
         n_cini_module_0__and_module_186_res,
         n_cini_module_0__not_module_80_res,
         n_cini_module_0__reg_module_371_res,
         n_cini_module_0__xor_module_241_res,
         n_cini_module_0__reg_module_370_res,
         n_cini_module_0__and_module_185_res,
         n_cini_module_0__reg_module_369_res,
         n_cini_module_0__majority7_module_78_res,
         n_cini_module_0__reg_module_368_res,
         n_cini_module_0__and_module_184_res,
         n_cini_module_0__not_module_79_res,
         n_cini_module_0__reg_module_367_res,
         n_cini_module_0__reg_module_366_res,
         n_cini_module_0__and_module_183_res,
         n_cini_module_0__reg_module_365_res,
         n_cini_module_0__xor_module_239_res,
         n_cini_module_0__xor_module_238_res,
         n_cini_module_0__reg_module_364_res,
         n_cini_module_0__and_module_182_res,
         n_cini_module_0__reg_module_363_res,
         n_cini_module_0__majority7_module_77_res,
         n_cini_module_0__reg_module_362_res,
         n_cini_module_0__and_module_181_res,
         n_cini_module_0__not_module_78_res,
         n_cini_module_0__reg_module_361_res,
         n_cini_module_0__xor_module_237_res,
         n_cini_module_0__xor_module_236_res,
         n_cini_module_0__reg_module_360_res,
         n_cini_module_0__and_module_180_res,
         n_cini_module_0__reg_module_359_res,
         n_cini_module_0__majority7_module_76_res,
         n_cini_module_0__reg_module_358_res,
         n_cini_module_0__and_module_179_res,
         n_cini_module_0__not_module_77_res,
         n_cini_module_0__reg_module_357_res,
         n_cini_module_0__xor_module_235_res,
         n_cini_module_0__reg_module_356_res,
         n_cini_module_0__and_module_178_res,
         n_cini_module_0__reg_module_355_res,
         n_cini_module_0__majority7_module_75_res,
         n_cini_module_0__reg_module_354_res,
         n_cini_module_0__and_module_177_res,
         n_cini_module_0__not_module_76_res,
         n_cini_module_0__reg_module_353_res,
         n_cini_module_0__reg_module_352_res,
         n_cini_module_0__and_module_176_res,
         n_cini_module_0__reg_module_351_res,
         n_cini_module_0__xor_module_233_res,
         n_cini_module_0__xor_module_232_res,
         n_cini_module_0__reg_module_350_res,
         n_cini_module_0__and_module_175_res,
         n_cini_module_0__reg_module_349_res,
         n_cini_module_0__majority7_module_74_res,
         n_cini_module_0__reg_module_348_res,
         n_cini_module_0__and_module_174_res,
         n_cini_module_0__not_module_75_res,
         n_cini_module_0__reg_module_347_res,
         n_cini_module_0__xor_module_231_res,
         n_cini_module_0__xor_module_230_res,
         n_cini_module_0__reg_module_346_res,
         n_cini_module_0__and_module_173_res,
         n_cini_module_0__reg_module_345_res,
         n_cini_module_0__majority7_module_73_res,
         n_cini_module_0__reg_module_344_res,
         n_cini_module_0__and_module_172_res,
         n_cini_module_0__not_module_74_res,
         n_cini_module_0__reg_module_343_res,
         n_cini_module_0__xor_module_229_res,
         n_cini_module_0__reg_module_342_res,
         n_cini_module_0__and_module_171_res,
         n_cini_module_0__reg_module_341_res,
         n_cini_module_0__majority7_module_72_res,
         n_cini_module_0__reg_module_340_res,
         n_cini_module_0__and_module_170_res,
         n_cini_module_0__not_module_73_res,
         n_cini_module_0__reg_module_339_res,
         n_cini_module_0__reg_module_338_res,
         n_cini_module_0__and_module_169_res,
         n_cini_module_0__reg_module_337_res,
         n_cini_module_0__xor_module_227_res,
         n_cini_module_0__xor_module_226_res,
         n_cini_module_0__reg_module_336_res,
         n_cini_module_0__and_module_168_res,
         n_cini_module_0__reg_module_335_res,
         n_cini_module_0__majority7_module_71_res,
         n_cini_module_0__reg_module_334_res,
         n_cini_module_0__and_module_167_res,
         n_cini_module_0__not_module_72_res,
         n_cini_module_0__reg_module_333_res,
         n_cini_module_0__xor_module_225_res,
         n_cini_module_0__xor_module_224_res,
         n_cini_module_0__reg_module_332_res,
         n_cini_module_0__and_module_166_res,
         n_cini_module_0__reg_module_331_res,
         n_cini_module_0__majority7_module_70_res,
         n_cini_module_0__reg_module_330_res,
         n_cini_module_0__and_module_165_res,
         n_cini_module_0__not_module_71_res,
         n_cini_module_0__reg_module_329_res,
         n_cini_module_0__xor_module_223_res,
         n_cini_module_0__reg_module_328_res,
         n_cini_module_0__and_module_164_res,
         n_cini_module_0__reg_module_327_res,
         n_cini_module_0__majority7_module_69_res,
         n_cini_module_0__reg_module_326_res,
         n_cini_module_0__and_module_163_res,
         n_cini_module_0__not_module_70_res,
         n_cini_module_0__reg_module_325_res,
         n_cini_module_0__reg_module_324_res,
         n_cini_module_0__and_module_162_res,
         n_cini_module_0__reg_module_323_res,
         n_cini_module_0__xor_module_221_res,
         n_cini_module_0__xor_module_220_res,
         n_cini_module_0__reg_module_322_res,
         n_cini_module_0__and_module_161_res,
         n_cini_module_0__reg_module_321_res,
         n_cini_module_0__majority7_module_68_res,
         n_cini_module_0__reg_module_320_res,
         n_cini_module_0__and_module_160_res,
         n_cini_module_0__not_module_69_res,
         n_cini_module_0__reg_module_319_res,
         n_cini_module_0__xor_module_219_res,
         n_cini_module_0__xor_module_218_res,
         n_cini_module_0__reg_module_318_res,
         n_cini_module_0__and_module_159_res,
         n_cini_module_0__reg_module_317_res,
         n_cini_module_0__majority7_module_67_res,
         n_cini_module_0__reg_module_316_res,
         n_cini_module_0__and_module_158_res,
         n_cini_module_0__not_module_68_res,
         n_cini_module_0__reg_module_315_res,
         n_cini_module_0__xor_module_217_res,
         n_cini_module_0__reg_module_314_res,
         n_cini_module_0__and_module_157_res,
         n_cini_module_0__reg_module_313_res,
         n_cini_module_0__majority7_module_66_res,
         n_cini_module_0__reg_module_312_res,
         n_cini_module_0__and_module_156_res,
         n_cini_module_0__not_module_67_res,
         n_cini_module_0__reg_module_311_res,
         n_cini_module_0__reg_module_310_res,
         n_cini_module_0__and_module_155_res,
         n_cini_module_0__reg_module_309_res,
         n_cini_module_0__xor_module_215_res,
         n_cini_module_0__xor_module_214_res,
         n_cini_module_0__reg_module_308_res,
         n_cini_module_0__and_module_154_res,
         n_cini_module_0__reg_module_307_res,
         n_cini_module_0__majority7_module_65_res,
         n_cini_module_0__reg_module_306_res,
         n_cini_module_0__and_module_153_res,
         n_cini_module_0__not_module_66_res,
         n_cini_module_0__reg_module_305_res,
         n_cini_module_0__xor_module_213_res,
         n_cini_module_0__xor_module_212_res,
         n_cini_module_0__reg_module_304_res,
         n_cini_module_0__and_module_152_res,
         n_cini_module_0__reg_module_303_res,
         n_cini_module_0__majority7_module_64_res,
         n_cini_module_0__reg_module_302_res,
         n_cini_module_0__and_module_151_res,
         n_cini_module_0__not_module_65_res,
         n_cini_module_0__reg_module_301_res,
         n_cini_module_0__xor_module_211_res,
         n_cini_module_0__reg_module_300_res,
         n_cini_module_0__and_module_150_res,
         n_cini_module_0__reg_module_299_res,
         n_cini_module_0__majority7_module_63_res,
         n_cini_module_0__reg_module_298_res,
         n_cini_module_0__and_module_149_res,
         n_cini_module_0__not_module_64_res,
         n_cini_module_0__reg_module_297_res,
         n_cini_module_0__reg_module_296_res,
         n_cini_module_0__and_module_148_res,
         n_cini_module_0__reg_module_295_res,
         n_cini_module_0__xor_module_209_res,
         n_cini_module_0__xor_module_208_res,
         n_cini_module_0__reg_module_294_res,
         n_cini_module_0__and_module_147_res,
         n_cini_module_0__reg_module_293_res,
         n_cini_module_0__majority7_module_62_res,
         n_cini_module_0__reg_module_292_res,
         n_cini_module_0__and_module_146_res,
         n_cini_module_0__not_module_63_res,
         n_cini_module_0__reg_module_291_res,
         n_cini_module_0__xor_module_207_res,
         n_cini_module_0__xor_module_206_res,
         n_cini_module_0__reg_module_290_res,
         n_cini_module_0__and_module_145_res,
         n_cini_module_0__reg_module_289_res,
         n_cini_module_0__majority7_module_61_res,
         n_cini_module_0__reg_module_288_res,
         n_cini_module_0__and_module_144_res,
         n_cini_module_0__not_module_62_res,
         n_cini_module_0__reg_module_287_res,
         n_cini_module_0__xor_module_205_res,
         n_cini_module_0__reg_module_286_res,
         n_cini_module_0__and_module_143_res,
         n_cini_module_0__reg_module_285_res,
         n_cini_module_0__majority7_module_60_res,
         n_cini_module_0__reg_module_284_res,
         n_cini_module_0__and_module_142_res,
         n_cini_module_0__not_module_61_res,
         n_cini_module_0__reg_module_283_res,
         n_cini_module_0__reg_module_282_res,
         n_cini_module_0__and_module_141_res,
         n_cini_module_0__reg_module_281_res,
         n_cini_module_0__xor_module_203_res,
         n_cini_module_0__xor_module_202_res,
         n_cini_module_0__reg_module_280_res,
         n_cini_module_0__and_module_140_res,
         n_cini_module_0__reg_module_279_res,
         n_cini_module_0__majority7_module_59_res,
         n_cini_module_0__reg_module_278_res,
         n_cini_module_0__and_module_139_res,
         n_cini_module_0__not_module_60_res,
         n_cini_module_0__reg_module_277_res,
         n_cini_module_0__xor_module_201_res,
         n_cini_module_0__xor_module_200_res,
         n_cini_module_0__reg_module_276_res,
         n_cini_module_0__and_module_138_res,
         n_cini_module_0__reg_module_275_res,
         n_cini_module_0__majority7_module_58_res,
         n_cini_module_0__reg_module_274_res,
         n_cini_module_0__and_module_137_res,
         n_cini_module_0__not_module_59_res,
         n_cini_module_0__reg_module_273_res,
         n_cini_module_0__xor_module_199_res,
         n_cini_module_0__reg_module_272_res,
         n_cini_module_0__and_module_136_res,
         n_cini_module_0__reg_module_271_res,
         n_cini_module_0__majority7_module_57_res,
         n_cini_module_0__reg_module_270_res,
         n_cini_module_0__and_module_135_res,
         n_cini_module_0__not_module_58_res,
         n_cini_module_0__reg_module_269_res,
         n_cini_module_0__reg_module_268_res,
         n_cini_module_0__and_module_134_res,
         n_cini_module_0__reg_module_267_res,
         n_cini_module_0__xor_module_197_res,
         n_cini_module_0__xor_module_196_res,
         n_cini_module_0__reg_module_266_res,
         n_cini_module_0__and_module_133_res,
         n_cini_module_0__reg_module_265_res,
         n_cini_module_0__majority7_module_56_res,
         n_cini_module_0__reg_module_264_res,
         n_cini_module_0__and_module_132_res,
         n_cini_module_0__not_module_57_res,
         n_cini_module_0__reg_module_263_res,
         n_cini_module_0__xor_module_195_res,
         n_cini_module_0__xor_module_194_res,
         n_cini_module_0__reg_module_262_res,
         n_cini_module_0__and_module_131_res,
         n_cini_module_0__reg_module_261_res,
         n_cini_module_0__majority7_module_55_res,
         n_cini_module_0__reg_module_260_res,
         n_cini_module_0__and_module_130_res,
         n_cini_module_0__not_module_56_res,
         n_cini_module_0__reg_module_259_res,
         n_cini_module_0__xor_module_193_res,
         n_cini_module_0__reg_module_258_res,
         n_cini_module_0__and_module_129_res,
         n_cini_module_0__reg_module_257_res,
         n_cini_module_0__majority7_module_54_res,
         n_cini_module_0__reg_module_256_res,
         n_cini_module_0__and_module_128_res,
         n_cini_module_0__not_module_55_res,
         n_cini_module_0__reg_module_255_res,
         n_cini_module_0__reg_module_254_res,
         n_cini_module_0__and_module_127_res,
         n_cini_module_0__reg_module_253_res,
         n_cini_module_0__xor_module_191_res,
         n_cini_module_0__xor_module_190_res,
         n_cini_module_0__reg_module_252_res,
         n_cini_module_0__and_module_126_res,
         n_cini_module_0__reg_module_251_res,
         n_cini_module_0__majority7_module_53_res,
         n_cini_module_0__reg_module_250_res,
         n_cini_module_0__and_module_125_res,
         n_cini_module_0__not_module_54_res,
         n_cini_module_0__reg_module_249_res,
         n_cini_module_0__xor_module_189_res,
         n_cini_module_0__xor_module_188_res,
         n_cini_module_0__reg_module_248_res,
         n_cini_module_0__and_module_124_res,
         n_cini_module_0__reg_module_247_res,
         n_cini_module_0__majority7_module_52_res,
         n_cini_module_0__reg_module_246_res,
         n_cini_module_0__and_module_123_res,
         n_cini_module_0__not_module_53_res,
         n_cini_module_0__reg_module_245_res,
         n_cini_module_0__xor_module_187_res,
         n_cini_module_0__reg_module_244_res,
         n_cini_module_0__and_module_122_res,
         n_cini_module_0__reg_module_243_res,
         n_cini_module_0__majority7_module_51_res,
         n_cini_module_0__reg_module_242_res,
         n_cini_module_0__and_module_121_res,
         n_cini_module_0__not_module_52_res,
         n_cini_module_0__reg_module_241_res,
         n_cini_module_0__reg_module_240_res,
         n_cini_module_0__and_module_120_res,
         n_cini_module_0__reg_module_239_res,
         n_cini_module_0__xor_module_185_res,
         n_cini_module_0__xor_module_184_res,
         n_cini_module_0__reg_module_238_res,
         n_cini_module_0__and_module_119_res,
         n_cini_module_0__reg_module_237_res,
         n_cini_module_0__majority7_module_50_res,
         n_cini_module_0__reg_module_236_res,
         n_cini_module_0__and_module_118_res,
         n_cini_module_0__not_module_51_res,
         n_cini_module_0__reg_module_235_res,
         n_cini_module_0__xor_module_183_res,
         n_cini_module_0__xor_module_182_res,
         n_cini_module_0__reg_module_234_res,
         n_cini_module_0__and_module_117_res,
         n_cini_module_0__reg_module_233_res,
         n_cini_module_0__majority7_module_49_res,
         n_cini_module_0__reg_module_232_res,
         n_cini_module_0__and_module_116_res,
         n_cini_module_0__not_module_50_res,
         n_cini_module_0__reg_module_231_res,
         n_cini_module_0__xor_module_181_res,
         n_cini_module_0__reg_module_230_res,
         n_cini_module_0__and_module_115_res,
         n_cini_module_0__reg_module_229_res,
         n_cini_module_0__majority7_module_48_res,
         n_cini_module_0__reg_module_228_res,
         n_cini_module_0__and_module_114_res,
         n_cini_module_0__not_module_49_res,
         n_cini_module_0__reg_module_227_res,
         n_cini_module_0__reg_module_226_res,
         n_cini_module_0__and_module_113_res,
         n_cini_module_0__reg_module_225_res,
         n_cini_module_0__xor_module_179_res,
         n_cini_module_0__xor_module_178_res,
         n_cini_module_0__reg_module_224_res,
         n_cini_module_0__and_module_112_res,
         n_cini_module_0__reg_module_223_res,
         n_cini_module_0__majority7_module_47_res,
         n_cini_module_0__reg_module_222_res,
         n_cini_module_0__and_module_111_res,
         n_cini_module_0__not_module_48_res,
         n_cini_module_0__reg_module_221_res,
         n_cini_module_0__xor_module_177_res,
         n_cini_module_0__xor_module_176_res,
         n_cini_module_0__reg_module_220_res,
         n_cini_module_0__and_module_110_res,
         n_cini_module_0__reg_module_219_res,
         n_cini_module_0__majority7_module_46_res,
         n_cini_module_0__reg_module_218_res,
         n_cini_module_0__and_module_109_res,
         n_cini_module_0__not_module_47_res,
         n_cini_module_0__reg_module_217_res,
         n_cini_module_0__xor_module_175_res,
         n_cini_module_0__reg_module_216_res,
         n_cini_module_0__and_module_108_res,
         n_cini_module_0__reg_module_215_res,
         n_cini_module_0__majority7_module_45_res,
         n_cini_module_0__reg_module_214_res,
         n_cini_module_0__and_module_107_res,
         n_cini_module_0__not_module_46_res,
         n_cini_module_0__reg_module_213_res,
         n_cini_module_0__reg_module_212_res,
         n_cini_module_0__and_module_106_res,
         n_cini_module_0__reg_module_211_res,
         n_cini_module_0__xor_module_173_res,
         n_cini_module_0__xor_module_172_res,
         n_cini_module_0__reg_module_210_res,
         n_cini_module_0__and_module_105_res,
         n_cini_module_0__reg_module_209_res,
         n_cini_module_0__majority7_module_44_res,
         n_cini_module_0__reg_module_208_res,
         n_cini_module_0__and_module_104_res,
         n_cini_module_0__not_module_45_res,
         n_cini_module_0__reg_module_207_res,
         n_cini_module_0__xor_module_171_res,
         n_cini_module_0__xor_module_170_res,
         n_cini_module_0__reg_module_206_res,
         n_cini_module_0__and_module_103_res,
         n_cini_module_0__reg_module_205_res,
         n_cini_module_0__majority7_module_43_res,
         n_cini_module_0__reg_module_204_res,
         n_cini_module_0__and_module_102_res,
         n_cini_module_0__not_module_44_res,
         n_cini_module_0__reg_module_203_res,
         n_cini_module_0__xor_module_169_res,
         n_cini_module_0__reg_module_202_res,
         n_cini_module_0__and_module_101_res,
         n_cini_module_0__reg_module_201_res,
         n_cini_module_0__majority7_module_42_res,
         n_cini_module_0__reg_module_200_res,
         n_cini_module_0__and_module_100_res,
         n_cini_module_0__not_module_43_res,
         n_cini_module_0__reg_module_199_res,
         n_cini_module_0__reg_module_198_res,
         n_cini_module_0__and_module_99_res,
         n_cini_module_0__reg_module_197_res,
         n_cini_module_0__xor_module_167_res,
         n_cini_module_0__xor_module_166_res,
         n_cini_module_0__reg_module_196_res,
         n_cini_module_0__and_module_98_res,
         n_cini_module_0__reg_module_195_res,
         n_cini_module_0__majority7_module_41_res,
         n_cini_module_0__reg_module_194_res,
         n_cini_module_0__and_module_97_res,
         n_cini_module_0__not_module_42_res,
         n_cini_module_0__reg_module_193_res,
         n_cini_module_0__xor_module_165_res,
         n_cini_module_0__xor_module_164_res,
         n_cini_module_0__reg_module_192_res,
         n_cini_module_0__and_module_96_res,
         n_cini_module_0__reg_module_191_res,
         n_cini_module_0__majority7_module_40_res,
         n_cini_module_0__reg_module_190_res,
         n_cini_module_0__and_module_95_res,
         n_cini_module_0__not_module_41_res,
         n_cini_module_0__reg_module_189_res,
         n_cini_module_0__xor_module_163_res,
         n_cini_module_0__reg_module_188_res,
         n_cini_module_0__and_module_94_res,
         n_cini_module_0__reg_module_187_res,
         n_cini_module_0__majority7_module_39_res,
         n_cini_module_0__reg_module_186_res,
         n_cini_module_0__and_module_93_res,
         n_cini_module_0__not_module_40_res,
         n_cini_module_0__reg_module_185_res,
         n_cini_module_0__reg_module_184_res,
         n_cini_module_0__and_module_92_res,
         n_cini_module_0__reg_module_183_res,
         n_cini_module_0__xor_module_161_res,
         n_cini_module_0__xor_module_160_res,
         n_cini_module_0__reg_module_182_res,
         n_cini_module_0__and_module_91_res,
         n_cini_module_0__reg_module_181_res,
         n_cini_module_0__majority7_module_38_res,
         n_cini_module_0__reg_module_180_res,
         n_cini_module_0__and_module_90_res,
         n_cini_module_0__not_module_39_res,
         n_cini_module_0__reg_module_179_res,
         n_cini_module_0__xor_module_159_res,
         n_cini_module_0__xor_module_158_res,
         n_cini_module_0__reg_module_178_res,
         n_cini_module_0__and_module_89_res,
         n_cini_module_0__reg_module_177_res,
         n_cini_module_0__majority7_module_37_res,
         n_cini_module_0__reg_module_176_res,
         n_cini_module_0__and_module_88_res,
         n_cini_module_0__not_module_38_res,
         n_cini_module_0__reg_module_175_res,
         n_cini_module_0__xor_module_157_res,
         n_cini_module_0__reg_module_174_res,
         n_cini_module_0__and_module_87_res,
         n_cini_module_0__reg_module_173_res,
         n_cini_module_0__majority7_module_36_res,
         n_cini_module_0__reg_module_172_res,
         n_cini_module_0__and_module_86_res,
         n_cini_module_0__not_module_37_res,
         n_cini_module_0__reg_module_171_res,
         n_cini_module_0__reg_module_170_res,
         n_cini_module_0__and_module_85_res,
         n_cini_module_0__reg_module_169_res,
         n_cini_module_0__xor_module_155_res,
         n_cini_module_0__xor_module_154_res,
         n_cini_module_0__reg_module_168_res,
         n_cini_module_0__and_module_84_res,
         n_cini_module_0__reg_module_167_res,
         n_cini_module_0__majority7_module_35_res,
         n_cini_module_0__reg_module_166_res,
         n_cini_module_0__and_module_83_res,
         n_cini_module_0__not_module_36_res,
         n_cini_module_0__reg_module_165_res,
         n_cini_module_0__xor_module_153_res,
         n_cini_module_0__xor_module_152_res,
         n_cini_module_0__reg_module_164_res,
         n_cini_module_0__and_module_82_res,
         n_cini_module_0__reg_module_163_res,
         n_cini_module_0__majority7_module_34_res,
         n_cini_module_0__reg_module_162_res,
         n_cini_module_0__and_module_81_res,
         n_cini_module_0__not_module_35_res,
         n_cini_module_0__reg_module_161_res,
         n_cini_module_0__xor_module_151_res,
         n_cini_module_0__reg_module_160_res,
         n_cini_module_0__and_module_80_res,
         n_cini_module_0__reg_module_159_res,
         n_cini_module_0__majority7_module_33_res,
         n_cini_module_0__reg_module_158_res,
         n_cini_module_0__and_module_79_res,
         n_cini_module_0__not_module_34_res,
         n_cini_module_0__reg_module_157_res,
         n_cini_module_0__reg_module_156_res,
         n_cini_module_0__and_module_78_res,
         n_cini_module_0__reg_module_155_res,
         n_cini_module_0__xor_module_149_res,
         n_cini_module_0__xor_module_148_res,
         n_cini_module_0__reg_module_154_res,
         n_cini_module_0__and_module_77_res,
         n_cini_module_0__reg_module_153_res,
         n_cini_module_0__majority7_module_32_res,
         n_cini_module_0__reg_module_152_res,
         n_cini_module_0__and_module_76_res,
         n_cini_module_0__not_module_33_res,
         n_cini_module_0__reg_module_151_res,
         n_cini_module_0__xor_module_147_res,
         n_cini_module_0__xor_module_146_res,
         n_cini_module_0__reg_module_150_res,
         n_cini_module_0__and_module_75_res,
         n_cini_module_0__reg_module_149_res,
         n_cini_module_0__majority7_module_31_res,
         n_cini_module_0__reg_module_148_res,
         n_cini_module_0__and_module_74_res,
         n_cini_module_0__not_module_32_res,
         n_cini_module_0__reg_module_147_res,
         n_cini_module_0__xor_module_145_res,
         n_cini_module_0__reg_module_146_res,
         n_cini_module_0__and_module_73_res,
         n_cini_module_0__reg_module_145_res,
         n_cini_module_0__majority7_module_30_res,
         n_cini_module_0__reg_module_144_res,
         n_cini_module_0__and_module_72_res,
         n_cini_module_0__not_module_31_res,
         n_cini_module_0__reg_module_143_res,
         n_cini_module_0__reg_module_142_res,
         n_cini_module_0__and_module_71_res,
         n_cini_module_0__reg_module_141_res,
         n_cini_module_0__xor_module_143_res,
         n_cini_module_0__xor_module_142_res,
         n_cini_module_0__reg_module_140_res,
         n_cini_module_0__and_module_70_res,
         n_cini_module_0__reg_module_139_res,
         n_cini_module_0__majority7_module_29_res,
         n_cini_module_0__reg_module_138_res,
         n_cini_module_0__and_module_69_res,
         n_cini_module_0__not_module_30_res,
         n_cini_module_0__reg_module_137_res,
         n_cini_module_0__xor_module_141_res,
         n_cini_module_0__xor_module_140_res,
         n_cini_module_0__reg_module_136_res,
         n_cini_module_0__and_module_68_res,
         n_cini_module_0__reg_module_135_res,
         n_cini_module_0__majority7_module_28_res,
         n_cini_module_0__reg_module_134_res,
         n_cini_module_0__and_module_67_res,
         n_cini_module_0__not_module_29_res,
         n_cini_module_0__reg_module_133_res,
         n_cini_module_0__xor_module_139_res,
         n_cini_module_0__reg_module_132_res,
         n_cini_module_0__and_module_66_res,
         n_cini_module_0__reg_module_131_res,
         n_cini_module_0__majority7_module_27_res,
         n_cini_module_0__reg_module_130_res,
         n_cini_module_0__and_module_65_res,
         n_cini_module_0__not_module_28_res,
         n_cini_module_0__reg_module_129_res,
         n_cini_module_0__reg_module_128_res,
         n_cini_module_0__and_module_64_res,
         n_cini_module_0__reg_module_127_res,
         n_cini_module_0__xor_module_137_res,
         n_cini_module_0__xor_module_136_res,
         n_cini_module_0__reg_module_126_res,
         n_cini_module_0__and_module_63_res,
         n_cini_module_0__reg_module_125_res,
         n_cini_module_0__majority7_module_26_res,
         n_cini_module_0__reg_module_124_res,
         n_cini_module_0__and_module_62_res,
         n_cini_module_0__not_module_27_res,
         n_cini_module_0__reg_module_123_res,
         n_cini_module_0__xor_module_135_res,
         n_cini_module_0__xor_module_134_res,
         n_cini_module_0__reg_module_122_res,
         n_cini_module_0__and_module_61_res,
         n_cini_module_0__reg_module_121_res,
         n_cini_module_0__majority7_module_25_res,
         n_cini_module_0__reg_module_120_res,
         n_cini_module_0__and_module_60_res,
         n_cini_module_0__not_module_26_res,
         n_cini_module_0__reg_module_119_res,
         n_cini_module_0__xor_module_133_res,
         n_cini_module_0__reg_module_118_res,
         n_cini_module_0__and_module_59_res,
         n_cini_module_0__reg_module_117_res,
         n_cini_module_0__majority7_module_24_res,
         n_cini_module_0__reg_module_116_res,
         n_cini_module_0__and_module_58_res,
         n_cini_module_0__not_module_25_res,
         n_cini_module_0__reg_module_115_res,
         n_cini_module_0__reg_module_114_res,
         n_cini_module_0__and_module_57_res,
         n_cini_module_0__reg_module_113_res,
         n_cini_module_0__xor_module_131_res,
         n_cini_module_0__xor_module_130_res,
         n_cini_module_0__reg_module_112_res,
         n_cini_module_0__and_module_56_res,
         n_cini_module_0__reg_module_111_res,
         n_cini_module_0__majority7_module_23_res,
         n_cini_module_0__reg_module_110_res,
         n_cini_module_0__and_module_55_res,
         n_cini_module_0__not_module_24_res,
         n_cini_module_0__reg_module_109_res,
         n_cini_module_0__xor_module_129_res,
         n_cini_module_0__xor_module_128_res,
         n_cini_module_0__reg_module_108_res,
         n_cini_module_0__and_module_54_res,
         n_cini_module_0__reg_module_107_res,
         n_cini_module_0__majority7_module_22_res,
         n_cini_module_0__reg_module_106_res,
         n_cini_module_0__and_module_53_res,
         n_cini_module_0__not_module_23_res,
         n_cini_module_0__reg_module_105_res,
         n_cini_module_0__xor_module_127_res,
         n_cini_module_0__reg_module_104_res,
         n_cini_module_0__and_module_52_res,
         n_cini_module_0__reg_module_103_res,
         n_cini_module_0__majority7_module_21_res,
         n_cini_module_0__reg_module_102_res,
         n_cini_module_0__and_module_51_res,
         n_cini_module_0__not_module_22_res,
         n_cini_module_0__reg_module_101_res,
         n_cini_module_0__reg_module_100_res,
         n_cini_module_0__and_module_50_res,
         n_cini_module_0__reg_module_99_res,
         n_cini_module_0__xor_module_125_res,
         n_cini_module_0__xor_module_124_res,
         n_cini_module_0__reg_module_98_res,
         n_cini_module_0__and_module_49_res,
         n_cini_module_0__reg_module_97_res,
         n_cini_module_0__majority7_module_20_res,
         n_cini_module_0__reg_module_96_res,
         n_cini_module_0__and_module_48_res,
         n_cini_module_0__not_module_21_res,
         n_cini_module_0__reg_module_95_res,
         n_cini_module_0__xor_module_123_res,
         n_cini_module_0__xor_module_122_res,
         n_cini_module_0__reg_module_94_res,
         n_cini_module_0__and_module_47_res,
         n_cini_module_0__reg_module_93_res,
         n_cini_module_0__majority7_module_19_res,
         n_cini_module_0__reg_module_92_res,
         n_cini_module_0__and_module_46_res,
         n_cini_module_0__not_module_20_res,
         n_cini_module_0__reg_module_91_res,
         n_cini_module_0__xor_module_121_res,
         n_cini_module_0__reg_module_90_res,
         n_cini_module_0__and_module_45_res,
         n_cini_module_0__reg_module_89_res,
         n_cini_module_0__majority7_module_18_res,
         n_cini_module_0__reg_module_88_res,
         n_cini_module_0__and_module_44_res,
         n_cini_module_0__not_module_19_res,
         n_cini_module_0__reg_module_87_res,
         n_cini_module_0__reg_module_86_res,
         n_cini_module_0__and_module_43_res,
         n_cini_module_0__reg_module_85_res,
         n_cini_module_0__xor_module_119_res,
         n_cini_module_0__xor_module_118_res,
         n_cini_module_0__reg_module_84_res,
         n_cini_module_0__and_module_42_res,
         n_cini_module_0__reg_module_83_res,
         n_cini_module_0__majority7_module_17_res,
         n_cini_module_0__reg_module_82_res,
         n_cini_module_0__and_module_41_res,
         n_cini_module_0__not_module_18_res,
         n_cini_module_0__reg_module_81_res,
         n_cini_module_0__xor_module_117_res,
         n_cini_module_0__xor_module_116_res,
         n_cini_module_0__reg_module_80_res,
         n_cini_module_0__and_module_40_res,
         n_cini_module_0__reg_module_79_res,
         n_cini_module_0__majority7_module_16_res,
         n_cini_module_0__reg_module_78_res,
         n_cini_module_0__and_module_39_res,
         n_cini_module_0__not_module_17_res,
         n_cini_module_0__reg_module_77_res,
         n_cini_module_0__xor_module_115_res,
         n_cini_module_0__reg_module_76_res,
         n_cini_module_0__and_module_38_res,
         n_cini_module_0__reg_module_75_res,
         n_cini_module_0__majority7_module_15_res,
         n_cini_module_0__reg_module_74_res,
         n_cini_module_0__and_module_37_res,
         n_cini_module_0__not_module_16_res,
         n_cini_module_0__reg_module_73_res,
         n_cini_module_0__reg_module_72_res,
         n_cini_module_0__and_module_36_res,
         n_cini_module_0__reg_module_71_res,
         n_cini_module_0__xor_module_113_res,
         n_cini_module_0__xor_module_112_res,
         n_cini_module_0__reg_module_70_res,
         n_cini_module_0__and_module_35_res,
         n_cini_module_0__reg_module_69_res,
         n_cini_module_0__majority7_module_14_res,
         n_cini_module_0__reg_module_68_res,
         n_cini_module_0__and_module_34_res,
         n_cini_module_0__not_module_15_res,
         n_cini_module_0__reg_module_67_res,
         n_cini_module_0__xor_module_111_res,
         n_cini_module_0__xor_module_110_res,
         n_cini_module_0__reg_module_66_res,
         n_cini_module_0__and_module_33_res,
         n_cini_module_0__reg_module_65_res,
         n_cini_module_0__majority7_module_13_res,
         n_cini_module_0__reg_module_64_res,
         n_cini_module_0__and_module_32_res,
         n_cini_module_0__not_module_14_res,
         n_cini_module_0__reg_module_63_res,
         n_cini_module_0__xor_module_109_res,
         n_cini_module_0__reg_module_62_res,
         n_cini_module_0__and_module_31_res,
         n_cini_module_0__reg_module_61_res,
         n_cini_module_0__majority7_module_12_res,
         n_cini_module_0__reg_module_60_res,
         n_cini_module_0__and_module_30_res,
         n_cini_module_0__not_module_13_res,
         n_cini_module_0__reg_module_59_res,
         n_cini_module_0__reg_module_58_res,
         n_cini_module_0__and_module_29_res,
         n_cini_module_0__reg_module_57_res,
         n_cini_module_0__xor_module_107_res,
         n_cini_module_0__xor_module_106_res,
         n_cini_module_0__reg_module_56_res,
         n_cini_module_0__and_module_28_res,
         n_cini_module_0__reg_module_55_res,
         n_cini_module_0__majority7_module_11_res,
         n_cini_module_0__reg_module_54_res,
         n_cini_module_0__and_module_27_res,
         n_cini_module_0__not_module_12_res,
         n_cini_module_0__reg_module_53_res,
         n_cini_module_0__xor_module_105_res,
         n_cini_module_0__xor_module_104_res,
         n_cini_module_0__reg_module_52_res,
         n_cini_module_0__and_module_26_res,
         n_cini_module_0__reg_module_51_res,
         n_cini_module_0__majority7_module_10_res,
         n_cini_module_0__reg_module_50_res,
         n_cini_module_0__and_module_25_res,
         n_cini_module_0__not_module_11_res,
         n_cini_module_0__reg_module_49_res,
         n_cini_module_0__xor_module_103_res,
         n_cini_module_0__reg_module_48_res,
         n_cini_module_0__and_module_24_res,
         n_cini_module_0__reg_module_47_res,
         n_cini_module_0__majority7_module_9_res,
         n_cini_module_0__reg_module_46_res,
         n_cini_module_0__and_module_23_res,
         n_cini_module_0__not_module_10_res,
         n_cini_module_0__reg_module_45_res,
         n_cini_module_0__reg_module_44_res,
         n_cini_module_0__and_module_22_res,
         n_cini_module_0__reg_module_43_res,
         n_cini_module_0__xor_module_101_res,
         n_cini_module_0__xor_module_100_res,
         n_cini_module_0__reg_module_42_res,
         n_cini_module_0__and_module_21_res,
         n_cini_module_0__reg_module_41_res,
         n_cini_module_0__majority7_module_8_res,
         n_cini_module_0__reg_module_40_res,
         n_cini_module_0__and_module_20_res, n_cini_module_0__not_module_9_res,
         n_cini_module_0__reg_module_39_res,
         n_cini_module_0__xor_module_99_res,
         n_cini_module_0__xor_module_98_res,
         n_cini_module_0__reg_module_38_res,
         n_cini_module_0__and_module_19_res,
         n_cini_module_0__reg_module_37_res,
         n_cini_module_0__majority7_module_7_res,
         n_cini_module_0__reg_module_36_res,
         n_cini_module_0__and_module_18_res, n_cini_module_0__not_module_8_res,
         n_cini_module_0__reg_module_35_res,
         n_cini_module_0__xor_module_97_res,
         n_cini_module_0__reg_module_34_res,
         n_cini_module_0__and_module_17_res,
         n_cini_module_0__reg_module_33_res,
         n_cini_module_0__majority7_module_6_res,
         n_cini_module_0__reg_module_32_res,
         n_cini_module_0__and_module_16_res, n_cini_module_0__not_module_7_res,
         n_cini_module_0__reg_module_31_res,
         n_cini_module_0__reg_module_30_res,
         n_cini_module_0__and_module_15_res,
         n_cini_module_0__reg_module_29_res,
         n_cini_module_0__xor_module_95_res,
         n_cini_module_0__xor_module_94_res,
         n_cini_module_0__reg_module_28_res,
         n_cini_module_0__and_module_14_res,
         n_cini_module_0__reg_module_27_res,
         n_cini_module_0__majority7_module_5_res,
         n_cini_module_0__reg_module_26_res,
         n_cini_module_0__and_module_13_res, n_cini_module_0__not_module_6_res,
         n_cini_module_0__reg_module_25_res,
         n_cini_module_0__xor_module_93_res,
         n_cini_module_0__xor_module_92_res,
         n_cini_module_0__reg_module_24_res,
         n_cini_module_0__and_module_12_res,
         n_cini_module_0__reg_module_23_res,
         n_cini_module_0__majority7_module_4_res,
         n_cini_module_0__reg_module_22_res,
         n_cini_module_0__and_module_11_res, n_cini_module_0__not_module_5_res,
         n_cini_module_0__reg_module_21_res,
         n_cini_module_0__xor_module_91_res,
         n_cini_module_0__reg_module_20_res,
         n_cini_module_0__and_module_10_res,
         n_cini_module_0__reg_module_19_res,
         n_cini_module_0__majority7_module_3_res,
         n_cini_module_0__reg_module_18_res, n_cini_module_0__and_module_9_res,
         n_cini_module_0__not_module_4_res, n_cini_module_0__reg_module_17_res,
         n_cini_module_0__reg_module_16_res, n_cini_module_0__and_module_8_res,
         n_cini_module_0__reg_module_15_res,
         n_cini_module_0__xor_module_89_res,
         n_cini_module_0__xor_module_88_res,
         n_cini_module_0__reg_module_14_res, n_cini_module_0__and_module_7_res,
         n_cini_module_0__reg_module_13_res,
         n_cini_module_0__majority7_module_2_res,
         n_cini_module_0__reg_module_12_res, n_cini_module_0__and_module_6_res,
         n_cini_module_0__not_module_3_res, n_cini_module_0__reg_module_11_res,
         n_cini_module_0__xor_module_87_res,
         n_cini_module_0__xor_module_86_res,
         n_cini_module_0__reg_module_10_res, n_cini_module_0__and_module_5_res,
         n_cini_module_0__reg_module_9_res,
         n_cini_module_0__majority7_module_1_res,
         n_cini_module_0__reg_module_8_res, n_cini_module_0__and_module_4_res,
         n_cini_module_0__not_module_2_res, n_cini_module_0__reg_module_7_res,
         n_cini_module_0__xor_module_85_res, n_cini_module_0__reg_module_6_res,
         n_cini_module_0__and_module_3_res, n_cini_module_0__reg_module_5_res,
         n_cini_module_0__majority7_module_0_res,
         n_cini_module_0__reg_module_4_res, n_cini_module_0__and_module_2_res,
         n_cini_module_0__not_module_1_res, n_cini_module_0__reg_module_3_res,
         n_cini_module_0__reg_module_2_res, n_cini_module_0__and_module_1_res,
         n_cini_module_0__reg_module_1_res, n_cini_module_0__xor_module_84_res,
         n_cini_module_0__xor_module_83_res,
         n_cini_module_0__xor_module_82_res,
         n_cini_module_0__xor_module_81_res,
         n_cini_module_0__xor_module_80_res,
         n_cini_module_0__xor_module_79_res,
         n_cini_module_0__xor_module_78_res,
         n_cini_module_0__xor_module_77_res,
         n_cini_module_0__xor_module_76_res,
         n_cini_module_0__xor_module_75_res,
         n_cini_module_0__xor_module_74_res,
         n_cini_module_0__xor_module_73_res,
         n_cini_module_0__xor_module_72_res,
         n_cini_module_0__xor_module_71_res,
         n_cini_module_0__xor_module_70_res,
         n_cini_module_0__xor_module_69_res,
         n_cini_module_0__xor_module_68_res,
         n_cini_module_0__xor_module_67_res,
         n_cini_module_0__xor_module_66_res,
         n_cini_module_0__xor_module_65_res,
         n_cini_module_0__xor_module_64_res,
         n_cini_module_0__xor_module_63_res,
         n_cini_module_0__xor_module_62_res,
         n_cini_module_0__xor_module_61_res,
         n_cini_module_0__xor_module_60_res,
         n_cini_module_0__xor_module_59_res,
         n_cini_module_0__xor_module_58_res,
         n_cini_module_0__xor_module_57_res,
         n_cini_module_0__xor_module_56_res,
         n_cini_module_0__xor_module_55_res,
         n_cini_module_0__xor_module_54_res,
         n_cini_module_0__xor_module_53_res,
         n_cini_module_0__xor_module_52_res,
         n_cini_module_0__xor_module_51_res,
         n_cini_module_0__xor_module_50_res,
         n_cini_module_0__xor_module_49_res,
         n_cini_module_0__xor_module_48_res,
         n_cini_module_0__xor_module_47_res,
         n_cini_module_0__xor_module_46_res,
         n_cini_module_0__xor_module_45_res,
         n_cini_module_0__xor_module_44_res,
         n_cini_module_0__xor_module_43_res,
         n_cini_module_0__xor_module_42_res,
         n_cini_module_0__xor_module_41_res,
         n_cini_module_0__xor_module_40_res,
         n_cini_module_0__xor_module_39_res,
         n_cini_module_0__xor_module_38_res,
         n_cini_module_0__xor_module_37_res,
         n_cini_module_0__xor_module_36_res,
         n_cini_module_0__xor_module_35_res,
         n_cini_module_0__xor_module_34_res,
         n_cini_module_0__xor_module_33_res,
         n_cini_module_0__xor_module_32_res,
         n_cini_module_0__xor_module_31_res,
         n_cini_module_0__xor_module_30_res,
         n_cini_module_0__xor_module_29_res,
         n_cini_module_0__xor_module_28_res,
         n_cini_module_0__xor_module_27_res,
         n_cini_module_0__xor_module_26_res,
         n_cini_module_0__xor_module_25_res,
         n_cini_module_0__xor_module_24_res,
         n_cini_module_0__xor_module_23_res,
         n_cini_module_0__xor_module_22_res,
         n_cini_module_0__xor_module_21_res,
         n_cini_module_0__xor_module_20_res,
         n_cini_module_0__xor_module_19_res,
         n_cini_module_0__xor_module_18_res,
         n_cini_module_0__xor_module_17_res,
         n_cini_module_0__xor_module_16_res,
         n_cini_module_0__xor_module_15_res,
         n_cini_module_0__xor_module_14_res,
         n_cini_module_0__xor_module_13_res,
         n_cini_module_0__xor_module_12_res,
         n_cini_module_0__xor_module_11_res,
         n_cini_module_0__xor_module_10_res, n_cini_module_0__xor_module_9_res,
         n_cini_module_0__xor_module_8_res, n_cini_module_0__xor_module_7_res,
         n_cini_module_0__xor_module_6_res, n_cini_module_0__xor_module_5_res,
         n_cini_module_0__xor_module_4_res, n_cini_module_0__xor_module_3_res,
         n_cini_module_0__xor_module_2_res, n_cini_module_0__xor_module_1_res,
         n_cini_module_0__majority7_module_0_n17,
         n_cini_module_0__majority7_module_0_n16,
         n_cini_module_0__majority7_module_0_n15,
         n_cini_module_0__majority7_module_0_n14,
         n_cini_module_0__majority7_module_0_n13,
         n_cini_module_0__majority7_module_0_n12,
         n_cini_module_0__majority7_module_0_n11,
         n_cini_module_0__majority7_module_0_n10,
         n_cini_module_0__majority7_module_0_n9,
         n_cini_module_0__majority7_module_0_n8,
         n_cini_module_0__majority7_module_0_n7,
         n_cini_module_0__majority7_module_0_n6,
         n_cini_module_0__majority7_module_0_n5,
         n_cini_module_0__majority7_module_0_n4,
         n_cini_module_0__majority7_module_0_n3,
         n_cini_module_0__majority7_module_0_n2,
         n_cini_module_0__majority7_module_0_n1,
         n_cini_module_0__majority7_module_1_n17,
         n_cini_module_0__majority7_module_1_n16,
         n_cini_module_0__majority7_module_1_n15,
         n_cini_module_0__majority7_module_1_n14,
         n_cini_module_0__majority7_module_1_n13,
         n_cini_module_0__majority7_module_1_n12,
         n_cini_module_0__majority7_module_1_n11,
         n_cini_module_0__majority7_module_1_n10,
         n_cini_module_0__majority7_module_1_n9,
         n_cini_module_0__majority7_module_1_n8,
         n_cini_module_0__majority7_module_1_n7,
         n_cini_module_0__majority7_module_1_n6,
         n_cini_module_0__majority7_module_1_n5,
         n_cini_module_0__majority7_module_1_n4,
         n_cini_module_0__majority7_module_1_n3,
         n_cini_module_0__majority7_module_1_n2,
         n_cini_module_0__majority7_module_1_n1,
         n_cini_module_0__majority7_module_2_n17,
         n_cini_module_0__majority7_module_2_n16,
         n_cini_module_0__majority7_module_2_n15,
         n_cini_module_0__majority7_module_2_n14,
         n_cini_module_0__majority7_module_2_n13,
         n_cini_module_0__majority7_module_2_n12,
         n_cini_module_0__majority7_module_2_n11,
         n_cini_module_0__majority7_module_2_n10,
         n_cini_module_0__majority7_module_2_n9,
         n_cini_module_0__majority7_module_2_n8,
         n_cini_module_0__majority7_module_2_n7,
         n_cini_module_0__majority7_module_2_n6,
         n_cini_module_0__majority7_module_2_n5,
         n_cini_module_0__majority7_module_2_n4,
         n_cini_module_0__majority7_module_2_n3,
         n_cini_module_0__majority7_module_2_n2,
         n_cini_module_0__majority7_module_2_n1,
         n_cini_module_0__majority7_module_3_n17,
         n_cini_module_0__majority7_module_3_n16,
         n_cini_module_0__majority7_module_3_n15,
         n_cini_module_0__majority7_module_3_n14,
         n_cini_module_0__majority7_module_3_n13,
         n_cini_module_0__majority7_module_3_n12,
         n_cini_module_0__majority7_module_3_n11,
         n_cini_module_0__majority7_module_3_n10,
         n_cini_module_0__majority7_module_3_n9,
         n_cini_module_0__majority7_module_3_n8,
         n_cini_module_0__majority7_module_3_n7,
         n_cini_module_0__majority7_module_3_n6,
         n_cini_module_0__majority7_module_3_n5,
         n_cini_module_0__majority7_module_3_n4,
         n_cini_module_0__majority7_module_3_n3,
         n_cini_module_0__majority7_module_3_n2,
         n_cini_module_0__majority7_module_3_n1,
         n_cini_module_0__majority7_module_4_n17,
         n_cini_module_0__majority7_module_4_n16,
         n_cini_module_0__majority7_module_4_n15,
         n_cini_module_0__majority7_module_4_n14,
         n_cini_module_0__majority7_module_4_n13,
         n_cini_module_0__majority7_module_4_n12,
         n_cini_module_0__majority7_module_4_n11,
         n_cini_module_0__majority7_module_4_n10,
         n_cini_module_0__majority7_module_4_n9,
         n_cini_module_0__majority7_module_4_n8,
         n_cini_module_0__majority7_module_4_n7,
         n_cini_module_0__majority7_module_4_n6,
         n_cini_module_0__majority7_module_4_n5,
         n_cini_module_0__majority7_module_4_n4,
         n_cini_module_0__majority7_module_4_n3,
         n_cini_module_0__majority7_module_4_n2,
         n_cini_module_0__majority7_module_4_n1,
         n_cini_module_0__majority7_module_5_n17,
         n_cini_module_0__majority7_module_5_n16,
         n_cini_module_0__majority7_module_5_n15,
         n_cini_module_0__majority7_module_5_n14,
         n_cini_module_0__majority7_module_5_n13,
         n_cini_module_0__majority7_module_5_n12,
         n_cini_module_0__majority7_module_5_n11,
         n_cini_module_0__majority7_module_5_n10,
         n_cini_module_0__majority7_module_5_n9,
         n_cini_module_0__majority7_module_5_n8,
         n_cini_module_0__majority7_module_5_n7,
         n_cini_module_0__majority7_module_5_n6,
         n_cini_module_0__majority7_module_5_n5,
         n_cini_module_0__majority7_module_5_n4,
         n_cini_module_0__majority7_module_5_n3,
         n_cini_module_0__majority7_module_5_n2,
         n_cini_module_0__majority7_module_5_n1,
         n_cini_module_0__majority7_module_6_n17,
         n_cini_module_0__majority7_module_6_n16,
         n_cini_module_0__majority7_module_6_n15,
         n_cini_module_0__majority7_module_6_n14,
         n_cini_module_0__majority7_module_6_n13,
         n_cini_module_0__majority7_module_6_n12,
         n_cini_module_0__majority7_module_6_n11,
         n_cini_module_0__majority7_module_6_n10,
         n_cini_module_0__majority7_module_6_n9,
         n_cini_module_0__majority7_module_6_n8,
         n_cini_module_0__majority7_module_6_n7,
         n_cini_module_0__majority7_module_6_n6,
         n_cini_module_0__majority7_module_6_n5,
         n_cini_module_0__majority7_module_6_n4,
         n_cini_module_0__majority7_module_6_n3,
         n_cini_module_0__majority7_module_6_n2,
         n_cini_module_0__majority7_module_6_n1,
         n_cini_module_0__majority7_module_7_n17,
         n_cini_module_0__majority7_module_7_n16,
         n_cini_module_0__majority7_module_7_n15,
         n_cini_module_0__majority7_module_7_n14,
         n_cini_module_0__majority7_module_7_n13,
         n_cini_module_0__majority7_module_7_n12,
         n_cini_module_0__majority7_module_7_n11,
         n_cini_module_0__majority7_module_7_n10,
         n_cini_module_0__majority7_module_7_n9,
         n_cini_module_0__majority7_module_7_n8,
         n_cini_module_0__majority7_module_7_n7,
         n_cini_module_0__majority7_module_7_n6,
         n_cini_module_0__majority7_module_7_n5,
         n_cini_module_0__majority7_module_7_n4,
         n_cini_module_0__majority7_module_7_n3,
         n_cini_module_0__majority7_module_7_n2,
         n_cini_module_0__majority7_module_7_n1,
         n_cini_module_0__majority7_module_8_n17,
         n_cini_module_0__majority7_module_8_n16,
         n_cini_module_0__majority7_module_8_n15,
         n_cini_module_0__majority7_module_8_n14,
         n_cini_module_0__majority7_module_8_n13,
         n_cini_module_0__majority7_module_8_n12,
         n_cini_module_0__majority7_module_8_n11,
         n_cini_module_0__majority7_module_8_n10,
         n_cini_module_0__majority7_module_8_n9,
         n_cini_module_0__majority7_module_8_n8,
         n_cini_module_0__majority7_module_8_n7,
         n_cini_module_0__majority7_module_8_n6,
         n_cini_module_0__majority7_module_8_n5,
         n_cini_module_0__majority7_module_8_n4,
         n_cini_module_0__majority7_module_8_n3,
         n_cini_module_0__majority7_module_8_n2,
         n_cini_module_0__majority7_module_8_n1,
         n_cini_module_0__majority7_module_9_n17,
         n_cini_module_0__majority7_module_9_n16,
         n_cini_module_0__majority7_module_9_n15,
         n_cini_module_0__majority7_module_9_n14,
         n_cini_module_0__majority7_module_9_n13,
         n_cini_module_0__majority7_module_9_n12,
         n_cini_module_0__majority7_module_9_n11,
         n_cini_module_0__majority7_module_9_n10,
         n_cini_module_0__majority7_module_9_n9,
         n_cini_module_0__majority7_module_9_n8,
         n_cini_module_0__majority7_module_9_n7,
         n_cini_module_0__majority7_module_9_n6,
         n_cini_module_0__majority7_module_9_n5,
         n_cini_module_0__majority7_module_9_n4,
         n_cini_module_0__majority7_module_9_n3,
         n_cini_module_0__majority7_module_9_n2,
         n_cini_module_0__majority7_module_9_n1,
         n_cini_module_0__majority7_module_10_n17,
         n_cini_module_0__majority7_module_10_n16,
         n_cini_module_0__majority7_module_10_n15,
         n_cini_module_0__majority7_module_10_n14,
         n_cini_module_0__majority7_module_10_n13,
         n_cini_module_0__majority7_module_10_n12,
         n_cini_module_0__majority7_module_10_n11,
         n_cini_module_0__majority7_module_10_n10,
         n_cini_module_0__majority7_module_10_n9,
         n_cini_module_0__majority7_module_10_n8,
         n_cini_module_0__majority7_module_10_n7,
         n_cini_module_0__majority7_module_10_n6,
         n_cini_module_0__majority7_module_10_n5,
         n_cini_module_0__majority7_module_10_n4,
         n_cini_module_0__majority7_module_10_n3,
         n_cini_module_0__majority7_module_10_n2,
         n_cini_module_0__majority7_module_10_n1,
         n_cini_module_0__majority7_module_11_n17,
         n_cini_module_0__majority7_module_11_n16,
         n_cini_module_0__majority7_module_11_n15,
         n_cini_module_0__majority7_module_11_n14,
         n_cini_module_0__majority7_module_11_n13,
         n_cini_module_0__majority7_module_11_n12,
         n_cini_module_0__majority7_module_11_n11,
         n_cini_module_0__majority7_module_11_n10,
         n_cini_module_0__majority7_module_11_n9,
         n_cini_module_0__majority7_module_11_n8,
         n_cini_module_0__majority7_module_11_n7,
         n_cini_module_0__majority7_module_11_n6,
         n_cini_module_0__majority7_module_11_n5,
         n_cini_module_0__majority7_module_11_n4,
         n_cini_module_0__majority7_module_11_n3,
         n_cini_module_0__majority7_module_11_n2,
         n_cini_module_0__majority7_module_11_n1,
         n_cini_module_0__majority7_module_12_n17,
         n_cini_module_0__majority7_module_12_n16,
         n_cini_module_0__majority7_module_12_n15,
         n_cini_module_0__majority7_module_12_n14,
         n_cini_module_0__majority7_module_12_n13,
         n_cini_module_0__majority7_module_12_n12,
         n_cini_module_0__majority7_module_12_n11,
         n_cini_module_0__majority7_module_12_n10,
         n_cini_module_0__majority7_module_12_n9,
         n_cini_module_0__majority7_module_12_n8,
         n_cini_module_0__majority7_module_12_n7,
         n_cini_module_0__majority7_module_12_n6,
         n_cini_module_0__majority7_module_12_n5,
         n_cini_module_0__majority7_module_12_n4,
         n_cini_module_0__majority7_module_12_n3,
         n_cini_module_0__majority7_module_12_n2,
         n_cini_module_0__majority7_module_12_n1,
         n_cini_module_0__majority7_module_13_n17,
         n_cini_module_0__majority7_module_13_n16,
         n_cini_module_0__majority7_module_13_n15,
         n_cini_module_0__majority7_module_13_n14,
         n_cini_module_0__majority7_module_13_n13,
         n_cini_module_0__majority7_module_13_n12,
         n_cini_module_0__majority7_module_13_n11,
         n_cini_module_0__majority7_module_13_n10,
         n_cini_module_0__majority7_module_13_n9,
         n_cini_module_0__majority7_module_13_n8,
         n_cini_module_0__majority7_module_13_n7,
         n_cini_module_0__majority7_module_13_n6,
         n_cini_module_0__majority7_module_13_n5,
         n_cini_module_0__majority7_module_13_n4,
         n_cini_module_0__majority7_module_13_n3,
         n_cini_module_0__majority7_module_13_n2,
         n_cini_module_0__majority7_module_13_n1,
         n_cini_module_0__majority7_module_14_n17,
         n_cini_module_0__majority7_module_14_n16,
         n_cini_module_0__majority7_module_14_n15,
         n_cini_module_0__majority7_module_14_n14,
         n_cini_module_0__majority7_module_14_n13,
         n_cini_module_0__majority7_module_14_n12,
         n_cini_module_0__majority7_module_14_n11,
         n_cini_module_0__majority7_module_14_n10,
         n_cini_module_0__majority7_module_14_n9,
         n_cini_module_0__majority7_module_14_n8,
         n_cini_module_0__majority7_module_14_n7,
         n_cini_module_0__majority7_module_14_n6,
         n_cini_module_0__majority7_module_14_n5,
         n_cini_module_0__majority7_module_14_n4,
         n_cini_module_0__majority7_module_14_n3,
         n_cini_module_0__majority7_module_14_n2,
         n_cini_module_0__majority7_module_14_n1,
         n_cini_module_0__majority7_module_15_n17,
         n_cini_module_0__majority7_module_15_n16,
         n_cini_module_0__majority7_module_15_n15,
         n_cini_module_0__majority7_module_15_n14,
         n_cini_module_0__majority7_module_15_n13,
         n_cini_module_0__majority7_module_15_n12,
         n_cini_module_0__majority7_module_15_n11,
         n_cini_module_0__majority7_module_15_n10,
         n_cini_module_0__majority7_module_15_n9,
         n_cini_module_0__majority7_module_15_n8,
         n_cini_module_0__majority7_module_15_n7,
         n_cini_module_0__majority7_module_15_n6,
         n_cini_module_0__majority7_module_15_n5,
         n_cini_module_0__majority7_module_15_n4,
         n_cini_module_0__majority7_module_15_n3,
         n_cini_module_0__majority7_module_15_n2,
         n_cini_module_0__majority7_module_15_n1,
         n_cini_module_0__majority7_module_16_n17,
         n_cini_module_0__majority7_module_16_n16,
         n_cini_module_0__majority7_module_16_n15,
         n_cini_module_0__majority7_module_16_n14,
         n_cini_module_0__majority7_module_16_n13,
         n_cini_module_0__majority7_module_16_n12,
         n_cini_module_0__majority7_module_16_n11,
         n_cini_module_0__majority7_module_16_n10,
         n_cini_module_0__majority7_module_16_n9,
         n_cini_module_0__majority7_module_16_n8,
         n_cini_module_0__majority7_module_16_n7,
         n_cini_module_0__majority7_module_16_n6,
         n_cini_module_0__majority7_module_16_n5,
         n_cini_module_0__majority7_module_16_n4,
         n_cini_module_0__majority7_module_16_n3,
         n_cini_module_0__majority7_module_16_n2,
         n_cini_module_0__majority7_module_16_n1,
         n_cini_module_0__majority7_module_17_n17,
         n_cini_module_0__majority7_module_17_n16,
         n_cini_module_0__majority7_module_17_n15,
         n_cini_module_0__majority7_module_17_n14,
         n_cini_module_0__majority7_module_17_n13,
         n_cini_module_0__majority7_module_17_n12,
         n_cini_module_0__majority7_module_17_n11,
         n_cini_module_0__majority7_module_17_n10,
         n_cini_module_0__majority7_module_17_n9,
         n_cini_module_0__majority7_module_17_n8,
         n_cini_module_0__majority7_module_17_n7,
         n_cini_module_0__majority7_module_17_n6,
         n_cini_module_0__majority7_module_17_n5,
         n_cini_module_0__majority7_module_17_n4,
         n_cini_module_0__majority7_module_17_n3,
         n_cini_module_0__majority7_module_17_n2,
         n_cini_module_0__majority7_module_17_n1,
         n_cini_module_0__majority7_module_18_n17,
         n_cini_module_0__majority7_module_18_n16,
         n_cini_module_0__majority7_module_18_n15,
         n_cini_module_0__majority7_module_18_n14,
         n_cini_module_0__majority7_module_18_n13,
         n_cini_module_0__majority7_module_18_n12,
         n_cini_module_0__majority7_module_18_n11,
         n_cini_module_0__majority7_module_18_n10,
         n_cini_module_0__majority7_module_18_n9,
         n_cini_module_0__majority7_module_18_n8,
         n_cini_module_0__majority7_module_18_n7,
         n_cini_module_0__majority7_module_18_n6,
         n_cini_module_0__majority7_module_18_n5,
         n_cini_module_0__majority7_module_18_n4,
         n_cini_module_0__majority7_module_18_n3,
         n_cini_module_0__majority7_module_18_n2,
         n_cini_module_0__majority7_module_18_n1,
         n_cini_module_0__majority7_module_19_n17,
         n_cini_module_0__majority7_module_19_n16,
         n_cini_module_0__majority7_module_19_n15,
         n_cini_module_0__majority7_module_19_n14,
         n_cini_module_0__majority7_module_19_n13,
         n_cini_module_0__majority7_module_19_n12,
         n_cini_module_0__majority7_module_19_n11,
         n_cini_module_0__majority7_module_19_n10,
         n_cini_module_0__majority7_module_19_n9,
         n_cini_module_0__majority7_module_19_n8,
         n_cini_module_0__majority7_module_19_n7,
         n_cini_module_0__majority7_module_19_n6,
         n_cini_module_0__majority7_module_19_n5,
         n_cini_module_0__majority7_module_19_n4,
         n_cini_module_0__majority7_module_19_n3,
         n_cini_module_0__majority7_module_19_n2,
         n_cini_module_0__majority7_module_19_n1,
         n_cini_module_0__majority7_module_20_n17,
         n_cini_module_0__majority7_module_20_n16,
         n_cini_module_0__majority7_module_20_n15,
         n_cini_module_0__majority7_module_20_n14,
         n_cini_module_0__majority7_module_20_n13,
         n_cini_module_0__majority7_module_20_n12,
         n_cini_module_0__majority7_module_20_n11,
         n_cini_module_0__majority7_module_20_n10,
         n_cini_module_0__majority7_module_20_n9,
         n_cini_module_0__majority7_module_20_n8,
         n_cini_module_0__majority7_module_20_n7,
         n_cini_module_0__majority7_module_20_n6,
         n_cini_module_0__majority7_module_20_n5,
         n_cini_module_0__majority7_module_20_n4,
         n_cini_module_0__majority7_module_20_n3,
         n_cini_module_0__majority7_module_20_n2,
         n_cini_module_0__majority7_module_20_n1,
         n_cini_module_0__majority7_module_21_n17,
         n_cini_module_0__majority7_module_21_n16,
         n_cini_module_0__majority7_module_21_n15,
         n_cini_module_0__majority7_module_21_n14,
         n_cini_module_0__majority7_module_21_n13,
         n_cini_module_0__majority7_module_21_n12,
         n_cini_module_0__majority7_module_21_n11,
         n_cini_module_0__majority7_module_21_n10,
         n_cini_module_0__majority7_module_21_n9,
         n_cini_module_0__majority7_module_21_n8,
         n_cini_module_0__majority7_module_21_n7,
         n_cini_module_0__majority7_module_21_n6,
         n_cini_module_0__majority7_module_21_n5,
         n_cini_module_0__majority7_module_21_n4,
         n_cini_module_0__majority7_module_21_n3,
         n_cini_module_0__majority7_module_21_n2,
         n_cini_module_0__majority7_module_21_n1,
         n_cini_module_0__majority7_module_22_n17,
         n_cini_module_0__majority7_module_22_n16,
         n_cini_module_0__majority7_module_22_n15,
         n_cini_module_0__majority7_module_22_n14,
         n_cini_module_0__majority7_module_22_n13,
         n_cini_module_0__majority7_module_22_n12,
         n_cini_module_0__majority7_module_22_n11,
         n_cini_module_0__majority7_module_22_n10,
         n_cini_module_0__majority7_module_22_n9,
         n_cini_module_0__majority7_module_22_n8,
         n_cini_module_0__majority7_module_22_n7,
         n_cini_module_0__majority7_module_22_n6,
         n_cini_module_0__majority7_module_22_n5,
         n_cini_module_0__majority7_module_22_n4,
         n_cini_module_0__majority7_module_22_n3,
         n_cini_module_0__majority7_module_22_n2,
         n_cini_module_0__majority7_module_22_n1,
         n_cini_module_0__majority7_module_23_n17,
         n_cini_module_0__majority7_module_23_n16,
         n_cini_module_0__majority7_module_23_n15,
         n_cini_module_0__majority7_module_23_n14,
         n_cini_module_0__majority7_module_23_n13,
         n_cini_module_0__majority7_module_23_n12,
         n_cini_module_0__majority7_module_23_n11,
         n_cini_module_0__majority7_module_23_n10,
         n_cini_module_0__majority7_module_23_n9,
         n_cini_module_0__majority7_module_23_n8,
         n_cini_module_0__majority7_module_23_n7,
         n_cini_module_0__majority7_module_23_n6,
         n_cini_module_0__majority7_module_23_n5,
         n_cini_module_0__majority7_module_23_n4,
         n_cini_module_0__majority7_module_23_n3,
         n_cini_module_0__majority7_module_23_n2,
         n_cini_module_0__majority7_module_23_n1,
         n_cini_module_0__majority7_module_24_n17,
         n_cini_module_0__majority7_module_24_n16,
         n_cini_module_0__majority7_module_24_n15,
         n_cini_module_0__majority7_module_24_n14,
         n_cini_module_0__majority7_module_24_n13,
         n_cini_module_0__majority7_module_24_n12,
         n_cini_module_0__majority7_module_24_n11,
         n_cini_module_0__majority7_module_24_n10,
         n_cini_module_0__majority7_module_24_n9,
         n_cini_module_0__majority7_module_24_n8,
         n_cini_module_0__majority7_module_24_n7,
         n_cini_module_0__majority7_module_24_n6,
         n_cini_module_0__majority7_module_24_n5,
         n_cini_module_0__majority7_module_24_n4,
         n_cini_module_0__majority7_module_24_n3,
         n_cini_module_0__majority7_module_24_n2,
         n_cini_module_0__majority7_module_24_n1,
         n_cini_module_0__majority7_module_25_n17,
         n_cini_module_0__majority7_module_25_n16,
         n_cini_module_0__majority7_module_25_n15,
         n_cini_module_0__majority7_module_25_n14,
         n_cini_module_0__majority7_module_25_n13,
         n_cini_module_0__majority7_module_25_n12,
         n_cini_module_0__majority7_module_25_n11,
         n_cini_module_0__majority7_module_25_n10,
         n_cini_module_0__majority7_module_25_n9,
         n_cini_module_0__majority7_module_25_n8,
         n_cini_module_0__majority7_module_25_n7,
         n_cini_module_0__majority7_module_25_n6,
         n_cini_module_0__majority7_module_25_n5,
         n_cini_module_0__majority7_module_25_n4,
         n_cini_module_0__majority7_module_25_n3,
         n_cini_module_0__majority7_module_25_n2,
         n_cini_module_0__majority7_module_25_n1,
         n_cini_module_0__majority7_module_26_n17,
         n_cini_module_0__majority7_module_26_n16,
         n_cini_module_0__majority7_module_26_n15,
         n_cini_module_0__majority7_module_26_n14,
         n_cini_module_0__majority7_module_26_n13,
         n_cini_module_0__majority7_module_26_n12,
         n_cini_module_0__majority7_module_26_n11,
         n_cini_module_0__majority7_module_26_n10,
         n_cini_module_0__majority7_module_26_n9,
         n_cini_module_0__majority7_module_26_n8,
         n_cini_module_0__majority7_module_26_n7,
         n_cini_module_0__majority7_module_26_n6,
         n_cini_module_0__majority7_module_26_n5,
         n_cini_module_0__majority7_module_26_n4,
         n_cini_module_0__majority7_module_26_n3,
         n_cini_module_0__majority7_module_26_n2,
         n_cini_module_0__majority7_module_26_n1,
         n_cini_module_0__majority7_module_27_n17,
         n_cini_module_0__majority7_module_27_n16,
         n_cini_module_0__majority7_module_27_n15,
         n_cini_module_0__majority7_module_27_n14,
         n_cini_module_0__majority7_module_27_n13,
         n_cini_module_0__majority7_module_27_n12,
         n_cini_module_0__majority7_module_27_n11,
         n_cini_module_0__majority7_module_27_n10,
         n_cini_module_0__majority7_module_27_n9,
         n_cini_module_0__majority7_module_27_n8,
         n_cini_module_0__majority7_module_27_n7,
         n_cini_module_0__majority7_module_27_n6,
         n_cini_module_0__majority7_module_27_n5,
         n_cini_module_0__majority7_module_27_n4,
         n_cini_module_0__majority7_module_27_n3,
         n_cini_module_0__majority7_module_27_n2,
         n_cini_module_0__majority7_module_27_n1,
         n_cini_module_0__majority7_module_28_n17,
         n_cini_module_0__majority7_module_28_n16,
         n_cini_module_0__majority7_module_28_n15,
         n_cini_module_0__majority7_module_28_n14,
         n_cini_module_0__majority7_module_28_n13,
         n_cini_module_0__majority7_module_28_n12,
         n_cini_module_0__majority7_module_28_n11,
         n_cini_module_0__majority7_module_28_n10,
         n_cini_module_0__majority7_module_28_n9,
         n_cini_module_0__majority7_module_28_n8,
         n_cini_module_0__majority7_module_28_n7,
         n_cini_module_0__majority7_module_28_n6,
         n_cini_module_0__majority7_module_28_n5,
         n_cini_module_0__majority7_module_28_n4,
         n_cini_module_0__majority7_module_28_n3,
         n_cini_module_0__majority7_module_28_n2,
         n_cini_module_0__majority7_module_28_n1,
         n_cini_module_0__majority7_module_29_n17,
         n_cini_module_0__majority7_module_29_n16,
         n_cini_module_0__majority7_module_29_n15,
         n_cini_module_0__majority7_module_29_n14,
         n_cini_module_0__majority7_module_29_n13,
         n_cini_module_0__majority7_module_29_n12,
         n_cini_module_0__majority7_module_29_n11,
         n_cini_module_0__majority7_module_29_n10,
         n_cini_module_0__majority7_module_29_n9,
         n_cini_module_0__majority7_module_29_n8,
         n_cini_module_0__majority7_module_29_n7,
         n_cini_module_0__majority7_module_29_n6,
         n_cini_module_0__majority7_module_29_n5,
         n_cini_module_0__majority7_module_29_n4,
         n_cini_module_0__majority7_module_29_n3,
         n_cini_module_0__majority7_module_29_n2,
         n_cini_module_0__majority7_module_29_n1,
         n_cini_module_0__majority7_module_30_n17,
         n_cini_module_0__majority7_module_30_n16,
         n_cini_module_0__majority7_module_30_n15,
         n_cini_module_0__majority7_module_30_n14,
         n_cini_module_0__majority7_module_30_n13,
         n_cini_module_0__majority7_module_30_n12,
         n_cini_module_0__majority7_module_30_n11,
         n_cini_module_0__majority7_module_30_n10,
         n_cini_module_0__majority7_module_30_n9,
         n_cini_module_0__majority7_module_30_n8,
         n_cini_module_0__majority7_module_30_n7,
         n_cini_module_0__majority7_module_30_n6,
         n_cini_module_0__majority7_module_30_n5,
         n_cini_module_0__majority7_module_30_n4,
         n_cini_module_0__majority7_module_30_n3,
         n_cini_module_0__majority7_module_30_n2,
         n_cini_module_0__majority7_module_30_n1,
         n_cini_module_0__majority7_module_31_n17,
         n_cini_module_0__majority7_module_31_n16,
         n_cini_module_0__majority7_module_31_n15,
         n_cini_module_0__majority7_module_31_n14,
         n_cini_module_0__majority7_module_31_n13,
         n_cini_module_0__majority7_module_31_n12,
         n_cini_module_0__majority7_module_31_n11,
         n_cini_module_0__majority7_module_31_n10,
         n_cini_module_0__majority7_module_31_n9,
         n_cini_module_0__majority7_module_31_n8,
         n_cini_module_0__majority7_module_31_n7,
         n_cini_module_0__majority7_module_31_n6,
         n_cini_module_0__majority7_module_31_n5,
         n_cini_module_0__majority7_module_31_n4,
         n_cini_module_0__majority7_module_31_n3,
         n_cini_module_0__majority7_module_31_n2,
         n_cini_module_0__majority7_module_31_n1,
         n_cini_module_0__majority7_module_32_n17,
         n_cini_module_0__majority7_module_32_n16,
         n_cini_module_0__majority7_module_32_n15,
         n_cini_module_0__majority7_module_32_n14,
         n_cini_module_0__majority7_module_32_n13,
         n_cini_module_0__majority7_module_32_n12,
         n_cini_module_0__majority7_module_32_n11,
         n_cini_module_0__majority7_module_32_n10,
         n_cini_module_0__majority7_module_32_n9,
         n_cini_module_0__majority7_module_32_n8,
         n_cini_module_0__majority7_module_32_n7,
         n_cini_module_0__majority7_module_32_n6,
         n_cini_module_0__majority7_module_32_n5,
         n_cini_module_0__majority7_module_32_n4,
         n_cini_module_0__majority7_module_32_n3,
         n_cini_module_0__majority7_module_32_n2,
         n_cini_module_0__majority7_module_32_n1,
         n_cini_module_0__majority7_module_33_n17,
         n_cini_module_0__majority7_module_33_n16,
         n_cini_module_0__majority7_module_33_n15,
         n_cini_module_0__majority7_module_33_n14,
         n_cini_module_0__majority7_module_33_n13,
         n_cini_module_0__majority7_module_33_n12,
         n_cini_module_0__majority7_module_33_n11,
         n_cini_module_0__majority7_module_33_n10,
         n_cini_module_0__majority7_module_33_n9,
         n_cini_module_0__majority7_module_33_n8,
         n_cini_module_0__majority7_module_33_n7,
         n_cini_module_0__majority7_module_33_n6,
         n_cini_module_0__majority7_module_33_n5,
         n_cini_module_0__majority7_module_33_n4,
         n_cini_module_0__majority7_module_33_n3,
         n_cini_module_0__majority7_module_33_n2,
         n_cini_module_0__majority7_module_33_n1,
         n_cini_module_0__majority7_module_34_n17,
         n_cini_module_0__majority7_module_34_n16,
         n_cini_module_0__majority7_module_34_n15,
         n_cini_module_0__majority7_module_34_n14,
         n_cini_module_0__majority7_module_34_n13,
         n_cini_module_0__majority7_module_34_n12,
         n_cini_module_0__majority7_module_34_n11,
         n_cini_module_0__majority7_module_34_n10,
         n_cini_module_0__majority7_module_34_n9,
         n_cini_module_0__majority7_module_34_n8,
         n_cini_module_0__majority7_module_34_n7,
         n_cini_module_0__majority7_module_34_n6,
         n_cini_module_0__majority7_module_34_n5,
         n_cini_module_0__majority7_module_34_n4,
         n_cini_module_0__majority7_module_34_n3,
         n_cini_module_0__majority7_module_34_n2,
         n_cini_module_0__majority7_module_34_n1,
         n_cini_module_0__majority7_module_35_n17,
         n_cini_module_0__majority7_module_35_n16,
         n_cini_module_0__majority7_module_35_n15,
         n_cini_module_0__majority7_module_35_n14,
         n_cini_module_0__majority7_module_35_n13,
         n_cini_module_0__majority7_module_35_n12,
         n_cini_module_0__majority7_module_35_n11,
         n_cini_module_0__majority7_module_35_n10,
         n_cini_module_0__majority7_module_35_n9,
         n_cini_module_0__majority7_module_35_n8,
         n_cini_module_0__majority7_module_35_n7,
         n_cini_module_0__majority7_module_35_n6,
         n_cini_module_0__majority7_module_35_n5,
         n_cini_module_0__majority7_module_35_n4,
         n_cini_module_0__majority7_module_35_n3,
         n_cini_module_0__majority7_module_35_n2,
         n_cini_module_0__majority7_module_35_n1,
         n_cini_module_0__majority7_module_36_n17,
         n_cini_module_0__majority7_module_36_n16,
         n_cini_module_0__majority7_module_36_n15,
         n_cini_module_0__majority7_module_36_n14,
         n_cini_module_0__majority7_module_36_n13,
         n_cini_module_0__majority7_module_36_n12,
         n_cini_module_0__majority7_module_36_n11,
         n_cini_module_0__majority7_module_36_n10,
         n_cini_module_0__majority7_module_36_n9,
         n_cini_module_0__majority7_module_36_n8,
         n_cini_module_0__majority7_module_36_n7,
         n_cini_module_0__majority7_module_36_n6,
         n_cini_module_0__majority7_module_36_n5,
         n_cini_module_0__majority7_module_36_n4,
         n_cini_module_0__majority7_module_36_n3,
         n_cini_module_0__majority7_module_36_n2,
         n_cini_module_0__majority7_module_36_n1,
         n_cini_module_0__majority7_module_37_n17,
         n_cini_module_0__majority7_module_37_n16,
         n_cini_module_0__majority7_module_37_n15,
         n_cini_module_0__majority7_module_37_n14,
         n_cini_module_0__majority7_module_37_n13,
         n_cini_module_0__majority7_module_37_n12,
         n_cini_module_0__majority7_module_37_n11,
         n_cini_module_0__majority7_module_37_n10,
         n_cini_module_0__majority7_module_37_n9,
         n_cini_module_0__majority7_module_37_n8,
         n_cini_module_0__majority7_module_37_n7,
         n_cini_module_0__majority7_module_37_n6,
         n_cini_module_0__majority7_module_37_n5,
         n_cini_module_0__majority7_module_37_n4,
         n_cini_module_0__majority7_module_37_n3,
         n_cini_module_0__majority7_module_37_n2,
         n_cini_module_0__majority7_module_37_n1,
         n_cini_module_0__majority7_module_38_n17,
         n_cini_module_0__majority7_module_38_n16,
         n_cini_module_0__majority7_module_38_n15,
         n_cini_module_0__majority7_module_38_n14,
         n_cini_module_0__majority7_module_38_n13,
         n_cini_module_0__majority7_module_38_n12,
         n_cini_module_0__majority7_module_38_n11,
         n_cini_module_0__majority7_module_38_n10,
         n_cini_module_0__majority7_module_38_n9,
         n_cini_module_0__majority7_module_38_n8,
         n_cini_module_0__majority7_module_38_n7,
         n_cini_module_0__majority7_module_38_n6,
         n_cini_module_0__majority7_module_38_n5,
         n_cini_module_0__majority7_module_38_n4,
         n_cini_module_0__majority7_module_38_n3,
         n_cini_module_0__majority7_module_38_n2,
         n_cini_module_0__majority7_module_38_n1,
         n_cini_module_0__majority7_module_39_n17,
         n_cini_module_0__majority7_module_39_n16,
         n_cini_module_0__majority7_module_39_n15,
         n_cini_module_0__majority7_module_39_n14,
         n_cini_module_0__majority7_module_39_n13,
         n_cini_module_0__majority7_module_39_n12,
         n_cini_module_0__majority7_module_39_n11,
         n_cini_module_0__majority7_module_39_n10,
         n_cini_module_0__majority7_module_39_n9,
         n_cini_module_0__majority7_module_39_n8,
         n_cini_module_0__majority7_module_39_n7,
         n_cini_module_0__majority7_module_39_n6,
         n_cini_module_0__majority7_module_39_n5,
         n_cini_module_0__majority7_module_39_n4,
         n_cini_module_0__majority7_module_39_n3,
         n_cini_module_0__majority7_module_39_n2,
         n_cini_module_0__majority7_module_39_n1,
         n_cini_module_0__majority7_module_40_n17,
         n_cini_module_0__majority7_module_40_n16,
         n_cini_module_0__majority7_module_40_n15,
         n_cini_module_0__majority7_module_40_n14,
         n_cini_module_0__majority7_module_40_n13,
         n_cini_module_0__majority7_module_40_n12,
         n_cini_module_0__majority7_module_40_n11,
         n_cini_module_0__majority7_module_40_n10,
         n_cini_module_0__majority7_module_40_n9,
         n_cini_module_0__majority7_module_40_n8,
         n_cini_module_0__majority7_module_40_n7,
         n_cini_module_0__majority7_module_40_n6,
         n_cini_module_0__majority7_module_40_n5,
         n_cini_module_0__majority7_module_40_n4,
         n_cini_module_0__majority7_module_40_n3,
         n_cini_module_0__majority7_module_40_n2,
         n_cini_module_0__majority7_module_40_n1,
         n_cini_module_0__majority7_module_41_n17,
         n_cini_module_0__majority7_module_41_n16,
         n_cini_module_0__majority7_module_41_n15,
         n_cini_module_0__majority7_module_41_n14,
         n_cini_module_0__majority7_module_41_n13,
         n_cini_module_0__majority7_module_41_n12,
         n_cini_module_0__majority7_module_41_n11,
         n_cini_module_0__majority7_module_41_n10,
         n_cini_module_0__majority7_module_41_n9,
         n_cini_module_0__majority7_module_41_n8,
         n_cini_module_0__majority7_module_41_n7,
         n_cini_module_0__majority7_module_41_n6,
         n_cini_module_0__majority7_module_41_n5,
         n_cini_module_0__majority7_module_41_n4,
         n_cini_module_0__majority7_module_41_n3,
         n_cini_module_0__majority7_module_41_n2,
         n_cini_module_0__majority7_module_41_n1,
         n_cini_module_0__majority7_module_42_n17,
         n_cini_module_0__majority7_module_42_n16,
         n_cini_module_0__majority7_module_42_n15,
         n_cini_module_0__majority7_module_42_n14,
         n_cini_module_0__majority7_module_42_n13,
         n_cini_module_0__majority7_module_42_n12,
         n_cini_module_0__majority7_module_42_n11,
         n_cini_module_0__majority7_module_42_n10,
         n_cini_module_0__majority7_module_42_n9,
         n_cini_module_0__majority7_module_42_n8,
         n_cini_module_0__majority7_module_42_n7,
         n_cini_module_0__majority7_module_42_n6,
         n_cini_module_0__majority7_module_42_n5,
         n_cini_module_0__majority7_module_42_n4,
         n_cini_module_0__majority7_module_42_n3,
         n_cini_module_0__majority7_module_42_n2,
         n_cini_module_0__majority7_module_42_n1,
         n_cini_module_0__majority7_module_43_n17,
         n_cini_module_0__majority7_module_43_n16,
         n_cini_module_0__majority7_module_43_n15,
         n_cini_module_0__majority7_module_43_n14,
         n_cini_module_0__majority7_module_43_n13,
         n_cini_module_0__majority7_module_43_n12,
         n_cini_module_0__majority7_module_43_n11,
         n_cini_module_0__majority7_module_43_n10,
         n_cini_module_0__majority7_module_43_n9,
         n_cini_module_0__majority7_module_43_n8,
         n_cini_module_0__majority7_module_43_n7,
         n_cini_module_0__majority7_module_43_n6,
         n_cini_module_0__majority7_module_43_n5,
         n_cini_module_0__majority7_module_43_n4,
         n_cini_module_0__majority7_module_43_n3,
         n_cini_module_0__majority7_module_43_n2,
         n_cini_module_0__majority7_module_43_n1,
         n_cini_module_0__majority7_module_44_n17,
         n_cini_module_0__majority7_module_44_n16,
         n_cini_module_0__majority7_module_44_n15,
         n_cini_module_0__majority7_module_44_n14,
         n_cini_module_0__majority7_module_44_n13,
         n_cini_module_0__majority7_module_44_n12,
         n_cini_module_0__majority7_module_44_n11,
         n_cini_module_0__majority7_module_44_n10,
         n_cini_module_0__majority7_module_44_n9,
         n_cini_module_0__majority7_module_44_n8,
         n_cini_module_0__majority7_module_44_n7,
         n_cini_module_0__majority7_module_44_n6,
         n_cini_module_0__majority7_module_44_n5,
         n_cini_module_0__majority7_module_44_n4,
         n_cini_module_0__majority7_module_44_n3,
         n_cini_module_0__majority7_module_44_n2,
         n_cini_module_0__majority7_module_44_n1,
         n_cini_module_0__majority7_module_45_n17,
         n_cini_module_0__majority7_module_45_n16,
         n_cini_module_0__majority7_module_45_n15,
         n_cini_module_0__majority7_module_45_n14,
         n_cini_module_0__majority7_module_45_n13,
         n_cini_module_0__majority7_module_45_n12,
         n_cini_module_0__majority7_module_45_n11,
         n_cini_module_0__majority7_module_45_n10,
         n_cini_module_0__majority7_module_45_n9,
         n_cini_module_0__majority7_module_45_n8,
         n_cini_module_0__majority7_module_45_n7,
         n_cini_module_0__majority7_module_45_n6,
         n_cini_module_0__majority7_module_45_n5,
         n_cini_module_0__majority7_module_45_n4,
         n_cini_module_0__majority7_module_45_n3,
         n_cini_module_0__majority7_module_45_n2,
         n_cini_module_0__majority7_module_45_n1,
         n_cini_module_0__majority7_module_46_n17,
         n_cini_module_0__majority7_module_46_n16,
         n_cini_module_0__majority7_module_46_n15,
         n_cini_module_0__majority7_module_46_n14,
         n_cini_module_0__majority7_module_46_n13,
         n_cini_module_0__majority7_module_46_n12,
         n_cini_module_0__majority7_module_46_n11,
         n_cini_module_0__majority7_module_46_n10,
         n_cini_module_0__majority7_module_46_n9,
         n_cini_module_0__majority7_module_46_n8,
         n_cini_module_0__majority7_module_46_n7,
         n_cini_module_0__majority7_module_46_n6,
         n_cini_module_0__majority7_module_46_n5,
         n_cini_module_0__majority7_module_46_n4,
         n_cini_module_0__majority7_module_46_n3,
         n_cini_module_0__majority7_module_46_n2,
         n_cini_module_0__majority7_module_46_n1,
         n_cini_module_0__majority7_module_47_n17,
         n_cini_module_0__majority7_module_47_n16,
         n_cini_module_0__majority7_module_47_n15,
         n_cini_module_0__majority7_module_47_n14,
         n_cini_module_0__majority7_module_47_n13,
         n_cini_module_0__majority7_module_47_n12,
         n_cini_module_0__majority7_module_47_n11,
         n_cini_module_0__majority7_module_47_n10,
         n_cini_module_0__majority7_module_47_n9,
         n_cini_module_0__majority7_module_47_n8,
         n_cini_module_0__majority7_module_47_n7,
         n_cini_module_0__majority7_module_47_n6,
         n_cini_module_0__majority7_module_47_n5,
         n_cini_module_0__majority7_module_47_n4,
         n_cini_module_0__majority7_module_47_n3,
         n_cini_module_0__majority7_module_47_n2,
         n_cini_module_0__majority7_module_47_n1,
         n_cini_module_0__majority7_module_48_n17,
         n_cini_module_0__majority7_module_48_n16,
         n_cini_module_0__majority7_module_48_n15,
         n_cini_module_0__majority7_module_48_n14,
         n_cini_module_0__majority7_module_48_n13,
         n_cini_module_0__majority7_module_48_n12,
         n_cini_module_0__majority7_module_48_n11,
         n_cini_module_0__majority7_module_48_n10,
         n_cini_module_0__majority7_module_48_n9,
         n_cini_module_0__majority7_module_48_n8,
         n_cini_module_0__majority7_module_48_n7,
         n_cini_module_0__majority7_module_48_n6,
         n_cini_module_0__majority7_module_48_n5,
         n_cini_module_0__majority7_module_48_n4,
         n_cini_module_0__majority7_module_48_n3,
         n_cini_module_0__majority7_module_48_n2,
         n_cini_module_0__majority7_module_48_n1,
         n_cini_module_0__majority7_module_49_n17,
         n_cini_module_0__majority7_module_49_n16,
         n_cini_module_0__majority7_module_49_n15,
         n_cini_module_0__majority7_module_49_n14,
         n_cini_module_0__majority7_module_49_n13,
         n_cini_module_0__majority7_module_49_n12,
         n_cini_module_0__majority7_module_49_n11,
         n_cini_module_0__majority7_module_49_n10,
         n_cini_module_0__majority7_module_49_n9,
         n_cini_module_0__majority7_module_49_n8,
         n_cini_module_0__majority7_module_49_n7,
         n_cini_module_0__majority7_module_49_n6,
         n_cini_module_0__majority7_module_49_n5,
         n_cini_module_0__majority7_module_49_n4,
         n_cini_module_0__majority7_module_49_n3,
         n_cini_module_0__majority7_module_49_n2,
         n_cini_module_0__majority7_module_49_n1,
         n_cini_module_0__majority7_module_50_n17,
         n_cini_module_0__majority7_module_50_n16,
         n_cini_module_0__majority7_module_50_n15,
         n_cini_module_0__majority7_module_50_n14,
         n_cini_module_0__majority7_module_50_n13,
         n_cini_module_0__majority7_module_50_n12,
         n_cini_module_0__majority7_module_50_n11,
         n_cini_module_0__majority7_module_50_n10,
         n_cini_module_0__majority7_module_50_n9,
         n_cini_module_0__majority7_module_50_n8,
         n_cini_module_0__majority7_module_50_n7,
         n_cini_module_0__majority7_module_50_n6,
         n_cini_module_0__majority7_module_50_n5,
         n_cini_module_0__majority7_module_50_n4,
         n_cini_module_0__majority7_module_50_n3,
         n_cini_module_0__majority7_module_50_n2,
         n_cini_module_0__majority7_module_50_n1,
         n_cini_module_0__majority7_module_51_n17,
         n_cini_module_0__majority7_module_51_n16,
         n_cini_module_0__majority7_module_51_n15,
         n_cini_module_0__majority7_module_51_n14,
         n_cini_module_0__majority7_module_51_n13,
         n_cini_module_0__majority7_module_51_n12,
         n_cini_module_0__majority7_module_51_n11,
         n_cini_module_0__majority7_module_51_n10,
         n_cini_module_0__majority7_module_51_n9,
         n_cini_module_0__majority7_module_51_n8,
         n_cini_module_0__majority7_module_51_n7,
         n_cini_module_0__majority7_module_51_n6,
         n_cini_module_0__majority7_module_51_n5,
         n_cini_module_0__majority7_module_51_n4,
         n_cini_module_0__majority7_module_51_n3,
         n_cini_module_0__majority7_module_51_n2,
         n_cini_module_0__majority7_module_51_n1,
         n_cini_module_0__majority7_module_52_n17,
         n_cini_module_0__majority7_module_52_n16,
         n_cini_module_0__majority7_module_52_n15,
         n_cini_module_0__majority7_module_52_n14,
         n_cini_module_0__majority7_module_52_n13,
         n_cini_module_0__majority7_module_52_n12,
         n_cini_module_0__majority7_module_52_n11,
         n_cini_module_0__majority7_module_52_n10,
         n_cini_module_0__majority7_module_52_n9,
         n_cini_module_0__majority7_module_52_n8,
         n_cini_module_0__majority7_module_52_n7,
         n_cini_module_0__majority7_module_52_n6,
         n_cini_module_0__majority7_module_52_n5,
         n_cini_module_0__majority7_module_52_n4,
         n_cini_module_0__majority7_module_52_n3,
         n_cini_module_0__majority7_module_52_n2,
         n_cini_module_0__majority7_module_52_n1,
         n_cini_module_0__majority7_module_53_n17,
         n_cini_module_0__majority7_module_53_n16,
         n_cini_module_0__majority7_module_53_n15,
         n_cini_module_0__majority7_module_53_n14,
         n_cini_module_0__majority7_module_53_n13,
         n_cini_module_0__majority7_module_53_n12,
         n_cini_module_0__majority7_module_53_n11,
         n_cini_module_0__majority7_module_53_n10,
         n_cini_module_0__majority7_module_53_n9,
         n_cini_module_0__majority7_module_53_n8,
         n_cini_module_0__majority7_module_53_n7,
         n_cini_module_0__majority7_module_53_n6,
         n_cini_module_0__majority7_module_53_n5,
         n_cini_module_0__majority7_module_53_n4,
         n_cini_module_0__majority7_module_53_n3,
         n_cini_module_0__majority7_module_53_n2,
         n_cini_module_0__majority7_module_53_n1,
         n_cini_module_0__majority7_module_54_n17,
         n_cini_module_0__majority7_module_54_n16,
         n_cini_module_0__majority7_module_54_n15,
         n_cini_module_0__majority7_module_54_n14,
         n_cini_module_0__majority7_module_54_n13,
         n_cini_module_0__majority7_module_54_n12,
         n_cini_module_0__majority7_module_54_n11,
         n_cini_module_0__majority7_module_54_n10,
         n_cini_module_0__majority7_module_54_n9,
         n_cini_module_0__majority7_module_54_n8,
         n_cini_module_0__majority7_module_54_n7,
         n_cini_module_0__majority7_module_54_n6,
         n_cini_module_0__majority7_module_54_n5,
         n_cini_module_0__majority7_module_54_n4,
         n_cini_module_0__majority7_module_54_n3,
         n_cini_module_0__majority7_module_54_n2,
         n_cini_module_0__majority7_module_54_n1,
         n_cini_module_0__majority7_module_55_n17,
         n_cini_module_0__majority7_module_55_n16,
         n_cini_module_0__majority7_module_55_n15,
         n_cini_module_0__majority7_module_55_n14,
         n_cini_module_0__majority7_module_55_n13,
         n_cini_module_0__majority7_module_55_n12,
         n_cini_module_0__majority7_module_55_n11,
         n_cini_module_0__majority7_module_55_n10,
         n_cini_module_0__majority7_module_55_n9,
         n_cini_module_0__majority7_module_55_n8,
         n_cini_module_0__majority7_module_55_n7,
         n_cini_module_0__majority7_module_55_n6,
         n_cini_module_0__majority7_module_55_n5,
         n_cini_module_0__majority7_module_55_n4,
         n_cini_module_0__majority7_module_55_n3,
         n_cini_module_0__majority7_module_55_n2,
         n_cini_module_0__majority7_module_55_n1,
         n_cini_module_0__majority7_module_56_n17,
         n_cini_module_0__majority7_module_56_n16,
         n_cini_module_0__majority7_module_56_n15,
         n_cini_module_0__majority7_module_56_n14,
         n_cini_module_0__majority7_module_56_n13,
         n_cini_module_0__majority7_module_56_n12,
         n_cini_module_0__majority7_module_56_n11,
         n_cini_module_0__majority7_module_56_n10,
         n_cini_module_0__majority7_module_56_n9,
         n_cini_module_0__majority7_module_56_n8,
         n_cini_module_0__majority7_module_56_n7,
         n_cini_module_0__majority7_module_56_n6,
         n_cini_module_0__majority7_module_56_n5,
         n_cini_module_0__majority7_module_56_n4,
         n_cini_module_0__majority7_module_56_n3,
         n_cini_module_0__majority7_module_56_n2,
         n_cini_module_0__majority7_module_56_n1,
         n_cini_module_0__majority7_module_57_n17,
         n_cini_module_0__majority7_module_57_n16,
         n_cini_module_0__majority7_module_57_n15,
         n_cini_module_0__majority7_module_57_n14,
         n_cini_module_0__majority7_module_57_n13,
         n_cini_module_0__majority7_module_57_n12,
         n_cini_module_0__majority7_module_57_n11,
         n_cini_module_0__majority7_module_57_n10,
         n_cini_module_0__majority7_module_57_n9,
         n_cini_module_0__majority7_module_57_n8,
         n_cini_module_0__majority7_module_57_n7,
         n_cini_module_0__majority7_module_57_n6,
         n_cini_module_0__majority7_module_57_n5,
         n_cini_module_0__majority7_module_57_n4,
         n_cini_module_0__majority7_module_57_n3,
         n_cini_module_0__majority7_module_57_n2,
         n_cini_module_0__majority7_module_57_n1,
         n_cini_module_0__majority7_module_58_n17,
         n_cini_module_0__majority7_module_58_n16,
         n_cini_module_0__majority7_module_58_n15,
         n_cini_module_0__majority7_module_58_n14,
         n_cini_module_0__majority7_module_58_n13,
         n_cini_module_0__majority7_module_58_n12,
         n_cini_module_0__majority7_module_58_n11,
         n_cini_module_0__majority7_module_58_n10,
         n_cini_module_0__majority7_module_58_n9,
         n_cini_module_0__majority7_module_58_n8,
         n_cini_module_0__majority7_module_58_n7,
         n_cini_module_0__majority7_module_58_n6,
         n_cini_module_0__majority7_module_58_n5,
         n_cini_module_0__majority7_module_58_n4,
         n_cini_module_0__majority7_module_58_n3,
         n_cini_module_0__majority7_module_58_n2,
         n_cini_module_0__majority7_module_58_n1,
         n_cini_module_0__majority7_module_59_n17,
         n_cini_module_0__majority7_module_59_n16,
         n_cini_module_0__majority7_module_59_n15,
         n_cini_module_0__majority7_module_59_n14,
         n_cini_module_0__majority7_module_59_n13,
         n_cini_module_0__majority7_module_59_n12,
         n_cini_module_0__majority7_module_59_n11,
         n_cini_module_0__majority7_module_59_n10,
         n_cini_module_0__majority7_module_59_n9,
         n_cini_module_0__majority7_module_59_n8,
         n_cini_module_0__majority7_module_59_n7,
         n_cini_module_0__majority7_module_59_n6,
         n_cini_module_0__majority7_module_59_n5,
         n_cini_module_0__majority7_module_59_n4,
         n_cini_module_0__majority7_module_59_n3,
         n_cini_module_0__majority7_module_59_n2,
         n_cini_module_0__majority7_module_59_n1,
         n_cini_module_0__majority7_module_60_n17,
         n_cini_module_0__majority7_module_60_n16,
         n_cini_module_0__majority7_module_60_n15,
         n_cini_module_0__majority7_module_60_n14,
         n_cini_module_0__majority7_module_60_n13,
         n_cini_module_0__majority7_module_60_n12,
         n_cini_module_0__majority7_module_60_n11,
         n_cini_module_0__majority7_module_60_n10,
         n_cini_module_0__majority7_module_60_n9,
         n_cini_module_0__majority7_module_60_n8,
         n_cini_module_0__majority7_module_60_n7,
         n_cini_module_0__majority7_module_60_n6,
         n_cini_module_0__majority7_module_60_n5,
         n_cini_module_0__majority7_module_60_n4,
         n_cini_module_0__majority7_module_60_n3,
         n_cini_module_0__majority7_module_60_n2,
         n_cini_module_0__majority7_module_60_n1,
         n_cini_module_0__majority7_module_61_n17,
         n_cini_module_0__majority7_module_61_n16,
         n_cini_module_0__majority7_module_61_n15,
         n_cini_module_0__majority7_module_61_n14,
         n_cini_module_0__majority7_module_61_n13,
         n_cini_module_0__majority7_module_61_n12,
         n_cini_module_0__majority7_module_61_n11,
         n_cini_module_0__majority7_module_61_n10,
         n_cini_module_0__majority7_module_61_n9,
         n_cini_module_0__majority7_module_61_n8,
         n_cini_module_0__majority7_module_61_n7,
         n_cini_module_0__majority7_module_61_n6,
         n_cini_module_0__majority7_module_61_n5,
         n_cini_module_0__majority7_module_61_n4,
         n_cini_module_0__majority7_module_61_n3,
         n_cini_module_0__majority7_module_61_n2,
         n_cini_module_0__majority7_module_61_n1,
         n_cini_module_0__majority7_module_62_n17,
         n_cini_module_0__majority7_module_62_n16,
         n_cini_module_0__majority7_module_62_n15,
         n_cini_module_0__majority7_module_62_n14,
         n_cini_module_0__majority7_module_62_n13,
         n_cini_module_0__majority7_module_62_n12,
         n_cini_module_0__majority7_module_62_n11,
         n_cini_module_0__majority7_module_62_n10,
         n_cini_module_0__majority7_module_62_n9,
         n_cini_module_0__majority7_module_62_n8,
         n_cini_module_0__majority7_module_62_n7,
         n_cini_module_0__majority7_module_62_n6,
         n_cini_module_0__majority7_module_62_n5,
         n_cini_module_0__majority7_module_62_n4,
         n_cini_module_0__majority7_module_62_n3,
         n_cini_module_0__majority7_module_62_n2,
         n_cini_module_0__majority7_module_62_n1,
         n_cini_module_0__majority7_module_63_n17,
         n_cini_module_0__majority7_module_63_n16,
         n_cini_module_0__majority7_module_63_n15,
         n_cini_module_0__majority7_module_63_n14,
         n_cini_module_0__majority7_module_63_n13,
         n_cini_module_0__majority7_module_63_n12,
         n_cini_module_0__majority7_module_63_n11,
         n_cini_module_0__majority7_module_63_n10,
         n_cini_module_0__majority7_module_63_n9,
         n_cini_module_0__majority7_module_63_n8,
         n_cini_module_0__majority7_module_63_n7,
         n_cini_module_0__majority7_module_63_n6,
         n_cini_module_0__majority7_module_63_n5,
         n_cini_module_0__majority7_module_63_n4,
         n_cini_module_0__majority7_module_63_n3,
         n_cini_module_0__majority7_module_63_n2,
         n_cini_module_0__majority7_module_63_n1,
         n_cini_module_0__majority7_module_64_n17,
         n_cini_module_0__majority7_module_64_n16,
         n_cini_module_0__majority7_module_64_n15,
         n_cini_module_0__majority7_module_64_n14,
         n_cini_module_0__majority7_module_64_n13,
         n_cini_module_0__majority7_module_64_n12,
         n_cini_module_0__majority7_module_64_n11,
         n_cini_module_0__majority7_module_64_n10,
         n_cini_module_0__majority7_module_64_n9,
         n_cini_module_0__majority7_module_64_n8,
         n_cini_module_0__majority7_module_64_n7,
         n_cini_module_0__majority7_module_64_n6,
         n_cini_module_0__majority7_module_64_n5,
         n_cini_module_0__majority7_module_64_n4,
         n_cini_module_0__majority7_module_64_n3,
         n_cini_module_0__majority7_module_64_n2,
         n_cini_module_0__majority7_module_64_n1,
         n_cini_module_0__majority7_module_65_n17,
         n_cini_module_0__majority7_module_65_n16,
         n_cini_module_0__majority7_module_65_n15,
         n_cini_module_0__majority7_module_65_n14,
         n_cini_module_0__majority7_module_65_n13,
         n_cini_module_0__majority7_module_65_n12,
         n_cini_module_0__majority7_module_65_n11,
         n_cini_module_0__majority7_module_65_n10,
         n_cini_module_0__majority7_module_65_n9,
         n_cini_module_0__majority7_module_65_n8,
         n_cini_module_0__majority7_module_65_n7,
         n_cini_module_0__majority7_module_65_n6,
         n_cini_module_0__majority7_module_65_n5,
         n_cini_module_0__majority7_module_65_n4,
         n_cini_module_0__majority7_module_65_n3,
         n_cini_module_0__majority7_module_65_n2,
         n_cini_module_0__majority7_module_65_n1,
         n_cini_module_0__majority7_module_66_n17,
         n_cini_module_0__majority7_module_66_n16,
         n_cini_module_0__majority7_module_66_n15,
         n_cini_module_0__majority7_module_66_n14,
         n_cini_module_0__majority7_module_66_n13,
         n_cini_module_0__majority7_module_66_n12,
         n_cini_module_0__majority7_module_66_n11,
         n_cini_module_0__majority7_module_66_n10,
         n_cini_module_0__majority7_module_66_n9,
         n_cini_module_0__majority7_module_66_n8,
         n_cini_module_0__majority7_module_66_n7,
         n_cini_module_0__majority7_module_66_n6,
         n_cini_module_0__majority7_module_66_n5,
         n_cini_module_0__majority7_module_66_n4,
         n_cini_module_0__majority7_module_66_n3,
         n_cini_module_0__majority7_module_66_n2,
         n_cini_module_0__majority7_module_66_n1,
         n_cini_module_0__majority7_module_67_n17,
         n_cini_module_0__majority7_module_67_n16,
         n_cini_module_0__majority7_module_67_n15,
         n_cini_module_0__majority7_module_67_n14,
         n_cini_module_0__majority7_module_67_n13,
         n_cini_module_0__majority7_module_67_n12,
         n_cini_module_0__majority7_module_67_n11,
         n_cini_module_0__majority7_module_67_n10,
         n_cini_module_0__majority7_module_67_n9,
         n_cini_module_0__majority7_module_67_n8,
         n_cini_module_0__majority7_module_67_n7,
         n_cini_module_0__majority7_module_67_n6,
         n_cini_module_0__majority7_module_67_n5,
         n_cini_module_0__majority7_module_67_n4,
         n_cini_module_0__majority7_module_67_n3,
         n_cini_module_0__majority7_module_67_n2,
         n_cini_module_0__majority7_module_67_n1,
         n_cini_module_0__majority7_module_68_n17,
         n_cini_module_0__majority7_module_68_n16,
         n_cini_module_0__majority7_module_68_n15,
         n_cini_module_0__majority7_module_68_n14,
         n_cini_module_0__majority7_module_68_n13,
         n_cini_module_0__majority7_module_68_n12,
         n_cini_module_0__majority7_module_68_n11,
         n_cini_module_0__majority7_module_68_n10,
         n_cini_module_0__majority7_module_68_n9,
         n_cini_module_0__majority7_module_68_n8,
         n_cini_module_0__majority7_module_68_n7,
         n_cini_module_0__majority7_module_68_n6,
         n_cini_module_0__majority7_module_68_n5,
         n_cini_module_0__majority7_module_68_n4,
         n_cini_module_0__majority7_module_68_n3,
         n_cini_module_0__majority7_module_68_n2,
         n_cini_module_0__majority7_module_68_n1,
         n_cini_module_0__majority7_module_69_n17,
         n_cini_module_0__majority7_module_69_n16,
         n_cini_module_0__majority7_module_69_n15,
         n_cini_module_0__majority7_module_69_n14,
         n_cini_module_0__majority7_module_69_n13,
         n_cini_module_0__majority7_module_69_n12,
         n_cini_module_0__majority7_module_69_n11,
         n_cini_module_0__majority7_module_69_n10,
         n_cini_module_0__majority7_module_69_n9,
         n_cini_module_0__majority7_module_69_n8,
         n_cini_module_0__majority7_module_69_n7,
         n_cini_module_0__majority7_module_69_n6,
         n_cini_module_0__majority7_module_69_n5,
         n_cini_module_0__majority7_module_69_n4,
         n_cini_module_0__majority7_module_69_n3,
         n_cini_module_0__majority7_module_69_n2,
         n_cini_module_0__majority7_module_69_n1,
         n_cini_module_0__majority7_module_70_n17,
         n_cini_module_0__majority7_module_70_n16,
         n_cini_module_0__majority7_module_70_n15,
         n_cini_module_0__majority7_module_70_n14,
         n_cini_module_0__majority7_module_70_n13,
         n_cini_module_0__majority7_module_70_n12,
         n_cini_module_0__majority7_module_70_n11,
         n_cini_module_0__majority7_module_70_n10,
         n_cini_module_0__majority7_module_70_n9,
         n_cini_module_0__majority7_module_70_n8,
         n_cini_module_0__majority7_module_70_n7,
         n_cini_module_0__majority7_module_70_n6,
         n_cini_module_0__majority7_module_70_n5,
         n_cini_module_0__majority7_module_70_n4,
         n_cini_module_0__majority7_module_70_n3,
         n_cini_module_0__majority7_module_70_n2,
         n_cini_module_0__majority7_module_70_n1,
         n_cini_module_0__majority7_module_71_n17,
         n_cini_module_0__majority7_module_71_n16,
         n_cini_module_0__majority7_module_71_n15,
         n_cini_module_0__majority7_module_71_n14,
         n_cini_module_0__majority7_module_71_n13,
         n_cini_module_0__majority7_module_71_n12,
         n_cini_module_0__majority7_module_71_n11,
         n_cini_module_0__majority7_module_71_n10,
         n_cini_module_0__majority7_module_71_n9,
         n_cini_module_0__majority7_module_71_n8,
         n_cini_module_0__majority7_module_71_n7,
         n_cini_module_0__majority7_module_71_n6,
         n_cini_module_0__majority7_module_71_n5,
         n_cini_module_0__majority7_module_71_n4,
         n_cini_module_0__majority7_module_71_n3,
         n_cini_module_0__majority7_module_71_n2,
         n_cini_module_0__majority7_module_71_n1,
         n_cini_module_0__majority7_module_72_n17,
         n_cini_module_0__majority7_module_72_n16,
         n_cini_module_0__majority7_module_72_n15,
         n_cini_module_0__majority7_module_72_n14,
         n_cini_module_0__majority7_module_72_n13,
         n_cini_module_0__majority7_module_72_n12,
         n_cini_module_0__majority7_module_72_n11,
         n_cini_module_0__majority7_module_72_n10,
         n_cini_module_0__majority7_module_72_n9,
         n_cini_module_0__majority7_module_72_n8,
         n_cini_module_0__majority7_module_72_n7,
         n_cini_module_0__majority7_module_72_n6,
         n_cini_module_0__majority7_module_72_n5,
         n_cini_module_0__majority7_module_72_n4,
         n_cini_module_0__majority7_module_72_n3,
         n_cini_module_0__majority7_module_72_n2,
         n_cini_module_0__majority7_module_72_n1,
         n_cini_module_0__majority7_module_73_n17,
         n_cini_module_0__majority7_module_73_n16,
         n_cini_module_0__majority7_module_73_n15,
         n_cini_module_0__majority7_module_73_n14,
         n_cini_module_0__majority7_module_73_n13,
         n_cini_module_0__majority7_module_73_n12,
         n_cini_module_0__majority7_module_73_n11,
         n_cini_module_0__majority7_module_73_n10,
         n_cini_module_0__majority7_module_73_n9,
         n_cini_module_0__majority7_module_73_n8,
         n_cini_module_0__majority7_module_73_n7,
         n_cini_module_0__majority7_module_73_n6,
         n_cini_module_0__majority7_module_73_n5,
         n_cini_module_0__majority7_module_73_n4,
         n_cini_module_0__majority7_module_73_n3,
         n_cini_module_0__majority7_module_73_n2,
         n_cini_module_0__majority7_module_73_n1,
         n_cini_module_0__majority7_module_74_n17,
         n_cini_module_0__majority7_module_74_n16,
         n_cini_module_0__majority7_module_74_n15,
         n_cini_module_0__majority7_module_74_n14,
         n_cini_module_0__majority7_module_74_n13,
         n_cini_module_0__majority7_module_74_n12,
         n_cini_module_0__majority7_module_74_n11,
         n_cini_module_0__majority7_module_74_n10,
         n_cini_module_0__majority7_module_74_n9,
         n_cini_module_0__majority7_module_74_n8,
         n_cini_module_0__majority7_module_74_n7,
         n_cini_module_0__majority7_module_74_n6,
         n_cini_module_0__majority7_module_74_n5,
         n_cini_module_0__majority7_module_74_n4,
         n_cini_module_0__majority7_module_74_n3,
         n_cini_module_0__majority7_module_74_n2,
         n_cini_module_0__majority7_module_74_n1,
         n_cini_module_0__majority7_module_75_n17,
         n_cini_module_0__majority7_module_75_n16,
         n_cini_module_0__majority7_module_75_n15,
         n_cini_module_0__majority7_module_75_n14,
         n_cini_module_0__majority7_module_75_n13,
         n_cini_module_0__majority7_module_75_n12,
         n_cini_module_0__majority7_module_75_n11,
         n_cini_module_0__majority7_module_75_n10,
         n_cini_module_0__majority7_module_75_n9,
         n_cini_module_0__majority7_module_75_n8,
         n_cini_module_0__majority7_module_75_n7,
         n_cini_module_0__majority7_module_75_n6,
         n_cini_module_0__majority7_module_75_n5,
         n_cini_module_0__majority7_module_75_n4,
         n_cini_module_0__majority7_module_75_n3,
         n_cini_module_0__majority7_module_75_n2,
         n_cini_module_0__majority7_module_75_n1,
         n_cini_module_0__majority7_module_76_n17,
         n_cini_module_0__majority7_module_76_n16,
         n_cini_module_0__majority7_module_76_n15,
         n_cini_module_0__majority7_module_76_n14,
         n_cini_module_0__majority7_module_76_n13,
         n_cini_module_0__majority7_module_76_n12,
         n_cini_module_0__majority7_module_76_n11,
         n_cini_module_0__majority7_module_76_n10,
         n_cini_module_0__majority7_module_76_n9,
         n_cini_module_0__majority7_module_76_n8,
         n_cini_module_0__majority7_module_76_n7,
         n_cini_module_0__majority7_module_76_n6,
         n_cini_module_0__majority7_module_76_n5,
         n_cini_module_0__majority7_module_76_n4,
         n_cini_module_0__majority7_module_76_n3,
         n_cini_module_0__majority7_module_76_n2,
         n_cini_module_0__majority7_module_76_n1,
         n_cini_module_0__majority7_module_77_n17,
         n_cini_module_0__majority7_module_77_n16,
         n_cini_module_0__majority7_module_77_n15,
         n_cini_module_0__majority7_module_77_n14,
         n_cini_module_0__majority7_module_77_n13,
         n_cini_module_0__majority7_module_77_n12,
         n_cini_module_0__majority7_module_77_n11,
         n_cini_module_0__majority7_module_77_n10,
         n_cini_module_0__majority7_module_77_n9,
         n_cini_module_0__majority7_module_77_n8,
         n_cini_module_0__majority7_module_77_n7,
         n_cini_module_0__majority7_module_77_n6,
         n_cini_module_0__majority7_module_77_n5,
         n_cini_module_0__majority7_module_77_n4,
         n_cini_module_0__majority7_module_77_n3,
         n_cini_module_0__majority7_module_77_n2,
         n_cini_module_0__majority7_module_77_n1,
         n_cini_module_0__majority7_module_78_n17,
         n_cini_module_0__majority7_module_78_n16,
         n_cini_module_0__majority7_module_78_n15,
         n_cini_module_0__majority7_module_78_n14,
         n_cini_module_0__majority7_module_78_n13,
         n_cini_module_0__majority7_module_78_n12,
         n_cini_module_0__majority7_module_78_n11,
         n_cini_module_0__majority7_module_78_n10,
         n_cini_module_0__majority7_module_78_n9,
         n_cini_module_0__majority7_module_78_n8,
         n_cini_module_0__majority7_module_78_n7,
         n_cini_module_0__majority7_module_78_n6,
         n_cini_module_0__majority7_module_78_n5,
         n_cini_module_0__majority7_module_78_n4,
         n_cini_module_0__majority7_module_78_n3,
         n_cini_module_0__majority7_module_78_n2,
         n_cini_module_0__majority7_module_78_n1,
         n_cini_module_0__majority7_module_79_n17,
         n_cini_module_0__majority7_module_79_n16,
         n_cini_module_0__majority7_module_79_n15,
         n_cini_module_0__majority7_module_79_n14,
         n_cini_module_0__majority7_module_79_n13,
         n_cini_module_0__majority7_module_79_n12,
         n_cini_module_0__majority7_module_79_n11,
         n_cini_module_0__majority7_module_79_n10,
         n_cini_module_0__majority7_module_79_n9,
         n_cini_module_0__majority7_module_79_n8,
         n_cini_module_0__majority7_module_79_n7,
         n_cini_module_0__majority7_module_79_n6,
         n_cini_module_0__majority7_module_79_n5,
         n_cini_module_0__majority7_module_79_n4,
         n_cini_module_0__majority7_module_79_n3,
         n_cini_module_0__majority7_module_79_n2,
         n_cini_module_0__majority7_module_79_n1,
         n_cini_module_0__majority7_module_80_n17,
         n_cini_module_0__majority7_module_80_n16,
         n_cini_module_0__majority7_module_80_n15,
         n_cini_module_0__majority7_module_80_n14,
         n_cini_module_0__majority7_module_80_n13,
         n_cini_module_0__majority7_module_80_n12,
         n_cini_module_0__majority7_module_80_n11,
         n_cini_module_0__majority7_module_80_n10,
         n_cini_module_0__majority7_module_80_n9,
         n_cini_module_0__majority7_module_80_n8,
         n_cini_module_0__majority7_module_80_n7,
         n_cini_module_0__majority7_module_80_n6,
         n_cini_module_0__majority7_module_80_n5,
         n_cini_module_0__majority7_module_80_n4,
         n_cini_module_0__majority7_module_80_n3,
         n_cini_module_0__majority7_module_80_n2,
         n_cini_module_0__majority7_module_80_n1,
         n_cini_module_0__majority7_module_81_n17,
         n_cini_module_0__majority7_module_81_n16,
         n_cini_module_0__majority7_module_81_n15,
         n_cini_module_0__majority7_module_81_n14,
         n_cini_module_0__majority7_module_81_n13,
         n_cini_module_0__majority7_module_81_n12,
         n_cini_module_0__majority7_module_81_n11,
         n_cini_module_0__majority7_module_81_n10,
         n_cini_module_0__majority7_module_81_n9,
         n_cini_module_0__majority7_module_81_n8,
         n_cini_module_0__majority7_module_81_n7,
         n_cini_module_0__majority7_module_81_n6,
         n_cini_module_0__majority7_module_81_n5,
         n_cini_module_0__majority7_module_81_n4,
         n_cini_module_0__majority7_module_81_n3,
         n_cini_module_0__majority7_module_81_n2,
         n_cini_module_0__majority7_module_81_n1,
         n_cini_module_0__majority7_module_82_n17,
         n_cini_module_0__majority7_module_82_n16,
         n_cini_module_0__majority7_module_82_n15,
         n_cini_module_0__majority7_module_82_n14,
         n_cini_module_0__majority7_module_82_n13,
         n_cini_module_0__majority7_module_82_n12,
         n_cini_module_0__majority7_module_82_n11,
         n_cini_module_0__majority7_module_82_n10,
         n_cini_module_0__majority7_module_82_n9,
         n_cini_module_0__majority7_module_82_n8,
         n_cini_module_0__majority7_module_82_n7,
         n_cini_module_0__majority7_module_82_n6,
         n_cini_module_0__majority7_module_82_n5,
         n_cini_module_0__majority7_module_82_n4,
         n_cini_module_0__majority7_module_82_n3,
         n_cini_module_0__majority7_module_82_n2,
         n_cini_module_0__majority7_module_82_n1,
         n_cini_module_0__majority7_module_83_n17,
         n_cini_module_0__majority7_module_83_n16,
         n_cini_module_0__majority7_module_83_n15,
         n_cini_module_0__majority7_module_83_n14,
         n_cini_module_0__majority7_module_83_n13,
         n_cini_module_0__majority7_module_83_n12,
         n_cini_module_0__majority7_module_83_n11,
         n_cini_module_0__majority7_module_83_n10,
         n_cini_module_0__majority7_module_83_n9,
         n_cini_module_0__majority7_module_83_n8,
         n_cini_module_0__majority7_module_83_n7,
         n_cini_module_0__majority7_module_83_n6,
         n_cini_module_0__majority7_module_83_n5,
         n_cini_module_0__majority7_module_83_n4,
         n_cini_module_0__majority7_module_83_n3,
         n_cini_module_0__majority7_module_83_n2,
         n_cini_module_0__majority7_module_83_n1;

  XOR2_X2 u_cini_module_0__xor_module_1_U1 ( .A(p_rand_0), .B(io_b_s1_d0), .Z(
        n_cini_module_0__xor_module_1_res) );
  XOR2_X2 u_cini_module_0__xor_module_2_U1 ( .A(p_rand_1), .B(io_b_s2_d0), .Z(
        n_cini_module_0__xor_module_2_res) );
  XOR2_X2 u_cini_module_0__xor_module_3_U1 ( .A(p_rand_2), .B(io_b_s3_d0), .Z(
        n_cini_module_0__xor_module_3_res) );
  XOR2_X2 u_cini_module_0__xor_module_4_U1 ( .A(p_rand_0), .B(io_b_s0_d0), .Z(
        n_cini_module_0__xor_module_4_res) );
  XOR2_X2 u_cini_module_0__xor_module_5_U1 ( .A(p_rand_3), .B(io_b_s2_d0), .Z(
        n_cini_module_0__xor_module_5_res) );
  XOR2_X2 u_cini_module_0__xor_module_6_U1 ( .A(p_rand_4), .B(io_b_s3_d0), .Z(
        n_cini_module_0__xor_module_6_res) );
  XOR2_X2 u_cini_module_0__xor_module_7_U1 ( .A(p_rand_1), .B(io_b_s0_d0), .Z(
        n_cini_module_0__xor_module_7_res) );
  XOR2_X2 u_cini_module_0__xor_module_8_U1 ( .A(p_rand_3), .B(io_b_s1_d0), .Z(
        n_cini_module_0__xor_module_8_res) );
  XOR2_X2 u_cini_module_0__xor_module_9_U1 ( .A(p_rand_5), .B(io_b_s3_d0), .Z(
        n_cini_module_0__xor_module_9_res) );
  XOR2_X2 u_cini_module_0__xor_module_10_U1 ( .A(p_rand_2), .B(io_b_s0_d0), 
        .Z(n_cini_module_0__xor_module_10_res) );
  XOR2_X2 u_cini_module_0__xor_module_11_U1 ( .A(p_rand_4), .B(io_b_s1_d0), 
        .Z(n_cini_module_0__xor_module_11_res) );
  XOR2_X2 u_cini_module_0__xor_module_12_U1 ( .A(p_rand_5), .B(io_b_s2_d0), 
        .Z(n_cini_module_0__xor_module_12_res) );
  XOR2_X2 u_cini_module_0__xor_module_13_U1 ( .A(p_rand_0), .B(io_b_s1_d1), 
        .Z(n_cini_module_0__xor_module_13_res) );
  XOR2_X2 u_cini_module_0__xor_module_14_U1 ( .A(p_rand_1), .B(io_b_s2_d1), 
        .Z(n_cini_module_0__xor_module_14_res) );
  XOR2_X2 u_cini_module_0__xor_module_15_U1 ( .A(p_rand_2), .B(io_b_s3_d1), 
        .Z(n_cini_module_0__xor_module_15_res) );
  XOR2_X2 u_cini_module_0__xor_module_16_U1 ( .A(p_rand_0), .B(io_b_s0_d1), 
        .Z(n_cini_module_0__xor_module_16_res) );
  XOR2_X2 u_cini_module_0__xor_module_17_U1 ( .A(p_rand_3), .B(io_b_s2_d1), 
        .Z(n_cini_module_0__xor_module_17_res) );
  XOR2_X2 u_cini_module_0__xor_module_18_U1 ( .A(p_rand_4), .B(io_b_s3_d1), 
        .Z(n_cini_module_0__xor_module_18_res) );
  XOR2_X2 u_cini_module_0__xor_module_19_U1 ( .A(p_rand_1), .B(io_b_s0_d1), 
        .Z(n_cini_module_0__xor_module_19_res) );
  XOR2_X2 u_cini_module_0__xor_module_20_U1 ( .A(p_rand_3), .B(io_b_s1_d1), 
        .Z(n_cini_module_0__xor_module_20_res) );
  XOR2_X2 u_cini_module_0__xor_module_21_U1 ( .A(p_rand_5), .B(io_b_s3_d1), 
        .Z(n_cini_module_0__xor_module_21_res) );
  XOR2_X2 u_cini_module_0__xor_module_22_U1 ( .A(p_rand_2), .B(io_b_s0_d1), 
        .Z(n_cini_module_0__xor_module_22_res) );
  XOR2_X2 u_cini_module_0__xor_module_23_U1 ( .A(p_rand_4), .B(io_b_s1_d1), 
        .Z(n_cini_module_0__xor_module_23_res) );
  XOR2_X2 u_cini_module_0__xor_module_24_U1 ( .A(p_rand_5), .B(io_b_s2_d1), 
        .Z(n_cini_module_0__xor_module_24_res) );
  XOR2_X2 u_cini_module_0__xor_module_25_U1 ( .A(p_rand_0), .B(io_b_s1_d2), 
        .Z(n_cini_module_0__xor_module_25_res) );
  XOR2_X2 u_cini_module_0__xor_module_26_U1 ( .A(p_rand_1), .B(io_b_s2_d2), 
        .Z(n_cini_module_0__xor_module_26_res) );
  XOR2_X2 u_cini_module_0__xor_module_27_U1 ( .A(p_rand_2), .B(io_b_s3_d2), 
        .Z(n_cini_module_0__xor_module_27_res) );
  XOR2_X2 u_cini_module_0__xor_module_28_U1 ( .A(p_rand_0), .B(io_b_s0_d2), 
        .Z(n_cini_module_0__xor_module_28_res) );
  XOR2_X2 u_cini_module_0__xor_module_29_U1 ( .A(p_rand_3), .B(io_b_s2_d2), 
        .Z(n_cini_module_0__xor_module_29_res) );
  XOR2_X2 u_cini_module_0__xor_module_30_U1 ( .A(p_rand_4), .B(io_b_s3_d2), 
        .Z(n_cini_module_0__xor_module_30_res) );
  XOR2_X2 u_cini_module_0__xor_module_31_U1 ( .A(p_rand_1), .B(io_b_s0_d2), 
        .Z(n_cini_module_0__xor_module_31_res) );
  XOR2_X2 u_cini_module_0__xor_module_32_U1 ( .A(p_rand_3), .B(io_b_s1_d2), 
        .Z(n_cini_module_0__xor_module_32_res) );
  XOR2_X2 u_cini_module_0__xor_module_33_U1 ( .A(p_rand_5), .B(io_b_s3_d2), 
        .Z(n_cini_module_0__xor_module_33_res) );
  XOR2_X2 u_cini_module_0__xor_module_34_U1 ( .A(p_rand_2), .B(io_b_s0_d2), 
        .Z(n_cini_module_0__xor_module_34_res) );
  XOR2_X2 u_cini_module_0__xor_module_35_U1 ( .A(p_rand_4), .B(io_b_s1_d2), 
        .Z(n_cini_module_0__xor_module_35_res) );
  XOR2_X2 u_cini_module_0__xor_module_36_U1 ( .A(p_rand_5), .B(io_b_s2_d2), 
        .Z(n_cini_module_0__xor_module_36_res) );
  XOR2_X2 u_cini_module_0__xor_module_37_U1 ( .A(p_rand_0), .B(io_b_s1_d3), 
        .Z(n_cini_module_0__xor_module_37_res) );
  XOR2_X2 u_cini_module_0__xor_module_38_U1 ( .A(p_rand_1), .B(io_b_s2_d3), 
        .Z(n_cini_module_0__xor_module_38_res) );
  XOR2_X2 u_cini_module_0__xor_module_39_U1 ( .A(p_rand_2), .B(io_b_s3_d3), 
        .Z(n_cini_module_0__xor_module_39_res) );
  XOR2_X2 u_cini_module_0__xor_module_40_U1 ( .A(p_rand_0), .B(io_b_s0_d3), 
        .Z(n_cini_module_0__xor_module_40_res) );
  XOR2_X2 u_cini_module_0__xor_module_41_U1 ( .A(p_rand_3), .B(io_b_s2_d3), 
        .Z(n_cini_module_0__xor_module_41_res) );
  XOR2_X2 u_cini_module_0__xor_module_42_U1 ( .A(p_rand_4), .B(io_b_s3_d3), 
        .Z(n_cini_module_0__xor_module_42_res) );
  XOR2_X2 u_cini_module_0__xor_module_43_U1 ( .A(p_rand_1), .B(io_b_s0_d3), 
        .Z(n_cini_module_0__xor_module_43_res) );
  XOR2_X2 u_cini_module_0__xor_module_44_U1 ( .A(p_rand_3), .B(io_b_s1_d3), 
        .Z(n_cini_module_0__xor_module_44_res) );
  XOR2_X2 u_cini_module_0__xor_module_45_U1 ( .A(p_rand_5), .B(io_b_s3_d3), 
        .Z(n_cini_module_0__xor_module_45_res) );
  XOR2_X2 u_cini_module_0__xor_module_46_U1 ( .A(p_rand_2), .B(io_b_s0_d3), 
        .Z(n_cini_module_0__xor_module_46_res) );
  XOR2_X2 u_cini_module_0__xor_module_47_U1 ( .A(p_rand_4), .B(io_b_s1_d3), 
        .Z(n_cini_module_0__xor_module_47_res) );
  XOR2_X2 u_cini_module_0__xor_module_48_U1 ( .A(p_rand_5), .B(io_b_s2_d3), 
        .Z(n_cini_module_0__xor_module_48_res) );
  XOR2_X2 u_cini_module_0__xor_module_49_U1 ( .A(p_rand_0), .B(io_b_s1_d4), 
        .Z(n_cini_module_0__xor_module_49_res) );
  XOR2_X2 u_cini_module_0__xor_module_50_U1 ( .A(p_rand_1), .B(io_b_s2_d4), 
        .Z(n_cini_module_0__xor_module_50_res) );
  XOR2_X2 u_cini_module_0__xor_module_51_U1 ( .A(p_rand_2), .B(io_b_s3_d4), 
        .Z(n_cini_module_0__xor_module_51_res) );
  XOR2_X2 u_cini_module_0__xor_module_52_U1 ( .A(p_rand_0), .B(io_b_s0_d4), 
        .Z(n_cini_module_0__xor_module_52_res) );
  XOR2_X2 u_cini_module_0__xor_module_53_U1 ( .A(p_rand_3), .B(io_b_s2_d4), 
        .Z(n_cini_module_0__xor_module_53_res) );
  XOR2_X2 u_cini_module_0__xor_module_54_U1 ( .A(p_rand_4), .B(io_b_s3_d4), 
        .Z(n_cini_module_0__xor_module_54_res) );
  XOR2_X2 u_cini_module_0__xor_module_55_U1 ( .A(p_rand_1), .B(io_b_s0_d4), 
        .Z(n_cini_module_0__xor_module_55_res) );
  XOR2_X2 u_cini_module_0__xor_module_56_U1 ( .A(p_rand_3), .B(io_b_s1_d4), 
        .Z(n_cini_module_0__xor_module_56_res) );
  XOR2_X2 u_cini_module_0__xor_module_57_U1 ( .A(p_rand_5), .B(io_b_s3_d4), 
        .Z(n_cini_module_0__xor_module_57_res) );
  XOR2_X2 u_cini_module_0__xor_module_58_U1 ( .A(p_rand_2), .B(io_b_s0_d4), 
        .Z(n_cini_module_0__xor_module_58_res) );
  XOR2_X2 u_cini_module_0__xor_module_59_U1 ( .A(p_rand_4), .B(io_b_s1_d4), 
        .Z(n_cini_module_0__xor_module_59_res) );
  XOR2_X2 u_cini_module_0__xor_module_60_U1 ( .A(p_rand_5), .B(io_b_s2_d4), 
        .Z(n_cini_module_0__xor_module_60_res) );
  XOR2_X2 u_cini_module_0__xor_module_61_U1 ( .A(p_rand_0), .B(io_b_s1_d5), 
        .Z(n_cini_module_0__xor_module_61_res) );
  XOR2_X2 u_cini_module_0__xor_module_62_U1 ( .A(p_rand_1), .B(io_b_s2_d5), 
        .Z(n_cini_module_0__xor_module_62_res) );
  XOR2_X2 u_cini_module_0__xor_module_63_U1 ( .A(p_rand_2), .B(io_b_s3_d5), 
        .Z(n_cini_module_0__xor_module_63_res) );
  XOR2_X2 u_cini_module_0__xor_module_64_U1 ( .A(p_rand_0), .B(io_b_s0_d5), 
        .Z(n_cini_module_0__xor_module_64_res) );
  XOR2_X2 u_cini_module_0__xor_module_65_U1 ( .A(p_rand_3), .B(io_b_s2_d5), 
        .Z(n_cini_module_0__xor_module_65_res) );
  XOR2_X2 u_cini_module_0__xor_module_66_U1 ( .A(p_rand_4), .B(io_b_s3_d5), 
        .Z(n_cini_module_0__xor_module_66_res) );
  XOR2_X2 u_cini_module_0__xor_module_67_U1 ( .A(p_rand_1), .B(io_b_s0_d5), 
        .Z(n_cini_module_0__xor_module_67_res) );
  XOR2_X2 u_cini_module_0__xor_module_68_U1 ( .A(p_rand_3), .B(io_b_s1_d5), 
        .Z(n_cini_module_0__xor_module_68_res) );
  XOR2_X2 u_cini_module_0__xor_module_69_U1 ( .A(p_rand_5), .B(io_b_s3_d5), 
        .Z(n_cini_module_0__xor_module_69_res) );
  XOR2_X2 u_cini_module_0__xor_module_70_U1 ( .A(p_rand_2), .B(io_b_s0_d5), 
        .Z(n_cini_module_0__xor_module_70_res) );
  XOR2_X2 u_cini_module_0__xor_module_71_U1 ( .A(p_rand_4), .B(io_b_s1_d5), 
        .Z(n_cini_module_0__xor_module_71_res) );
  XOR2_X2 u_cini_module_0__xor_module_72_U1 ( .A(p_rand_5), .B(io_b_s2_d5), 
        .Z(n_cini_module_0__xor_module_72_res) );
  XOR2_X2 u_cini_module_0__xor_module_73_U1 ( .A(p_rand_0), .B(io_b_s1_d6), 
        .Z(n_cini_module_0__xor_module_73_res) );
  XOR2_X2 u_cini_module_0__xor_module_74_U1 ( .A(p_rand_1), .B(io_b_s2_d6), 
        .Z(n_cini_module_0__xor_module_74_res) );
  XOR2_X2 u_cini_module_0__xor_module_75_U1 ( .A(p_rand_2), .B(io_b_s3_d6), 
        .Z(n_cini_module_0__xor_module_75_res) );
  XOR2_X2 u_cini_module_0__xor_module_76_U1 ( .A(p_rand_0), .B(io_b_s0_d6), 
        .Z(n_cini_module_0__xor_module_76_res) );
  XOR2_X2 u_cini_module_0__xor_module_77_U1 ( .A(p_rand_3), .B(io_b_s2_d6), 
        .Z(n_cini_module_0__xor_module_77_res) );
  XOR2_X2 u_cini_module_0__xor_module_78_U1 ( .A(p_rand_4), .B(io_b_s3_d6), 
        .Z(n_cini_module_0__xor_module_78_res) );
  XOR2_X2 u_cini_module_0__xor_module_79_U1 ( .A(p_rand_1), .B(io_b_s0_d6), 
        .Z(n_cini_module_0__xor_module_79_res) );
  XOR2_X2 u_cini_module_0__xor_module_80_U1 ( .A(p_rand_3), .B(io_b_s1_d6), 
        .Z(n_cini_module_0__xor_module_80_res) );
  XOR2_X2 u_cini_module_0__xor_module_81_U1 ( .A(p_rand_5), .B(io_b_s3_d6), 
        .Z(n_cini_module_0__xor_module_81_res) );
  XOR2_X2 u_cini_module_0__xor_module_82_U1 ( .A(p_rand_2), .B(io_b_s0_d6), 
        .Z(n_cini_module_0__xor_module_82_res) );
  XOR2_X2 u_cini_module_0__xor_module_83_U1 ( .A(p_rand_4), .B(io_b_s1_d6), 
        .Z(n_cini_module_0__xor_module_83_res) );
  XOR2_X2 u_cini_module_0__xor_module_84_U1 ( .A(p_rand_5), .B(io_b_s2_d6), 
        .Z(n_cini_module_0__xor_module_84_res) );
  DFF_X1 u_cini_module_0__reg_module_1__hpc_correct_b_s0_d0_reg ( .D(
        io_b_s0_d0), .CK(clock_0), .Q(n_cini_module_0__reg_module_1_res), 
        .QN() );
  AND2_X1 u_cini_module_0__and_module_1_U1 ( .A1(
        n_cini_module_0__reg_module_1_res), .A2(io_a_s0_d0), .ZN(
        n_cini_module_0__and_module_1_res) );
  DFF_X1 u_cini_module_0__reg_module_2__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_1_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_2_res), .QN() );
  DFF_X1 u_cini_module_0__reg_module_3__hpc_correct_b_s0_d0_reg ( .D(p_rand_0), 
        .CK(clock_0), .Q(n_cini_module_0__reg_module_3_res), .QN() );
  INV_X1 u_cini_module_0__not_module_1_U1 ( .A(io_a_s0_d0), .ZN(
        n_cini_module_0__not_module_1_res) );
  AND2_X1 u_cini_module_0__and_module_2_U1 ( .A1(
        n_cini_module_0__not_module_1_res), .A2(
        n_cini_module_0__reg_module_3_res), .ZN(
        n_cini_module_0__and_module_2_res) );
  DFF_X1 u_cini_module_0__reg_module_4__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_2_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_4_res), .QN() );
  NAND2_X1 u_cini_module_0__majority7_module_0_U18 ( .A1(
        n_cini_module_0__xor_module_37_res), .A2(
        n_cini_module_0__xor_module_49_res), .ZN(
        n_cini_module_0__majority7_module_0_n16) );
  XOR2_X1 u_cini_module_0__majority7_module_0_U17 ( .A(
        n_cini_module_0__xor_module_37_res), .B(
        n_cini_module_0__xor_module_49_res), .Z(
        n_cini_module_0__majority7_module_0_n10) );
  NAND2_X1 u_cini_module_0__majority7_module_0_U16 ( .A1(
        n_cini_module_0__xor_module_61_res), .A2(
        n_cini_module_0__majority7_module_0_n10), .ZN(
        n_cini_module_0__majority7_module_0_n17) );
  NAND2_X1 u_cini_module_0__majority7_module_0_U15 ( .A1(
        n_cini_module_0__majority7_module_0_n16), .A2(
        n_cini_module_0__majority7_module_0_n17), .ZN(
        n_cini_module_0__majority7_module_0_n13) );
  NAND2_X1 u_cini_module_0__majority7_module_0_U14 ( .A1(
        n_cini_module_0__xor_module_1_res), .A2(
        n_cini_module_0__xor_module_13_res), .ZN(
        n_cini_module_0__majority7_module_0_n14) );
  XOR2_X1 u_cini_module_0__majority7_module_0_U13 ( .A(
        n_cini_module_0__xor_module_1_res), .B(
        n_cini_module_0__xor_module_13_res), .Z(
        n_cini_module_0__majority7_module_0_n11) );
  NAND2_X1 u_cini_module_0__majority7_module_0_U12 ( .A1(
        n_cini_module_0__xor_module_25_res), .A2(
        n_cini_module_0__majority7_module_0_n11), .ZN(
        n_cini_module_0__majority7_module_0_n15) );
  NAND2_X1 u_cini_module_0__majority7_module_0_U11 ( .A1(
        n_cini_module_0__majority7_module_0_n14), .A2(
        n_cini_module_0__majority7_module_0_n15), .ZN(
        n_cini_module_0__majority7_module_0_n12) );
  NAND2_X1 u_cini_module_0__majority7_module_0_U10 ( .A1(
        n_cini_module_0__majority7_module_0_n13), .A2(
        n_cini_module_0__majority7_module_0_n12), .ZN(
        n_cini_module_0__majority7_module_0_n1) );
  OR2_X1 u_cini_module_0__majority7_module_0_U9 ( .A1(
        n_cini_module_0__majority7_module_0_n12), .A2(
        n_cini_module_0__majority7_module_0_n13), .ZN(
        n_cini_module_0__majority7_module_0_n3) );
  XOR2_X1 u_cini_module_0__majority7_module_0_U8 ( .A(
        n_cini_module_0__xor_module_25_res), .B(
        n_cini_module_0__majority7_module_0_n11), .Z(
        n_cini_module_0__majority7_module_0_n9) );
  NAND2_X1 u_cini_module_0__majority7_module_0_U7 ( .A1(
        n_cini_module_0__xor_module_73_res), .A2(
        n_cini_module_0__majority7_module_0_n9), .ZN(
        n_cini_module_0__majority7_module_0_n5) );
  XOR2_X1 u_cini_module_0__majority7_module_0_U6 ( .A(
        n_cini_module_0__xor_module_61_res), .B(
        n_cini_module_0__majority7_module_0_n10), .Z(
        n_cini_module_0__majority7_module_0_n7) );
  OR2_X1 u_cini_module_0__majority7_module_0_U5 ( .A1(
        n_cini_module_0__majority7_module_0_n9), .A2(
        n_cini_module_0__xor_module_73_res), .ZN(
        n_cini_module_0__majority7_module_0_n8) );
  NAND2_X1 u_cini_module_0__majority7_module_0_U4 ( .A1(
        n_cini_module_0__majority7_module_0_n7), .A2(
        n_cini_module_0__majority7_module_0_n8), .ZN(
        n_cini_module_0__majority7_module_0_n6) );
  NAND2_X1 u_cini_module_0__majority7_module_0_U3 ( .A1(
        n_cini_module_0__majority7_module_0_n5), .A2(
        n_cini_module_0__majority7_module_0_n6), .ZN(
        n_cini_module_0__majority7_module_0_n4) );
  NAND2_X1 u_cini_module_0__majority7_module_0_U2 ( .A1(
        n_cini_module_0__majority7_module_0_n3), .A2(
        n_cini_module_0__majority7_module_0_n4), .ZN(
        n_cini_module_0__majority7_module_0_n2) );
  NAND2_X1 u_cini_module_0__majority7_module_0_U1 ( .A1(
        n_cini_module_0__majority7_module_0_n1), .A2(
        n_cini_module_0__majority7_module_0_n2), .ZN(
        n_cini_module_0__majority7_module_0_res) );
  DFF_X1 u_cini_module_0__reg_module_5__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority7_module_0_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_5_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_3_U1 ( .A1(
        n_cini_module_0__reg_module_5_res), .A2(io_a_s0_d0), .ZN(
        n_cini_module_0__and_module_3_res) );
  DFF_X1 u_cini_module_0__reg_module_6__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_3_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_6_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_85_U1 ( .A(
        n_cini_module_0__reg_module_4_res), .B(
        n_cini_module_0__reg_module_6_res), .Z(
        n_cini_module_0__xor_module_85_res) );
  DFF_X1 u_cini_module_0__reg_module_7__hpc_correct_b_s0_d0_reg ( .D(p_rand_1), 
        .CK(clock_0), .Q(n_cini_module_0__reg_module_7_res), .QN() );
  INV_X1 u_cini_module_0__not_module_2_U1 ( .A(io_a_s0_d0), .ZN(
        n_cini_module_0__not_module_2_res) );
  AND2_X1 u_cini_module_0__and_module_4_U1 ( .A1(
        n_cini_module_0__not_module_2_res), .A2(
        n_cini_module_0__reg_module_7_res), .ZN(
        n_cini_module_0__and_module_4_res) );
  DFF_X1 u_cini_module_0__reg_module_8__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_4_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_8_res), .QN() );
  NAND2_X1 u_cini_module_0__majority7_module_1_U18 ( .A1(
        n_cini_module_0__xor_module_38_res), .A2(
        n_cini_module_0__xor_module_50_res), .ZN(
        n_cini_module_0__majority7_module_1_n16) );
  XOR2_X1 u_cini_module_0__majority7_module_1_U17 ( .A(
        n_cini_module_0__xor_module_38_res), .B(
        n_cini_module_0__xor_module_50_res), .Z(
        n_cini_module_0__majority7_module_1_n10) );
  NAND2_X1 u_cini_module_0__majority7_module_1_U16 ( .A1(
        n_cini_module_0__xor_module_62_res), .A2(
        n_cini_module_0__majority7_module_1_n10), .ZN(
        n_cini_module_0__majority7_module_1_n17) );
  NAND2_X1 u_cini_module_0__majority7_module_1_U15 ( .A1(
        n_cini_module_0__majority7_module_1_n16), .A2(
        n_cini_module_0__majority7_module_1_n17), .ZN(
        n_cini_module_0__majority7_module_1_n13) );
  NAND2_X1 u_cini_module_0__majority7_module_1_U14 ( .A1(
        n_cini_module_0__xor_module_2_res), .A2(
        n_cini_module_0__xor_module_14_res), .ZN(
        n_cini_module_0__majority7_module_1_n14) );
  XOR2_X1 u_cini_module_0__majority7_module_1_U13 ( .A(
        n_cini_module_0__xor_module_2_res), .B(
        n_cini_module_0__xor_module_14_res), .Z(
        n_cini_module_0__majority7_module_1_n11) );
  NAND2_X1 u_cini_module_0__majority7_module_1_U12 ( .A1(
        n_cini_module_0__xor_module_26_res), .A2(
        n_cini_module_0__majority7_module_1_n11), .ZN(
        n_cini_module_0__majority7_module_1_n15) );
  NAND2_X1 u_cini_module_0__majority7_module_1_U11 ( .A1(
        n_cini_module_0__majority7_module_1_n14), .A2(
        n_cini_module_0__majority7_module_1_n15), .ZN(
        n_cini_module_0__majority7_module_1_n12) );
  NAND2_X1 u_cini_module_0__majority7_module_1_U10 ( .A1(
        n_cini_module_0__majority7_module_1_n13), .A2(
        n_cini_module_0__majority7_module_1_n12), .ZN(
        n_cini_module_0__majority7_module_1_n1) );
  OR2_X1 u_cini_module_0__majority7_module_1_U9 ( .A1(
        n_cini_module_0__majority7_module_1_n12), .A2(
        n_cini_module_0__majority7_module_1_n13), .ZN(
        n_cini_module_0__majority7_module_1_n3) );
  XOR2_X1 u_cini_module_0__majority7_module_1_U8 ( .A(
        n_cini_module_0__xor_module_26_res), .B(
        n_cini_module_0__majority7_module_1_n11), .Z(
        n_cini_module_0__majority7_module_1_n9) );
  NAND2_X1 u_cini_module_0__majority7_module_1_U7 ( .A1(
        n_cini_module_0__xor_module_74_res), .A2(
        n_cini_module_0__majority7_module_1_n9), .ZN(
        n_cini_module_0__majority7_module_1_n5) );
  XOR2_X1 u_cini_module_0__majority7_module_1_U6 ( .A(
        n_cini_module_0__xor_module_62_res), .B(
        n_cini_module_0__majority7_module_1_n10), .Z(
        n_cini_module_0__majority7_module_1_n7) );
  OR2_X1 u_cini_module_0__majority7_module_1_U5 ( .A1(
        n_cini_module_0__majority7_module_1_n9), .A2(
        n_cini_module_0__xor_module_74_res), .ZN(
        n_cini_module_0__majority7_module_1_n8) );
  NAND2_X1 u_cini_module_0__majority7_module_1_U4 ( .A1(
        n_cini_module_0__majority7_module_1_n7), .A2(
        n_cini_module_0__majority7_module_1_n8), .ZN(
        n_cini_module_0__majority7_module_1_n6) );
  NAND2_X1 u_cini_module_0__majority7_module_1_U3 ( .A1(
        n_cini_module_0__majority7_module_1_n5), .A2(
        n_cini_module_0__majority7_module_1_n6), .ZN(
        n_cini_module_0__majority7_module_1_n4) );
  NAND2_X1 u_cini_module_0__majority7_module_1_U2 ( .A1(
        n_cini_module_0__majority7_module_1_n3), .A2(
        n_cini_module_0__majority7_module_1_n4), .ZN(
        n_cini_module_0__majority7_module_1_n2) );
  NAND2_X1 u_cini_module_0__majority7_module_1_U1 ( .A1(
        n_cini_module_0__majority7_module_1_n1), .A2(
        n_cini_module_0__majority7_module_1_n2), .ZN(
        n_cini_module_0__majority7_module_1_res) );
  DFF_X1 u_cini_module_0__reg_module_9__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority7_module_1_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_9_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_5_U1 ( .A1(
        n_cini_module_0__reg_module_9_res), .A2(io_a_s0_d0), .ZN(
        n_cini_module_0__and_module_5_res) );
  DFF_X1 u_cini_module_0__reg_module_10__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_5_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_10_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_86_U1 ( .A(
        n_cini_module_0__reg_module_8_res), .B(
        n_cini_module_0__reg_module_10_res), .Z(
        n_cini_module_0__xor_module_86_res) );
  XOR2_X1 u_cini_module_0__xor_module_87_U1 ( .A(
        n_cini_module_0__xor_module_85_res), .B(
        n_cini_module_0__xor_module_86_res), .Z(
        n_cini_module_0__xor_module_87_res) );
  DFF_X1 u_cini_module_0__reg_module_11__hpc_correct_b_s0_d0_reg ( .D(p_rand_2), .CK(clock_0), .Q(n_cini_module_0__reg_module_11_res), .QN() );
  INV_X1 u_cini_module_0__not_module_3_U1 ( .A(io_a_s0_d0), .ZN(
        n_cini_module_0__not_module_3_res) );
  AND2_X1 u_cini_module_0__and_module_6_U1 ( .A1(
        n_cini_module_0__not_module_3_res), .A2(
        n_cini_module_0__reg_module_11_res), .ZN(
        n_cini_module_0__and_module_6_res) );
  DFF_X1 u_cini_module_0__reg_module_12__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_6_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_12_res), .QN() );
  NAND2_X1 u_cini_module_0__majority7_module_2_U18 ( .A1(
        n_cini_module_0__xor_module_39_res), .A2(
        n_cini_module_0__xor_module_51_res), .ZN(
        n_cini_module_0__majority7_module_2_n16) );
  XOR2_X1 u_cini_module_0__majority7_module_2_U17 ( .A(
        n_cini_module_0__xor_module_39_res), .B(
        n_cini_module_0__xor_module_51_res), .Z(
        n_cini_module_0__majority7_module_2_n10) );
  NAND2_X1 u_cini_module_0__majority7_module_2_U16 ( .A1(
        n_cini_module_0__xor_module_63_res), .A2(
        n_cini_module_0__majority7_module_2_n10), .ZN(
        n_cini_module_0__majority7_module_2_n17) );
  NAND2_X1 u_cini_module_0__majority7_module_2_U15 ( .A1(
        n_cini_module_0__majority7_module_2_n16), .A2(
        n_cini_module_0__majority7_module_2_n17), .ZN(
        n_cini_module_0__majority7_module_2_n13) );
  NAND2_X1 u_cini_module_0__majority7_module_2_U14 ( .A1(
        n_cini_module_0__xor_module_3_res), .A2(
        n_cini_module_0__xor_module_15_res), .ZN(
        n_cini_module_0__majority7_module_2_n14) );
  XOR2_X1 u_cini_module_0__majority7_module_2_U13 ( .A(
        n_cini_module_0__xor_module_3_res), .B(
        n_cini_module_0__xor_module_15_res), .Z(
        n_cini_module_0__majority7_module_2_n11) );
  NAND2_X1 u_cini_module_0__majority7_module_2_U12 ( .A1(
        n_cini_module_0__xor_module_27_res), .A2(
        n_cini_module_0__majority7_module_2_n11), .ZN(
        n_cini_module_0__majority7_module_2_n15) );
  NAND2_X1 u_cini_module_0__majority7_module_2_U11 ( .A1(
        n_cini_module_0__majority7_module_2_n14), .A2(
        n_cini_module_0__majority7_module_2_n15), .ZN(
        n_cini_module_0__majority7_module_2_n12) );
  NAND2_X1 u_cini_module_0__majority7_module_2_U10 ( .A1(
        n_cini_module_0__majority7_module_2_n13), .A2(
        n_cini_module_0__majority7_module_2_n12), .ZN(
        n_cini_module_0__majority7_module_2_n1) );
  OR2_X1 u_cini_module_0__majority7_module_2_U9 ( .A1(
        n_cini_module_0__majority7_module_2_n12), .A2(
        n_cini_module_0__majority7_module_2_n13), .ZN(
        n_cini_module_0__majority7_module_2_n3) );
  XOR2_X1 u_cini_module_0__majority7_module_2_U8 ( .A(
        n_cini_module_0__xor_module_27_res), .B(
        n_cini_module_0__majority7_module_2_n11), .Z(
        n_cini_module_0__majority7_module_2_n9) );
  NAND2_X1 u_cini_module_0__majority7_module_2_U7 ( .A1(
        n_cini_module_0__xor_module_75_res), .A2(
        n_cini_module_0__majority7_module_2_n9), .ZN(
        n_cini_module_0__majority7_module_2_n5) );
  XOR2_X1 u_cini_module_0__majority7_module_2_U6 ( .A(
        n_cini_module_0__xor_module_63_res), .B(
        n_cini_module_0__majority7_module_2_n10), .Z(
        n_cini_module_0__majority7_module_2_n7) );
  OR2_X1 u_cini_module_0__majority7_module_2_U5 ( .A1(
        n_cini_module_0__majority7_module_2_n9), .A2(
        n_cini_module_0__xor_module_75_res), .ZN(
        n_cini_module_0__majority7_module_2_n8) );
  NAND2_X1 u_cini_module_0__majority7_module_2_U4 ( .A1(
        n_cini_module_0__majority7_module_2_n7), .A2(
        n_cini_module_0__majority7_module_2_n8), .ZN(
        n_cini_module_0__majority7_module_2_n6) );
  NAND2_X1 u_cini_module_0__majority7_module_2_U3 ( .A1(
        n_cini_module_0__majority7_module_2_n5), .A2(
        n_cini_module_0__majority7_module_2_n6), .ZN(
        n_cini_module_0__majority7_module_2_n4) );
  NAND2_X1 u_cini_module_0__majority7_module_2_U2 ( .A1(
        n_cini_module_0__majority7_module_2_n3), .A2(
        n_cini_module_0__majority7_module_2_n4), .ZN(
        n_cini_module_0__majority7_module_2_n2) );
  NAND2_X1 u_cini_module_0__majority7_module_2_U1 ( .A1(
        n_cini_module_0__majority7_module_2_n1), .A2(
        n_cini_module_0__majority7_module_2_n2), .ZN(
        n_cini_module_0__majority7_module_2_res) );
  DFF_X1 u_cini_module_0__reg_module_13__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority7_module_2_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_13_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_7_U1 ( .A1(
        n_cini_module_0__reg_module_13_res), .A2(io_a_s0_d0), .ZN(
        n_cini_module_0__and_module_7_res) );
  DFF_X1 u_cini_module_0__reg_module_14__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_7_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_14_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_88_U1 ( .A(
        n_cini_module_0__reg_module_12_res), .B(
        n_cini_module_0__reg_module_14_res), .Z(
        n_cini_module_0__xor_module_88_res) );
  XOR2_X1 u_cini_module_0__xor_module_89_U1 ( .A(
        n_cini_module_0__xor_module_87_res), .B(
        n_cini_module_0__xor_module_88_res), .Z(
        n_cini_module_0__xor_module_89_res) );
  XOR2_X1 u_cini_module_0__xor_module_90_U1 ( .A(
        n_cini_module_0__xor_module_89_res), .B(
        n_cini_module_0__reg_module_2_res), .Z(io_c_s0_d0) );
  DFF_X1 u_cini_module_0__reg_module_15__hpc_correct_b_s0_d0_reg ( .D(
        io_b_s1_d0), .CK(clock_0), .Q(n_cini_module_0__reg_module_15_res), 
        .QN() );
  AND2_X1 u_cini_module_0__and_module_8_U1 ( .A1(
        n_cini_module_0__reg_module_15_res), .A2(io_a_s1_d0), .ZN(
        n_cini_module_0__and_module_8_res) );
  DFF_X1 u_cini_module_0__reg_module_16__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_8_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_16_res), .QN() );
  DFF_X1 u_cini_module_0__reg_module_17__hpc_correct_b_s0_d0_reg ( .D(p_rand_0), .CK(clock_0), .Q(n_cini_module_0__reg_module_17_res), .QN() );
  INV_X1 u_cini_module_0__not_module_4_U1 ( .A(io_a_s1_d0), .ZN(
        n_cini_module_0__not_module_4_res) );
  AND2_X1 u_cini_module_0__and_module_9_U1 ( .A1(
        n_cini_module_0__not_module_4_res), .A2(
        n_cini_module_0__reg_module_17_res), .ZN(
        n_cini_module_0__and_module_9_res) );
  DFF_X1 u_cini_module_0__reg_module_18__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_9_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_18_res), .QN() );
  NAND2_X1 u_cini_module_0__majority7_module_3_U18 ( .A1(
        n_cini_module_0__xor_module_40_res), .A2(
        n_cini_module_0__xor_module_52_res), .ZN(
        n_cini_module_0__majority7_module_3_n16) );
  XOR2_X1 u_cini_module_0__majority7_module_3_U17 ( .A(
        n_cini_module_0__xor_module_40_res), .B(
        n_cini_module_0__xor_module_52_res), .Z(
        n_cini_module_0__majority7_module_3_n10) );
  NAND2_X1 u_cini_module_0__majority7_module_3_U16 ( .A1(
        n_cini_module_0__xor_module_64_res), .A2(
        n_cini_module_0__majority7_module_3_n10), .ZN(
        n_cini_module_0__majority7_module_3_n17) );
  NAND2_X1 u_cini_module_0__majority7_module_3_U15 ( .A1(
        n_cini_module_0__majority7_module_3_n16), .A2(
        n_cini_module_0__majority7_module_3_n17), .ZN(
        n_cini_module_0__majority7_module_3_n13) );
  NAND2_X1 u_cini_module_0__majority7_module_3_U14 ( .A1(
        n_cini_module_0__xor_module_4_res), .A2(
        n_cini_module_0__xor_module_16_res), .ZN(
        n_cini_module_0__majority7_module_3_n14) );
  XOR2_X1 u_cini_module_0__majority7_module_3_U13 ( .A(
        n_cini_module_0__xor_module_4_res), .B(
        n_cini_module_0__xor_module_16_res), .Z(
        n_cini_module_0__majority7_module_3_n11) );
  NAND2_X1 u_cini_module_0__majority7_module_3_U12 ( .A1(
        n_cini_module_0__xor_module_28_res), .A2(
        n_cini_module_0__majority7_module_3_n11), .ZN(
        n_cini_module_0__majority7_module_3_n15) );
  NAND2_X1 u_cini_module_0__majority7_module_3_U11 ( .A1(
        n_cini_module_0__majority7_module_3_n14), .A2(
        n_cini_module_0__majority7_module_3_n15), .ZN(
        n_cini_module_0__majority7_module_3_n12) );
  NAND2_X1 u_cini_module_0__majority7_module_3_U10 ( .A1(
        n_cini_module_0__majority7_module_3_n13), .A2(
        n_cini_module_0__majority7_module_3_n12), .ZN(
        n_cini_module_0__majority7_module_3_n1) );
  OR2_X1 u_cini_module_0__majority7_module_3_U9 ( .A1(
        n_cini_module_0__majority7_module_3_n12), .A2(
        n_cini_module_0__majority7_module_3_n13), .ZN(
        n_cini_module_0__majority7_module_3_n3) );
  XOR2_X1 u_cini_module_0__majority7_module_3_U8 ( .A(
        n_cini_module_0__xor_module_28_res), .B(
        n_cini_module_0__majority7_module_3_n11), .Z(
        n_cini_module_0__majority7_module_3_n9) );
  NAND2_X1 u_cini_module_0__majority7_module_3_U7 ( .A1(
        n_cini_module_0__xor_module_76_res), .A2(
        n_cini_module_0__majority7_module_3_n9), .ZN(
        n_cini_module_0__majority7_module_3_n5) );
  XOR2_X1 u_cini_module_0__majority7_module_3_U6 ( .A(
        n_cini_module_0__xor_module_64_res), .B(
        n_cini_module_0__majority7_module_3_n10), .Z(
        n_cini_module_0__majority7_module_3_n7) );
  OR2_X1 u_cini_module_0__majority7_module_3_U5 ( .A1(
        n_cini_module_0__majority7_module_3_n9), .A2(
        n_cini_module_0__xor_module_76_res), .ZN(
        n_cini_module_0__majority7_module_3_n8) );
  NAND2_X1 u_cini_module_0__majority7_module_3_U4 ( .A1(
        n_cini_module_0__majority7_module_3_n7), .A2(
        n_cini_module_0__majority7_module_3_n8), .ZN(
        n_cini_module_0__majority7_module_3_n6) );
  NAND2_X1 u_cini_module_0__majority7_module_3_U3 ( .A1(
        n_cini_module_0__majority7_module_3_n5), .A2(
        n_cini_module_0__majority7_module_3_n6), .ZN(
        n_cini_module_0__majority7_module_3_n4) );
  NAND2_X1 u_cini_module_0__majority7_module_3_U2 ( .A1(
        n_cini_module_0__majority7_module_3_n3), .A2(
        n_cini_module_0__majority7_module_3_n4), .ZN(
        n_cini_module_0__majority7_module_3_n2) );
  NAND2_X1 u_cini_module_0__majority7_module_3_U1 ( .A1(
        n_cini_module_0__majority7_module_3_n1), .A2(
        n_cini_module_0__majority7_module_3_n2), .ZN(
        n_cini_module_0__majority7_module_3_res) );
  DFF_X1 u_cini_module_0__reg_module_19__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority7_module_3_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_19_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_10_U1 ( .A1(
        n_cini_module_0__reg_module_19_res), .A2(io_a_s1_d0), .ZN(
        n_cini_module_0__and_module_10_res) );
  DFF_X1 u_cini_module_0__reg_module_20__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_10_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_20_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_91_U1 ( .A(
        n_cini_module_0__reg_module_18_res), .B(
        n_cini_module_0__reg_module_20_res), .Z(
        n_cini_module_0__xor_module_91_res) );
  DFF_X1 u_cini_module_0__reg_module_21__hpc_correct_b_s0_d0_reg ( .D(p_rand_3), .CK(clock_0), .Q(n_cini_module_0__reg_module_21_res), .QN() );
  INV_X1 u_cini_module_0__not_module_5_U1 ( .A(io_a_s1_d0), .ZN(
        n_cini_module_0__not_module_5_res) );
  AND2_X1 u_cini_module_0__and_module_11_U1 ( .A1(
        n_cini_module_0__not_module_5_res), .A2(
        n_cini_module_0__reg_module_21_res), .ZN(
        n_cini_module_0__and_module_11_res) );
  DFF_X1 u_cini_module_0__reg_module_22__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_11_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_22_res), .QN() );
  NAND2_X1 u_cini_module_0__majority7_module_4_U18 ( .A1(
        n_cini_module_0__xor_module_41_res), .A2(
        n_cini_module_0__xor_module_53_res), .ZN(
        n_cini_module_0__majority7_module_4_n16) );
  XOR2_X1 u_cini_module_0__majority7_module_4_U17 ( .A(
        n_cini_module_0__xor_module_41_res), .B(
        n_cini_module_0__xor_module_53_res), .Z(
        n_cini_module_0__majority7_module_4_n10) );
  NAND2_X1 u_cini_module_0__majority7_module_4_U16 ( .A1(
        n_cini_module_0__xor_module_65_res), .A2(
        n_cini_module_0__majority7_module_4_n10), .ZN(
        n_cini_module_0__majority7_module_4_n17) );
  NAND2_X1 u_cini_module_0__majority7_module_4_U15 ( .A1(
        n_cini_module_0__majority7_module_4_n16), .A2(
        n_cini_module_0__majority7_module_4_n17), .ZN(
        n_cini_module_0__majority7_module_4_n13) );
  NAND2_X1 u_cini_module_0__majority7_module_4_U14 ( .A1(
        n_cini_module_0__xor_module_5_res), .A2(
        n_cini_module_0__xor_module_17_res), .ZN(
        n_cini_module_0__majority7_module_4_n14) );
  XOR2_X1 u_cini_module_0__majority7_module_4_U13 ( .A(
        n_cini_module_0__xor_module_5_res), .B(
        n_cini_module_0__xor_module_17_res), .Z(
        n_cini_module_0__majority7_module_4_n11) );
  NAND2_X1 u_cini_module_0__majority7_module_4_U12 ( .A1(
        n_cini_module_0__xor_module_29_res), .A2(
        n_cini_module_0__majority7_module_4_n11), .ZN(
        n_cini_module_0__majority7_module_4_n15) );
  NAND2_X1 u_cini_module_0__majority7_module_4_U11 ( .A1(
        n_cini_module_0__majority7_module_4_n14), .A2(
        n_cini_module_0__majority7_module_4_n15), .ZN(
        n_cini_module_0__majority7_module_4_n12) );
  NAND2_X1 u_cini_module_0__majority7_module_4_U10 ( .A1(
        n_cini_module_0__majority7_module_4_n13), .A2(
        n_cini_module_0__majority7_module_4_n12), .ZN(
        n_cini_module_0__majority7_module_4_n1) );
  OR2_X1 u_cini_module_0__majority7_module_4_U9 ( .A1(
        n_cini_module_0__majority7_module_4_n12), .A2(
        n_cini_module_0__majority7_module_4_n13), .ZN(
        n_cini_module_0__majority7_module_4_n3) );
  XOR2_X1 u_cini_module_0__majority7_module_4_U8 ( .A(
        n_cini_module_0__xor_module_29_res), .B(
        n_cini_module_0__majority7_module_4_n11), .Z(
        n_cini_module_0__majority7_module_4_n9) );
  NAND2_X1 u_cini_module_0__majority7_module_4_U7 ( .A1(
        n_cini_module_0__xor_module_77_res), .A2(
        n_cini_module_0__majority7_module_4_n9), .ZN(
        n_cini_module_0__majority7_module_4_n5) );
  XOR2_X1 u_cini_module_0__majority7_module_4_U6 ( .A(
        n_cini_module_0__xor_module_65_res), .B(
        n_cini_module_0__majority7_module_4_n10), .Z(
        n_cini_module_0__majority7_module_4_n7) );
  OR2_X1 u_cini_module_0__majority7_module_4_U5 ( .A1(
        n_cini_module_0__majority7_module_4_n9), .A2(
        n_cini_module_0__xor_module_77_res), .ZN(
        n_cini_module_0__majority7_module_4_n8) );
  NAND2_X1 u_cini_module_0__majority7_module_4_U4 ( .A1(
        n_cini_module_0__majority7_module_4_n7), .A2(
        n_cini_module_0__majority7_module_4_n8), .ZN(
        n_cini_module_0__majority7_module_4_n6) );
  NAND2_X1 u_cini_module_0__majority7_module_4_U3 ( .A1(
        n_cini_module_0__majority7_module_4_n5), .A2(
        n_cini_module_0__majority7_module_4_n6), .ZN(
        n_cini_module_0__majority7_module_4_n4) );
  NAND2_X1 u_cini_module_0__majority7_module_4_U2 ( .A1(
        n_cini_module_0__majority7_module_4_n3), .A2(
        n_cini_module_0__majority7_module_4_n4), .ZN(
        n_cini_module_0__majority7_module_4_n2) );
  NAND2_X1 u_cini_module_0__majority7_module_4_U1 ( .A1(
        n_cini_module_0__majority7_module_4_n1), .A2(
        n_cini_module_0__majority7_module_4_n2), .ZN(
        n_cini_module_0__majority7_module_4_res) );
  DFF_X1 u_cini_module_0__reg_module_23__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority7_module_4_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_23_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_12_U1 ( .A1(
        n_cini_module_0__reg_module_23_res), .A2(io_a_s1_d0), .ZN(
        n_cini_module_0__and_module_12_res) );
  DFF_X1 u_cini_module_0__reg_module_24__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_12_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_24_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_92_U1 ( .A(
        n_cini_module_0__reg_module_22_res), .B(
        n_cini_module_0__reg_module_24_res), .Z(
        n_cini_module_0__xor_module_92_res) );
  XOR2_X1 u_cini_module_0__xor_module_93_U1 ( .A(
        n_cini_module_0__xor_module_91_res), .B(
        n_cini_module_0__xor_module_92_res), .Z(
        n_cini_module_0__xor_module_93_res) );
  DFF_X1 u_cini_module_0__reg_module_25__hpc_correct_b_s0_d0_reg ( .D(p_rand_4), .CK(clock_0), .Q(n_cini_module_0__reg_module_25_res), .QN() );
  INV_X1 u_cini_module_0__not_module_6_U1 ( .A(io_a_s1_d0), .ZN(
        n_cini_module_0__not_module_6_res) );
  AND2_X1 u_cini_module_0__and_module_13_U1 ( .A1(
        n_cini_module_0__not_module_6_res), .A2(
        n_cini_module_0__reg_module_25_res), .ZN(
        n_cini_module_0__and_module_13_res) );
  DFF_X1 u_cini_module_0__reg_module_26__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_13_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_26_res), .QN() );
  NAND2_X1 u_cini_module_0__majority7_module_5_U18 ( .A1(
        n_cini_module_0__xor_module_42_res), .A2(
        n_cini_module_0__xor_module_54_res), .ZN(
        n_cini_module_0__majority7_module_5_n16) );
  XOR2_X1 u_cini_module_0__majority7_module_5_U17 ( .A(
        n_cini_module_0__xor_module_42_res), .B(
        n_cini_module_0__xor_module_54_res), .Z(
        n_cini_module_0__majority7_module_5_n10) );
  NAND2_X1 u_cini_module_0__majority7_module_5_U16 ( .A1(
        n_cini_module_0__xor_module_66_res), .A2(
        n_cini_module_0__majority7_module_5_n10), .ZN(
        n_cini_module_0__majority7_module_5_n17) );
  NAND2_X1 u_cini_module_0__majority7_module_5_U15 ( .A1(
        n_cini_module_0__majority7_module_5_n16), .A2(
        n_cini_module_0__majority7_module_5_n17), .ZN(
        n_cini_module_0__majority7_module_5_n13) );
  NAND2_X1 u_cini_module_0__majority7_module_5_U14 ( .A1(
        n_cini_module_0__xor_module_6_res), .A2(
        n_cini_module_0__xor_module_18_res), .ZN(
        n_cini_module_0__majority7_module_5_n14) );
  XOR2_X1 u_cini_module_0__majority7_module_5_U13 ( .A(
        n_cini_module_0__xor_module_6_res), .B(
        n_cini_module_0__xor_module_18_res), .Z(
        n_cini_module_0__majority7_module_5_n11) );
  NAND2_X1 u_cini_module_0__majority7_module_5_U12 ( .A1(
        n_cini_module_0__xor_module_30_res), .A2(
        n_cini_module_0__majority7_module_5_n11), .ZN(
        n_cini_module_0__majority7_module_5_n15) );
  NAND2_X1 u_cini_module_0__majority7_module_5_U11 ( .A1(
        n_cini_module_0__majority7_module_5_n14), .A2(
        n_cini_module_0__majority7_module_5_n15), .ZN(
        n_cini_module_0__majority7_module_5_n12) );
  NAND2_X1 u_cini_module_0__majority7_module_5_U10 ( .A1(
        n_cini_module_0__majority7_module_5_n13), .A2(
        n_cini_module_0__majority7_module_5_n12), .ZN(
        n_cini_module_0__majority7_module_5_n1) );
  OR2_X1 u_cini_module_0__majority7_module_5_U9 ( .A1(
        n_cini_module_0__majority7_module_5_n12), .A2(
        n_cini_module_0__majority7_module_5_n13), .ZN(
        n_cini_module_0__majority7_module_5_n3) );
  XOR2_X1 u_cini_module_0__majority7_module_5_U8 ( .A(
        n_cini_module_0__xor_module_30_res), .B(
        n_cini_module_0__majority7_module_5_n11), .Z(
        n_cini_module_0__majority7_module_5_n9) );
  NAND2_X1 u_cini_module_0__majority7_module_5_U7 ( .A1(
        n_cini_module_0__xor_module_78_res), .A2(
        n_cini_module_0__majority7_module_5_n9), .ZN(
        n_cini_module_0__majority7_module_5_n5) );
  XOR2_X1 u_cini_module_0__majority7_module_5_U6 ( .A(
        n_cini_module_0__xor_module_66_res), .B(
        n_cini_module_0__majority7_module_5_n10), .Z(
        n_cini_module_0__majority7_module_5_n7) );
  OR2_X1 u_cini_module_0__majority7_module_5_U5 ( .A1(
        n_cini_module_0__majority7_module_5_n9), .A2(
        n_cini_module_0__xor_module_78_res), .ZN(
        n_cini_module_0__majority7_module_5_n8) );
  NAND2_X1 u_cini_module_0__majority7_module_5_U4 ( .A1(
        n_cini_module_0__majority7_module_5_n7), .A2(
        n_cini_module_0__majority7_module_5_n8), .ZN(
        n_cini_module_0__majority7_module_5_n6) );
  NAND2_X1 u_cini_module_0__majority7_module_5_U3 ( .A1(
        n_cini_module_0__majority7_module_5_n5), .A2(
        n_cini_module_0__majority7_module_5_n6), .ZN(
        n_cini_module_0__majority7_module_5_n4) );
  NAND2_X1 u_cini_module_0__majority7_module_5_U2 ( .A1(
        n_cini_module_0__majority7_module_5_n3), .A2(
        n_cini_module_0__majority7_module_5_n4), .ZN(
        n_cini_module_0__majority7_module_5_n2) );
  NAND2_X1 u_cini_module_0__majority7_module_5_U1 ( .A1(
        n_cini_module_0__majority7_module_5_n1), .A2(
        n_cini_module_0__majority7_module_5_n2), .ZN(
        n_cini_module_0__majority7_module_5_res) );
  DFF_X1 u_cini_module_0__reg_module_27__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority7_module_5_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_27_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_14_U1 ( .A1(
        n_cini_module_0__reg_module_27_res), .A2(io_a_s1_d0), .ZN(
        n_cini_module_0__and_module_14_res) );
  DFF_X1 u_cini_module_0__reg_module_28__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_14_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_28_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_94_U1 ( .A(
        n_cini_module_0__reg_module_26_res), .B(
        n_cini_module_0__reg_module_28_res), .Z(
        n_cini_module_0__xor_module_94_res) );
  XOR2_X1 u_cini_module_0__xor_module_95_U1 ( .A(
        n_cini_module_0__xor_module_93_res), .B(
        n_cini_module_0__xor_module_94_res), .Z(
        n_cini_module_0__xor_module_95_res) );
  XOR2_X1 u_cini_module_0__xor_module_96_U1 ( .A(
        n_cini_module_0__xor_module_95_res), .B(
        n_cini_module_0__reg_module_16_res), .Z(io_c_s1_d0) );
  DFF_X1 u_cini_module_0__reg_module_29__hpc_correct_b_s0_d0_reg ( .D(
        io_b_s2_d0), .CK(clock_0), .Q(n_cini_module_0__reg_module_29_res), 
        .QN() );
  AND2_X1 u_cini_module_0__and_module_15_U1 ( .A1(
        n_cini_module_0__reg_module_29_res), .A2(io_a_s2_d0), .ZN(
        n_cini_module_0__and_module_15_res) );
  DFF_X1 u_cini_module_0__reg_module_30__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_15_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_30_res), .QN() );
  DFF_X1 u_cini_module_0__reg_module_31__hpc_correct_b_s0_d0_reg ( .D(p_rand_1), .CK(clock_0), .Q(n_cini_module_0__reg_module_31_res), .QN() );
  INV_X1 u_cini_module_0__not_module_7_U1 ( .A(io_a_s2_d0), .ZN(
        n_cini_module_0__not_module_7_res) );
  AND2_X1 u_cini_module_0__and_module_16_U1 ( .A1(
        n_cini_module_0__not_module_7_res), .A2(
        n_cini_module_0__reg_module_31_res), .ZN(
        n_cini_module_0__and_module_16_res) );
  DFF_X1 u_cini_module_0__reg_module_32__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_16_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_32_res), .QN() );
  NAND2_X1 u_cini_module_0__majority7_module_6_U18 ( .A1(
        n_cini_module_0__xor_module_43_res), .A2(
        n_cini_module_0__xor_module_55_res), .ZN(
        n_cini_module_0__majority7_module_6_n16) );
  XOR2_X1 u_cini_module_0__majority7_module_6_U17 ( .A(
        n_cini_module_0__xor_module_43_res), .B(
        n_cini_module_0__xor_module_55_res), .Z(
        n_cini_module_0__majority7_module_6_n10) );
  NAND2_X1 u_cini_module_0__majority7_module_6_U16 ( .A1(
        n_cini_module_0__xor_module_67_res), .A2(
        n_cini_module_0__majority7_module_6_n10), .ZN(
        n_cini_module_0__majority7_module_6_n17) );
  NAND2_X1 u_cini_module_0__majority7_module_6_U15 ( .A1(
        n_cini_module_0__majority7_module_6_n16), .A2(
        n_cini_module_0__majority7_module_6_n17), .ZN(
        n_cini_module_0__majority7_module_6_n13) );
  NAND2_X1 u_cini_module_0__majority7_module_6_U14 ( .A1(
        n_cini_module_0__xor_module_7_res), .A2(
        n_cini_module_0__xor_module_19_res), .ZN(
        n_cini_module_0__majority7_module_6_n14) );
  XOR2_X1 u_cini_module_0__majority7_module_6_U13 ( .A(
        n_cini_module_0__xor_module_7_res), .B(
        n_cini_module_0__xor_module_19_res), .Z(
        n_cini_module_0__majority7_module_6_n11) );
  NAND2_X1 u_cini_module_0__majority7_module_6_U12 ( .A1(
        n_cini_module_0__xor_module_31_res), .A2(
        n_cini_module_0__majority7_module_6_n11), .ZN(
        n_cini_module_0__majority7_module_6_n15) );
  NAND2_X1 u_cini_module_0__majority7_module_6_U11 ( .A1(
        n_cini_module_0__majority7_module_6_n14), .A2(
        n_cini_module_0__majority7_module_6_n15), .ZN(
        n_cini_module_0__majority7_module_6_n12) );
  NAND2_X1 u_cini_module_0__majority7_module_6_U10 ( .A1(
        n_cini_module_0__majority7_module_6_n13), .A2(
        n_cini_module_0__majority7_module_6_n12), .ZN(
        n_cini_module_0__majority7_module_6_n1) );
  OR2_X1 u_cini_module_0__majority7_module_6_U9 ( .A1(
        n_cini_module_0__majority7_module_6_n12), .A2(
        n_cini_module_0__majority7_module_6_n13), .ZN(
        n_cini_module_0__majority7_module_6_n3) );
  XOR2_X1 u_cini_module_0__majority7_module_6_U8 ( .A(
        n_cini_module_0__xor_module_31_res), .B(
        n_cini_module_0__majority7_module_6_n11), .Z(
        n_cini_module_0__majority7_module_6_n9) );
  NAND2_X1 u_cini_module_0__majority7_module_6_U7 ( .A1(
        n_cini_module_0__xor_module_79_res), .A2(
        n_cini_module_0__majority7_module_6_n9), .ZN(
        n_cini_module_0__majority7_module_6_n5) );
  XOR2_X1 u_cini_module_0__majority7_module_6_U6 ( .A(
        n_cini_module_0__xor_module_67_res), .B(
        n_cini_module_0__majority7_module_6_n10), .Z(
        n_cini_module_0__majority7_module_6_n7) );
  OR2_X1 u_cini_module_0__majority7_module_6_U5 ( .A1(
        n_cini_module_0__majority7_module_6_n9), .A2(
        n_cini_module_0__xor_module_79_res), .ZN(
        n_cini_module_0__majority7_module_6_n8) );
  NAND2_X1 u_cini_module_0__majority7_module_6_U4 ( .A1(
        n_cini_module_0__majority7_module_6_n7), .A2(
        n_cini_module_0__majority7_module_6_n8), .ZN(
        n_cini_module_0__majority7_module_6_n6) );
  NAND2_X1 u_cini_module_0__majority7_module_6_U3 ( .A1(
        n_cini_module_0__majority7_module_6_n5), .A2(
        n_cini_module_0__majority7_module_6_n6), .ZN(
        n_cini_module_0__majority7_module_6_n4) );
  NAND2_X1 u_cini_module_0__majority7_module_6_U2 ( .A1(
        n_cini_module_0__majority7_module_6_n3), .A2(
        n_cini_module_0__majority7_module_6_n4), .ZN(
        n_cini_module_0__majority7_module_6_n2) );
  NAND2_X1 u_cini_module_0__majority7_module_6_U1 ( .A1(
        n_cini_module_0__majority7_module_6_n1), .A2(
        n_cini_module_0__majority7_module_6_n2), .ZN(
        n_cini_module_0__majority7_module_6_res) );
  DFF_X1 u_cini_module_0__reg_module_33__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority7_module_6_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_33_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_17_U1 ( .A1(
        n_cini_module_0__reg_module_33_res), .A2(io_a_s2_d0), .ZN(
        n_cini_module_0__and_module_17_res) );
  DFF_X1 u_cini_module_0__reg_module_34__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_17_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_34_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_97_U1 ( .A(
        n_cini_module_0__reg_module_32_res), .B(
        n_cini_module_0__reg_module_34_res), .Z(
        n_cini_module_0__xor_module_97_res) );
  DFF_X1 u_cini_module_0__reg_module_35__hpc_correct_b_s0_d0_reg ( .D(p_rand_3), .CK(clock_0), .Q(n_cini_module_0__reg_module_35_res), .QN() );
  INV_X1 u_cini_module_0__not_module_8_U1 ( .A(io_a_s2_d0), .ZN(
        n_cini_module_0__not_module_8_res) );
  AND2_X1 u_cini_module_0__and_module_18_U1 ( .A1(
        n_cini_module_0__not_module_8_res), .A2(
        n_cini_module_0__reg_module_35_res), .ZN(
        n_cini_module_0__and_module_18_res) );
  DFF_X1 u_cini_module_0__reg_module_36__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_18_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_36_res), .QN() );
  NAND2_X1 u_cini_module_0__majority7_module_7_U18 ( .A1(
        n_cini_module_0__xor_module_44_res), .A2(
        n_cini_module_0__xor_module_56_res), .ZN(
        n_cini_module_0__majority7_module_7_n16) );
  XOR2_X1 u_cini_module_0__majority7_module_7_U17 ( .A(
        n_cini_module_0__xor_module_44_res), .B(
        n_cini_module_0__xor_module_56_res), .Z(
        n_cini_module_0__majority7_module_7_n10) );
  NAND2_X1 u_cini_module_0__majority7_module_7_U16 ( .A1(
        n_cini_module_0__xor_module_68_res), .A2(
        n_cini_module_0__majority7_module_7_n10), .ZN(
        n_cini_module_0__majority7_module_7_n17) );
  NAND2_X1 u_cini_module_0__majority7_module_7_U15 ( .A1(
        n_cini_module_0__majority7_module_7_n16), .A2(
        n_cini_module_0__majority7_module_7_n17), .ZN(
        n_cini_module_0__majority7_module_7_n13) );
  NAND2_X1 u_cini_module_0__majority7_module_7_U14 ( .A1(
        n_cini_module_0__xor_module_8_res), .A2(
        n_cini_module_0__xor_module_20_res), .ZN(
        n_cini_module_0__majority7_module_7_n14) );
  XOR2_X1 u_cini_module_0__majority7_module_7_U13 ( .A(
        n_cini_module_0__xor_module_8_res), .B(
        n_cini_module_0__xor_module_20_res), .Z(
        n_cini_module_0__majority7_module_7_n11) );
  NAND2_X1 u_cini_module_0__majority7_module_7_U12 ( .A1(
        n_cini_module_0__xor_module_32_res), .A2(
        n_cini_module_0__majority7_module_7_n11), .ZN(
        n_cini_module_0__majority7_module_7_n15) );
  NAND2_X1 u_cini_module_0__majority7_module_7_U11 ( .A1(
        n_cini_module_0__majority7_module_7_n14), .A2(
        n_cini_module_0__majority7_module_7_n15), .ZN(
        n_cini_module_0__majority7_module_7_n12) );
  NAND2_X1 u_cini_module_0__majority7_module_7_U10 ( .A1(
        n_cini_module_0__majority7_module_7_n13), .A2(
        n_cini_module_0__majority7_module_7_n12), .ZN(
        n_cini_module_0__majority7_module_7_n1) );
  OR2_X1 u_cini_module_0__majority7_module_7_U9 ( .A1(
        n_cini_module_0__majority7_module_7_n12), .A2(
        n_cini_module_0__majority7_module_7_n13), .ZN(
        n_cini_module_0__majority7_module_7_n3) );
  XOR2_X1 u_cini_module_0__majority7_module_7_U8 ( .A(
        n_cini_module_0__xor_module_32_res), .B(
        n_cini_module_0__majority7_module_7_n11), .Z(
        n_cini_module_0__majority7_module_7_n9) );
  NAND2_X1 u_cini_module_0__majority7_module_7_U7 ( .A1(
        n_cini_module_0__xor_module_80_res), .A2(
        n_cini_module_0__majority7_module_7_n9), .ZN(
        n_cini_module_0__majority7_module_7_n5) );
  XOR2_X1 u_cini_module_0__majority7_module_7_U6 ( .A(
        n_cini_module_0__xor_module_68_res), .B(
        n_cini_module_0__majority7_module_7_n10), .Z(
        n_cini_module_0__majority7_module_7_n7) );
  OR2_X1 u_cini_module_0__majority7_module_7_U5 ( .A1(
        n_cini_module_0__majority7_module_7_n9), .A2(
        n_cini_module_0__xor_module_80_res), .ZN(
        n_cini_module_0__majority7_module_7_n8) );
  NAND2_X1 u_cini_module_0__majority7_module_7_U4 ( .A1(
        n_cini_module_0__majority7_module_7_n7), .A2(
        n_cini_module_0__majority7_module_7_n8), .ZN(
        n_cini_module_0__majority7_module_7_n6) );
  NAND2_X1 u_cini_module_0__majority7_module_7_U3 ( .A1(
        n_cini_module_0__majority7_module_7_n5), .A2(
        n_cini_module_0__majority7_module_7_n6), .ZN(
        n_cini_module_0__majority7_module_7_n4) );
  NAND2_X1 u_cini_module_0__majority7_module_7_U2 ( .A1(
        n_cini_module_0__majority7_module_7_n3), .A2(
        n_cini_module_0__majority7_module_7_n4), .ZN(
        n_cini_module_0__majority7_module_7_n2) );
  NAND2_X1 u_cini_module_0__majority7_module_7_U1 ( .A1(
        n_cini_module_0__majority7_module_7_n1), .A2(
        n_cini_module_0__majority7_module_7_n2), .ZN(
        n_cini_module_0__majority7_module_7_res) );
  DFF_X1 u_cini_module_0__reg_module_37__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority7_module_7_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_37_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_19_U1 ( .A1(
        n_cini_module_0__reg_module_37_res), .A2(io_a_s2_d0), .ZN(
        n_cini_module_0__and_module_19_res) );
  DFF_X1 u_cini_module_0__reg_module_38__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_19_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_38_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_98_U1 ( .A(
        n_cini_module_0__reg_module_36_res), .B(
        n_cini_module_0__reg_module_38_res), .Z(
        n_cini_module_0__xor_module_98_res) );
  XOR2_X1 u_cini_module_0__xor_module_99_U1 ( .A(
        n_cini_module_0__xor_module_97_res), .B(
        n_cini_module_0__xor_module_98_res), .Z(
        n_cini_module_0__xor_module_99_res) );
  DFF_X1 u_cini_module_0__reg_module_39__hpc_correct_b_s0_d0_reg ( .D(p_rand_5), .CK(clock_0), .Q(n_cini_module_0__reg_module_39_res), .QN() );
  INV_X1 u_cini_module_0__not_module_9_U1 ( .A(io_a_s2_d0), .ZN(
        n_cini_module_0__not_module_9_res) );
  AND2_X1 u_cini_module_0__and_module_20_U1 ( .A1(
        n_cini_module_0__not_module_9_res), .A2(
        n_cini_module_0__reg_module_39_res), .ZN(
        n_cini_module_0__and_module_20_res) );
  DFF_X1 u_cini_module_0__reg_module_40__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_20_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_40_res), .QN() );
  NAND2_X1 u_cini_module_0__majority7_module_8_U18 ( .A1(
        n_cini_module_0__xor_module_45_res), .A2(
        n_cini_module_0__xor_module_57_res), .ZN(
        n_cini_module_0__majority7_module_8_n16) );
  XOR2_X1 u_cini_module_0__majority7_module_8_U17 ( .A(
        n_cini_module_0__xor_module_45_res), .B(
        n_cini_module_0__xor_module_57_res), .Z(
        n_cini_module_0__majority7_module_8_n10) );
  NAND2_X1 u_cini_module_0__majority7_module_8_U16 ( .A1(
        n_cini_module_0__xor_module_69_res), .A2(
        n_cini_module_0__majority7_module_8_n10), .ZN(
        n_cini_module_0__majority7_module_8_n17) );
  NAND2_X1 u_cini_module_0__majority7_module_8_U15 ( .A1(
        n_cini_module_0__majority7_module_8_n16), .A2(
        n_cini_module_0__majority7_module_8_n17), .ZN(
        n_cini_module_0__majority7_module_8_n13) );
  NAND2_X1 u_cini_module_0__majority7_module_8_U14 ( .A1(
        n_cini_module_0__xor_module_9_res), .A2(
        n_cini_module_0__xor_module_21_res), .ZN(
        n_cini_module_0__majority7_module_8_n14) );
  XOR2_X1 u_cini_module_0__majority7_module_8_U13 ( .A(
        n_cini_module_0__xor_module_9_res), .B(
        n_cini_module_0__xor_module_21_res), .Z(
        n_cini_module_0__majority7_module_8_n11) );
  NAND2_X1 u_cini_module_0__majority7_module_8_U12 ( .A1(
        n_cini_module_0__xor_module_33_res), .A2(
        n_cini_module_0__majority7_module_8_n11), .ZN(
        n_cini_module_0__majority7_module_8_n15) );
  NAND2_X1 u_cini_module_0__majority7_module_8_U11 ( .A1(
        n_cini_module_0__majority7_module_8_n14), .A2(
        n_cini_module_0__majority7_module_8_n15), .ZN(
        n_cini_module_0__majority7_module_8_n12) );
  NAND2_X1 u_cini_module_0__majority7_module_8_U10 ( .A1(
        n_cini_module_0__majority7_module_8_n13), .A2(
        n_cini_module_0__majority7_module_8_n12), .ZN(
        n_cini_module_0__majority7_module_8_n1) );
  OR2_X1 u_cini_module_0__majority7_module_8_U9 ( .A1(
        n_cini_module_0__majority7_module_8_n12), .A2(
        n_cini_module_0__majority7_module_8_n13), .ZN(
        n_cini_module_0__majority7_module_8_n3) );
  XOR2_X1 u_cini_module_0__majority7_module_8_U8 ( .A(
        n_cini_module_0__xor_module_33_res), .B(
        n_cini_module_0__majority7_module_8_n11), .Z(
        n_cini_module_0__majority7_module_8_n9) );
  NAND2_X1 u_cini_module_0__majority7_module_8_U7 ( .A1(
        n_cini_module_0__xor_module_81_res), .A2(
        n_cini_module_0__majority7_module_8_n9), .ZN(
        n_cini_module_0__majority7_module_8_n5) );
  XOR2_X1 u_cini_module_0__majority7_module_8_U6 ( .A(
        n_cini_module_0__xor_module_69_res), .B(
        n_cini_module_0__majority7_module_8_n10), .Z(
        n_cini_module_0__majority7_module_8_n7) );
  OR2_X1 u_cini_module_0__majority7_module_8_U5 ( .A1(
        n_cini_module_0__majority7_module_8_n9), .A2(
        n_cini_module_0__xor_module_81_res), .ZN(
        n_cini_module_0__majority7_module_8_n8) );
  NAND2_X1 u_cini_module_0__majority7_module_8_U4 ( .A1(
        n_cini_module_0__majority7_module_8_n7), .A2(
        n_cini_module_0__majority7_module_8_n8), .ZN(
        n_cini_module_0__majority7_module_8_n6) );
  NAND2_X1 u_cini_module_0__majority7_module_8_U3 ( .A1(
        n_cini_module_0__majority7_module_8_n5), .A2(
        n_cini_module_0__majority7_module_8_n6), .ZN(
        n_cini_module_0__majority7_module_8_n4) );
  NAND2_X1 u_cini_module_0__majority7_module_8_U2 ( .A1(
        n_cini_module_0__majority7_module_8_n3), .A2(
        n_cini_module_0__majority7_module_8_n4), .ZN(
        n_cini_module_0__majority7_module_8_n2) );
  NAND2_X1 u_cini_module_0__majority7_module_8_U1 ( .A1(
        n_cini_module_0__majority7_module_8_n1), .A2(
        n_cini_module_0__majority7_module_8_n2), .ZN(
        n_cini_module_0__majority7_module_8_res) );
  DFF_X1 u_cini_module_0__reg_module_41__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority7_module_8_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_41_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_21_U1 ( .A1(
        n_cini_module_0__reg_module_41_res), .A2(io_a_s2_d0), .ZN(
        n_cini_module_0__and_module_21_res) );
  DFF_X1 u_cini_module_0__reg_module_42__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_21_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_42_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_100_U1 ( .A(
        n_cini_module_0__reg_module_40_res), .B(
        n_cini_module_0__reg_module_42_res), .Z(
        n_cini_module_0__xor_module_100_res) );
  XOR2_X1 u_cini_module_0__xor_module_101_U1 ( .A(
        n_cini_module_0__xor_module_99_res), .B(
        n_cini_module_0__xor_module_100_res), .Z(
        n_cini_module_0__xor_module_101_res) );
  XOR2_X1 u_cini_module_0__xor_module_102_U1 ( .A(
        n_cini_module_0__xor_module_101_res), .B(
        n_cini_module_0__reg_module_30_res), .Z(io_c_s2_d0) );
  DFF_X1 u_cini_module_0__reg_module_43__hpc_correct_b_s0_d0_reg ( .D(
        io_b_s3_d0), .CK(clock_0), .Q(n_cini_module_0__reg_module_43_res), 
        .QN() );
  AND2_X1 u_cini_module_0__and_module_22_U1 ( .A1(
        n_cini_module_0__reg_module_43_res), .A2(io_a_s3_d0), .ZN(
        n_cini_module_0__and_module_22_res) );
  DFF_X1 u_cini_module_0__reg_module_44__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_22_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_44_res), .QN() );
  DFF_X1 u_cini_module_0__reg_module_45__hpc_correct_b_s0_d0_reg ( .D(p_rand_2), .CK(clock_0), .Q(n_cini_module_0__reg_module_45_res), .QN() );
  INV_X1 u_cini_module_0__not_module_10_U1 ( .A(io_a_s3_d0), .ZN(
        n_cini_module_0__not_module_10_res) );
  AND2_X1 u_cini_module_0__and_module_23_U1 ( .A1(
        n_cini_module_0__not_module_10_res), .A2(
        n_cini_module_0__reg_module_45_res), .ZN(
        n_cini_module_0__and_module_23_res) );
  DFF_X1 u_cini_module_0__reg_module_46__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_23_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_46_res), .QN() );
  NAND2_X1 u_cini_module_0__majority7_module_9_U18 ( .A1(
        n_cini_module_0__xor_module_46_res), .A2(
        n_cini_module_0__xor_module_58_res), .ZN(
        n_cini_module_0__majority7_module_9_n16) );
  XOR2_X1 u_cini_module_0__majority7_module_9_U17 ( .A(
        n_cini_module_0__xor_module_46_res), .B(
        n_cini_module_0__xor_module_58_res), .Z(
        n_cini_module_0__majority7_module_9_n10) );
  NAND2_X1 u_cini_module_0__majority7_module_9_U16 ( .A1(
        n_cini_module_0__xor_module_70_res), .A2(
        n_cini_module_0__majority7_module_9_n10), .ZN(
        n_cini_module_0__majority7_module_9_n17) );
  NAND2_X1 u_cini_module_0__majority7_module_9_U15 ( .A1(
        n_cini_module_0__majority7_module_9_n16), .A2(
        n_cini_module_0__majority7_module_9_n17), .ZN(
        n_cini_module_0__majority7_module_9_n13) );
  NAND2_X1 u_cini_module_0__majority7_module_9_U14 ( .A1(
        n_cini_module_0__xor_module_10_res), .A2(
        n_cini_module_0__xor_module_22_res), .ZN(
        n_cini_module_0__majority7_module_9_n14) );
  XOR2_X1 u_cini_module_0__majority7_module_9_U13 ( .A(
        n_cini_module_0__xor_module_10_res), .B(
        n_cini_module_0__xor_module_22_res), .Z(
        n_cini_module_0__majority7_module_9_n11) );
  NAND2_X1 u_cini_module_0__majority7_module_9_U12 ( .A1(
        n_cini_module_0__xor_module_34_res), .A2(
        n_cini_module_0__majority7_module_9_n11), .ZN(
        n_cini_module_0__majority7_module_9_n15) );
  NAND2_X1 u_cini_module_0__majority7_module_9_U11 ( .A1(
        n_cini_module_0__majority7_module_9_n14), .A2(
        n_cini_module_0__majority7_module_9_n15), .ZN(
        n_cini_module_0__majority7_module_9_n12) );
  NAND2_X1 u_cini_module_0__majority7_module_9_U10 ( .A1(
        n_cini_module_0__majority7_module_9_n13), .A2(
        n_cini_module_0__majority7_module_9_n12), .ZN(
        n_cini_module_0__majority7_module_9_n1) );
  OR2_X1 u_cini_module_0__majority7_module_9_U9 ( .A1(
        n_cini_module_0__majority7_module_9_n12), .A2(
        n_cini_module_0__majority7_module_9_n13), .ZN(
        n_cini_module_0__majority7_module_9_n3) );
  XOR2_X1 u_cini_module_0__majority7_module_9_U8 ( .A(
        n_cini_module_0__xor_module_34_res), .B(
        n_cini_module_0__majority7_module_9_n11), .Z(
        n_cini_module_0__majority7_module_9_n9) );
  NAND2_X1 u_cini_module_0__majority7_module_9_U7 ( .A1(
        n_cini_module_0__xor_module_82_res), .A2(
        n_cini_module_0__majority7_module_9_n9), .ZN(
        n_cini_module_0__majority7_module_9_n5) );
  XOR2_X1 u_cini_module_0__majority7_module_9_U6 ( .A(
        n_cini_module_0__xor_module_70_res), .B(
        n_cini_module_0__majority7_module_9_n10), .Z(
        n_cini_module_0__majority7_module_9_n7) );
  OR2_X1 u_cini_module_0__majority7_module_9_U5 ( .A1(
        n_cini_module_0__majority7_module_9_n9), .A2(
        n_cini_module_0__xor_module_82_res), .ZN(
        n_cini_module_0__majority7_module_9_n8) );
  NAND2_X1 u_cini_module_0__majority7_module_9_U4 ( .A1(
        n_cini_module_0__majority7_module_9_n7), .A2(
        n_cini_module_0__majority7_module_9_n8), .ZN(
        n_cini_module_0__majority7_module_9_n6) );
  NAND2_X1 u_cini_module_0__majority7_module_9_U3 ( .A1(
        n_cini_module_0__majority7_module_9_n5), .A2(
        n_cini_module_0__majority7_module_9_n6), .ZN(
        n_cini_module_0__majority7_module_9_n4) );
  NAND2_X1 u_cini_module_0__majority7_module_9_U2 ( .A1(
        n_cini_module_0__majority7_module_9_n3), .A2(
        n_cini_module_0__majority7_module_9_n4), .ZN(
        n_cini_module_0__majority7_module_9_n2) );
  NAND2_X1 u_cini_module_0__majority7_module_9_U1 ( .A1(
        n_cini_module_0__majority7_module_9_n1), .A2(
        n_cini_module_0__majority7_module_9_n2), .ZN(
        n_cini_module_0__majority7_module_9_res) );
  DFF_X1 u_cini_module_0__reg_module_47__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority7_module_9_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_47_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_24_U1 ( .A1(
        n_cini_module_0__reg_module_47_res), .A2(io_a_s3_d0), .ZN(
        n_cini_module_0__and_module_24_res) );
  DFF_X1 u_cini_module_0__reg_module_48__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_24_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_48_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_103_U1 ( .A(
        n_cini_module_0__reg_module_46_res), .B(
        n_cini_module_0__reg_module_48_res), .Z(
        n_cini_module_0__xor_module_103_res) );
  DFF_X1 u_cini_module_0__reg_module_49__hpc_correct_b_s0_d0_reg ( .D(p_rand_4), .CK(clock_0), .Q(n_cini_module_0__reg_module_49_res), .QN() );
  INV_X1 u_cini_module_0__not_module_11_U1 ( .A(io_a_s3_d0), .ZN(
        n_cini_module_0__not_module_11_res) );
  AND2_X1 u_cini_module_0__and_module_25_U1 ( .A1(
        n_cini_module_0__not_module_11_res), .A2(
        n_cini_module_0__reg_module_49_res), .ZN(
        n_cini_module_0__and_module_25_res) );
  DFF_X1 u_cini_module_0__reg_module_50__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_25_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_50_res), .QN() );
  NAND2_X1 u_cini_module_0__majority7_module_10_U18 ( .A1(
        n_cini_module_0__xor_module_47_res), .A2(
        n_cini_module_0__xor_module_59_res), .ZN(
        n_cini_module_0__majority7_module_10_n16) );
  XOR2_X1 u_cini_module_0__majority7_module_10_U17 ( .A(
        n_cini_module_0__xor_module_47_res), .B(
        n_cini_module_0__xor_module_59_res), .Z(
        n_cini_module_0__majority7_module_10_n10) );
  NAND2_X1 u_cini_module_0__majority7_module_10_U16 ( .A1(
        n_cini_module_0__xor_module_71_res), .A2(
        n_cini_module_0__majority7_module_10_n10), .ZN(
        n_cini_module_0__majority7_module_10_n17) );
  NAND2_X1 u_cini_module_0__majority7_module_10_U15 ( .A1(
        n_cini_module_0__majority7_module_10_n16), .A2(
        n_cini_module_0__majority7_module_10_n17), .ZN(
        n_cini_module_0__majority7_module_10_n13) );
  NAND2_X1 u_cini_module_0__majority7_module_10_U14 ( .A1(
        n_cini_module_0__xor_module_11_res), .A2(
        n_cini_module_0__xor_module_23_res), .ZN(
        n_cini_module_0__majority7_module_10_n14) );
  XOR2_X1 u_cini_module_0__majority7_module_10_U13 ( .A(
        n_cini_module_0__xor_module_11_res), .B(
        n_cini_module_0__xor_module_23_res), .Z(
        n_cini_module_0__majority7_module_10_n11) );
  NAND2_X1 u_cini_module_0__majority7_module_10_U12 ( .A1(
        n_cini_module_0__xor_module_35_res), .A2(
        n_cini_module_0__majority7_module_10_n11), .ZN(
        n_cini_module_0__majority7_module_10_n15) );
  NAND2_X1 u_cini_module_0__majority7_module_10_U11 ( .A1(
        n_cini_module_0__majority7_module_10_n14), .A2(
        n_cini_module_0__majority7_module_10_n15), .ZN(
        n_cini_module_0__majority7_module_10_n12) );
  NAND2_X1 u_cini_module_0__majority7_module_10_U10 ( .A1(
        n_cini_module_0__majority7_module_10_n13), .A2(
        n_cini_module_0__majority7_module_10_n12), .ZN(
        n_cini_module_0__majority7_module_10_n1) );
  OR2_X1 u_cini_module_0__majority7_module_10_U9 ( .A1(
        n_cini_module_0__majority7_module_10_n12), .A2(
        n_cini_module_0__majority7_module_10_n13), .ZN(
        n_cini_module_0__majority7_module_10_n3) );
  XOR2_X1 u_cini_module_0__majority7_module_10_U8 ( .A(
        n_cini_module_0__xor_module_35_res), .B(
        n_cini_module_0__majority7_module_10_n11), .Z(
        n_cini_module_0__majority7_module_10_n9) );
  NAND2_X1 u_cini_module_0__majority7_module_10_U7 ( .A1(
        n_cini_module_0__xor_module_83_res), .A2(
        n_cini_module_0__majority7_module_10_n9), .ZN(
        n_cini_module_0__majority7_module_10_n5) );
  XOR2_X1 u_cini_module_0__majority7_module_10_U6 ( .A(
        n_cini_module_0__xor_module_71_res), .B(
        n_cini_module_0__majority7_module_10_n10), .Z(
        n_cini_module_0__majority7_module_10_n7) );
  OR2_X1 u_cini_module_0__majority7_module_10_U5 ( .A1(
        n_cini_module_0__majority7_module_10_n9), .A2(
        n_cini_module_0__xor_module_83_res), .ZN(
        n_cini_module_0__majority7_module_10_n8) );
  NAND2_X1 u_cini_module_0__majority7_module_10_U4 ( .A1(
        n_cini_module_0__majority7_module_10_n7), .A2(
        n_cini_module_0__majority7_module_10_n8), .ZN(
        n_cini_module_0__majority7_module_10_n6) );
  NAND2_X1 u_cini_module_0__majority7_module_10_U3 ( .A1(
        n_cini_module_0__majority7_module_10_n5), .A2(
        n_cini_module_0__majority7_module_10_n6), .ZN(
        n_cini_module_0__majority7_module_10_n4) );
  NAND2_X1 u_cini_module_0__majority7_module_10_U2 ( .A1(
        n_cini_module_0__majority7_module_10_n3), .A2(
        n_cini_module_0__majority7_module_10_n4), .ZN(
        n_cini_module_0__majority7_module_10_n2) );
  NAND2_X1 u_cini_module_0__majority7_module_10_U1 ( .A1(
        n_cini_module_0__majority7_module_10_n1), .A2(
        n_cini_module_0__majority7_module_10_n2), .ZN(
        n_cini_module_0__majority7_module_10_res) );
  DFF_X1 u_cini_module_0__reg_module_51__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority7_module_10_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_51_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_26_U1 ( .A1(
        n_cini_module_0__reg_module_51_res), .A2(io_a_s3_d0), .ZN(
        n_cini_module_0__and_module_26_res) );
  DFF_X1 u_cini_module_0__reg_module_52__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_26_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_52_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_104_U1 ( .A(
        n_cini_module_0__reg_module_50_res), .B(
        n_cini_module_0__reg_module_52_res), .Z(
        n_cini_module_0__xor_module_104_res) );
  XOR2_X1 u_cini_module_0__xor_module_105_U1 ( .A(
        n_cini_module_0__xor_module_103_res), .B(
        n_cini_module_0__xor_module_104_res), .Z(
        n_cini_module_0__xor_module_105_res) );
  DFF_X1 u_cini_module_0__reg_module_53__hpc_correct_b_s0_d0_reg ( .D(p_rand_5), .CK(clock_0), .Q(n_cini_module_0__reg_module_53_res), .QN() );
  INV_X1 u_cini_module_0__not_module_12_U1 ( .A(io_a_s3_d0), .ZN(
        n_cini_module_0__not_module_12_res) );
  AND2_X1 u_cini_module_0__and_module_27_U1 ( .A1(
        n_cini_module_0__not_module_12_res), .A2(
        n_cini_module_0__reg_module_53_res), .ZN(
        n_cini_module_0__and_module_27_res) );
  DFF_X1 u_cini_module_0__reg_module_54__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_27_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_54_res), .QN() );
  NAND2_X1 u_cini_module_0__majority7_module_11_U18 ( .A1(
        n_cini_module_0__xor_module_48_res), .A2(
        n_cini_module_0__xor_module_60_res), .ZN(
        n_cini_module_0__majority7_module_11_n16) );
  XOR2_X1 u_cini_module_0__majority7_module_11_U17 ( .A(
        n_cini_module_0__xor_module_48_res), .B(
        n_cini_module_0__xor_module_60_res), .Z(
        n_cini_module_0__majority7_module_11_n10) );
  NAND2_X1 u_cini_module_0__majority7_module_11_U16 ( .A1(
        n_cini_module_0__xor_module_72_res), .A2(
        n_cini_module_0__majority7_module_11_n10), .ZN(
        n_cini_module_0__majority7_module_11_n17) );
  NAND2_X1 u_cini_module_0__majority7_module_11_U15 ( .A1(
        n_cini_module_0__majority7_module_11_n16), .A2(
        n_cini_module_0__majority7_module_11_n17), .ZN(
        n_cini_module_0__majority7_module_11_n13) );
  NAND2_X1 u_cini_module_0__majority7_module_11_U14 ( .A1(
        n_cini_module_0__xor_module_12_res), .A2(
        n_cini_module_0__xor_module_24_res), .ZN(
        n_cini_module_0__majority7_module_11_n14) );
  XOR2_X1 u_cini_module_0__majority7_module_11_U13 ( .A(
        n_cini_module_0__xor_module_12_res), .B(
        n_cini_module_0__xor_module_24_res), .Z(
        n_cini_module_0__majority7_module_11_n11) );
  NAND2_X1 u_cini_module_0__majority7_module_11_U12 ( .A1(
        n_cini_module_0__xor_module_36_res), .A2(
        n_cini_module_0__majority7_module_11_n11), .ZN(
        n_cini_module_0__majority7_module_11_n15) );
  NAND2_X1 u_cini_module_0__majority7_module_11_U11 ( .A1(
        n_cini_module_0__majority7_module_11_n14), .A2(
        n_cini_module_0__majority7_module_11_n15), .ZN(
        n_cini_module_0__majority7_module_11_n12) );
  NAND2_X1 u_cini_module_0__majority7_module_11_U10 ( .A1(
        n_cini_module_0__majority7_module_11_n13), .A2(
        n_cini_module_0__majority7_module_11_n12), .ZN(
        n_cini_module_0__majority7_module_11_n1) );
  OR2_X1 u_cini_module_0__majority7_module_11_U9 ( .A1(
        n_cini_module_0__majority7_module_11_n12), .A2(
        n_cini_module_0__majority7_module_11_n13), .ZN(
        n_cini_module_0__majority7_module_11_n3) );
  XOR2_X1 u_cini_module_0__majority7_module_11_U8 ( .A(
        n_cini_module_0__xor_module_36_res), .B(
        n_cini_module_0__majority7_module_11_n11), .Z(
        n_cini_module_0__majority7_module_11_n9) );
  NAND2_X1 u_cini_module_0__majority7_module_11_U7 ( .A1(
        n_cini_module_0__xor_module_84_res), .A2(
        n_cini_module_0__majority7_module_11_n9), .ZN(
        n_cini_module_0__majority7_module_11_n5) );
  XOR2_X1 u_cini_module_0__majority7_module_11_U6 ( .A(
        n_cini_module_0__xor_module_72_res), .B(
        n_cini_module_0__majority7_module_11_n10), .Z(
        n_cini_module_0__majority7_module_11_n7) );
  OR2_X1 u_cini_module_0__majority7_module_11_U5 ( .A1(
        n_cini_module_0__majority7_module_11_n9), .A2(
        n_cini_module_0__xor_module_84_res), .ZN(
        n_cini_module_0__majority7_module_11_n8) );
  NAND2_X1 u_cini_module_0__majority7_module_11_U4 ( .A1(
        n_cini_module_0__majority7_module_11_n7), .A2(
        n_cini_module_0__majority7_module_11_n8), .ZN(
        n_cini_module_0__majority7_module_11_n6) );
  NAND2_X1 u_cini_module_0__majority7_module_11_U3 ( .A1(
        n_cini_module_0__majority7_module_11_n5), .A2(
        n_cini_module_0__majority7_module_11_n6), .ZN(
        n_cini_module_0__majority7_module_11_n4) );
  NAND2_X1 u_cini_module_0__majority7_module_11_U2 ( .A1(
        n_cini_module_0__majority7_module_11_n3), .A2(
        n_cini_module_0__majority7_module_11_n4), .ZN(
        n_cini_module_0__majority7_module_11_n2) );
  NAND2_X1 u_cini_module_0__majority7_module_11_U1 ( .A1(
        n_cini_module_0__majority7_module_11_n1), .A2(
        n_cini_module_0__majority7_module_11_n2), .ZN(
        n_cini_module_0__majority7_module_11_res) );
  DFF_X1 u_cini_module_0__reg_module_55__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority7_module_11_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_55_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_28_U1 ( .A1(
        n_cini_module_0__reg_module_55_res), .A2(io_a_s3_d0), .ZN(
        n_cini_module_0__and_module_28_res) );
  DFF_X1 u_cini_module_0__reg_module_56__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_28_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_56_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_106_U1 ( .A(
        n_cini_module_0__reg_module_54_res), .B(
        n_cini_module_0__reg_module_56_res), .Z(
        n_cini_module_0__xor_module_106_res) );
  XOR2_X1 u_cini_module_0__xor_module_107_U1 ( .A(
        n_cini_module_0__xor_module_105_res), .B(
        n_cini_module_0__xor_module_106_res), .Z(
        n_cini_module_0__xor_module_107_res) );
  XOR2_X1 u_cini_module_0__xor_module_108_U1 ( .A(
        n_cini_module_0__xor_module_107_res), .B(
        n_cini_module_0__reg_module_44_res), .Z(io_c_s3_d0) );
  DFF_X1 u_cini_module_0__reg_module_57__hpc_correct_b_s0_d0_reg ( .D(
        io_b_s0_d1), .CK(clock_1), .Q(n_cini_module_0__reg_module_57_res), 
        .QN() );
  AND2_X1 u_cini_module_0__and_module_29_U1 ( .A1(
        n_cini_module_0__reg_module_57_res), .A2(io_a_s0_d1), .ZN(
        n_cini_module_0__and_module_29_res) );
  DFF_X1 u_cini_module_0__reg_module_58__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_29_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_58_res), .QN() );
  DFF_X1 u_cini_module_0__reg_module_59__hpc_correct_b_s0_d0_reg ( .D(p_rand_0), .CK(clock_1), .Q(n_cini_module_0__reg_module_59_res), .QN() );
  INV_X1 u_cini_module_0__not_module_13_U1 ( .A(io_a_s0_d1), .ZN(
        n_cini_module_0__not_module_13_res) );
  AND2_X1 u_cini_module_0__and_module_30_U1 ( .A1(
        n_cini_module_0__not_module_13_res), .A2(
        n_cini_module_0__reg_module_59_res), .ZN(
        n_cini_module_0__and_module_30_res) );
  DFF_X1 u_cini_module_0__reg_module_60__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_30_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_60_res), .QN() );
  NAND2_X1 u_cini_module_0__majority7_module_12_U18 ( .A1(
        n_cini_module_0__xor_module_37_res), .A2(
        n_cini_module_0__xor_module_49_res), .ZN(
        n_cini_module_0__majority7_module_12_n16) );
  XOR2_X1 u_cini_module_0__majority7_module_12_U17 ( .A(
        n_cini_module_0__xor_module_37_res), .B(
        n_cini_module_0__xor_module_49_res), .Z(
        n_cini_module_0__majority7_module_12_n10) );
  NAND2_X1 u_cini_module_0__majority7_module_12_U16 ( .A1(
        n_cini_module_0__xor_module_61_res), .A2(
        n_cini_module_0__majority7_module_12_n10), .ZN(
        n_cini_module_0__majority7_module_12_n17) );
  NAND2_X1 u_cini_module_0__majority7_module_12_U15 ( .A1(
        n_cini_module_0__majority7_module_12_n16), .A2(
        n_cini_module_0__majority7_module_12_n17), .ZN(
        n_cini_module_0__majority7_module_12_n13) );
  NAND2_X1 u_cini_module_0__majority7_module_12_U14 ( .A1(
        n_cini_module_0__xor_module_1_res), .A2(
        n_cini_module_0__xor_module_13_res), .ZN(
        n_cini_module_0__majority7_module_12_n14) );
  XOR2_X1 u_cini_module_0__majority7_module_12_U13 ( .A(
        n_cini_module_0__xor_module_1_res), .B(
        n_cini_module_0__xor_module_13_res), .Z(
        n_cini_module_0__majority7_module_12_n11) );
  NAND2_X1 u_cini_module_0__majority7_module_12_U12 ( .A1(
        n_cini_module_0__xor_module_25_res), .A2(
        n_cini_module_0__majority7_module_12_n11), .ZN(
        n_cini_module_0__majority7_module_12_n15) );
  NAND2_X1 u_cini_module_0__majority7_module_12_U11 ( .A1(
        n_cini_module_0__majority7_module_12_n14), .A2(
        n_cini_module_0__majority7_module_12_n15), .ZN(
        n_cini_module_0__majority7_module_12_n12) );
  NAND2_X1 u_cini_module_0__majority7_module_12_U10 ( .A1(
        n_cini_module_0__majority7_module_12_n13), .A2(
        n_cini_module_0__majority7_module_12_n12), .ZN(
        n_cini_module_0__majority7_module_12_n1) );
  OR2_X1 u_cini_module_0__majority7_module_12_U9 ( .A1(
        n_cini_module_0__majority7_module_12_n12), .A2(
        n_cini_module_0__majority7_module_12_n13), .ZN(
        n_cini_module_0__majority7_module_12_n3) );
  XOR2_X1 u_cini_module_0__majority7_module_12_U8 ( .A(
        n_cini_module_0__xor_module_25_res), .B(
        n_cini_module_0__majority7_module_12_n11), .Z(
        n_cini_module_0__majority7_module_12_n9) );
  NAND2_X1 u_cini_module_0__majority7_module_12_U7 ( .A1(
        n_cini_module_0__xor_module_73_res), .A2(
        n_cini_module_0__majority7_module_12_n9), .ZN(
        n_cini_module_0__majority7_module_12_n5) );
  XOR2_X1 u_cini_module_0__majority7_module_12_U6 ( .A(
        n_cini_module_0__xor_module_61_res), .B(
        n_cini_module_0__majority7_module_12_n10), .Z(
        n_cini_module_0__majority7_module_12_n7) );
  OR2_X1 u_cini_module_0__majority7_module_12_U5 ( .A1(
        n_cini_module_0__majority7_module_12_n9), .A2(
        n_cini_module_0__xor_module_73_res), .ZN(
        n_cini_module_0__majority7_module_12_n8) );
  NAND2_X1 u_cini_module_0__majority7_module_12_U4 ( .A1(
        n_cini_module_0__majority7_module_12_n7), .A2(
        n_cini_module_0__majority7_module_12_n8), .ZN(
        n_cini_module_0__majority7_module_12_n6) );
  NAND2_X1 u_cini_module_0__majority7_module_12_U3 ( .A1(
        n_cini_module_0__majority7_module_12_n5), .A2(
        n_cini_module_0__majority7_module_12_n6), .ZN(
        n_cini_module_0__majority7_module_12_n4) );
  NAND2_X1 u_cini_module_0__majority7_module_12_U2 ( .A1(
        n_cini_module_0__majority7_module_12_n3), .A2(
        n_cini_module_0__majority7_module_12_n4), .ZN(
        n_cini_module_0__majority7_module_12_n2) );
  NAND2_X1 u_cini_module_0__majority7_module_12_U1 ( .A1(
        n_cini_module_0__majority7_module_12_n1), .A2(
        n_cini_module_0__majority7_module_12_n2), .ZN(
        n_cini_module_0__majority7_module_12_res) );
  DFF_X1 u_cini_module_0__reg_module_61__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority7_module_12_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_61_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_31_U1 ( .A1(
        n_cini_module_0__reg_module_61_res), .A2(io_a_s0_d1), .ZN(
        n_cini_module_0__and_module_31_res) );
  DFF_X1 u_cini_module_0__reg_module_62__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_31_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_62_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_109_U1 ( .A(
        n_cini_module_0__reg_module_60_res), .B(
        n_cini_module_0__reg_module_62_res), .Z(
        n_cini_module_0__xor_module_109_res) );
  DFF_X1 u_cini_module_0__reg_module_63__hpc_correct_b_s0_d0_reg ( .D(p_rand_1), .CK(clock_1), .Q(n_cini_module_0__reg_module_63_res), .QN() );
  INV_X1 u_cini_module_0__not_module_14_U1 ( .A(io_a_s0_d1), .ZN(
        n_cini_module_0__not_module_14_res) );
  AND2_X1 u_cini_module_0__and_module_32_U1 ( .A1(
        n_cini_module_0__not_module_14_res), .A2(
        n_cini_module_0__reg_module_63_res), .ZN(
        n_cini_module_0__and_module_32_res) );
  DFF_X1 u_cini_module_0__reg_module_64__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_32_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_64_res), .QN() );
  NAND2_X1 u_cini_module_0__majority7_module_13_U18 ( .A1(
        n_cini_module_0__xor_module_38_res), .A2(
        n_cini_module_0__xor_module_50_res), .ZN(
        n_cini_module_0__majority7_module_13_n16) );
  XOR2_X1 u_cini_module_0__majority7_module_13_U17 ( .A(
        n_cini_module_0__xor_module_38_res), .B(
        n_cini_module_0__xor_module_50_res), .Z(
        n_cini_module_0__majority7_module_13_n10) );
  NAND2_X1 u_cini_module_0__majority7_module_13_U16 ( .A1(
        n_cini_module_0__xor_module_62_res), .A2(
        n_cini_module_0__majority7_module_13_n10), .ZN(
        n_cini_module_0__majority7_module_13_n17) );
  NAND2_X1 u_cini_module_0__majority7_module_13_U15 ( .A1(
        n_cini_module_0__majority7_module_13_n16), .A2(
        n_cini_module_0__majority7_module_13_n17), .ZN(
        n_cini_module_0__majority7_module_13_n13) );
  NAND2_X1 u_cini_module_0__majority7_module_13_U14 ( .A1(
        n_cini_module_0__xor_module_2_res), .A2(
        n_cini_module_0__xor_module_14_res), .ZN(
        n_cini_module_0__majority7_module_13_n14) );
  XOR2_X1 u_cini_module_0__majority7_module_13_U13 ( .A(
        n_cini_module_0__xor_module_2_res), .B(
        n_cini_module_0__xor_module_14_res), .Z(
        n_cini_module_0__majority7_module_13_n11) );
  NAND2_X1 u_cini_module_0__majority7_module_13_U12 ( .A1(
        n_cini_module_0__xor_module_26_res), .A2(
        n_cini_module_0__majority7_module_13_n11), .ZN(
        n_cini_module_0__majority7_module_13_n15) );
  NAND2_X1 u_cini_module_0__majority7_module_13_U11 ( .A1(
        n_cini_module_0__majority7_module_13_n14), .A2(
        n_cini_module_0__majority7_module_13_n15), .ZN(
        n_cini_module_0__majority7_module_13_n12) );
  NAND2_X1 u_cini_module_0__majority7_module_13_U10 ( .A1(
        n_cini_module_0__majority7_module_13_n13), .A2(
        n_cini_module_0__majority7_module_13_n12), .ZN(
        n_cini_module_0__majority7_module_13_n1) );
  OR2_X1 u_cini_module_0__majority7_module_13_U9 ( .A1(
        n_cini_module_0__majority7_module_13_n12), .A2(
        n_cini_module_0__majority7_module_13_n13), .ZN(
        n_cini_module_0__majority7_module_13_n3) );
  XOR2_X1 u_cini_module_0__majority7_module_13_U8 ( .A(
        n_cini_module_0__xor_module_26_res), .B(
        n_cini_module_0__majority7_module_13_n11), .Z(
        n_cini_module_0__majority7_module_13_n9) );
  NAND2_X1 u_cini_module_0__majority7_module_13_U7 ( .A1(
        n_cini_module_0__xor_module_74_res), .A2(
        n_cini_module_0__majority7_module_13_n9), .ZN(
        n_cini_module_0__majority7_module_13_n5) );
  XOR2_X1 u_cini_module_0__majority7_module_13_U6 ( .A(
        n_cini_module_0__xor_module_62_res), .B(
        n_cini_module_0__majority7_module_13_n10), .Z(
        n_cini_module_0__majority7_module_13_n7) );
  OR2_X1 u_cini_module_0__majority7_module_13_U5 ( .A1(
        n_cini_module_0__majority7_module_13_n9), .A2(
        n_cini_module_0__xor_module_74_res), .ZN(
        n_cini_module_0__majority7_module_13_n8) );
  NAND2_X1 u_cini_module_0__majority7_module_13_U4 ( .A1(
        n_cini_module_0__majority7_module_13_n7), .A2(
        n_cini_module_0__majority7_module_13_n8), .ZN(
        n_cini_module_0__majority7_module_13_n6) );
  NAND2_X1 u_cini_module_0__majority7_module_13_U3 ( .A1(
        n_cini_module_0__majority7_module_13_n5), .A2(
        n_cini_module_0__majority7_module_13_n6), .ZN(
        n_cini_module_0__majority7_module_13_n4) );
  NAND2_X1 u_cini_module_0__majority7_module_13_U2 ( .A1(
        n_cini_module_0__majority7_module_13_n3), .A2(
        n_cini_module_0__majority7_module_13_n4), .ZN(
        n_cini_module_0__majority7_module_13_n2) );
  NAND2_X1 u_cini_module_0__majority7_module_13_U1 ( .A1(
        n_cini_module_0__majority7_module_13_n1), .A2(
        n_cini_module_0__majority7_module_13_n2), .ZN(
        n_cini_module_0__majority7_module_13_res) );
  DFF_X1 u_cini_module_0__reg_module_65__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority7_module_13_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_65_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_33_U1 ( .A1(
        n_cini_module_0__reg_module_65_res), .A2(io_a_s0_d1), .ZN(
        n_cini_module_0__and_module_33_res) );
  DFF_X1 u_cini_module_0__reg_module_66__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_33_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_66_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_110_U1 ( .A(
        n_cini_module_0__reg_module_64_res), .B(
        n_cini_module_0__reg_module_66_res), .Z(
        n_cini_module_0__xor_module_110_res) );
  XOR2_X1 u_cini_module_0__xor_module_111_U1 ( .A(
        n_cini_module_0__xor_module_109_res), .B(
        n_cini_module_0__xor_module_110_res), .Z(
        n_cini_module_0__xor_module_111_res) );
  DFF_X1 u_cini_module_0__reg_module_67__hpc_correct_b_s0_d0_reg ( .D(p_rand_2), .CK(clock_1), .Q(n_cini_module_0__reg_module_67_res), .QN() );
  INV_X1 u_cini_module_0__not_module_15_U1 ( .A(io_a_s0_d1), .ZN(
        n_cini_module_0__not_module_15_res) );
  AND2_X1 u_cini_module_0__and_module_34_U1 ( .A1(
        n_cini_module_0__not_module_15_res), .A2(
        n_cini_module_0__reg_module_67_res), .ZN(
        n_cini_module_0__and_module_34_res) );
  DFF_X1 u_cini_module_0__reg_module_68__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_34_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_68_res), .QN() );
  NAND2_X1 u_cini_module_0__majority7_module_14_U18 ( .A1(
        n_cini_module_0__xor_module_39_res), .A2(
        n_cini_module_0__xor_module_51_res), .ZN(
        n_cini_module_0__majority7_module_14_n16) );
  XOR2_X1 u_cini_module_0__majority7_module_14_U17 ( .A(
        n_cini_module_0__xor_module_39_res), .B(
        n_cini_module_0__xor_module_51_res), .Z(
        n_cini_module_0__majority7_module_14_n10) );
  NAND2_X1 u_cini_module_0__majority7_module_14_U16 ( .A1(
        n_cini_module_0__xor_module_63_res), .A2(
        n_cini_module_0__majority7_module_14_n10), .ZN(
        n_cini_module_0__majority7_module_14_n17) );
  NAND2_X1 u_cini_module_0__majority7_module_14_U15 ( .A1(
        n_cini_module_0__majority7_module_14_n16), .A2(
        n_cini_module_0__majority7_module_14_n17), .ZN(
        n_cini_module_0__majority7_module_14_n13) );
  NAND2_X1 u_cini_module_0__majority7_module_14_U14 ( .A1(
        n_cini_module_0__xor_module_3_res), .A2(
        n_cini_module_0__xor_module_15_res), .ZN(
        n_cini_module_0__majority7_module_14_n14) );
  XOR2_X1 u_cini_module_0__majority7_module_14_U13 ( .A(
        n_cini_module_0__xor_module_3_res), .B(
        n_cini_module_0__xor_module_15_res), .Z(
        n_cini_module_0__majority7_module_14_n11) );
  NAND2_X1 u_cini_module_0__majority7_module_14_U12 ( .A1(
        n_cini_module_0__xor_module_27_res), .A2(
        n_cini_module_0__majority7_module_14_n11), .ZN(
        n_cini_module_0__majority7_module_14_n15) );
  NAND2_X1 u_cini_module_0__majority7_module_14_U11 ( .A1(
        n_cini_module_0__majority7_module_14_n14), .A2(
        n_cini_module_0__majority7_module_14_n15), .ZN(
        n_cini_module_0__majority7_module_14_n12) );
  NAND2_X1 u_cini_module_0__majority7_module_14_U10 ( .A1(
        n_cini_module_0__majority7_module_14_n13), .A2(
        n_cini_module_0__majority7_module_14_n12), .ZN(
        n_cini_module_0__majority7_module_14_n1) );
  OR2_X1 u_cini_module_0__majority7_module_14_U9 ( .A1(
        n_cini_module_0__majority7_module_14_n12), .A2(
        n_cini_module_0__majority7_module_14_n13), .ZN(
        n_cini_module_0__majority7_module_14_n3) );
  XOR2_X1 u_cini_module_0__majority7_module_14_U8 ( .A(
        n_cini_module_0__xor_module_27_res), .B(
        n_cini_module_0__majority7_module_14_n11), .Z(
        n_cini_module_0__majority7_module_14_n9) );
  NAND2_X1 u_cini_module_0__majority7_module_14_U7 ( .A1(
        n_cini_module_0__xor_module_75_res), .A2(
        n_cini_module_0__majority7_module_14_n9), .ZN(
        n_cini_module_0__majority7_module_14_n5) );
  XOR2_X1 u_cini_module_0__majority7_module_14_U6 ( .A(
        n_cini_module_0__xor_module_63_res), .B(
        n_cini_module_0__majority7_module_14_n10), .Z(
        n_cini_module_0__majority7_module_14_n7) );
  OR2_X1 u_cini_module_0__majority7_module_14_U5 ( .A1(
        n_cini_module_0__majority7_module_14_n9), .A2(
        n_cini_module_0__xor_module_75_res), .ZN(
        n_cini_module_0__majority7_module_14_n8) );
  NAND2_X1 u_cini_module_0__majority7_module_14_U4 ( .A1(
        n_cini_module_0__majority7_module_14_n7), .A2(
        n_cini_module_0__majority7_module_14_n8), .ZN(
        n_cini_module_0__majority7_module_14_n6) );
  NAND2_X1 u_cini_module_0__majority7_module_14_U3 ( .A1(
        n_cini_module_0__majority7_module_14_n5), .A2(
        n_cini_module_0__majority7_module_14_n6), .ZN(
        n_cini_module_0__majority7_module_14_n4) );
  NAND2_X1 u_cini_module_0__majority7_module_14_U2 ( .A1(
        n_cini_module_0__majority7_module_14_n3), .A2(
        n_cini_module_0__majority7_module_14_n4), .ZN(
        n_cini_module_0__majority7_module_14_n2) );
  NAND2_X1 u_cini_module_0__majority7_module_14_U1 ( .A1(
        n_cini_module_0__majority7_module_14_n1), .A2(
        n_cini_module_0__majority7_module_14_n2), .ZN(
        n_cini_module_0__majority7_module_14_res) );
  DFF_X1 u_cini_module_0__reg_module_69__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority7_module_14_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_69_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_35_U1 ( .A1(
        n_cini_module_0__reg_module_69_res), .A2(io_a_s0_d1), .ZN(
        n_cini_module_0__and_module_35_res) );
  DFF_X1 u_cini_module_0__reg_module_70__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_35_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_70_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_112_U1 ( .A(
        n_cini_module_0__reg_module_68_res), .B(
        n_cini_module_0__reg_module_70_res), .Z(
        n_cini_module_0__xor_module_112_res) );
  XOR2_X1 u_cini_module_0__xor_module_113_U1 ( .A(
        n_cini_module_0__xor_module_111_res), .B(
        n_cini_module_0__xor_module_112_res), .Z(
        n_cini_module_0__xor_module_113_res) );
  XOR2_X1 u_cini_module_0__xor_module_114_U1 ( .A(
        n_cini_module_0__xor_module_113_res), .B(
        n_cini_module_0__reg_module_58_res), .Z(io_c_s0_d1) );
  DFF_X1 u_cini_module_0__reg_module_71__hpc_correct_b_s0_d0_reg ( .D(
        io_b_s1_d1), .CK(clock_1), .Q(n_cini_module_0__reg_module_71_res), 
        .QN() );
  AND2_X1 u_cini_module_0__and_module_36_U1 ( .A1(
        n_cini_module_0__reg_module_71_res), .A2(io_a_s1_d1), .ZN(
        n_cini_module_0__and_module_36_res) );
  DFF_X1 u_cini_module_0__reg_module_72__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_36_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_72_res), .QN() );
  DFF_X1 u_cini_module_0__reg_module_73__hpc_correct_b_s0_d0_reg ( .D(p_rand_0), .CK(clock_1), .Q(n_cini_module_0__reg_module_73_res), .QN() );
  INV_X1 u_cini_module_0__not_module_16_U1 ( .A(io_a_s1_d1), .ZN(
        n_cini_module_0__not_module_16_res) );
  AND2_X1 u_cini_module_0__and_module_37_U1 ( .A1(
        n_cini_module_0__not_module_16_res), .A2(
        n_cini_module_0__reg_module_73_res), .ZN(
        n_cini_module_0__and_module_37_res) );
  DFF_X1 u_cini_module_0__reg_module_74__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_37_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_74_res), .QN() );
  NAND2_X1 u_cini_module_0__majority7_module_15_U18 ( .A1(
        n_cini_module_0__xor_module_40_res), .A2(
        n_cini_module_0__xor_module_52_res), .ZN(
        n_cini_module_0__majority7_module_15_n16) );
  XOR2_X1 u_cini_module_0__majority7_module_15_U17 ( .A(
        n_cini_module_0__xor_module_40_res), .B(
        n_cini_module_0__xor_module_52_res), .Z(
        n_cini_module_0__majority7_module_15_n10) );
  NAND2_X1 u_cini_module_0__majority7_module_15_U16 ( .A1(
        n_cini_module_0__xor_module_64_res), .A2(
        n_cini_module_0__majority7_module_15_n10), .ZN(
        n_cini_module_0__majority7_module_15_n17) );
  NAND2_X1 u_cini_module_0__majority7_module_15_U15 ( .A1(
        n_cini_module_0__majority7_module_15_n16), .A2(
        n_cini_module_0__majority7_module_15_n17), .ZN(
        n_cini_module_0__majority7_module_15_n13) );
  NAND2_X1 u_cini_module_0__majority7_module_15_U14 ( .A1(
        n_cini_module_0__xor_module_4_res), .A2(
        n_cini_module_0__xor_module_16_res), .ZN(
        n_cini_module_0__majority7_module_15_n14) );
  XOR2_X1 u_cini_module_0__majority7_module_15_U13 ( .A(
        n_cini_module_0__xor_module_4_res), .B(
        n_cini_module_0__xor_module_16_res), .Z(
        n_cini_module_0__majority7_module_15_n11) );
  NAND2_X1 u_cini_module_0__majority7_module_15_U12 ( .A1(
        n_cini_module_0__xor_module_28_res), .A2(
        n_cini_module_0__majority7_module_15_n11), .ZN(
        n_cini_module_0__majority7_module_15_n15) );
  NAND2_X1 u_cini_module_0__majority7_module_15_U11 ( .A1(
        n_cini_module_0__majority7_module_15_n14), .A2(
        n_cini_module_0__majority7_module_15_n15), .ZN(
        n_cini_module_0__majority7_module_15_n12) );
  NAND2_X1 u_cini_module_0__majority7_module_15_U10 ( .A1(
        n_cini_module_0__majority7_module_15_n13), .A2(
        n_cini_module_0__majority7_module_15_n12), .ZN(
        n_cini_module_0__majority7_module_15_n1) );
  OR2_X1 u_cini_module_0__majority7_module_15_U9 ( .A1(
        n_cini_module_0__majority7_module_15_n12), .A2(
        n_cini_module_0__majority7_module_15_n13), .ZN(
        n_cini_module_0__majority7_module_15_n3) );
  XOR2_X1 u_cini_module_0__majority7_module_15_U8 ( .A(
        n_cini_module_0__xor_module_28_res), .B(
        n_cini_module_0__majority7_module_15_n11), .Z(
        n_cini_module_0__majority7_module_15_n9) );
  NAND2_X1 u_cini_module_0__majority7_module_15_U7 ( .A1(
        n_cini_module_0__xor_module_76_res), .A2(
        n_cini_module_0__majority7_module_15_n9), .ZN(
        n_cini_module_0__majority7_module_15_n5) );
  XOR2_X1 u_cini_module_0__majority7_module_15_U6 ( .A(
        n_cini_module_0__xor_module_64_res), .B(
        n_cini_module_0__majority7_module_15_n10), .Z(
        n_cini_module_0__majority7_module_15_n7) );
  OR2_X1 u_cini_module_0__majority7_module_15_U5 ( .A1(
        n_cini_module_0__majority7_module_15_n9), .A2(
        n_cini_module_0__xor_module_76_res), .ZN(
        n_cini_module_0__majority7_module_15_n8) );
  NAND2_X1 u_cini_module_0__majority7_module_15_U4 ( .A1(
        n_cini_module_0__majority7_module_15_n7), .A2(
        n_cini_module_0__majority7_module_15_n8), .ZN(
        n_cini_module_0__majority7_module_15_n6) );
  NAND2_X1 u_cini_module_0__majority7_module_15_U3 ( .A1(
        n_cini_module_0__majority7_module_15_n5), .A2(
        n_cini_module_0__majority7_module_15_n6), .ZN(
        n_cini_module_0__majority7_module_15_n4) );
  NAND2_X1 u_cini_module_0__majority7_module_15_U2 ( .A1(
        n_cini_module_0__majority7_module_15_n3), .A2(
        n_cini_module_0__majority7_module_15_n4), .ZN(
        n_cini_module_0__majority7_module_15_n2) );
  NAND2_X1 u_cini_module_0__majority7_module_15_U1 ( .A1(
        n_cini_module_0__majority7_module_15_n1), .A2(
        n_cini_module_0__majority7_module_15_n2), .ZN(
        n_cini_module_0__majority7_module_15_res) );
  DFF_X1 u_cini_module_0__reg_module_75__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority7_module_15_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_75_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_38_U1 ( .A1(
        n_cini_module_0__reg_module_75_res), .A2(io_a_s1_d1), .ZN(
        n_cini_module_0__and_module_38_res) );
  DFF_X1 u_cini_module_0__reg_module_76__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_38_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_76_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_115_U1 ( .A(
        n_cini_module_0__reg_module_74_res), .B(
        n_cini_module_0__reg_module_76_res), .Z(
        n_cini_module_0__xor_module_115_res) );
  DFF_X1 u_cini_module_0__reg_module_77__hpc_correct_b_s0_d0_reg ( .D(p_rand_3), .CK(clock_1), .Q(n_cini_module_0__reg_module_77_res), .QN() );
  INV_X1 u_cini_module_0__not_module_17_U1 ( .A(io_a_s1_d1), .ZN(
        n_cini_module_0__not_module_17_res) );
  AND2_X1 u_cini_module_0__and_module_39_U1 ( .A1(
        n_cini_module_0__not_module_17_res), .A2(
        n_cini_module_0__reg_module_77_res), .ZN(
        n_cini_module_0__and_module_39_res) );
  DFF_X1 u_cini_module_0__reg_module_78__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_39_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_78_res), .QN() );
  NAND2_X1 u_cini_module_0__majority7_module_16_U18 ( .A1(
        n_cini_module_0__xor_module_41_res), .A2(
        n_cini_module_0__xor_module_53_res), .ZN(
        n_cini_module_0__majority7_module_16_n16) );
  XOR2_X1 u_cini_module_0__majority7_module_16_U17 ( .A(
        n_cini_module_0__xor_module_41_res), .B(
        n_cini_module_0__xor_module_53_res), .Z(
        n_cini_module_0__majority7_module_16_n10) );
  NAND2_X1 u_cini_module_0__majority7_module_16_U16 ( .A1(
        n_cini_module_0__xor_module_65_res), .A2(
        n_cini_module_0__majority7_module_16_n10), .ZN(
        n_cini_module_0__majority7_module_16_n17) );
  NAND2_X1 u_cini_module_0__majority7_module_16_U15 ( .A1(
        n_cini_module_0__majority7_module_16_n16), .A2(
        n_cini_module_0__majority7_module_16_n17), .ZN(
        n_cini_module_0__majority7_module_16_n13) );
  NAND2_X1 u_cini_module_0__majority7_module_16_U14 ( .A1(
        n_cini_module_0__xor_module_5_res), .A2(
        n_cini_module_0__xor_module_17_res), .ZN(
        n_cini_module_0__majority7_module_16_n14) );
  XOR2_X1 u_cini_module_0__majority7_module_16_U13 ( .A(
        n_cini_module_0__xor_module_5_res), .B(
        n_cini_module_0__xor_module_17_res), .Z(
        n_cini_module_0__majority7_module_16_n11) );
  NAND2_X1 u_cini_module_0__majority7_module_16_U12 ( .A1(
        n_cini_module_0__xor_module_29_res), .A2(
        n_cini_module_0__majority7_module_16_n11), .ZN(
        n_cini_module_0__majority7_module_16_n15) );
  NAND2_X1 u_cini_module_0__majority7_module_16_U11 ( .A1(
        n_cini_module_0__majority7_module_16_n14), .A2(
        n_cini_module_0__majority7_module_16_n15), .ZN(
        n_cini_module_0__majority7_module_16_n12) );
  NAND2_X1 u_cini_module_0__majority7_module_16_U10 ( .A1(
        n_cini_module_0__majority7_module_16_n13), .A2(
        n_cini_module_0__majority7_module_16_n12), .ZN(
        n_cini_module_0__majority7_module_16_n1) );
  OR2_X1 u_cini_module_0__majority7_module_16_U9 ( .A1(
        n_cini_module_0__majority7_module_16_n12), .A2(
        n_cini_module_0__majority7_module_16_n13), .ZN(
        n_cini_module_0__majority7_module_16_n3) );
  XOR2_X1 u_cini_module_0__majority7_module_16_U8 ( .A(
        n_cini_module_0__xor_module_29_res), .B(
        n_cini_module_0__majority7_module_16_n11), .Z(
        n_cini_module_0__majority7_module_16_n9) );
  NAND2_X1 u_cini_module_0__majority7_module_16_U7 ( .A1(
        n_cini_module_0__xor_module_77_res), .A2(
        n_cini_module_0__majority7_module_16_n9), .ZN(
        n_cini_module_0__majority7_module_16_n5) );
  XOR2_X1 u_cini_module_0__majority7_module_16_U6 ( .A(
        n_cini_module_0__xor_module_65_res), .B(
        n_cini_module_0__majority7_module_16_n10), .Z(
        n_cini_module_0__majority7_module_16_n7) );
  OR2_X1 u_cini_module_0__majority7_module_16_U5 ( .A1(
        n_cini_module_0__majority7_module_16_n9), .A2(
        n_cini_module_0__xor_module_77_res), .ZN(
        n_cini_module_0__majority7_module_16_n8) );
  NAND2_X1 u_cini_module_0__majority7_module_16_U4 ( .A1(
        n_cini_module_0__majority7_module_16_n7), .A2(
        n_cini_module_0__majority7_module_16_n8), .ZN(
        n_cini_module_0__majority7_module_16_n6) );
  NAND2_X1 u_cini_module_0__majority7_module_16_U3 ( .A1(
        n_cini_module_0__majority7_module_16_n5), .A2(
        n_cini_module_0__majority7_module_16_n6), .ZN(
        n_cini_module_0__majority7_module_16_n4) );
  NAND2_X1 u_cini_module_0__majority7_module_16_U2 ( .A1(
        n_cini_module_0__majority7_module_16_n3), .A2(
        n_cini_module_0__majority7_module_16_n4), .ZN(
        n_cini_module_0__majority7_module_16_n2) );
  NAND2_X1 u_cini_module_0__majority7_module_16_U1 ( .A1(
        n_cini_module_0__majority7_module_16_n1), .A2(
        n_cini_module_0__majority7_module_16_n2), .ZN(
        n_cini_module_0__majority7_module_16_res) );
  DFF_X1 u_cini_module_0__reg_module_79__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority7_module_16_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_79_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_40_U1 ( .A1(
        n_cini_module_0__reg_module_79_res), .A2(io_a_s1_d1), .ZN(
        n_cini_module_0__and_module_40_res) );
  DFF_X1 u_cini_module_0__reg_module_80__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_40_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_80_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_116_U1 ( .A(
        n_cini_module_0__reg_module_78_res), .B(
        n_cini_module_0__reg_module_80_res), .Z(
        n_cini_module_0__xor_module_116_res) );
  XOR2_X1 u_cini_module_0__xor_module_117_U1 ( .A(
        n_cini_module_0__xor_module_115_res), .B(
        n_cini_module_0__xor_module_116_res), .Z(
        n_cini_module_0__xor_module_117_res) );
  DFF_X1 u_cini_module_0__reg_module_81__hpc_correct_b_s0_d0_reg ( .D(p_rand_4), .CK(clock_1), .Q(n_cini_module_0__reg_module_81_res), .QN() );
  INV_X1 u_cini_module_0__not_module_18_U1 ( .A(io_a_s1_d1), .ZN(
        n_cini_module_0__not_module_18_res) );
  AND2_X1 u_cini_module_0__and_module_41_U1 ( .A1(
        n_cini_module_0__not_module_18_res), .A2(
        n_cini_module_0__reg_module_81_res), .ZN(
        n_cini_module_0__and_module_41_res) );
  DFF_X1 u_cini_module_0__reg_module_82__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_41_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_82_res), .QN() );
  NAND2_X1 u_cini_module_0__majority7_module_17_U18 ( .A1(
        n_cini_module_0__xor_module_42_res), .A2(
        n_cini_module_0__xor_module_54_res), .ZN(
        n_cini_module_0__majority7_module_17_n16) );
  XOR2_X1 u_cini_module_0__majority7_module_17_U17 ( .A(
        n_cini_module_0__xor_module_42_res), .B(
        n_cini_module_0__xor_module_54_res), .Z(
        n_cini_module_0__majority7_module_17_n10) );
  NAND2_X1 u_cini_module_0__majority7_module_17_U16 ( .A1(
        n_cini_module_0__xor_module_66_res), .A2(
        n_cini_module_0__majority7_module_17_n10), .ZN(
        n_cini_module_0__majority7_module_17_n17) );
  NAND2_X1 u_cini_module_0__majority7_module_17_U15 ( .A1(
        n_cini_module_0__majority7_module_17_n16), .A2(
        n_cini_module_0__majority7_module_17_n17), .ZN(
        n_cini_module_0__majority7_module_17_n13) );
  NAND2_X1 u_cini_module_0__majority7_module_17_U14 ( .A1(
        n_cini_module_0__xor_module_6_res), .A2(
        n_cini_module_0__xor_module_18_res), .ZN(
        n_cini_module_0__majority7_module_17_n14) );
  XOR2_X1 u_cini_module_0__majority7_module_17_U13 ( .A(
        n_cini_module_0__xor_module_6_res), .B(
        n_cini_module_0__xor_module_18_res), .Z(
        n_cini_module_0__majority7_module_17_n11) );
  NAND2_X1 u_cini_module_0__majority7_module_17_U12 ( .A1(
        n_cini_module_0__xor_module_30_res), .A2(
        n_cini_module_0__majority7_module_17_n11), .ZN(
        n_cini_module_0__majority7_module_17_n15) );
  NAND2_X1 u_cini_module_0__majority7_module_17_U11 ( .A1(
        n_cini_module_0__majority7_module_17_n14), .A2(
        n_cini_module_0__majority7_module_17_n15), .ZN(
        n_cini_module_0__majority7_module_17_n12) );
  NAND2_X1 u_cini_module_0__majority7_module_17_U10 ( .A1(
        n_cini_module_0__majority7_module_17_n13), .A2(
        n_cini_module_0__majority7_module_17_n12), .ZN(
        n_cini_module_0__majority7_module_17_n1) );
  OR2_X1 u_cini_module_0__majority7_module_17_U9 ( .A1(
        n_cini_module_0__majority7_module_17_n12), .A2(
        n_cini_module_0__majority7_module_17_n13), .ZN(
        n_cini_module_0__majority7_module_17_n3) );
  XOR2_X1 u_cini_module_0__majority7_module_17_U8 ( .A(
        n_cini_module_0__xor_module_30_res), .B(
        n_cini_module_0__majority7_module_17_n11), .Z(
        n_cini_module_0__majority7_module_17_n9) );
  NAND2_X1 u_cini_module_0__majority7_module_17_U7 ( .A1(
        n_cini_module_0__xor_module_78_res), .A2(
        n_cini_module_0__majority7_module_17_n9), .ZN(
        n_cini_module_0__majority7_module_17_n5) );
  XOR2_X1 u_cini_module_0__majority7_module_17_U6 ( .A(
        n_cini_module_0__xor_module_66_res), .B(
        n_cini_module_0__majority7_module_17_n10), .Z(
        n_cini_module_0__majority7_module_17_n7) );
  OR2_X1 u_cini_module_0__majority7_module_17_U5 ( .A1(
        n_cini_module_0__majority7_module_17_n9), .A2(
        n_cini_module_0__xor_module_78_res), .ZN(
        n_cini_module_0__majority7_module_17_n8) );
  NAND2_X1 u_cini_module_0__majority7_module_17_U4 ( .A1(
        n_cini_module_0__majority7_module_17_n7), .A2(
        n_cini_module_0__majority7_module_17_n8), .ZN(
        n_cini_module_0__majority7_module_17_n6) );
  NAND2_X1 u_cini_module_0__majority7_module_17_U3 ( .A1(
        n_cini_module_0__majority7_module_17_n5), .A2(
        n_cini_module_0__majority7_module_17_n6), .ZN(
        n_cini_module_0__majority7_module_17_n4) );
  NAND2_X1 u_cini_module_0__majority7_module_17_U2 ( .A1(
        n_cini_module_0__majority7_module_17_n3), .A2(
        n_cini_module_0__majority7_module_17_n4), .ZN(
        n_cini_module_0__majority7_module_17_n2) );
  NAND2_X1 u_cini_module_0__majority7_module_17_U1 ( .A1(
        n_cini_module_0__majority7_module_17_n1), .A2(
        n_cini_module_0__majority7_module_17_n2), .ZN(
        n_cini_module_0__majority7_module_17_res) );
  DFF_X1 u_cini_module_0__reg_module_83__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority7_module_17_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_83_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_42_U1 ( .A1(
        n_cini_module_0__reg_module_83_res), .A2(io_a_s1_d1), .ZN(
        n_cini_module_0__and_module_42_res) );
  DFF_X1 u_cini_module_0__reg_module_84__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_42_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_84_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_118_U1 ( .A(
        n_cini_module_0__reg_module_82_res), .B(
        n_cini_module_0__reg_module_84_res), .Z(
        n_cini_module_0__xor_module_118_res) );
  XOR2_X1 u_cini_module_0__xor_module_119_U1 ( .A(
        n_cini_module_0__xor_module_117_res), .B(
        n_cini_module_0__xor_module_118_res), .Z(
        n_cini_module_0__xor_module_119_res) );
  XOR2_X1 u_cini_module_0__xor_module_120_U1 ( .A(
        n_cini_module_0__xor_module_119_res), .B(
        n_cini_module_0__reg_module_72_res), .Z(io_c_s1_d1) );
  DFF_X1 u_cini_module_0__reg_module_85__hpc_correct_b_s0_d0_reg ( .D(
        io_b_s2_d1), .CK(clock_1), .Q(n_cini_module_0__reg_module_85_res), 
        .QN() );
  AND2_X1 u_cini_module_0__and_module_43_U1 ( .A1(
        n_cini_module_0__reg_module_85_res), .A2(io_a_s2_d1), .ZN(
        n_cini_module_0__and_module_43_res) );
  DFF_X1 u_cini_module_0__reg_module_86__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_43_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_86_res), .QN() );
  DFF_X1 u_cini_module_0__reg_module_87__hpc_correct_b_s0_d0_reg ( .D(p_rand_1), .CK(clock_1), .Q(n_cini_module_0__reg_module_87_res), .QN() );
  INV_X1 u_cini_module_0__not_module_19_U1 ( .A(io_a_s2_d1), .ZN(
        n_cini_module_0__not_module_19_res) );
  AND2_X1 u_cini_module_0__and_module_44_U1 ( .A1(
        n_cini_module_0__not_module_19_res), .A2(
        n_cini_module_0__reg_module_87_res), .ZN(
        n_cini_module_0__and_module_44_res) );
  DFF_X1 u_cini_module_0__reg_module_88__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_44_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_88_res), .QN() );
  NAND2_X1 u_cini_module_0__majority7_module_18_U18 ( .A1(
        n_cini_module_0__xor_module_43_res), .A2(
        n_cini_module_0__xor_module_55_res), .ZN(
        n_cini_module_0__majority7_module_18_n16) );
  XOR2_X1 u_cini_module_0__majority7_module_18_U17 ( .A(
        n_cini_module_0__xor_module_43_res), .B(
        n_cini_module_0__xor_module_55_res), .Z(
        n_cini_module_0__majority7_module_18_n10) );
  NAND2_X1 u_cini_module_0__majority7_module_18_U16 ( .A1(
        n_cini_module_0__xor_module_67_res), .A2(
        n_cini_module_0__majority7_module_18_n10), .ZN(
        n_cini_module_0__majority7_module_18_n17) );
  NAND2_X1 u_cini_module_0__majority7_module_18_U15 ( .A1(
        n_cini_module_0__majority7_module_18_n16), .A2(
        n_cini_module_0__majority7_module_18_n17), .ZN(
        n_cini_module_0__majority7_module_18_n13) );
  NAND2_X1 u_cini_module_0__majority7_module_18_U14 ( .A1(
        n_cini_module_0__xor_module_7_res), .A2(
        n_cini_module_0__xor_module_19_res), .ZN(
        n_cini_module_0__majority7_module_18_n14) );
  XOR2_X1 u_cini_module_0__majority7_module_18_U13 ( .A(
        n_cini_module_0__xor_module_7_res), .B(
        n_cini_module_0__xor_module_19_res), .Z(
        n_cini_module_0__majority7_module_18_n11) );
  NAND2_X1 u_cini_module_0__majority7_module_18_U12 ( .A1(
        n_cini_module_0__xor_module_31_res), .A2(
        n_cini_module_0__majority7_module_18_n11), .ZN(
        n_cini_module_0__majority7_module_18_n15) );
  NAND2_X1 u_cini_module_0__majority7_module_18_U11 ( .A1(
        n_cini_module_0__majority7_module_18_n14), .A2(
        n_cini_module_0__majority7_module_18_n15), .ZN(
        n_cini_module_0__majority7_module_18_n12) );
  NAND2_X1 u_cini_module_0__majority7_module_18_U10 ( .A1(
        n_cini_module_0__majority7_module_18_n13), .A2(
        n_cini_module_0__majority7_module_18_n12), .ZN(
        n_cini_module_0__majority7_module_18_n1) );
  OR2_X1 u_cini_module_0__majority7_module_18_U9 ( .A1(
        n_cini_module_0__majority7_module_18_n12), .A2(
        n_cini_module_0__majority7_module_18_n13), .ZN(
        n_cini_module_0__majority7_module_18_n3) );
  XOR2_X1 u_cini_module_0__majority7_module_18_U8 ( .A(
        n_cini_module_0__xor_module_31_res), .B(
        n_cini_module_0__majority7_module_18_n11), .Z(
        n_cini_module_0__majority7_module_18_n9) );
  NAND2_X1 u_cini_module_0__majority7_module_18_U7 ( .A1(
        n_cini_module_0__xor_module_79_res), .A2(
        n_cini_module_0__majority7_module_18_n9), .ZN(
        n_cini_module_0__majority7_module_18_n5) );
  XOR2_X1 u_cini_module_0__majority7_module_18_U6 ( .A(
        n_cini_module_0__xor_module_67_res), .B(
        n_cini_module_0__majority7_module_18_n10), .Z(
        n_cini_module_0__majority7_module_18_n7) );
  OR2_X1 u_cini_module_0__majority7_module_18_U5 ( .A1(
        n_cini_module_0__majority7_module_18_n9), .A2(
        n_cini_module_0__xor_module_79_res), .ZN(
        n_cini_module_0__majority7_module_18_n8) );
  NAND2_X1 u_cini_module_0__majority7_module_18_U4 ( .A1(
        n_cini_module_0__majority7_module_18_n7), .A2(
        n_cini_module_0__majority7_module_18_n8), .ZN(
        n_cini_module_0__majority7_module_18_n6) );
  NAND2_X1 u_cini_module_0__majority7_module_18_U3 ( .A1(
        n_cini_module_0__majority7_module_18_n5), .A2(
        n_cini_module_0__majority7_module_18_n6), .ZN(
        n_cini_module_0__majority7_module_18_n4) );
  NAND2_X1 u_cini_module_0__majority7_module_18_U2 ( .A1(
        n_cini_module_0__majority7_module_18_n3), .A2(
        n_cini_module_0__majority7_module_18_n4), .ZN(
        n_cini_module_0__majority7_module_18_n2) );
  NAND2_X1 u_cini_module_0__majority7_module_18_U1 ( .A1(
        n_cini_module_0__majority7_module_18_n1), .A2(
        n_cini_module_0__majority7_module_18_n2), .ZN(
        n_cini_module_0__majority7_module_18_res) );
  DFF_X1 u_cini_module_0__reg_module_89__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority7_module_18_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_89_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_45_U1 ( .A1(
        n_cini_module_0__reg_module_89_res), .A2(io_a_s2_d1), .ZN(
        n_cini_module_0__and_module_45_res) );
  DFF_X1 u_cini_module_0__reg_module_90__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_45_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_90_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_121_U1 ( .A(
        n_cini_module_0__reg_module_88_res), .B(
        n_cini_module_0__reg_module_90_res), .Z(
        n_cini_module_0__xor_module_121_res) );
  DFF_X1 u_cini_module_0__reg_module_91__hpc_correct_b_s0_d0_reg ( .D(p_rand_3), .CK(clock_1), .Q(n_cini_module_0__reg_module_91_res), .QN() );
  INV_X1 u_cini_module_0__not_module_20_U1 ( .A(io_a_s2_d1), .ZN(
        n_cini_module_0__not_module_20_res) );
  AND2_X1 u_cini_module_0__and_module_46_U1 ( .A1(
        n_cini_module_0__not_module_20_res), .A2(
        n_cini_module_0__reg_module_91_res), .ZN(
        n_cini_module_0__and_module_46_res) );
  DFF_X1 u_cini_module_0__reg_module_92__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_46_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_92_res), .QN() );
  NAND2_X1 u_cini_module_0__majority7_module_19_U18 ( .A1(
        n_cini_module_0__xor_module_44_res), .A2(
        n_cini_module_0__xor_module_56_res), .ZN(
        n_cini_module_0__majority7_module_19_n16) );
  XOR2_X1 u_cini_module_0__majority7_module_19_U17 ( .A(
        n_cini_module_0__xor_module_44_res), .B(
        n_cini_module_0__xor_module_56_res), .Z(
        n_cini_module_0__majority7_module_19_n10) );
  NAND2_X1 u_cini_module_0__majority7_module_19_U16 ( .A1(
        n_cini_module_0__xor_module_68_res), .A2(
        n_cini_module_0__majority7_module_19_n10), .ZN(
        n_cini_module_0__majority7_module_19_n17) );
  NAND2_X1 u_cini_module_0__majority7_module_19_U15 ( .A1(
        n_cini_module_0__majority7_module_19_n16), .A2(
        n_cini_module_0__majority7_module_19_n17), .ZN(
        n_cini_module_0__majority7_module_19_n13) );
  NAND2_X1 u_cini_module_0__majority7_module_19_U14 ( .A1(
        n_cini_module_0__xor_module_8_res), .A2(
        n_cini_module_0__xor_module_20_res), .ZN(
        n_cini_module_0__majority7_module_19_n14) );
  XOR2_X1 u_cini_module_0__majority7_module_19_U13 ( .A(
        n_cini_module_0__xor_module_8_res), .B(
        n_cini_module_0__xor_module_20_res), .Z(
        n_cini_module_0__majority7_module_19_n11) );
  NAND2_X1 u_cini_module_0__majority7_module_19_U12 ( .A1(
        n_cini_module_0__xor_module_32_res), .A2(
        n_cini_module_0__majority7_module_19_n11), .ZN(
        n_cini_module_0__majority7_module_19_n15) );
  NAND2_X1 u_cini_module_0__majority7_module_19_U11 ( .A1(
        n_cini_module_0__majority7_module_19_n14), .A2(
        n_cini_module_0__majority7_module_19_n15), .ZN(
        n_cini_module_0__majority7_module_19_n12) );
  NAND2_X1 u_cini_module_0__majority7_module_19_U10 ( .A1(
        n_cini_module_0__majority7_module_19_n13), .A2(
        n_cini_module_0__majority7_module_19_n12), .ZN(
        n_cini_module_0__majority7_module_19_n1) );
  OR2_X1 u_cini_module_0__majority7_module_19_U9 ( .A1(
        n_cini_module_0__majority7_module_19_n12), .A2(
        n_cini_module_0__majority7_module_19_n13), .ZN(
        n_cini_module_0__majority7_module_19_n3) );
  XOR2_X1 u_cini_module_0__majority7_module_19_U8 ( .A(
        n_cini_module_0__xor_module_32_res), .B(
        n_cini_module_0__majority7_module_19_n11), .Z(
        n_cini_module_0__majority7_module_19_n9) );
  NAND2_X1 u_cini_module_0__majority7_module_19_U7 ( .A1(
        n_cini_module_0__xor_module_80_res), .A2(
        n_cini_module_0__majority7_module_19_n9), .ZN(
        n_cini_module_0__majority7_module_19_n5) );
  XOR2_X1 u_cini_module_0__majority7_module_19_U6 ( .A(
        n_cini_module_0__xor_module_68_res), .B(
        n_cini_module_0__majority7_module_19_n10), .Z(
        n_cini_module_0__majority7_module_19_n7) );
  OR2_X1 u_cini_module_0__majority7_module_19_U5 ( .A1(
        n_cini_module_0__majority7_module_19_n9), .A2(
        n_cini_module_0__xor_module_80_res), .ZN(
        n_cini_module_0__majority7_module_19_n8) );
  NAND2_X1 u_cini_module_0__majority7_module_19_U4 ( .A1(
        n_cini_module_0__majority7_module_19_n7), .A2(
        n_cini_module_0__majority7_module_19_n8), .ZN(
        n_cini_module_0__majority7_module_19_n6) );
  NAND2_X1 u_cini_module_0__majority7_module_19_U3 ( .A1(
        n_cini_module_0__majority7_module_19_n5), .A2(
        n_cini_module_0__majority7_module_19_n6), .ZN(
        n_cini_module_0__majority7_module_19_n4) );
  NAND2_X1 u_cini_module_0__majority7_module_19_U2 ( .A1(
        n_cini_module_0__majority7_module_19_n3), .A2(
        n_cini_module_0__majority7_module_19_n4), .ZN(
        n_cini_module_0__majority7_module_19_n2) );
  NAND2_X1 u_cini_module_0__majority7_module_19_U1 ( .A1(
        n_cini_module_0__majority7_module_19_n1), .A2(
        n_cini_module_0__majority7_module_19_n2), .ZN(
        n_cini_module_0__majority7_module_19_res) );
  DFF_X1 u_cini_module_0__reg_module_93__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority7_module_19_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_93_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_47_U1 ( .A1(
        n_cini_module_0__reg_module_93_res), .A2(io_a_s2_d1), .ZN(
        n_cini_module_0__and_module_47_res) );
  DFF_X1 u_cini_module_0__reg_module_94__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_47_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_94_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_122_U1 ( .A(
        n_cini_module_0__reg_module_92_res), .B(
        n_cini_module_0__reg_module_94_res), .Z(
        n_cini_module_0__xor_module_122_res) );
  XOR2_X1 u_cini_module_0__xor_module_123_U1 ( .A(
        n_cini_module_0__xor_module_121_res), .B(
        n_cini_module_0__xor_module_122_res), .Z(
        n_cini_module_0__xor_module_123_res) );
  DFF_X1 u_cini_module_0__reg_module_95__hpc_correct_b_s0_d0_reg ( .D(p_rand_5), .CK(clock_1), .Q(n_cini_module_0__reg_module_95_res), .QN() );
  INV_X1 u_cini_module_0__not_module_21_U1 ( .A(io_a_s2_d1), .ZN(
        n_cini_module_0__not_module_21_res) );
  AND2_X1 u_cini_module_0__and_module_48_U1 ( .A1(
        n_cini_module_0__not_module_21_res), .A2(
        n_cini_module_0__reg_module_95_res), .ZN(
        n_cini_module_0__and_module_48_res) );
  DFF_X1 u_cini_module_0__reg_module_96__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_48_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_96_res), .QN() );
  NAND2_X1 u_cini_module_0__majority7_module_20_U18 ( .A1(
        n_cini_module_0__xor_module_45_res), .A2(
        n_cini_module_0__xor_module_57_res), .ZN(
        n_cini_module_0__majority7_module_20_n16) );
  XOR2_X1 u_cini_module_0__majority7_module_20_U17 ( .A(
        n_cini_module_0__xor_module_45_res), .B(
        n_cini_module_0__xor_module_57_res), .Z(
        n_cini_module_0__majority7_module_20_n10) );
  NAND2_X1 u_cini_module_0__majority7_module_20_U16 ( .A1(
        n_cini_module_0__xor_module_69_res), .A2(
        n_cini_module_0__majority7_module_20_n10), .ZN(
        n_cini_module_0__majority7_module_20_n17) );
  NAND2_X1 u_cini_module_0__majority7_module_20_U15 ( .A1(
        n_cini_module_0__majority7_module_20_n16), .A2(
        n_cini_module_0__majority7_module_20_n17), .ZN(
        n_cini_module_0__majority7_module_20_n13) );
  NAND2_X1 u_cini_module_0__majority7_module_20_U14 ( .A1(
        n_cini_module_0__xor_module_9_res), .A2(
        n_cini_module_0__xor_module_21_res), .ZN(
        n_cini_module_0__majority7_module_20_n14) );
  XOR2_X1 u_cini_module_0__majority7_module_20_U13 ( .A(
        n_cini_module_0__xor_module_9_res), .B(
        n_cini_module_0__xor_module_21_res), .Z(
        n_cini_module_0__majority7_module_20_n11) );
  NAND2_X1 u_cini_module_0__majority7_module_20_U12 ( .A1(
        n_cini_module_0__xor_module_33_res), .A2(
        n_cini_module_0__majority7_module_20_n11), .ZN(
        n_cini_module_0__majority7_module_20_n15) );
  NAND2_X1 u_cini_module_0__majority7_module_20_U11 ( .A1(
        n_cini_module_0__majority7_module_20_n14), .A2(
        n_cini_module_0__majority7_module_20_n15), .ZN(
        n_cini_module_0__majority7_module_20_n12) );
  NAND2_X1 u_cini_module_0__majority7_module_20_U10 ( .A1(
        n_cini_module_0__majority7_module_20_n13), .A2(
        n_cini_module_0__majority7_module_20_n12), .ZN(
        n_cini_module_0__majority7_module_20_n1) );
  OR2_X1 u_cini_module_0__majority7_module_20_U9 ( .A1(
        n_cini_module_0__majority7_module_20_n12), .A2(
        n_cini_module_0__majority7_module_20_n13), .ZN(
        n_cini_module_0__majority7_module_20_n3) );
  XOR2_X1 u_cini_module_0__majority7_module_20_U8 ( .A(
        n_cini_module_0__xor_module_33_res), .B(
        n_cini_module_0__majority7_module_20_n11), .Z(
        n_cini_module_0__majority7_module_20_n9) );
  NAND2_X1 u_cini_module_0__majority7_module_20_U7 ( .A1(
        n_cini_module_0__xor_module_81_res), .A2(
        n_cini_module_0__majority7_module_20_n9), .ZN(
        n_cini_module_0__majority7_module_20_n5) );
  XOR2_X1 u_cini_module_0__majority7_module_20_U6 ( .A(
        n_cini_module_0__xor_module_69_res), .B(
        n_cini_module_0__majority7_module_20_n10), .Z(
        n_cini_module_0__majority7_module_20_n7) );
  OR2_X1 u_cini_module_0__majority7_module_20_U5 ( .A1(
        n_cini_module_0__majority7_module_20_n9), .A2(
        n_cini_module_0__xor_module_81_res), .ZN(
        n_cini_module_0__majority7_module_20_n8) );
  NAND2_X1 u_cini_module_0__majority7_module_20_U4 ( .A1(
        n_cini_module_0__majority7_module_20_n7), .A2(
        n_cini_module_0__majority7_module_20_n8), .ZN(
        n_cini_module_0__majority7_module_20_n6) );
  NAND2_X1 u_cini_module_0__majority7_module_20_U3 ( .A1(
        n_cini_module_0__majority7_module_20_n5), .A2(
        n_cini_module_0__majority7_module_20_n6), .ZN(
        n_cini_module_0__majority7_module_20_n4) );
  NAND2_X1 u_cini_module_0__majority7_module_20_U2 ( .A1(
        n_cini_module_0__majority7_module_20_n3), .A2(
        n_cini_module_0__majority7_module_20_n4), .ZN(
        n_cini_module_0__majority7_module_20_n2) );
  NAND2_X1 u_cini_module_0__majority7_module_20_U1 ( .A1(
        n_cini_module_0__majority7_module_20_n1), .A2(
        n_cini_module_0__majority7_module_20_n2), .ZN(
        n_cini_module_0__majority7_module_20_res) );
  DFF_X1 u_cini_module_0__reg_module_97__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority7_module_20_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_97_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_49_U1 ( .A1(
        n_cini_module_0__reg_module_97_res), .A2(io_a_s2_d1), .ZN(
        n_cini_module_0__and_module_49_res) );
  DFF_X1 u_cini_module_0__reg_module_98__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_49_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_98_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_124_U1 ( .A(
        n_cini_module_0__reg_module_96_res), .B(
        n_cini_module_0__reg_module_98_res), .Z(
        n_cini_module_0__xor_module_124_res) );
  XOR2_X1 u_cini_module_0__xor_module_125_U1 ( .A(
        n_cini_module_0__xor_module_123_res), .B(
        n_cini_module_0__xor_module_124_res), .Z(
        n_cini_module_0__xor_module_125_res) );
  XOR2_X1 u_cini_module_0__xor_module_126_U1 ( .A(
        n_cini_module_0__xor_module_125_res), .B(
        n_cini_module_0__reg_module_86_res), .Z(io_c_s2_d1) );
  DFF_X1 u_cini_module_0__reg_module_99__hpc_correct_b_s0_d0_reg ( .D(
        io_b_s3_d1), .CK(clock_1), .Q(n_cini_module_0__reg_module_99_res), 
        .QN() );
  AND2_X1 u_cini_module_0__and_module_50_U1 ( .A1(
        n_cini_module_0__reg_module_99_res), .A2(io_a_s3_d1), .ZN(
        n_cini_module_0__and_module_50_res) );
  DFF_X1 u_cini_module_0__reg_module_100__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_50_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_100_res), .QN() );
  DFF_X1 u_cini_module_0__reg_module_101__hpc_correct_b_s0_d0_reg ( .D(
        p_rand_2), .CK(clock_1), .Q(n_cini_module_0__reg_module_101_res), 
        .QN() );
  INV_X1 u_cini_module_0__not_module_22_U1 ( .A(io_a_s3_d1), .ZN(
        n_cini_module_0__not_module_22_res) );
  AND2_X1 u_cini_module_0__and_module_51_U1 ( .A1(
        n_cini_module_0__not_module_22_res), .A2(
        n_cini_module_0__reg_module_101_res), .ZN(
        n_cini_module_0__and_module_51_res) );
  DFF_X1 u_cini_module_0__reg_module_102__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_51_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_102_res), .QN() );
  NAND2_X1 u_cini_module_0__majority7_module_21_U18 ( .A1(
        n_cini_module_0__xor_module_46_res), .A2(
        n_cini_module_0__xor_module_58_res), .ZN(
        n_cini_module_0__majority7_module_21_n16) );
  XOR2_X1 u_cini_module_0__majority7_module_21_U17 ( .A(
        n_cini_module_0__xor_module_46_res), .B(
        n_cini_module_0__xor_module_58_res), .Z(
        n_cini_module_0__majority7_module_21_n10) );
  NAND2_X1 u_cini_module_0__majority7_module_21_U16 ( .A1(
        n_cini_module_0__xor_module_70_res), .A2(
        n_cini_module_0__majority7_module_21_n10), .ZN(
        n_cini_module_0__majority7_module_21_n17) );
  NAND2_X1 u_cini_module_0__majority7_module_21_U15 ( .A1(
        n_cini_module_0__majority7_module_21_n16), .A2(
        n_cini_module_0__majority7_module_21_n17), .ZN(
        n_cini_module_0__majority7_module_21_n13) );
  NAND2_X1 u_cini_module_0__majority7_module_21_U14 ( .A1(
        n_cini_module_0__xor_module_10_res), .A2(
        n_cini_module_0__xor_module_22_res), .ZN(
        n_cini_module_0__majority7_module_21_n14) );
  XOR2_X1 u_cini_module_0__majority7_module_21_U13 ( .A(
        n_cini_module_0__xor_module_10_res), .B(
        n_cini_module_0__xor_module_22_res), .Z(
        n_cini_module_0__majority7_module_21_n11) );
  NAND2_X1 u_cini_module_0__majority7_module_21_U12 ( .A1(
        n_cini_module_0__xor_module_34_res), .A2(
        n_cini_module_0__majority7_module_21_n11), .ZN(
        n_cini_module_0__majority7_module_21_n15) );
  NAND2_X1 u_cini_module_0__majority7_module_21_U11 ( .A1(
        n_cini_module_0__majority7_module_21_n14), .A2(
        n_cini_module_0__majority7_module_21_n15), .ZN(
        n_cini_module_0__majority7_module_21_n12) );
  NAND2_X1 u_cini_module_0__majority7_module_21_U10 ( .A1(
        n_cini_module_0__majority7_module_21_n13), .A2(
        n_cini_module_0__majority7_module_21_n12), .ZN(
        n_cini_module_0__majority7_module_21_n1) );
  OR2_X1 u_cini_module_0__majority7_module_21_U9 ( .A1(
        n_cini_module_0__majority7_module_21_n12), .A2(
        n_cini_module_0__majority7_module_21_n13), .ZN(
        n_cini_module_0__majority7_module_21_n3) );
  XOR2_X1 u_cini_module_0__majority7_module_21_U8 ( .A(
        n_cini_module_0__xor_module_34_res), .B(
        n_cini_module_0__majority7_module_21_n11), .Z(
        n_cini_module_0__majority7_module_21_n9) );
  NAND2_X1 u_cini_module_0__majority7_module_21_U7 ( .A1(
        n_cini_module_0__xor_module_82_res), .A2(
        n_cini_module_0__majority7_module_21_n9), .ZN(
        n_cini_module_0__majority7_module_21_n5) );
  XOR2_X1 u_cini_module_0__majority7_module_21_U6 ( .A(
        n_cini_module_0__xor_module_70_res), .B(
        n_cini_module_0__majority7_module_21_n10), .Z(
        n_cini_module_0__majority7_module_21_n7) );
  OR2_X1 u_cini_module_0__majority7_module_21_U5 ( .A1(
        n_cini_module_0__majority7_module_21_n9), .A2(
        n_cini_module_0__xor_module_82_res), .ZN(
        n_cini_module_0__majority7_module_21_n8) );
  NAND2_X1 u_cini_module_0__majority7_module_21_U4 ( .A1(
        n_cini_module_0__majority7_module_21_n7), .A2(
        n_cini_module_0__majority7_module_21_n8), .ZN(
        n_cini_module_0__majority7_module_21_n6) );
  NAND2_X1 u_cini_module_0__majority7_module_21_U3 ( .A1(
        n_cini_module_0__majority7_module_21_n5), .A2(
        n_cini_module_0__majority7_module_21_n6), .ZN(
        n_cini_module_0__majority7_module_21_n4) );
  NAND2_X1 u_cini_module_0__majority7_module_21_U2 ( .A1(
        n_cini_module_0__majority7_module_21_n3), .A2(
        n_cini_module_0__majority7_module_21_n4), .ZN(
        n_cini_module_0__majority7_module_21_n2) );
  NAND2_X1 u_cini_module_0__majority7_module_21_U1 ( .A1(
        n_cini_module_0__majority7_module_21_n1), .A2(
        n_cini_module_0__majority7_module_21_n2), .ZN(
        n_cini_module_0__majority7_module_21_res) );
  DFF_X1 u_cini_module_0__reg_module_103__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority7_module_21_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_103_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_52_U1 ( .A1(
        n_cini_module_0__reg_module_103_res), .A2(io_a_s3_d1), .ZN(
        n_cini_module_0__and_module_52_res) );
  DFF_X1 u_cini_module_0__reg_module_104__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_52_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_104_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_127_U1 ( .A(
        n_cini_module_0__reg_module_102_res), .B(
        n_cini_module_0__reg_module_104_res), .Z(
        n_cini_module_0__xor_module_127_res) );
  DFF_X1 u_cini_module_0__reg_module_105__hpc_correct_b_s0_d0_reg ( .D(
        p_rand_4), .CK(clock_1), .Q(n_cini_module_0__reg_module_105_res), 
        .QN() );
  INV_X1 u_cini_module_0__not_module_23_U1 ( .A(io_a_s3_d1), .ZN(
        n_cini_module_0__not_module_23_res) );
  AND2_X1 u_cini_module_0__and_module_53_U1 ( .A1(
        n_cini_module_0__not_module_23_res), .A2(
        n_cini_module_0__reg_module_105_res), .ZN(
        n_cini_module_0__and_module_53_res) );
  DFF_X1 u_cini_module_0__reg_module_106__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_53_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_106_res), .QN() );
  NAND2_X1 u_cini_module_0__majority7_module_22_U18 ( .A1(
        n_cini_module_0__xor_module_47_res), .A2(
        n_cini_module_0__xor_module_59_res), .ZN(
        n_cini_module_0__majority7_module_22_n16) );
  XOR2_X1 u_cini_module_0__majority7_module_22_U17 ( .A(
        n_cini_module_0__xor_module_47_res), .B(
        n_cini_module_0__xor_module_59_res), .Z(
        n_cini_module_0__majority7_module_22_n10) );
  NAND2_X1 u_cini_module_0__majority7_module_22_U16 ( .A1(
        n_cini_module_0__xor_module_71_res), .A2(
        n_cini_module_0__majority7_module_22_n10), .ZN(
        n_cini_module_0__majority7_module_22_n17) );
  NAND2_X1 u_cini_module_0__majority7_module_22_U15 ( .A1(
        n_cini_module_0__majority7_module_22_n16), .A2(
        n_cini_module_0__majority7_module_22_n17), .ZN(
        n_cini_module_0__majority7_module_22_n13) );
  NAND2_X1 u_cini_module_0__majority7_module_22_U14 ( .A1(
        n_cini_module_0__xor_module_11_res), .A2(
        n_cini_module_0__xor_module_23_res), .ZN(
        n_cini_module_0__majority7_module_22_n14) );
  XOR2_X1 u_cini_module_0__majority7_module_22_U13 ( .A(
        n_cini_module_0__xor_module_11_res), .B(
        n_cini_module_0__xor_module_23_res), .Z(
        n_cini_module_0__majority7_module_22_n11) );
  NAND2_X1 u_cini_module_0__majority7_module_22_U12 ( .A1(
        n_cini_module_0__xor_module_35_res), .A2(
        n_cini_module_0__majority7_module_22_n11), .ZN(
        n_cini_module_0__majority7_module_22_n15) );
  NAND2_X1 u_cini_module_0__majority7_module_22_U11 ( .A1(
        n_cini_module_0__majority7_module_22_n14), .A2(
        n_cini_module_0__majority7_module_22_n15), .ZN(
        n_cini_module_0__majority7_module_22_n12) );
  NAND2_X1 u_cini_module_0__majority7_module_22_U10 ( .A1(
        n_cini_module_0__majority7_module_22_n13), .A2(
        n_cini_module_0__majority7_module_22_n12), .ZN(
        n_cini_module_0__majority7_module_22_n1) );
  OR2_X1 u_cini_module_0__majority7_module_22_U9 ( .A1(
        n_cini_module_0__majority7_module_22_n12), .A2(
        n_cini_module_0__majority7_module_22_n13), .ZN(
        n_cini_module_0__majority7_module_22_n3) );
  XOR2_X1 u_cini_module_0__majority7_module_22_U8 ( .A(
        n_cini_module_0__xor_module_35_res), .B(
        n_cini_module_0__majority7_module_22_n11), .Z(
        n_cini_module_0__majority7_module_22_n9) );
  NAND2_X1 u_cini_module_0__majority7_module_22_U7 ( .A1(
        n_cini_module_0__xor_module_83_res), .A2(
        n_cini_module_0__majority7_module_22_n9), .ZN(
        n_cini_module_0__majority7_module_22_n5) );
  XOR2_X1 u_cini_module_0__majority7_module_22_U6 ( .A(
        n_cini_module_0__xor_module_71_res), .B(
        n_cini_module_0__majority7_module_22_n10), .Z(
        n_cini_module_0__majority7_module_22_n7) );
  OR2_X1 u_cini_module_0__majority7_module_22_U5 ( .A1(
        n_cini_module_0__majority7_module_22_n9), .A2(
        n_cini_module_0__xor_module_83_res), .ZN(
        n_cini_module_0__majority7_module_22_n8) );
  NAND2_X1 u_cini_module_0__majority7_module_22_U4 ( .A1(
        n_cini_module_0__majority7_module_22_n7), .A2(
        n_cini_module_0__majority7_module_22_n8), .ZN(
        n_cini_module_0__majority7_module_22_n6) );
  NAND2_X1 u_cini_module_0__majority7_module_22_U3 ( .A1(
        n_cini_module_0__majority7_module_22_n5), .A2(
        n_cini_module_0__majority7_module_22_n6), .ZN(
        n_cini_module_0__majority7_module_22_n4) );
  NAND2_X1 u_cini_module_0__majority7_module_22_U2 ( .A1(
        n_cini_module_0__majority7_module_22_n3), .A2(
        n_cini_module_0__majority7_module_22_n4), .ZN(
        n_cini_module_0__majority7_module_22_n2) );
  NAND2_X1 u_cini_module_0__majority7_module_22_U1 ( .A1(
        n_cini_module_0__majority7_module_22_n1), .A2(
        n_cini_module_0__majority7_module_22_n2), .ZN(
        n_cini_module_0__majority7_module_22_res) );
  DFF_X1 u_cini_module_0__reg_module_107__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority7_module_22_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_107_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_54_U1 ( .A1(
        n_cini_module_0__reg_module_107_res), .A2(io_a_s3_d1), .ZN(
        n_cini_module_0__and_module_54_res) );
  DFF_X1 u_cini_module_0__reg_module_108__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_54_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_108_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_128_U1 ( .A(
        n_cini_module_0__reg_module_106_res), .B(
        n_cini_module_0__reg_module_108_res), .Z(
        n_cini_module_0__xor_module_128_res) );
  XOR2_X1 u_cini_module_0__xor_module_129_U1 ( .A(
        n_cini_module_0__xor_module_127_res), .B(
        n_cini_module_0__xor_module_128_res), .Z(
        n_cini_module_0__xor_module_129_res) );
  DFF_X1 u_cini_module_0__reg_module_109__hpc_correct_b_s0_d0_reg ( .D(
        p_rand_5), .CK(clock_1), .Q(n_cini_module_0__reg_module_109_res), 
        .QN() );
  INV_X1 u_cini_module_0__not_module_24_U1 ( .A(io_a_s3_d1), .ZN(
        n_cini_module_0__not_module_24_res) );
  AND2_X1 u_cini_module_0__and_module_55_U1 ( .A1(
        n_cini_module_0__not_module_24_res), .A2(
        n_cini_module_0__reg_module_109_res), .ZN(
        n_cini_module_0__and_module_55_res) );
  DFF_X1 u_cini_module_0__reg_module_110__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_55_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_110_res), .QN() );
  NAND2_X1 u_cini_module_0__majority7_module_23_U18 ( .A1(
        n_cini_module_0__xor_module_48_res), .A2(
        n_cini_module_0__xor_module_60_res), .ZN(
        n_cini_module_0__majority7_module_23_n16) );
  XOR2_X1 u_cini_module_0__majority7_module_23_U17 ( .A(
        n_cini_module_0__xor_module_48_res), .B(
        n_cini_module_0__xor_module_60_res), .Z(
        n_cini_module_0__majority7_module_23_n10) );
  NAND2_X1 u_cini_module_0__majority7_module_23_U16 ( .A1(
        n_cini_module_0__xor_module_72_res), .A2(
        n_cini_module_0__majority7_module_23_n10), .ZN(
        n_cini_module_0__majority7_module_23_n17) );
  NAND2_X1 u_cini_module_0__majority7_module_23_U15 ( .A1(
        n_cini_module_0__majority7_module_23_n16), .A2(
        n_cini_module_0__majority7_module_23_n17), .ZN(
        n_cini_module_0__majority7_module_23_n13) );
  NAND2_X1 u_cini_module_0__majority7_module_23_U14 ( .A1(
        n_cini_module_0__xor_module_12_res), .A2(
        n_cini_module_0__xor_module_24_res), .ZN(
        n_cini_module_0__majority7_module_23_n14) );
  XOR2_X1 u_cini_module_0__majority7_module_23_U13 ( .A(
        n_cini_module_0__xor_module_12_res), .B(
        n_cini_module_0__xor_module_24_res), .Z(
        n_cini_module_0__majority7_module_23_n11) );
  NAND2_X1 u_cini_module_0__majority7_module_23_U12 ( .A1(
        n_cini_module_0__xor_module_36_res), .A2(
        n_cini_module_0__majority7_module_23_n11), .ZN(
        n_cini_module_0__majority7_module_23_n15) );
  NAND2_X1 u_cini_module_0__majority7_module_23_U11 ( .A1(
        n_cini_module_0__majority7_module_23_n14), .A2(
        n_cini_module_0__majority7_module_23_n15), .ZN(
        n_cini_module_0__majority7_module_23_n12) );
  NAND2_X1 u_cini_module_0__majority7_module_23_U10 ( .A1(
        n_cini_module_0__majority7_module_23_n13), .A2(
        n_cini_module_0__majority7_module_23_n12), .ZN(
        n_cini_module_0__majority7_module_23_n1) );
  OR2_X1 u_cini_module_0__majority7_module_23_U9 ( .A1(
        n_cini_module_0__majority7_module_23_n12), .A2(
        n_cini_module_0__majority7_module_23_n13), .ZN(
        n_cini_module_0__majority7_module_23_n3) );
  XOR2_X1 u_cini_module_0__majority7_module_23_U8 ( .A(
        n_cini_module_0__xor_module_36_res), .B(
        n_cini_module_0__majority7_module_23_n11), .Z(
        n_cini_module_0__majority7_module_23_n9) );
  NAND2_X1 u_cini_module_0__majority7_module_23_U7 ( .A1(
        n_cini_module_0__xor_module_84_res), .A2(
        n_cini_module_0__majority7_module_23_n9), .ZN(
        n_cini_module_0__majority7_module_23_n5) );
  XOR2_X1 u_cini_module_0__majority7_module_23_U6 ( .A(
        n_cini_module_0__xor_module_72_res), .B(
        n_cini_module_0__majority7_module_23_n10), .Z(
        n_cini_module_0__majority7_module_23_n7) );
  OR2_X1 u_cini_module_0__majority7_module_23_U5 ( .A1(
        n_cini_module_0__majority7_module_23_n9), .A2(
        n_cini_module_0__xor_module_84_res), .ZN(
        n_cini_module_0__majority7_module_23_n8) );
  NAND2_X1 u_cini_module_0__majority7_module_23_U4 ( .A1(
        n_cini_module_0__majority7_module_23_n7), .A2(
        n_cini_module_0__majority7_module_23_n8), .ZN(
        n_cini_module_0__majority7_module_23_n6) );
  NAND2_X1 u_cini_module_0__majority7_module_23_U3 ( .A1(
        n_cini_module_0__majority7_module_23_n5), .A2(
        n_cini_module_0__majority7_module_23_n6), .ZN(
        n_cini_module_0__majority7_module_23_n4) );
  NAND2_X1 u_cini_module_0__majority7_module_23_U2 ( .A1(
        n_cini_module_0__majority7_module_23_n3), .A2(
        n_cini_module_0__majority7_module_23_n4), .ZN(
        n_cini_module_0__majority7_module_23_n2) );
  NAND2_X1 u_cini_module_0__majority7_module_23_U1 ( .A1(
        n_cini_module_0__majority7_module_23_n1), .A2(
        n_cini_module_0__majority7_module_23_n2), .ZN(
        n_cini_module_0__majority7_module_23_res) );
  DFF_X1 u_cini_module_0__reg_module_111__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority7_module_23_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_111_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_56_U1 ( .A1(
        n_cini_module_0__reg_module_111_res), .A2(io_a_s3_d1), .ZN(
        n_cini_module_0__and_module_56_res) );
  DFF_X1 u_cini_module_0__reg_module_112__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_56_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_112_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_130_U1 ( .A(
        n_cini_module_0__reg_module_110_res), .B(
        n_cini_module_0__reg_module_112_res), .Z(
        n_cini_module_0__xor_module_130_res) );
  XOR2_X1 u_cini_module_0__xor_module_131_U1 ( .A(
        n_cini_module_0__xor_module_129_res), .B(
        n_cini_module_0__xor_module_130_res), .Z(
        n_cini_module_0__xor_module_131_res) );
  XOR2_X1 u_cini_module_0__xor_module_132_U1 ( .A(
        n_cini_module_0__xor_module_131_res), .B(
        n_cini_module_0__reg_module_100_res), .Z(io_c_s3_d1) );
  DFF_X1 u_cini_module_0__reg_module_113__hpc_correct_b_s0_d0_reg ( .D(
        io_b_s0_d2), .CK(clock_2), .Q(n_cini_module_0__reg_module_113_res), 
        .QN() );
  AND2_X1 u_cini_module_0__and_module_57_U1 ( .A1(
        n_cini_module_0__reg_module_113_res), .A2(io_a_s0_d2), .ZN(
        n_cini_module_0__and_module_57_res) );
  DFF_X1 u_cini_module_0__reg_module_114__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_57_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_114_res), .QN() );
  DFF_X1 u_cini_module_0__reg_module_115__hpc_correct_b_s0_d0_reg ( .D(
        p_rand_0), .CK(clock_2), .Q(n_cini_module_0__reg_module_115_res), 
        .QN() );
  INV_X1 u_cini_module_0__not_module_25_U1 ( .A(io_a_s0_d2), .ZN(
        n_cini_module_0__not_module_25_res) );
  AND2_X1 u_cini_module_0__and_module_58_U1 ( .A1(
        n_cini_module_0__not_module_25_res), .A2(
        n_cini_module_0__reg_module_115_res), .ZN(
        n_cini_module_0__and_module_58_res) );
  DFF_X1 u_cini_module_0__reg_module_116__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_58_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_116_res), .QN() );
  NAND2_X1 u_cini_module_0__majority7_module_24_U18 ( .A1(
        n_cini_module_0__xor_module_37_res), .A2(
        n_cini_module_0__xor_module_49_res), .ZN(
        n_cini_module_0__majority7_module_24_n16) );
  XOR2_X1 u_cini_module_0__majority7_module_24_U17 ( .A(
        n_cini_module_0__xor_module_37_res), .B(
        n_cini_module_0__xor_module_49_res), .Z(
        n_cini_module_0__majority7_module_24_n10) );
  NAND2_X1 u_cini_module_0__majority7_module_24_U16 ( .A1(
        n_cini_module_0__xor_module_61_res), .A2(
        n_cini_module_0__majority7_module_24_n10), .ZN(
        n_cini_module_0__majority7_module_24_n17) );
  NAND2_X1 u_cini_module_0__majority7_module_24_U15 ( .A1(
        n_cini_module_0__majority7_module_24_n16), .A2(
        n_cini_module_0__majority7_module_24_n17), .ZN(
        n_cini_module_0__majority7_module_24_n13) );
  NAND2_X1 u_cini_module_0__majority7_module_24_U14 ( .A1(
        n_cini_module_0__xor_module_1_res), .A2(
        n_cini_module_0__xor_module_13_res), .ZN(
        n_cini_module_0__majority7_module_24_n14) );
  XOR2_X1 u_cini_module_0__majority7_module_24_U13 ( .A(
        n_cini_module_0__xor_module_1_res), .B(
        n_cini_module_0__xor_module_13_res), .Z(
        n_cini_module_0__majority7_module_24_n11) );
  NAND2_X1 u_cini_module_0__majority7_module_24_U12 ( .A1(
        n_cini_module_0__xor_module_25_res), .A2(
        n_cini_module_0__majority7_module_24_n11), .ZN(
        n_cini_module_0__majority7_module_24_n15) );
  NAND2_X1 u_cini_module_0__majority7_module_24_U11 ( .A1(
        n_cini_module_0__majority7_module_24_n14), .A2(
        n_cini_module_0__majority7_module_24_n15), .ZN(
        n_cini_module_0__majority7_module_24_n12) );
  NAND2_X1 u_cini_module_0__majority7_module_24_U10 ( .A1(
        n_cini_module_0__majority7_module_24_n13), .A2(
        n_cini_module_0__majority7_module_24_n12), .ZN(
        n_cini_module_0__majority7_module_24_n1) );
  OR2_X1 u_cini_module_0__majority7_module_24_U9 ( .A1(
        n_cini_module_0__majority7_module_24_n12), .A2(
        n_cini_module_0__majority7_module_24_n13), .ZN(
        n_cini_module_0__majority7_module_24_n3) );
  XOR2_X1 u_cini_module_0__majority7_module_24_U8 ( .A(
        n_cini_module_0__xor_module_25_res), .B(
        n_cini_module_0__majority7_module_24_n11), .Z(
        n_cini_module_0__majority7_module_24_n9) );
  NAND2_X1 u_cini_module_0__majority7_module_24_U7 ( .A1(
        n_cini_module_0__xor_module_73_res), .A2(
        n_cini_module_0__majority7_module_24_n9), .ZN(
        n_cini_module_0__majority7_module_24_n5) );
  XOR2_X1 u_cini_module_0__majority7_module_24_U6 ( .A(
        n_cini_module_0__xor_module_61_res), .B(
        n_cini_module_0__majority7_module_24_n10), .Z(
        n_cini_module_0__majority7_module_24_n7) );
  OR2_X1 u_cini_module_0__majority7_module_24_U5 ( .A1(
        n_cini_module_0__majority7_module_24_n9), .A2(
        n_cini_module_0__xor_module_73_res), .ZN(
        n_cini_module_0__majority7_module_24_n8) );
  NAND2_X1 u_cini_module_0__majority7_module_24_U4 ( .A1(
        n_cini_module_0__majority7_module_24_n7), .A2(
        n_cini_module_0__majority7_module_24_n8), .ZN(
        n_cini_module_0__majority7_module_24_n6) );
  NAND2_X1 u_cini_module_0__majority7_module_24_U3 ( .A1(
        n_cini_module_0__majority7_module_24_n5), .A2(
        n_cini_module_0__majority7_module_24_n6), .ZN(
        n_cini_module_0__majority7_module_24_n4) );
  NAND2_X1 u_cini_module_0__majority7_module_24_U2 ( .A1(
        n_cini_module_0__majority7_module_24_n3), .A2(
        n_cini_module_0__majority7_module_24_n4), .ZN(
        n_cini_module_0__majority7_module_24_n2) );
  NAND2_X1 u_cini_module_0__majority7_module_24_U1 ( .A1(
        n_cini_module_0__majority7_module_24_n1), .A2(
        n_cini_module_0__majority7_module_24_n2), .ZN(
        n_cini_module_0__majority7_module_24_res) );
  DFF_X1 u_cini_module_0__reg_module_117__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority7_module_24_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_117_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_59_U1 ( .A1(
        n_cini_module_0__reg_module_117_res), .A2(io_a_s0_d2), .ZN(
        n_cini_module_0__and_module_59_res) );
  DFF_X1 u_cini_module_0__reg_module_118__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_59_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_118_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_133_U1 ( .A(
        n_cini_module_0__reg_module_116_res), .B(
        n_cini_module_0__reg_module_118_res), .Z(
        n_cini_module_0__xor_module_133_res) );
  DFF_X1 u_cini_module_0__reg_module_119__hpc_correct_b_s0_d0_reg ( .D(
        p_rand_1), .CK(clock_2), .Q(n_cini_module_0__reg_module_119_res), 
        .QN() );
  INV_X1 u_cini_module_0__not_module_26_U1 ( .A(io_a_s0_d2), .ZN(
        n_cini_module_0__not_module_26_res) );
  AND2_X1 u_cini_module_0__and_module_60_U1 ( .A1(
        n_cini_module_0__not_module_26_res), .A2(
        n_cini_module_0__reg_module_119_res), .ZN(
        n_cini_module_0__and_module_60_res) );
  DFF_X1 u_cini_module_0__reg_module_120__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_60_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_120_res), .QN() );
  NAND2_X1 u_cini_module_0__majority7_module_25_U18 ( .A1(
        n_cini_module_0__xor_module_38_res), .A2(
        n_cini_module_0__xor_module_50_res), .ZN(
        n_cini_module_0__majority7_module_25_n16) );
  XOR2_X1 u_cini_module_0__majority7_module_25_U17 ( .A(
        n_cini_module_0__xor_module_38_res), .B(
        n_cini_module_0__xor_module_50_res), .Z(
        n_cini_module_0__majority7_module_25_n10) );
  NAND2_X1 u_cini_module_0__majority7_module_25_U16 ( .A1(
        n_cini_module_0__xor_module_62_res), .A2(
        n_cini_module_0__majority7_module_25_n10), .ZN(
        n_cini_module_0__majority7_module_25_n17) );
  NAND2_X1 u_cini_module_0__majority7_module_25_U15 ( .A1(
        n_cini_module_0__majority7_module_25_n16), .A2(
        n_cini_module_0__majority7_module_25_n17), .ZN(
        n_cini_module_0__majority7_module_25_n13) );
  NAND2_X1 u_cini_module_0__majority7_module_25_U14 ( .A1(
        n_cini_module_0__xor_module_2_res), .A2(
        n_cini_module_0__xor_module_14_res), .ZN(
        n_cini_module_0__majority7_module_25_n14) );
  XOR2_X1 u_cini_module_0__majority7_module_25_U13 ( .A(
        n_cini_module_0__xor_module_2_res), .B(
        n_cini_module_0__xor_module_14_res), .Z(
        n_cini_module_0__majority7_module_25_n11) );
  NAND2_X1 u_cini_module_0__majority7_module_25_U12 ( .A1(
        n_cini_module_0__xor_module_26_res), .A2(
        n_cini_module_0__majority7_module_25_n11), .ZN(
        n_cini_module_0__majority7_module_25_n15) );
  NAND2_X1 u_cini_module_0__majority7_module_25_U11 ( .A1(
        n_cini_module_0__majority7_module_25_n14), .A2(
        n_cini_module_0__majority7_module_25_n15), .ZN(
        n_cini_module_0__majority7_module_25_n12) );
  NAND2_X1 u_cini_module_0__majority7_module_25_U10 ( .A1(
        n_cini_module_0__majority7_module_25_n13), .A2(
        n_cini_module_0__majority7_module_25_n12), .ZN(
        n_cini_module_0__majority7_module_25_n1) );
  OR2_X1 u_cini_module_0__majority7_module_25_U9 ( .A1(
        n_cini_module_0__majority7_module_25_n12), .A2(
        n_cini_module_0__majority7_module_25_n13), .ZN(
        n_cini_module_0__majority7_module_25_n3) );
  XOR2_X1 u_cini_module_0__majority7_module_25_U8 ( .A(
        n_cini_module_0__xor_module_26_res), .B(
        n_cini_module_0__majority7_module_25_n11), .Z(
        n_cini_module_0__majority7_module_25_n9) );
  NAND2_X1 u_cini_module_0__majority7_module_25_U7 ( .A1(
        n_cini_module_0__xor_module_74_res), .A2(
        n_cini_module_0__majority7_module_25_n9), .ZN(
        n_cini_module_0__majority7_module_25_n5) );
  XOR2_X1 u_cini_module_0__majority7_module_25_U6 ( .A(
        n_cini_module_0__xor_module_62_res), .B(
        n_cini_module_0__majority7_module_25_n10), .Z(
        n_cini_module_0__majority7_module_25_n7) );
  OR2_X1 u_cini_module_0__majority7_module_25_U5 ( .A1(
        n_cini_module_0__majority7_module_25_n9), .A2(
        n_cini_module_0__xor_module_74_res), .ZN(
        n_cini_module_0__majority7_module_25_n8) );
  NAND2_X1 u_cini_module_0__majority7_module_25_U4 ( .A1(
        n_cini_module_0__majority7_module_25_n7), .A2(
        n_cini_module_0__majority7_module_25_n8), .ZN(
        n_cini_module_0__majority7_module_25_n6) );
  NAND2_X1 u_cini_module_0__majority7_module_25_U3 ( .A1(
        n_cini_module_0__majority7_module_25_n5), .A2(
        n_cini_module_0__majority7_module_25_n6), .ZN(
        n_cini_module_0__majority7_module_25_n4) );
  NAND2_X1 u_cini_module_0__majority7_module_25_U2 ( .A1(
        n_cini_module_0__majority7_module_25_n3), .A2(
        n_cini_module_0__majority7_module_25_n4), .ZN(
        n_cini_module_0__majority7_module_25_n2) );
  NAND2_X1 u_cini_module_0__majority7_module_25_U1 ( .A1(
        n_cini_module_0__majority7_module_25_n1), .A2(
        n_cini_module_0__majority7_module_25_n2), .ZN(
        n_cini_module_0__majority7_module_25_res) );
  DFF_X1 u_cini_module_0__reg_module_121__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority7_module_25_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_121_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_61_U1 ( .A1(
        n_cini_module_0__reg_module_121_res), .A2(io_a_s0_d2), .ZN(
        n_cini_module_0__and_module_61_res) );
  DFF_X1 u_cini_module_0__reg_module_122__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_61_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_122_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_134_U1 ( .A(
        n_cini_module_0__reg_module_120_res), .B(
        n_cini_module_0__reg_module_122_res), .Z(
        n_cini_module_0__xor_module_134_res) );
  XOR2_X1 u_cini_module_0__xor_module_135_U1 ( .A(
        n_cini_module_0__xor_module_133_res), .B(
        n_cini_module_0__xor_module_134_res), .Z(
        n_cini_module_0__xor_module_135_res) );
  DFF_X1 u_cini_module_0__reg_module_123__hpc_correct_b_s0_d0_reg ( .D(
        p_rand_2), .CK(clock_2), .Q(n_cini_module_0__reg_module_123_res), 
        .QN() );
  INV_X1 u_cini_module_0__not_module_27_U1 ( .A(io_a_s0_d2), .ZN(
        n_cini_module_0__not_module_27_res) );
  AND2_X1 u_cini_module_0__and_module_62_U1 ( .A1(
        n_cini_module_0__not_module_27_res), .A2(
        n_cini_module_0__reg_module_123_res), .ZN(
        n_cini_module_0__and_module_62_res) );
  DFF_X1 u_cini_module_0__reg_module_124__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_62_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_124_res), .QN() );
  NAND2_X1 u_cini_module_0__majority7_module_26_U18 ( .A1(
        n_cini_module_0__xor_module_39_res), .A2(
        n_cini_module_0__xor_module_51_res), .ZN(
        n_cini_module_0__majority7_module_26_n16) );
  XOR2_X1 u_cini_module_0__majority7_module_26_U17 ( .A(
        n_cini_module_0__xor_module_39_res), .B(
        n_cini_module_0__xor_module_51_res), .Z(
        n_cini_module_0__majority7_module_26_n10) );
  NAND2_X1 u_cini_module_0__majority7_module_26_U16 ( .A1(
        n_cini_module_0__xor_module_63_res), .A2(
        n_cini_module_0__majority7_module_26_n10), .ZN(
        n_cini_module_0__majority7_module_26_n17) );
  NAND2_X1 u_cini_module_0__majority7_module_26_U15 ( .A1(
        n_cini_module_0__majority7_module_26_n16), .A2(
        n_cini_module_0__majority7_module_26_n17), .ZN(
        n_cini_module_0__majority7_module_26_n13) );
  NAND2_X1 u_cini_module_0__majority7_module_26_U14 ( .A1(
        n_cini_module_0__xor_module_3_res), .A2(
        n_cini_module_0__xor_module_15_res), .ZN(
        n_cini_module_0__majority7_module_26_n14) );
  XOR2_X1 u_cini_module_0__majority7_module_26_U13 ( .A(
        n_cini_module_0__xor_module_3_res), .B(
        n_cini_module_0__xor_module_15_res), .Z(
        n_cini_module_0__majority7_module_26_n11) );
  NAND2_X1 u_cini_module_0__majority7_module_26_U12 ( .A1(
        n_cini_module_0__xor_module_27_res), .A2(
        n_cini_module_0__majority7_module_26_n11), .ZN(
        n_cini_module_0__majority7_module_26_n15) );
  NAND2_X1 u_cini_module_0__majority7_module_26_U11 ( .A1(
        n_cini_module_0__majority7_module_26_n14), .A2(
        n_cini_module_0__majority7_module_26_n15), .ZN(
        n_cini_module_0__majority7_module_26_n12) );
  NAND2_X1 u_cini_module_0__majority7_module_26_U10 ( .A1(
        n_cini_module_0__majority7_module_26_n13), .A2(
        n_cini_module_0__majority7_module_26_n12), .ZN(
        n_cini_module_0__majority7_module_26_n1) );
  OR2_X1 u_cini_module_0__majority7_module_26_U9 ( .A1(
        n_cini_module_0__majority7_module_26_n12), .A2(
        n_cini_module_0__majority7_module_26_n13), .ZN(
        n_cini_module_0__majority7_module_26_n3) );
  XOR2_X1 u_cini_module_0__majority7_module_26_U8 ( .A(
        n_cini_module_0__xor_module_27_res), .B(
        n_cini_module_0__majority7_module_26_n11), .Z(
        n_cini_module_0__majority7_module_26_n9) );
  NAND2_X1 u_cini_module_0__majority7_module_26_U7 ( .A1(
        n_cini_module_0__xor_module_75_res), .A2(
        n_cini_module_0__majority7_module_26_n9), .ZN(
        n_cini_module_0__majority7_module_26_n5) );
  XOR2_X1 u_cini_module_0__majority7_module_26_U6 ( .A(
        n_cini_module_0__xor_module_63_res), .B(
        n_cini_module_0__majority7_module_26_n10), .Z(
        n_cini_module_0__majority7_module_26_n7) );
  OR2_X1 u_cini_module_0__majority7_module_26_U5 ( .A1(
        n_cini_module_0__majority7_module_26_n9), .A2(
        n_cini_module_0__xor_module_75_res), .ZN(
        n_cini_module_0__majority7_module_26_n8) );
  NAND2_X1 u_cini_module_0__majority7_module_26_U4 ( .A1(
        n_cini_module_0__majority7_module_26_n7), .A2(
        n_cini_module_0__majority7_module_26_n8), .ZN(
        n_cini_module_0__majority7_module_26_n6) );
  NAND2_X1 u_cini_module_0__majority7_module_26_U3 ( .A1(
        n_cini_module_0__majority7_module_26_n5), .A2(
        n_cini_module_0__majority7_module_26_n6), .ZN(
        n_cini_module_0__majority7_module_26_n4) );
  NAND2_X1 u_cini_module_0__majority7_module_26_U2 ( .A1(
        n_cini_module_0__majority7_module_26_n3), .A2(
        n_cini_module_0__majority7_module_26_n4), .ZN(
        n_cini_module_0__majority7_module_26_n2) );
  NAND2_X1 u_cini_module_0__majority7_module_26_U1 ( .A1(
        n_cini_module_0__majority7_module_26_n1), .A2(
        n_cini_module_0__majority7_module_26_n2), .ZN(
        n_cini_module_0__majority7_module_26_res) );
  DFF_X1 u_cini_module_0__reg_module_125__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority7_module_26_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_125_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_63_U1 ( .A1(
        n_cini_module_0__reg_module_125_res), .A2(io_a_s0_d2), .ZN(
        n_cini_module_0__and_module_63_res) );
  DFF_X1 u_cini_module_0__reg_module_126__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_63_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_126_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_136_U1 ( .A(
        n_cini_module_0__reg_module_124_res), .B(
        n_cini_module_0__reg_module_126_res), .Z(
        n_cini_module_0__xor_module_136_res) );
  XOR2_X1 u_cini_module_0__xor_module_137_U1 ( .A(
        n_cini_module_0__xor_module_135_res), .B(
        n_cini_module_0__xor_module_136_res), .Z(
        n_cini_module_0__xor_module_137_res) );
  XOR2_X1 u_cini_module_0__xor_module_138_U1 ( .A(
        n_cini_module_0__xor_module_137_res), .B(
        n_cini_module_0__reg_module_114_res), .Z(io_c_s0_d2) );
  DFF_X1 u_cini_module_0__reg_module_127__hpc_correct_b_s0_d0_reg ( .D(
        io_b_s1_d2), .CK(clock_2), .Q(n_cini_module_0__reg_module_127_res), 
        .QN() );
  AND2_X1 u_cini_module_0__and_module_64_U1 ( .A1(
        n_cini_module_0__reg_module_127_res), .A2(io_a_s1_d2), .ZN(
        n_cini_module_0__and_module_64_res) );
  DFF_X1 u_cini_module_0__reg_module_128__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_64_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_128_res), .QN() );
  DFF_X1 u_cini_module_0__reg_module_129__hpc_correct_b_s0_d0_reg ( .D(
        p_rand_0), .CK(clock_2), .Q(n_cini_module_0__reg_module_129_res), 
        .QN() );
  INV_X1 u_cini_module_0__not_module_28_U1 ( .A(io_a_s1_d2), .ZN(
        n_cini_module_0__not_module_28_res) );
  AND2_X1 u_cini_module_0__and_module_65_U1 ( .A1(
        n_cini_module_0__not_module_28_res), .A2(
        n_cini_module_0__reg_module_129_res), .ZN(
        n_cini_module_0__and_module_65_res) );
  DFF_X1 u_cini_module_0__reg_module_130__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_65_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_130_res), .QN() );
  NAND2_X1 u_cini_module_0__majority7_module_27_U18 ( .A1(
        n_cini_module_0__xor_module_40_res), .A2(
        n_cini_module_0__xor_module_52_res), .ZN(
        n_cini_module_0__majority7_module_27_n16) );
  XOR2_X1 u_cini_module_0__majority7_module_27_U17 ( .A(
        n_cini_module_0__xor_module_40_res), .B(
        n_cini_module_0__xor_module_52_res), .Z(
        n_cini_module_0__majority7_module_27_n10) );
  NAND2_X1 u_cini_module_0__majority7_module_27_U16 ( .A1(
        n_cini_module_0__xor_module_64_res), .A2(
        n_cini_module_0__majority7_module_27_n10), .ZN(
        n_cini_module_0__majority7_module_27_n17) );
  NAND2_X1 u_cini_module_0__majority7_module_27_U15 ( .A1(
        n_cini_module_0__majority7_module_27_n16), .A2(
        n_cini_module_0__majority7_module_27_n17), .ZN(
        n_cini_module_0__majority7_module_27_n13) );
  NAND2_X1 u_cini_module_0__majority7_module_27_U14 ( .A1(
        n_cini_module_0__xor_module_4_res), .A2(
        n_cini_module_0__xor_module_16_res), .ZN(
        n_cini_module_0__majority7_module_27_n14) );
  XOR2_X1 u_cini_module_0__majority7_module_27_U13 ( .A(
        n_cini_module_0__xor_module_4_res), .B(
        n_cini_module_0__xor_module_16_res), .Z(
        n_cini_module_0__majority7_module_27_n11) );
  NAND2_X1 u_cini_module_0__majority7_module_27_U12 ( .A1(
        n_cini_module_0__xor_module_28_res), .A2(
        n_cini_module_0__majority7_module_27_n11), .ZN(
        n_cini_module_0__majority7_module_27_n15) );
  NAND2_X1 u_cini_module_0__majority7_module_27_U11 ( .A1(
        n_cini_module_0__majority7_module_27_n14), .A2(
        n_cini_module_0__majority7_module_27_n15), .ZN(
        n_cini_module_0__majority7_module_27_n12) );
  NAND2_X1 u_cini_module_0__majority7_module_27_U10 ( .A1(
        n_cini_module_0__majority7_module_27_n13), .A2(
        n_cini_module_0__majority7_module_27_n12), .ZN(
        n_cini_module_0__majority7_module_27_n1) );
  OR2_X1 u_cini_module_0__majority7_module_27_U9 ( .A1(
        n_cini_module_0__majority7_module_27_n12), .A2(
        n_cini_module_0__majority7_module_27_n13), .ZN(
        n_cini_module_0__majority7_module_27_n3) );
  XOR2_X1 u_cini_module_0__majority7_module_27_U8 ( .A(
        n_cini_module_0__xor_module_28_res), .B(
        n_cini_module_0__majority7_module_27_n11), .Z(
        n_cini_module_0__majority7_module_27_n9) );
  NAND2_X1 u_cini_module_0__majority7_module_27_U7 ( .A1(
        n_cini_module_0__xor_module_76_res), .A2(
        n_cini_module_0__majority7_module_27_n9), .ZN(
        n_cini_module_0__majority7_module_27_n5) );
  XOR2_X1 u_cini_module_0__majority7_module_27_U6 ( .A(
        n_cini_module_0__xor_module_64_res), .B(
        n_cini_module_0__majority7_module_27_n10), .Z(
        n_cini_module_0__majority7_module_27_n7) );
  OR2_X1 u_cini_module_0__majority7_module_27_U5 ( .A1(
        n_cini_module_0__majority7_module_27_n9), .A2(
        n_cini_module_0__xor_module_76_res), .ZN(
        n_cini_module_0__majority7_module_27_n8) );
  NAND2_X1 u_cini_module_0__majority7_module_27_U4 ( .A1(
        n_cini_module_0__majority7_module_27_n7), .A2(
        n_cini_module_0__majority7_module_27_n8), .ZN(
        n_cini_module_0__majority7_module_27_n6) );
  NAND2_X1 u_cini_module_0__majority7_module_27_U3 ( .A1(
        n_cini_module_0__majority7_module_27_n5), .A2(
        n_cini_module_0__majority7_module_27_n6), .ZN(
        n_cini_module_0__majority7_module_27_n4) );
  NAND2_X1 u_cini_module_0__majority7_module_27_U2 ( .A1(
        n_cini_module_0__majority7_module_27_n3), .A2(
        n_cini_module_0__majority7_module_27_n4), .ZN(
        n_cini_module_0__majority7_module_27_n2) );
  NAND2_X1 u_cini_module_0__majority7_module_27_U1 ( .A1(
        n_cini_module_0__majority7_module_27_n1), .A2(
        n_cini_module_0__majority7_module_27_n2), .ZN(
        n_cini_module_0__majority7_module_27_res) );
  DFF_X1 u_cini_module_0__reg_module_131__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority7_module_27_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_131_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_66_U1 ( .A1(
        n_cini_module_0__reg_module_131_res), .A2(io_a_s1_d2), .ZN(
        n_cini_module_0__and_module_66_res) );
  DFF_X1 u_cini_module_0__reg_module_132__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_66_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_132_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_139_U1 ( .A(
        n_cini_module_0__reg_module_130_res), .B(
        n_cini_module_0__reg_module_132_res), .Z(
        n_cini_module_0__xor_module_139_res) );
  DFF_X1 u_cini_module_0__reg_module_133__hpc_correct_b_s0_d0_reg ( .D(
        p_rand_3), .CK(clock_2), .Q(n_cini_module_0__reg_module_133_res), 
        .QN() );
  INV_X1 u_cini_module_0__not_module_29_U1 ( .A(io_a_s1_d2), .ZN(
        n_cini_module_0__not_module_29_res) );
  AND2_X1 u_cini_module_0__and_module_67_U1 ( .A1(
        n_cini_module_0__not_module_29_res), .A2(
        n_cini_module_0__reg_module_133_res), .ZN(
        n_cini_module_0__and_module_67_res) );
  DFF_X1 u_cini_module_0__reg_module_134__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_67_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_134_res), .QN() );
  NAND2_X1 u_cini_module_0__majority7_module_28_U18 ( .A1(
        n_cini_module_0__xor_module_41_res), .A2(
        n_cini_module_0__xor_module_53_res), .ZN(
        n_cini_module_0__majority7_module_28_n16) );
  XOR2_X1 u_cini_module_0__majority7_module_28_U17 ( .A(
        n_cini_module_0__xor_module_41_res), .B(
        n_cini_module_0__xor_module_53_res), .Z(
        n_cini_module_0__majority7_module_28_n10) );
  NAND2_X1 u_cini_module_0__majority7_module_28_U16 ( .A1(
        n_cini_module_0__xor_module_65_res), .A2(
        n_cini_module_0__majority7_module_28_n10), .ZN(
        n_cini_module_0__majority7_module_28_n17) );
  NAND2_X1 u_cini_module_0__majority7_module_28_U15 ( .A1(
        n_cini_module_0__majority7_module_28_n16), .A2(
        n_cini_module_0__majority7_module_28_n17), .ZN(
        n_cini_module_0__majority7_module_28_n13) );
  NAND2_X1 u_cini_module_0__majority7_module_28_U14 ( .A1(
        n_cini_module_0__xor_module_5_res), .A2(
        n_cini_module_0__xor_module_17_res), .ZN(
        n_cini_module_0__majority7_module_28_n14) );
  XOR2_X1 u_cini_module_0__majority7_module_28_U13 ( .A(
        n_cini_module_0__xor_module_5_res), .B(
        n_cini_module_0__xor_module_17_res), .Z(
        n_cini_module_0__majority7_module_28_n11) );
  NAND2_X1 u_cini_module_0__majority7_module_28_U12 ( .A1(
        n_cini_module_0__xor_module_29_res), .A2(
        n_cini_module_0__majority7_module_28_n11), .ZN(
        n_cini_module_0__majority7_module_28_n15) );
  NAND2_X1 u_cini_module_0__majority7_module_28_U11 ( .A1(
        n_cini_module_0__majority7_module_28_n14), .A2(
        n_cini_module_0__majority7_module_28_n15), .ZN(
        n_cini_module_0__majority7_module_28_n12) );
  NAND2_X1 u_cini_module_0__majority7_module_28_U10 ( .A1(
        n_cini_module_0__majority7_module_28_n13), .A2(
        n_cini_module_0__majority7_module_28_n12), .ZN(
        n_cini_module_0__majority7_module_28_n1) );
  OR2_X1 u_cini_module_0__majority7_module_28_U9 ( .A1(
        n_cini_module_0__majority7_module_28_n12), .A2(
        n_cini_module_0__majority7_module_28_n13), .ZN(
        n_cini_module_0__majority7_module_28_n3) );
  XOR2_X1 u_cini_module_0__majority7_module_28_U8 ( .A(
        n_cini_module_0__xor_module_29_res), .B(
        n_cini_module_0__majority7_module_28_n11), .Z(
        n_cini_module_0__majority7_module_28_n9) );
  NAND2_X1 u_cini_module_0__majority7_module_28_U7 ( .A1(
        n_cini_module_0__xor_module_77_res), .A2(
        n_cini_module_0__majority7_module_28_n9), .ZN(
        n_cini_module_0__majority7_module_28_n5) );
  XOR2_X1 u_cini_module_0__majority7_module_28_U6 ( .A(
        n_cini_module_0__xor_module_65_res), .B(
        n_cini_module_0__majority7_module_28_n10), .Z(
        n_cini_module_0__majority7_module_28_n7) );
  OR2_X1 u_cini_module_0__majority7_module_28_U5 ( .A1(
        n_cini_module_0__majority7_module_28_n9), .A2(
        n_cini_module_0__xor_module_77_res), .ZN(
        n_cini_module_0__majority7_module_28_n8) );
  NAND2_X1 u_cini_module_0__majority7_module_28_U4 ( .A1(
        n_cini_module_0__majority7_module_28_n7), .A2(
        n_cini_module_0__majority7_module_28_n8), .ZN(
        n_cini_module_0__majority7_module_28_n6) );
  NAND2_X1 u_cini_module_0__majority7_module_28_U3 ( .A1(
        n_cini_module_0__majority7_module_28_n5), .A2(
        n_cini_module_0__majority7_module_28_n6), .ZN(
        n_cini_module_0__majority7_module_28_n4) );
  NAND2_X1 u_cini_module_0__majority7_module_28_U2 ( .A1(
        n_cini_module_0__majority7_module_28_n3), .A2(
        n_cini_module_0__majority7_module_28_n4), .ZN(
        n_cini_module_0__majority7_module_28_n2) );
  NAND2_X1 u_cini_module_0__majority7_module_28_U1 ( .A1(
        n_cini_module_0__majority7_module_28_n1), .A2(
        n_cini_module_0__majority7_module_28_n2), .ZN(
        n_cini_module_0__majority7_module_28_res) );
  DFF_X1 u_cini_module_0__reg_module_135__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority7_module_28_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_135_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_68_U1 ( .A1(
        n_cini_module_0__reg_module_135_res), .A2(io_a_s1_d2), .ZN(
        n_cini_module_0__and_module_68_res) );
  DFF_X1 u_cini_module_0__reg_module_136__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_68_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_136_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_140_U1 ( .A(
        n_cini_module_0__reg_module_134_res), .B(
        n_cini_module_0__reg_module_136_res), .Z(
        n_cini_module_0__xor_module_140_res) );
  XOR2_X1 u_cini_module_0__xor_module_141_U1 ( .A(
        n_cini_module_0__xor_module_139_res), .B(
        n_cini_module_0__xor_module_140_res), .Z(
        n_cini_module_0__xor_module_141_res) );
  DFF_X1 u_cini_module_0__reg_module_137__hpc_correct_b_s0_d0_reg ( .D(
        p_rand_4), .CK(clock_2), .Q(n_cini_module_0__reg_module_137_res), 
        .QN() );
  INV_X1 u_cini_module_0__not_module_30_U1 ( .A(io_a_s1_d2), .ZN(
        n_cini_module_0__not_module_30_res) );
  AND2_X1 u_cini_module_0__and_module_69_U1 ( .A1(
        n_cini_module_0__not_module_30_res), .A2(
        n_cini_module_0__reg_module_137_res), .ZN(
        n_cini_module_0__and_module_69_res) );
  DFF_X1 u_cini_module_0__reg_module_138__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_69_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_138_res), .QN() );
  NAND2_X1 u_cini_module_0__majority7_module_29_U18 ( .A1(
        n_cini_module_0__xor_module_42_res), .A2(
        n_cini_module_0__xor_module_54_res), .ZN(
        n_cini_module_0__majority7_module_29_n16) );
  XOR2_X1 u_cini_module_0__majority7_module_29_U17 ( .A(
        n_cini_module_0__xor_module_42_res), .B(
        n_cini_module_0__xor_module_54_res), .Z(
        n_cini_module_0__majority7_module_29_n10) );
  NAND2_X1 u_cini_module_0__majority7_module_29_U16 ( .A1(
        n_cini_module_0__xor_module_66_res), .A2(
        n_cini_module_0__majority7_module_29_n10), .ZN(
        n_cini_module_0__majority7_module_29_n17) );
  NAND2_X1 u_cini_module_0__majority7_module_29_U15 ( .A1(
        n_cini_module_0__majority7_module_29_n16), .A2(
        n_cini_module_0__majority7_module_29_n17), .ZN(
        n_cini_module_0__majority7_module_29_n13) );
  NAND2_X1 u_cini_module_0__majority7_module_29_U14 ( .A1(
        n_cini_module_0__xor_module_6_res), .A2(
        n_cini_module_0__xor_module_18_res), .ZN(
        n_cini_module_0__majority7_module_29_n14) );
  XOR2_X1 u_cini_module_0__majority7_module_29_U13 ( .A(
        n_cini_module_0__xor_module_6_res), .B(
        n_cini_module_0__xor_module_18_res), .Z(
        n_cini_module_0__majority7_module_29_n11) );
  NAND2_X1 u_cini_module_0__majority7_module_29_U12 ( .A1(
        n_cini_module_0__xor_module_30_res), .A2(
        n_cini_module_0__majority7_module_29_n11), .ZN(
        n_cini_module_0__majority7_module_29_n15) );
  NAND2_X1 u_cini_module_0__majority7_module_29_U11 ( .A1(
        n_cini_module_0__majority7_module_29_n14), .A2(
        n_cini_module_0__majority7_module_29_n15), .ZN(
        n_cini_module_0__majority7_module_29_n12) );
  NAND2_X1 u_cini_module_0__majority7_module_29_U10 ( .A1(
        n_cini_module_0__majority7_module_29_n13), .A2(
        n_cini_module_0__majority7_module_29_n12), .ZN(
        n_cini_module_0__majority7_module_29_n1) );
  OR2_X1 u_cini_module_0__majority7_module_29_U9 ( .A1(
        n_cini_module_0__majority7_module_29_n12), .A2(
        n_cini_module_0__majority7_module_29_n13), .ZN(
        n_cini_module_0__majority7_module_29_n3) );
  XOR2_X1 u_cini_module_0__majority7_module_29_U8 ( .A(
        n_cini_module_0__xor_module_30_res), .B(
        n_cini_module_0__majority7_module_29_n11), .Z(
        n_cini_module_0__majority7_module_29_n9) );
  NAND2_X1 u_cini_module_0__majority7_module_29_U7 ( .A1(
        n_cini_module_0__xor_module_78_res), .A2(
        n_cini_module_0__majority7_module_29_n9), .ZN(
        n_cini_module_0__majority7_module_29_n5) );
  XOR2_X1 u_cini_module_0__majority7_module_29_U6 ( .A(
        n_cini_module_0__xor_module_66_res), .B(
        n_cini_module_0__majority7_module_29_n10), .Z(
        n_cini_module_0__majority7_module_29_n7) );
  OR2_X1 u_cini_module_0__majority7_module_29_U5 ( .A1(
        n_cini_module_0__majority7_module_29_n9), .A2(
        n_cini_module_0__xor_module_78_res), .ZN(
        n_cini_module_0__majority7_module_29_n8) );
  NAND2_X1 u_cini_module_0__majority7_module_29_U4 ( .A1(
        n_cini_module_0__majority7_module_29_n7), .A2(
        n_cini_module_0__majority7_module_29_n8), .ZN(
        n_cini_module_0__majority7_module_29_n6) );
  NAND2_X1 u_cini_module_0__majority7_module_29_U3 ( .A1(
        n_cini_module_0__majority7_module_29_n5), .A2(
        n_cini_module_0__majority7_module_29_n6), .ZN(
        n_cini_module_0__majority7_module_29_n4) );
  NAND2_X1 u_cini_module_0__majority7_module_29_U2 ( .A1(
        n_cini_module_0__majority7_module_29_n3), .A2(
        n_cini_module_0__majority7_module_29_n4), .ZN(
        n_cini_module_0__majority7_module_29_n2) );
  NAND2_X1 u_cini_module_0__majority7_module_29_U1 ( .A1(
        n_cini_module_0__majority7_module_29_n1), .A2(
        n_cini_module_0__majority7_module_29_n2), .ZN(
        n_cini_module_0__majority7_module_29_res) );
  DFF_X1 u_cini_module_0__reg_module_139__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority7_module_29_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_139_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_70_U1 ( .A1(
        n_cini_module_0__reg_module_139_res), .A2(io_a_s1_d2), .ZN(
        n_cini_module_0__and_module_70_res) );
  DFF_X1 u_cini_module_0__reg_module_140__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_70_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_140_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_142_U1 ( .A(
        n_cini_module_0__reg_module_138_res), .B(
        n_cini_module_0__reg_module_140_res), .Z(
        n_cini_module_0__xor_module_142_res) );
  XOR2_X1 u_cini_module_0__xor_module_143_U1 ( .A(
        n_cini_module_0__xor_module_141_res), .B(
        n_cini_module_0__xor_module_142_res), .Z(
        n_cini_module_0__xor_module_143_res) );
  XOR2_X1 u_cini_module_0__xor_module_144_U1 ( .A(
        n_cini_module_0__xor_module_143_res), .B(
        n_cini_module_0__reg_module_128_res), .Z(io_c_s1_d2) );
  DFF_X1 u_cini_module_0__reg_module_141__hpc_correct_b_s0_d0_reg ( .D(
        io_b_s2_d2), .CK(clock_2), .Q(n_cini_module_0__reg_module_141_res), 
        .QN() );
  AND2_X1 u_cini_module_0__and_module_71_U1 ( .A1(
        n_cini_module_0__reg_module_141_res), .A2(io_a_s2_d2), .ZN(
        n_cini_module_0__and_module_71_res) );
  DFF_X1 u_cini_module_0__reg_module_142__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_71_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_142_res), .QN() );
  DFF_X1 u_cini_module_0__reg_module_143__hpc_correct_b_s0_d0_reg ( .D(
        p_rand_1), .CK(clock_2), .Q(n_cini_module_0__reg_module_143_res), 
        .QN() );
  INV_X1 u_cini_module_0__not_module_31_U1 ( .A(io_a_s2_d2), .ZN(
        n_cini_module_0__not_module_31_res) );
  AND2_X1 u_cini_module_0__and_module_72_U1 ( .A1(
        n_cini_module_0__not_module_31_res), .A2(
        n_cini_module_0__reg_module_143_res), .ZN(
        n_cini_module_0__and_module_72_res) );
  DFF_X1 u_cini_module_0__reg_module_144__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_72_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_144_res), .QN() );
  NAND2_X1 u_cini_module_0__majority7_module_30_U18 ( .A1(
        n_cini_module_0__xor_module_43_res), .A2(
        n_cini_module_0__xor_module_55_res), .ZN(
        n_cini_module_0__majority7_module_30_n16) );
  XOR2_X1 u_cini_module_0__majority7_module_30_U17 ( .A(
        n_cini_module_0__xor_module_43_res), .B(
        n_cini_module_0__xor_module_55_res), .Z(
        n_cini_module_0__majority7_module_30_n10) );
  NAND2_X1 u_cini_module_0__majority7_module_30_U16 ( .A1(
        n_cini_module_0__xor_module_67_res), .A2(
        n_cini_module_0__majority7_module_30_n10), .ZN(
        n_cini_module_0__majority7_module_30_n17) );
  NAND2_X1 u_cini_module_0__majority7_module_30_U15 ( .A1(
        n_cini_module_0__majority7_module_30_n16), .A2(
        n_cini_module_0__majority7_module_30_n17), .ZN(
        n_cini_module_0__majority7_module_30_n13) );
  NAND2_X1 u_cini_module_0__majority7_module_30_U14 ( .A1(
        n_cini_module_0__xor_module_7_res), .A2(
        n_cini_module_0__xor_module_19_res), .ZN(
        n_cini_module_0__majority7_module_30_n14) );
  XOR2_X1 u_cini_module_0__majority7_module_30_U13 ( .A(
        n_cini_module_0__xor_module_7_res), .B(
        n_cini_module_0__xor_module_19_res), .Z(
        n_cini_module_0__majority7_module_30_n11) );
  NAND2_X1 u_cini_module_0__majority7_module_30_U12 ( .A1(
        n_cini_module_0__xor_module_31_res), .A2(
        n_cini_module_0__majority7_module_30_n11), .ZN(
        n_cini_module_0__majority7_module_30_n15) );
  NAND2_X1 u_cini_module_0__majority7_module_30_U11 ( .A1(
        n_cini_module_0__majority7_module_30_n14), .A2(
        n_cini_module_0__majority7_module_30_n15), .ZN(
        n_cini_module_0__majority7_module_30_n12) );
  NAND2_X1 u_cini_module_0__majority7_module_30_U10 ( .A1(
        n_cini_module_0__majority7_module_30_n13), .A2(
        n_cini_module_0__majority7_module_30_n12), .ZN(
        n_cini_module_0__majority7_module_30_n1) );
  OR2_X1 u_cini_module_0__majority7_module_30_U9 ( .A1(
        n_cini_module_0__majority7_module_30_n12), .A2(
        n_cini_module_0__majority7_module_30_n13), .ZN(
        n_cini_module_0__majority7_module_30_n3) );
  XOR2_X1 u_cini_module_0__majority7_module_30_U8 ( .A(
        n_cini_module_0__xor_module_31_res), .B(
        n_cini_module_0__majority7_module_30_n11), .Z(
        n_cini_module_0__majority7_module_30_n9) );
  NAND2_X1 u_cini_module_0__majority7_module_30_U7 ( .A1(
        n_cini_module_0__xor_module_79_res), .A2(
        n_cini_module_0__majority7_module_30_n9), .ZN(
        n_cini_module_0__majority7_module_30_n5) );
  XOR2_X1 u_cini_module_0__majority7_module_30_U6 ( .A(
        n_cini_module_0__xor_module_67_res), .B(
        n_cini_module_0__majority7_module_30_n10), .Z(
        n_cini_module_0__majority7_module_30_n7) );
  OR2_X1 u_cini_module_0__majority7_module_30_U5 ( .A1(
        n_cini_module_0__majority7_module_30_n9), .A2(
        n_cini_module_0__xor_module_79_res), .ZN(
        n_cini_module_0__majority7_module_30_n8) );
  NAND2_X1 u_cini_module_0__majority7_module_30_U4 ( .A1(
        n_cini_module_0__majority7_module_30_n7), .A2(
        n_cini_module_0__majority7_module_30_n8), .ZN(
        n_cini_module_0__majority7_module_30_n6) );
  NAND2_X1 u_cini_module_0__majority7_module_30_U3 ( .A1(
        n_cini_module_0__majority7_module_30_n5), .A2(
        n_cini_module_0__majority7_module_30_n6), .ZN(
        n_cini_module_0__majority7_module_30_n4) );
  NAND2_X1 u_cini_module_0__majority7_module_30_U2 ( .A1(
        n_cini_module_0__majority7_module_30_n3), .A2(
        n_cini_module_0__majority7_module_30_n4), .ZN(
        n_cini_module_0__majority7_module_30_n2) );
  NAND2_X1 u_cini_module_0__majority7_module_30_U1 ( .A1(
        n_cini_module_0__majority7_module_30_n1), .A2(
        n_cini_module_0__majority7_module_30_n2), .ZN(
        n_cini_module_0__majority7_module_30_res) );
  DFF_X1 u_cini_module_0__reg_module_145__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority7_module_30_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_145_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_73_U1 ( .A1(
        n_cini_module_0__reg_module_145_res), .A2(io_a_s2_d2), .ZN(
        n_cini_module_0__and_module_73_res) );
  DFF_X1 u_cini_module_0__reg_module_146__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_73_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_146_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_145_U1 ( .A(
        n_cini_module_0__reg_module_144_res), .B(
        n_cini_module_0__reg_module_146_res), .Z(
        n_cini_module_0__xor_module_145_res) );
  DFF_X1 u_cini_module_0__reg_module_147__hpc_correct_b_s0_d0_reg ( .D(
        p_rand_3), .CK(clock_2), .Q(n_cini_module_0__reg_module_147_res), 
        .QN() );
  INV_X1 u_cini_module_0__not_module_32_U1 ( .A(io_a_s2_d2), .ZN(
        n_cini_module_0__not_module_32_res) );
  AND2_X1 u_cini_module_0__and_module_74_U1 ( .A1(
        n_cini_module_0__not_module_32_res), .A2(
        n_cini_module_0__reg_module_147_res), .ZN(
        n_cini_module_0__and_module_74_res) );
  DFF_X1 u_cini_module_0__reg_module_148__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_74_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_148_res), .QN() );
  NAND2_X1 u_cini_module_0__majority7_module_31_U18 ( .A1(
        n_cini_module_0__xor_module_44_res), .A2(
        n_cini_module_0__xor_module_56_res), .ZN(
        n_cini_module_0__majority7_module_31_n16) );
  XOR2_X1 u_cini_module_0__majority7_module_31_U17 ( .A(
        n_cini_module_0__xor_module_44_res), .B(
        n_cini_module_0__xor_module_56_res), .Z(
        n_cini_module_0__majority7_module_31_n10) );
  NAND2_X1 u_cini_module_0__majority7_module_31_U16 ( .A1(
        n_cini_module_0__xor_module_68_res), .A2(
        n_cini_module_0__majority7_module_31_n10), .ZN(
        n_cini_module_0__majority7_module_31_n17) );
  NAND2_X1 u_cini_module_0__majority7_module_31_U15 ( .A1(
        n_cini_module_0__majority7_module_31_n16), .A2(
        n_cini_module_0__majority7_module_31_n17), .ZN(
        n_cini_module_0__majority7_module_31_n13) );
  NAND2_X1 u_cini_module_0__majority7_module_31_U14 ( .A1(
        n_cini_module_0__xor_module_8_res), .A2(
        n_cini_module_0__xor_module_20_res), .ZN(
        n_cini_module_0__majority7_module_31_n14) );
  XOR2_X1 u_cini_module_0__majority7_module_31_U13 ( .A(
        n_cini_module_0__xor_module_8_res), .B(
        n_cini_module_0__xor_module_20_res), .Z(
        n_cini_module_0__majority7_module_31_n11) );
  NAND2_X1 u_cini_module_0__majority7_module_31_U12 ( .A1(
        n_cini_module_0__xor_module_32_res), .A2(
        n_cini_module_0__majority7_module_31_n11), .ZN(
        n_cini_module_0__majority7_module_31_n15) );
  NAND2_X1 u_cini_module_0__majority7_module_31_U11 ( .A1(
        n_cini_module_0__majority7_module_31_n14), .A2(
        n_cini_module_0__majority7_module_31_n15), .ZN(
        n_cini_module_0__majority7_module_31_n12) );
  NAND2_X1 u_cini_module_0__majority7_module_31_U10 ( .A1(
        n_cini_module_0__majority7_module_31_n13), .A2(
        n_cini_module_0__majority7_module_31_n12), .ZN(
        n_cini_module_0__majority7_module_31_n1) );
  OR2_X1 u_cini_module_0__majority7_module_31_U9 ( .A1(
        n_cini_module_0__majority7_module_31_n12), .A2(
        n_cini_module_0__majority7_module_31_n13), .ZN(
        n_cini_module_0__majority7_module_31_n3) );
  XOR2_X1 u_cini_module_0__majority7_module_31_U8 ( .A(
        n_cini_module_0__xor_module_32_res), .B(
        n_cini_module_0__majority7_module_31_n11), .Z(
        n_cini_module_0__majority7_module_31_n9) );
  NAND2_X1 u_cini_module_0__majority7_module_31_U7 ( .A1(
        n_cini_module_0__xor_module_80_res), .A2(
        n_cini_module_0__majority7_module_31_n9), .ZN(
        n_cini_module_0__majority7_module_31_n5) );
  XOR2_X1 u_cini_module_0__majority7_module_31_U6 ( .A(
        n_cini_module_0__xor_module_68_res), .B(
        n_cini_module_0__majority7_module_31_n10), .Z(
        n_cini_module_0__majority7_module_31_n7) );
  OR2_X1 u_cini_module_0__majority7_module_31_U5 ( .A1(
        n_cini_module_0__majority7_module_31_n9), .A2(
        n_cini_module_0__xor_module_80_res), .ZN(
        n_cini_module_0__majority7_module_31_n8) );
  NAND2_X1 u_cini_module_0__majority7_module_31_U4 ( .A1(
        n_cini_module_0__majority7_module_31_n7), .A2(
        n_cini_module_0__majority7_module_31_n8), .ZN(
        n_cini_module_0__majority7_module_31_n6) );
  NAND2_X1 u_cini_module_0__majority7_module_31_U3 ( .A1(
        n_cini_module_0__majority7_module_31_n5), .A2(
        n_cini_module_0__majority7_module_31_n6), .ZN(
        n_cini_module_0__majority7_module_31_n4) );
  NAND2_X1 u_cini_module_0__majority7_module_31_U2 ( .A1(
        n_cini_module_0__majority7_module_31_n3), .A2(
        n_cini_module_0__majority7_module_31_n4), .ZN(
        n_cini_module_0__majority7_module_31_n2) );
  NAND2_X1 u_cini_module_0__majority7_module_31_U1 ( .A1(
        n_cini_module_0__majority7_module_31_n1), .A2(
        n_cini_module_0__majority7_module_31_n2), .ZN(
        n_cini_module_0__majority7_module_31_res) );
  DFF_X1 u_cini_module_0__reg_module_149__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority7_module_31_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_149_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_75_U1 ( .A1(
        n_cini_module_0__reg_module_149_res), .A2(io_a_s2_d2), .ZN(
        n_cini_module_0__and_module_75_res) );
  DFF_X1 u_cini_module_0__reg_module_150__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_75_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_150_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_146_U1 ( .A(
        n_cini_module_0__reg_module_148_res), .B(
        n_cini_module_0__reg_module_150_res), .Z(
        n_cini_module_0__xor_module_146_res) );
  XOR2_X1 u_cini_module_0__xor_module_147_U1 ( .A(
        n_cini_module_0__xor_module_145_res), .B(
        n_cini_module_0__xor_module_146_res), .Z(
        n_cini_module_0__xor_module_147_res) );
  DFF_X1 u_cini_module_0__reg_module_151__hpc_correct_b_s0_d0_reg ( .D(
        p_rand_5), .CK(clock_2), .Q(n_cini_module_0__reg_module_151_res), 
        .QN() );
  INV_X1 u_cini_module_0__not_module_33_U1 ( .A(io_a_s2_d2), .ZN(
        n_cini_module_0__not_module_33_res) );
  AND2_X1 u_cini_module_0__and_module_76_U1 ( .A1(
        n_cini_module_0__not_module_33_res), .A2(
        n_cini_module_0__reg_module_151_res), .ZN(
        n_cini_module_0__and_module_76_res) );
  DFF_X1 u_cini_module_0__reg_module_152__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_76_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_152_res), .QN() );
  NAND2_X1 u_cini_module_0__majority7_module_32_U18 ( .A1(
        n_cini_module_0__xor_module_45_res), .A2(
        n_cini_module_0__xor_module_57_res), .ZN(
        n_cini_module_0__majority7_module_32_n16) );
  XOR2_X1 u_cini_module_0__majority7_module_32_U17 ( .A(
        n_cini_module_0__xor_module_45_res), .B(
        n_cini_module_0__xor_module_57_res), .Z(
        n_cini_module_0__majority7_module_32_n10) );
  NAND2_X1 u_cini_module_0__majority7_module_32_U16 ( .A1(
        n_cini_module_0__xor_module_69_res), .A2(
        n_cini_module_0__majority7_module_32_n10), .ZN(
        n_cini_module_0__majority7_module_32_n17) );
  NAND2_X1 u_cini_module_0__majority7_module_32_U15 ( .A1(
        n_cini_module_0__majority7_module_32_n16), .A2(
        n_cini_module_0__majority7_module_32_n17), .ZN(
        n_cini_module_0__majority7_module_32_n13) );
  NAND2_X1 u_cini_module_0__majority7_module_32_U14 ( .A1(
        n_cini_module_0__xor_module_9_res), .A2(
        n_cini_module_0__xor_module_21_res), .ZN(
        n_cini_module_0__majority7_module_32_n14) );
  XOR2_X1 u_cini_module_0__majority7_module_32_U13 ( .A(
        n_cini_module_0__xor_module_9_res), .B(
        n_cini_module_0__xor_module_21_res), .Z(
        n_cini_module_0__majority7_module_32_n11) );
  NAND2_X1 u_cini_module_0__majority7_module_32_U12 ( .A1(
        n_cini_module_0__xor_module_33_res), .A2(
        n_cini_module_0__majority7_module_32_n11), .ZN(
        n_cini_module_0__majority7_module_32_n15) );
  NAND2_X1 u_cini_module_0__majority7_module_32_U11 ( .A1(
        n_cini_module_0__majority7_module_32_n14), .A2(
        n_cini_module_0__majority7_module_32_n15), .ZN(
        n_cini_module_0__majority7_module_32_n12) );
  NAND2_X1 u_cini_module_0__majority7_module_32_U10 ( .A1(
        n_cini_module_0__majority7_module_32_n13), .A2(
        n_cini_module_0__majority7_module_32_n12), .ZN(
        n_cini_module_0__majority7_module_32_n1) );
  OR2_X1 u_cini_module_0__majority7_module_32_U9 ( .A1(
        n_cini_module_0__majority7_module_32_n12), .A2(
        n_cini_module_0__majority7_module_32_n13), .ZN(
        n_cini_module_0__majority7_module_32_n3) );
  XOR2_X1 u_cini_module_0__majority7_module_32_U8 ( .A(
        n_cini_module_0__xor_module_33_res), .B(
        n_cini_module_0__majority7_module_32_n11), .Z(
        n_cini_module_0__majority7_module_32_n9) );
  NAND2_X1 u_cini_module_0__majority7_module_32_U7 ( .A1(
        n_cini_module_0__xor_module_81_res), .A2(
        n_cini_module_0__majority7_module_32_n9), .ZN(
        n_cini_module_0__majority7_module_32_n5) );
  XOR2_X1 u_cini_module_0__majority7_module_32_U6 ( .A(
        n_cini_module_0__xor_module_69_res), .B(
        n_cini_module_0__majority7_module_32_n10), .Z(
        n_cini_module_0__majority7_module_32_n7) );
  OR2_X1 u_cini_module_0__majority7_module_32_U5 ( .A1(
        n_cini_module_0__majority7_module_32_n9), .A2(
        n_cini_module_0__xor_module_81_res), .ZN(
        n_cini_module_0__majority7_module_32_n8) );
  NAND2_X1 u_cini_module_0__majority7_module_32_U4 ( .A1(
        n_cini_module_0__majority7_module_32_n7), .A2(
        n_cini_module_0__majority7_module_32_n8), .ZN(
        n_cini_module_0__majority7_module_32_n6) );
  NAND2_X1 u_cini_module_0__majority7_module_32_U3 ( .A1(
        n_cini_module_0__majority7_module_32_n5), .A2(
        n_cini_module_0__majority7_module_32_n6), .ZN(
        n_cini_module_0__majority7_module_32_n4) );
  NAND2_X1 u_cini_module_0__majority7_module_32_U2 ( .A1(
        n_cini_module_0__majority7_module_32_n3), .A2(
        n_cini_module_0__majority7_module_32_n4), .ZN(
        n_cini_module_0__majority7_module_32_n2) );
  NAND2_X1 u_cini_module_0__majority7_module_32_U1 ( .A1(
        n_cini_module_0__majority7_module_32_n1), .A2(
        n_cini_module_0__majority7_module_32_n2), .ZN(
        n_cini_module_0__majority7_module_32_res) );
  DFF_X1 u_cini_module_0__reg_module_153__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority7_module_32_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_153_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_77_U1 ( .A1(
        n_cini_module_0__reg_module_153_res), .A2(io_a_s2_d2), .ZN(
        n_cini_module_0__and_module_77_res) );
  DFF_X1 u_cini_module_0__reg_module_154__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_77_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_154_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_148_U1 ( .A(
        n_cini_module_0__reg_module_152_res), .B(
        n_cini_module_0__reg_module_154_res), .Z(
        n_cini_module_0__xor_module_148_res) );
  XOR2_X1 u_cini_module_0__xor_module_149_U1 ( .A(
        n_cini_module_0__xor_module_147_res), .B(
        n_cini_module_0__xor_module_148_res), .Z(
        n_cini_module_0__xor_module_149_res) );
  XOR2_X1 u_cini_module_0__xor_module_150_U1 ( .A(
        n_cini_module_0__xor_module_149_res), .B(
        n_cini_module_0__reg_module_142_res), .Z(io_c_s2_d2) );
  DFF_X1 u_cini_module_0__reg_module_155__hpc_correct_b_s0_d0_reg ( .D(
        io_b_s3_d2), .CK(clock_2), .Q(n_cini_module_0__reg_module_155_res), 
        .QN() );
  AND2_X1 u_cini_module_0__and_module_78_U1 ( .A1(
        n_cini_module_0__reg_module_155_res), .A2(io_a_s3_d2), .ZN(
        n_cini_module_0__and_module_78_res) );
  DFF_X1 u_cini_module_0__reg_module_156__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_78_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_156_res), .QN() );
  DFF_X1 u_cini_module_0__reg_module_157__hpc_correct_b_s0_d0_reg ( .D(
        p_rand_2), .CK(clock_2), .Q(n_cini_module_0__reg_module_157_res), 
        .QN() );
  INV_X1 u_cini_module_0__not_module_34_U1 ( .A(io_a_s3_d2), .ZN(
        n_cini_module_0__not_module_34_res) );
  AND2_X1 u_cini_module_0__and_module_79_U1 ( .A1(
        n_cini_module_0__not_module_34_res), .A2(
        n_cini_module_0__reg_module_157_res), .ZN(
        n_cini_module_0__and_module_79_res) );
  DFF_X1 u_cini_module_0__reg_module_158__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_79_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_158_res), .QN() );
  NAND2_X1 u_cini_module_0__majority7_module_33_U18 ( .A1(
        n_cini_module_0__xor_module_46_res), .A2(
        n_cini_module_0__xor_module_58_res), .ZN(
        n_cini_module_0__majority7_module_33_n16) );
  XOR2_X1 u_cini_module_0__majority7_module_33_U17 ( .A(
        n_cini_module_0__xor_module_46_res), .B(
        n_cini_module_0__xor_module_58_res), .Z(
        n_cini_module_0__majority7_module_33_n10) );
  NAND2_X1 u_cini_module_0__majority7_module_33_U16 ( .A1(
        n_cini_module_0__xor_module_70_res), .A2(
        n_cini_module_0__majority7_module_33_n10), .ZN(
        n_cini_module_0__majority7_module_33_n17) );
  NAND2_X1 u_cini_module_0__majority7_module_33_U15 ( .A1(
        n_cini_module_0__majority7_module_33_n16), .A2(
        n_cini_module_0__majority7_module_33_n17), .ZN(
        n_cini_module_0__majority7_module_33_n13) );
  NAND2_X1 u_cini_module_0__majority7_module_33_U14 ( .A1(
        n_cini_module_0__xor_module_10_res), .A2(
        n_cini_module_0__xor_module_22_res), .ZN(
        n_cini_module_0__majority7_module_33_n14) );
  XOR2_X1 u_cini_module_0__majority7_module_33_U13 ( .A(
        n_cini_module_0__xor_module_10_res), .B(
        n_cini_module_0__xor_module_22_res), .Z(
        n_cini_module_0__majority7_module_33_n11) );
  NAND2_X1 u_cini_module_0__majority7_module_33_U12 ( .A1(
        n_cini_module_0__xor_module_34_res), .A2(
        n_cini_module_0__majority7_module_33_n11), .ZN(
        n_cini_module_0__majority7_module_33_n15) );
  NAND2_X1 u_cini_module_0__majority7_module_33_U11 ( .A1(
        n_cini_module_0__majority7_module_33_n14), .A2(
        n_cini_module_0__majority7_module_33_n15), .ZN(
        n_cini_module_0__majority7_module_33_n12) );
  NAND2_X1 u_cini_module_0__majority7_module_33_U10 ( .A1(
        n_cini_module_0__majority7_module_33_n13), .A2(
        n_cini_module_0__majority7_module_33_n12), .ZN(
        n_cini_module_0__majority7_module_33_n1) );
  OR2_X1 u_cini_module_0__majority7_module_33_U9 ( .A1(
        n_cini_module_0__majority7_module_33_n12), .A2(
        n_cini_module_0__majority7_module_33_n13), .ZN(
        n_cini_module_0__majority7_module_33_n3) );
  XOR2_X1 u_cini_module_0__majority7_module_33_U8 ( .A(
        n_cini_module_0__xor_module_34_res), .B(
        n_cini_module_0__majority7_module_33_n11), .Z(
        n_cini_module_0__majority7_module_33_n9) );
  NAND2_X1 u_cini_module_0__majority7_module_33_U7 ( .A1(
        n_cini_module_0__xor_module_82_res), .A2(
        n_cini_module_0__majority7_module_33_n9), .ZN(
        n_cini_module_0__majority7_module_33_n5) );
  XOR2_X1 u_cini_module_0__majority7_module_33_U6 ( .A(
        n_cini_module_0__xor_module_70_res), .B(
        n_cini_module_0__majority7_module_33_n10), .Z(
        n_cini_module_0__majority7_module_33_n7) );
  OR2_X1 u_cini_module_0__majority7_module_33_U5 ( .A1(
        n_cini_module_0__majority7_module_33_n9), .A2(
        n_cini_module_0__xor_module_82_res), .ZN(
        n_cini_module_0__majority7_module_33_n8) );
  NAND2_X1 u_cini_module_0__majority7_module_33_U4 ( .A1(
        n_cini_module_0__majority7_module_33_n7), .A2(
        n_cini_module_0__majority7_module_33_n8), .ZN(
        n_cini_module_0__majority7_module_33_n6) );
  NAND2_X1 u_cini_module_0__majority7_module_33_U3 ( .A1(
        n_cini_module_0__majority7_module_33_n5), .A2(
        n_cini_module_0__majority7_module_33_n6), .ZN(
        n_cini_module_0__majority7_module_33_n4) );
  NAND2_X1 u_cini_module_0__majority7_module_33_U2 ( .A1(
        n_cini_module_0__majority7_module_33_n3), .A2(
        n_cini_module_0__majority7_module_33_n4), .ZN(
        n_cini_module_0__majority7_module_33_n2) );
  NAND2_X1 u_cini_module_0__majority7_module_33_U1 ( .A1(
        n_cini_module_0__majority7_module_33_n1), .A2(
        n_cini_module_0__majority7_module_33_n2), .ZN(
        n_cini_module_0__majority7_module_33_res) );
  DFF_X1 u_cini_module_0__reg_module_159__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority7_module_33_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_159_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_80_U1 ( .A1(
        n_cini_module_0__reg_module_159_res), .A2(io_a_s3_d2), .ZN(
        n_cini_module_0__and_module_80_res) );
  DFF_X1 u_cini_module_0__reg_module_160__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_80_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_160_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_151_U1 ( .A(
        n_cini_module_0__reg_module_158_res), .B(
        n_cini_module_0__reg_module_160_res), .Z(
        n_cini_module_0__xor_module_151_res) );
  DFF_X1 u_cini_module_0__reg_module_161__hpc_correct_b_s0_d0_reg ( .D(
        p_rand_4), .CK(clock_2), .Q(n_cini_module_0__reg_module_161_res), 
        .QN() );
  INV_X1 u_cini_module_0__not_module_35_U1 ( .A(io_a_s3_d2), .ZN(
        n_cini_module_0__not_module_35_res) );
  AND2_X1 u_cini_module_0__and_module_81_U1 ( .A1(
        n_cini_module_0__not_module_35_res), .A2(
        n_cini_module_0__reg_module_161_res), .ZN(
        n_cini_module_0__and_module_81_res) );
  DFF_X1 u_cini_module_0__reg_module_162__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_81_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_162_res), .QN() );
  NAND2_X1 u_cini_module_0__majority7_module_34_U18 ( .A1(
        n_cini_module_0__xor_module_47_res), .A2(
        n_cini_module_0__xor_module_59_res), .ZN(
        n_cini_module_0__majority7_module_34_n16) );
  XOR2_X1 u_cini_module_0__majority7_module_34_U17 ( .A(
        n_cini_module_0__xor_module_47_res), .B(
        n_cini_module_0__xor_module_59_res), .Z(
        n_cini_module_0__majority7_module_34_n10) );
  NAND2_X1 u_cini_module_0__majority7_module_34_U16 ( .A1(
        n_cini_module_0__xor_module_71_res), .A2(
        n_cini_module_0__majority7_module_34_n10), .ZN(
        n_cini_module_0__majority7_module_34_n17) );
  NAND2_X1 u_cini_module_0__majority7_module_34_U15 ( .A1(
        n_cini_module_0__majority7_module_34_n16), .A2(
        n_cini_module_0__majority7_module_34_n17), .ZN(
        n_cini_module_0__majority7_module_34_n13) );
  NAND2_X1 u_cini_module_0__majority7_module_34_U14 ( .A1(
        n_cini_module_0__xor_module_11_res), .A2(
        n_cini_module_0__xor_module_23_res), .ZN(
        n_cini_module_0__majority7_module_34_n14) );
  XOR2_X1 u_cini_module_0__majority7_module_34_U13 ( .A(
        n_cini_module_0__xor_module_11_res), .B(
        n_cini_module_0__xor_module_23_res), .Z(
        n_cini_module_0__majority7_module_34_n11) );
  NAND2_X1 u_cini_module_0__majority7_module_34_U12 ( .A1(
        n_cini_module_0__xor_module_35_res), .A2(
        n_cini_module_0__majority7_module_34_n11), .ZN(
        n_cini_module_0__majority7_module_34_n15) );
  NAND2_X1 u_cini_module_0__majority7_module_34_U11 ( .A1(
        n_cini_module_0__majority7_module_34_n14), .A2(
        n_cini_module_0__majority7_module_34_n15), .ZN(
        n_cini_module_0__majority7_module_34_n12) );
  NAND2_X1 u_cini_module_0__majority7_module_34_U10 ( .A1(
        n_cini_module_0__majority7_module_34_n13), .A2(
        n_cini_module_0__majority7_module_34_n12), .ZN(
        n_cini_module_0__majority7_module_34_n1) );
  OR2_X1 u_cini_module_0__majority7_module_34_U9 ( .A1(
        n_cini_module_0__majority7_module_34_n12), .A2(
        n_cini_module_0__majority7_module_34_n13), .ZN(
        n_cini_module_0__majority7_module_34_n3) );
  XOR2_X1 u_cini_module_0__majority7_module_34_U8 ( .A(
        n_cini_module_0__xor_module_35_res), .B(
        n_cini_module_0__majority7_module_34_n11), .Z(
        n_cini_module_0__majority7_module_34_n9) );
  NAND2_X1 u_cini_module_0__majority7_module_34_U7 ( .A1(
        n_cini_module_0__xor_module_83_res), .A2(
        n_cini_module_0__majority7_module_34_n9), .ZN(
        n_cini_module_0__majority7_module_34_n5) );
  XOR2_X1 u_cini_module_0__majority7_module_34_U6 ( .A(
        n_cini_module_0__xor_module_71_res), .B(
        n_cini_module_0__majority7_module_34_n10), .Z(
        n_cini_module_0__majority7_module_34_n7) );
  OR2_X1 u_cini_module_0__majority7_module_34_U5 ( .A1(
        n_cini_module_0__majority7_module_34_n9), .A2(
        n_cini_module_0__xor_module_83_res), .ZN(
        n_cini_module_0__majority7_module_34_n8) );
  NAND2_X1 u_cini_module_0__majority7_module_34_U4 ( .A1(
        n_cini_module_0__majority7_module_34_n7), .A2(
        n_cini_module_0__majority7_module_34_n8), .ZN(
        n_cini_module_0__majority7_module_34_n6) );
  NAND2_X1 u_cini_module_0__majority7_module_34_U3 ( .A1(
        n_cini_module_0__majority7_module_34_n5), .A2(
        n_cini_module_0__majority7_module_34_n6), .ZN(
        n_cini_module_0__majority7_module_34_n4) );
  NAND2_X1 u_cini_module_0__majority7_module_34_U2 ( .A1(
        n_cini_module_0__majority7_module_34_n3), .A2(
        n_cini_module_0__majority7_module_34_n4), .ZN(
        n_cini_module_0__majority7_module_34_n2) );
  NAND2_X1 u_cini_module_0__majority7_module_34_U1 ( .A1(
        n_cini_module_0__majority7_module_34_n1), .A2(
        n_cini_module_0__majority7_module_34_n2), .ZN(
        n_cini_module_0__majority7_module_34_res) );
  DFF_X1 u_cini_module_0__reg_module_163__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority7_module_34_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_163_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_82_U1 ( .A1(
        n_cini_module_0__reg_module_163_res), .A2(io_a_s3_d2), .ZN(
        n_cini_module_0__and_module_82_res) );
  DFF_X1 u_cini_module_0__reg_module_164__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_82_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_164_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_152_U1 ( .A(
        n_cini_module_0__reg_module_162_res), .B(
        n_cini_module_0__reg_module_164_res), .Z(
        n_cini_module_0__xor_module_152_res) );
  XOR2_X1 u_cini_module_0__xor_module_153_U1 ( .A(
        n_cini_module_0__xor_module_151_res), .B(
        n_cini_module_0__xor_module_152_res), .Z(
        n_cini_module_0__xor_module_153_res) );
  DFF_X1 u_cini_module_0__reg_module_165__hpc_correct_b_s0_d0_reg ( .D(
        p_rand_5), .CK(clock_2), .Q(n_cini_module_0__reg_module_165_res), 
        .QN() );
  INV_X1 u_cini_module_0__not_module_36_U1 ( .A(io_a_s3_d2), .ZN(
        n_cini_module_0__not_module_36_res) );
  AND2_X1 u_cini_module_0__and_module_83_U1 ( .A1(
        n_cini_module_0__not_module_36_res), .A2(
        n_cini_module_0__reg_module_165_res), .ZN(
        n_cini_module_0__and_module_83_res) );
  DFF_X1 u_cini_module_0__reg_module_166__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_83_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_166_res), .QN() );
  NAND2_X1 u_cini_module_0__majority7_module_35_U18 ( .A1(
        n_cini_module_0__xor_module_48_res), .A2(
        n_cini_module_0__xor_module_60_res), .ZN(
        n_cini_module_0__majority7_module_35_n16) );
  XOR2_X1 u_cini_module_0__majority7_module_35_U17 ( .A(
        n_cini_module_0__xor_module_48_res), .B(
        n_cini_module_0__xor_module_60_res), .Z(
        n_cini_module_0__majority7_module_35_n10) );
  NAND2_X1 u_cini_module_0__majority7_module_35_U16 ( .A1(
        n_cini_module_0__xor_module_72_res), .A2(
        n_cini_module_0__majority7_module_35_n10), .ZN(
        n_cini_module_0__majority7_module_35_n17) );
  NAND2_X1 u_cini_module_0__majority7_module_35_U15 ( .A1(
        n_cini_module_0__majority7_module_35_n16), .A2(
        n_cini_module_0__majority7_module_35_n17), .ZN(
        n_cini_module_0__majority7_module_35_n13) );
  NAND2_X1 u_cini_module_0__majority7_module_35_U14 ( .A1(
        n_cini_module_0__xor_module_12_res), .A2(
        n_cini_module_0__xor_module_24_res), .ZN(
        n_cini_module_0__majority7_module_35_n14) );
  XOR2_X1 u_cini_module_0__majority7_module_35_U13 ( .A(
        n_cini_module_0__xor_module_12_res), .B(
        n_cini_module_0__xor_module_24_res), .Z(
        n_cini_module_0__majority7_module_35_n11) );
  NAND2_X1 u_cini_module_0__majority7_module_35_U12 ( .A1(
        n_cini_module_0__xor_module_36_res), .A2(
        n_cini_module_0__majority7_module_35_n11), .ZN(
        n_cini_module_0__majority7_module_35_n15) );
  NAND2_X1 u_cini_module_0__majority7_module_35_U11 ( .A1(
        n_cini_module_0__majority7_module_35_n14), .A2(
        n_cini_module_0__majority7_module_35_n15), .ZN(
        n_cini_module_0__majority7_module_35_n12) );
  NAND2_X1 u_cini_module_0__majority7_module_35_U10 ( .A1(
        n_cini_module_0__majority7_module_35_n13), .A2(
        n_cini_module_0__majority7_module_35_n12), .ZN(
        n_cini_module_0__majority7_module_35_n1) );
  OR2_X1 u_cini_module_0__majority7_module_35_U9 ( .A1(
        n_cini_module_0__majority7_module_35_n12), .A2(
        n_cini_module_0__majority7_module_35_n13), .ZN(
        n_cini_module_0__majority7_module_35_n3) );
  XOR2_X1 u_cini_module_0__majority7_module_35_U8 ( .A(
        n_cini_module_0__xor_module_36_res), .B(
        n_cini_module_0__majority7_module_35_n11), .Z(
        n_cini_module_0__majority7_module_35_n9) );
  NAND2_X1 u_cini_module_0__majority7_module_35_U7 ( .A1(
        n_cini_module_0__xor_module_84_res), .A2(
        n_cini_module_0__majority7_module_35_n9), .ZN(
        n_cini_module_0__majority7_module_35_n5) );
  XOR2_X1 u_cini_module_0__majority7_module_35_U6 ( .A(
        n_cini_module_0__xor_module_72_res), .B(
        n_cini_module_0__majority7_module_35_n10), .Z(
        n_cini_module_0__majority7_module_35_n7) );
  OR2_X1 u_cini_module_0__majority7_module_35_U5 ( .A1(
        n_cini_module_0__majority7_module_35_n9), .A2(
        n_cini_module_0__xor_module_84_res), .ZN(
        n_cini_module_0__majority7_module_35_n8) );
  NAND2_X1 u_cini_module_0__majority7_module_35_U4 ( .A1(
        n_cini_module_0__majority7_module_35_n7), .A2(
        n_cini_module_0__majority7_module_35_n8), .ZN(
        n_cini_module_0__majority7_module_35_n6) );
  NAND2_X1 u_cini_module_0__majority7_module_35_U3 ( .A1(
        n_cini_module_0__majority7_module_35_n5), .A2(
        n_cini_module_0__majority7_module_35_n6), .ZN(
        n_cini_module_0__majority7_module_35_n4) );
  NAND2_X1 u_cini_module_0__majority7_module_35_U2 ( .A1(
        n_cini_module_0__majority7_module_35_n3), .A2(
        n_cini_module_0__majority7_module_35_n4), .ZN(
        n_cini_module_0__majority7_module_35_n2) );
  NAND2_X1 u_cini_module_0__majority7_module_35_U1 ( .A1(
        n_cini_module_0__majority7_module_35_n1), .A2(
        n_cini_module_0__majority7_module_35_n2), .ZN(
        n_cini_module_0__majority7_module_35_res) );
  DFF_X1 u_cini_module_0__reg_module_167__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority7_module_35_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_167_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_84_U1 ( .A1(
        n_cini_module_0__reg_module_167_res), .A2(io_a_s3_d2), .ZN(
        n_cini_module_0__and_module_84_res) );
  DFF_X1 u_cini_module_0__reg_module_168__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_84_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_168_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_154_U1 ( .A(
        n_cini_module_0__reg_module_166_res), .B(
        n_cini_module_0__reg_module_168_res), .Z(
        n_cini_module_0__xor_module_154_res) );
  XOR2_X1 u_cini_module_0__xor_module_155_U1 ( .A(
        n_cini_module_0__xor_module_153_res), .B(
        n_cini_module_0__xor_module_154_res), .Z(
        n_cini_module_0__xor_module_155_res) );
  XOR2_X1 u_cini_module_0__xor_module_156_U1 ( .A(
        n_cini_module_0__xor_module_155_res), .B(
        n_cini_module_0__reg_module_156_res), .Z(io_c_s3_d2) );
  DFF_X1 u_cini_module_0__reg_module_169__hpc_correct_b_s0_d0_reg ( .D(
        io_b_s0_d3), .CK(clock_3), .Q(n_cini_module_0__reg_module_169_res), 
        .QN() );
  AND2_X1 u_cini_module_0__and_module_85_U1 ( .A1(
        n_cini_module_0__reg_module_169_res), .A2(io_a_s0_d3), .ZN(
        n_cini_module_0__and_module_85_res) );
  DFF_X1 u_cini_module_0__reg_module_170__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_85_res), .CK(clock_3), .Q(
        n_cini_module_0__reg_module_170_res), .QN() );
  DFF_X1 u_cini_module_0__reg_module_171__hpc_correct_b_s0_d0_reg ( .D(
        p_rand_0), .CK(clock_3), .Q(n_cini_module_0__reg_module_171_res), 
        .QN() );
  INV_X1 u_cini_module_0__not_module_37_U1 ( .A(io_a_s0_d3), .ZN(
        n_cini_module_0__not_module_37_res) );
  AND2_X1 u_cini_module_0__and_module_86_U1 ( .A1(
        n_cini_module_0__not_module_37_res), .A2(
        n_cini_module_0__reg_module_171_res), .ZN(
        n_cini_module_0__and_module_86_res) );
  DFF_X1 u_cini_module_0__reg_module_172__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_86_res), .CK(clock_3), .Q(
        n_cini_module_0__reg_module_172_res), .QN() );
  NAND2_X1 u_cini_module_0__majority7_module_36_U18 ( .A1(
        n_cini_module_0__xor_module_37_res), .A2(
        n_cini_module_0__xor_module_49_res), .ZN(
        n_cini_module_0__majority7_module_36_n16) );
  XOR2_X1 u_cini_module_0__majority7_module_36_U17 ( .A(
        n_cini_module_0__xor_module_37_res), .B(
        n_cini_module_0__xor_module_49_res), .Z(
        n_cini_module_0__majority7_module_36_n10) );
  NAND2_X1 u_cini_module_0__majority7_module_36_U16 ( .A1(
        n_cini_module_0__xor_module_61_res), .A2(
        n_cini_module_0__majority7_module_36_n10), .ZN(
        n_cini_module_0__majority7_module_36_n17) );
  NAND2_X1 u_cini_module_0__majority7_module_36_U15 ( .A1(
        n_cini_module_0__majority7_module_36_n16), .A2(
        n_cini_module_0__majority7_module_36_n17), .ZN(
        n_cini_module_0__majority7_module_36_n13) );
  NAND2_X1 u_cini_module_0__majority7_module_36_U14 ( .A1(
        n_cini_module_0__xor_module_1_res), .A2(
        n_cini_module_0__xor_module_13_res), .ZN(
        n_cini_module_0__majority7_module_36_n14) );
  XOR2_X1 u_cini_module_0__majority7_module_36_U13 ( .A(
        n_cini_module_0__xor_module_1_res), .B(
        n_cini_module_0__xor_module_13_res), .Z(
        n_cini_module_0__majority7_module_36_n11) );
  NAND2_X1 u_cini_module_0__majority7_module_36_U12 ( .A1(
        n_cini_module_0__xor_module_25_res), .A2(
        n_cini_module_0__majority7_module_36_n11), .ZN(
        n_cini_module_0__majority7_module_36_n15) );
  NAND2_X1 u_cini_module_0__majority7_module_36_U11 ( .A1(
        n_cini_module_0__majority7_module_36_n14), .A2(
        n_cini_module_0__majority7_module_36_n15), .ZN(
        n_cini_module_0__majority7_module_36_n12) );
  NAND2_X1 u_cini_module_0__majority7_module_36_U10 ( .A1(
        n_cini_module_0__majority7_module_36_n13), .A2(
        n_cini_module_0__majority7_module_36_n12), .ZN(
        n_cini_module_0__majority7_module_36_n1) );
  OR2_X1 u_cini_module_0__majority7_module_36_U9 ( .A1(
        n_cini_module_0__majority7_module_36_n12), .A2(
        n_cini_module_0__majority7_module_36_n13), .ZN(
        n_cini_module_0__majority7_module_36_n3) );
  XOR2_X1 u_cini_module_0__majority7_module_36_U8 ( .A(
        n_cini_module_0__xor_module_25_res), .B(
        n_cini_module_0__majority7_module_36_n11), .Z(
        n_cini_module_0__majority7_module_36_n9) );
  NAND2_X1 u_cini_module_0__majority7_module_36_U7 ( .A1(
        n_cini_module_0__xor_module_73_res), .A2(
        n_cini_module_0__majority7_module_36_n9), .ZN(
        n_cini_module_0__majority7_module_36_n5) );
  XOR2_X1 u_cini_module_0__majority7_module_36_U6 ( .A(
        n_cini_module_0__xor_module_61_res), .B(
        n_cini_module_0__majority7_module_36_n10), .Z(
        n_cini_module_0__majority7_module_36_n7) );
  OR2_X1 u_cini_module_0__majority7_module_36_U5 ( .A1(
        n_cini_module_0__majority7_module_36_n9), .A2(
        n_cini_module_0__xor_module_73_res), .ZN(
        n_cini_module_0__majority7_module_36_n8) );
  NAND2_X1 u_cini_module_0__majority7_module_36_U4 ( .A1(
        n_cini_module_0__majority7_module_36_n7), .A2(
        n_cini_module_0__majority7_module_36_n8), .ZN(
        n_cini_module_0__majority7_module_36_n6) );
  NAND2_X1 u_cini_module_0__majority7_module_36_U3 ( .A1(
        n_cini_module_0__majority7_module_36_n5), .A2(
        n_cini_module_0__majority7_module_36_n6), .ZN(
        n_cini_module_0__majority7_module_36_n4) );
  NAND2_X1 u_cini_module_0__majority7_module_36_U2 ( .A1(
        n_cini_module_0__majority7_module_36_n3), .A2(
        n_cini_module_0__majority7_module_36_n4), .ZN(
        n_cini_module_0__majority7_module_36_n2) );
  NAND2_X1 u_cini_module_0__majority7_module_36_U1 ( .A1(
        n_cini_module_0__majority7_module_36_n1), .A2(
        n_cini_module_0__majority7_module_36_n2), .ZN(
        n_cini_module_0__majority7_module_36_res) );
  DFF_X1 u_cini_module_0__reg_module_173__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority7_module_36_res), .CK(clock_3), .Q(
        n_cini_module_0__reg_module_173_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_87_U1 ( .A1(
        n_cini_module_0__reg_module_173_res), .A2(io_a_s0_d3), .ZN(
        n_cini_module_0__and_module_87_res) );
  DFF_X1 u_cini_module_0__reg_module_174__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_87_res), .CK(clock_3), .Q(
        n_cini_module_0__reg_module_174_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_157_U1 ( .A(
        n_cini_module_0__reg_module_172_res), .B(
        n_cini_module_0__reg_module_174_res), .Z(
        n_cini_module_0__xor_module_157_res) );
  DFF_X1 u_cini_module_0__reg_module_175__hpc_correct_b_s0_d0_reg ( .D(
        p_rand_1), .CK(clock_3), .Q(n_cini_module_0__reg_module_175_res), 
        .QN() );
  INV_X1 u_cini_module_0__not_module_38_U1 ( .A(io_a_s0_d3), .ZN(
        n_cini_module_0__not_module_38_res) );
  AND2_X1 u_cini_module_0__and_module_88_U1 ( .A1(
        n_cini_module_0__not_module_38_res), .A2(
        n_cini_module_0__reg_module_175_res), .ZN(
        n_cini_module_0__and_module_88_res) );
  DFF_X1 u_cini_module_0__reg_module_176__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_88_res), .CK(clock_3), .Q(
        n_cini_module_0__reg_module_176_res), .QN() );
  NAND2_X1 u_cini_module_0__majority7_module_37_U18 ( .A1(
        n_cini_module_0__xor_module_38_res), .A2(
        n_cini_module_0__xor_module_50_res), .ZN(
        n_cini_module_0__majority7_module_37_n16) );
  XOR2_X1 u_cini_module_0__majority7_module_37_U17 ( .A(
        n_cini_module_0__xor_module_38_res), .B(
        n_cini_module_0__xor_module_50_res), .Z(
        n_cini_module_0__majority7_module_37_n10) );
  NAND2_X1 u_cini_module_0__majority7_module_37_U16 ( .A1(
        n_cini_module_0__xor_module_62_res), .A2(
        n_cini_module_0__majority7_module_37_n10), .ZN(
        n_cini_module_0__majority7_module_37_n17) );
  NAND2_X1 u_cini_module_0__majority7_module_37_U15 ( .A1(
        n_cini_module_0__majority7_module_37_n16), .A2(
        n_cini_module_0__majority7_module_37_n17), .ZN(
        n_cini_module_0__majority7_module_37_n13) );
  NAND2_X1 u_cini_module_0__majority7_module_37_U14 ( .A1(
        n_cini_module_0__xor_module_2_res), .A2(
        n_cini_module_0__xor_module_14_res), .ZN(
        n_cini_module_0__majority7_module_37_n14) );
  XOR2_X1 u_cini_module_0__majority7_module_37_U13 ( .A(
        n_cini_module_0__xor_module_2_res), .B(
        n_cini_module_0__xor_module_14_res), .Z(
        n_cini_module_0__majority7_module_37_n11) );
  NAND2_X1 u_cini_module_0__majority7_module_37_U12 ( .A1(
        n_cini_module_0__xor_module_26_res), .A2(
        n_cini_module_0__majority7_module_37_n11), .ZN(
        n_cini_module_0__majority7_module_37_n15) );
  NAND2_X1 u_cini_module_0__majority7_module_37_U11 ( .A1(
        n_cini_module_0__majority7_module_37_n14), .A2(
        n_cini_module_0__majority7_module_37_n15), .ZN(
        n_cini_module_0__majority7_module_37_n12) );
  NAND2_X1 u_cini_module_0__majority7_module_37_U10 ( .A1(
        n_cini_module_0__majority7_module_37_n13), .A2(
        n_cini_module_0__majority7_module_37_n12), .ZN(
        n_cini_module_0__majority7_module_37_n1) );
  OR2_X1 u_cini_module_0__majority7_module_37_U9 ( .A1(
        n_cini_module_0__majority7_module_37_n12), .A2(
        n_cini_module_0__majority7_module_37_n13), .ZN(
        n_cini_module_0__majority7_module_37_n3) );
  XOR2_X1 u_cini_module_0__majority7_module_37_U8 ( .A(
        n_cini_module_0__xor_module_26_res), .B(
        n_cini_module_0__majority7_module_37_n11), .Z(
        n_cini_module_0__majority7_module_37_n9) );
  NAND2_X1 u_cini_module_0__majority7_module_37_U7 ( .A1(
        n_cini_module_0__xor_module_74_res), .A2(
        n_cini_module_0__majority7_module_37_n9), .ZN(
        n_cini_module_0__majority7_module_37_n5) );
  XOR2_X1 u_cini_module_0__majority7_module_37_U6 ( .A(
        n_cini_module_0__xor_module_62_res), .B(
        n_cini_module_0__majority7_module_37_n10), .Z(
        n_cini_module_0__majority7_module_37_n7) );
  OR2_X1 u_cini_module_0__majority7_module_37_U5 ( .A1(
        n_cini_module_0__majority7_module_37_n9), .A2(
        n_cini_module_0__xor_module_74_res), .ZN(
        n_cini_module_0__majority7_module_37_n8) );
  NAND2_X1 u_cini_module_0__majority7_module_37_U4 ( .A1(
        n_cini_module_0__majority7_module_37_n7), .A2(
        n_cini_module_0__majority7_module_37_n8), .ZN(
        n_cini_module_0__majority7_module_37_n6) );
  NAND2_X1 u_cini_module_0__majority7_module_37_U3 ( .A1(
        n_cini_module_0__majority7_module_37_n5), .A2(
        n_cini_module_0__majority7_module_37_n6), .ZN(
        n_cini_module_0__majority7_module_37_n4) );
  NAND2_X1 u_cini_module_0__majority7_module_37_U2 ( .A1(
        n_cini_module_0__majority7_module_37_n3), .A2(
        n_cini_module_0__majority7_module_37_n4), .ZN(
        n_cini_module_0__majority7_module_37_n2) );
  NAND2_X1 u_cini_module_0__majority7_module_37_U1 ( .A1(
        n_cini_module_0__majority7_module_37_n1), .A2(
        n_cini_module_0__majority7_module_37_n2), .ZN(
        n_cini_module_0__majority7_module_37_res) );
  DFF_X1 u_cini_module_0__reg_module_177__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority7_module_37_res), .CK(clock_3), .Q(
        n_cini_module_0__reg_module_177_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_89_U1 ( .A1(
        n_cini_module_0__reg_module_177_res), .A2(io_a_s0_d3), .ZN(
        n_cini_module_0__and_module_89_res) );
  DFF_X1 u_cini_module_0__reg_module_178__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_89_res), .CK(clock_3), .Q(
        n_cini_module_0__reg_module_178_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_158_U1 ( .A(
        n_cini_module_0__reg_module_176_res), .B(
        n_cini_module_0__reg_module_178_res), .Z(
        n_cini_module_0__xor_module_158_res) );
  XOR2_X1 u_cini_module_0__xor_module_159_U1 ( .A(
        n_cini_module_0__xor_module_157_res), .B(
        n_cini_module_0__xor_module_158_res), .Z(
        n_cini_module_0__xor_module_159_res) );
  DFF_X1 u_cini_module_0__reg_module_179__hpc_correct_b_s0_d0_reg ( .D(
        p_rand_2), .CK(clock_3), .Q(n_cini_module_0__reg_module_179_res), 
        .QN() );
  INV_X1 u_cini_module_0__not_module_39_U1 ( .A(io_a_s0_d3), .ZN(
        n_cini_module_0__not_module_39_res) );
  AND2_X1 u_cini_module_0__and_module_90_U1 ( .A1(
        n_cini_module_0__not_module_39_res), .A2(
        n_cini_module_0__reg_module_179_res), .ZN(
        n_cini_module_0__and_module_90_res) );
  DFF_X1 u_cini_module_0__reg_module_180__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_90_res), .CK(clock_3), .Q(
        n_cini_module_0__reg_module_180_res), .QN() );
  NAND2_X1 u_cini_module_0__majority7_module_38_U18 ( .A1(
        n_cini_module_0__xor_module_39_res), .A2(
        n_cini_module_0__xor_module_51_res), .ZN(
        n_cini_module_0__majority7_module_38_n16) );
  XOR2_X1 u_cini_module_0__majority7_module_38_U17 ( .A(
        n_cini_module_0__xor_module_39_res), .B(
        n_cini_module_0__xor_module_51_res), .Z(
        n_cini_module_0__majority7_module_38_n10) );
  NAND2_X1 u_cini_module_0__majority7_module_38_U16 ( .A1(
        n_cini_module_0__xor_module_63_res), .A2(
        n_cini_module_0__majority7_module_38_n10), .ZN(
        n_cini_module_0__majority7_module_38_n17) );
  NAND2_X1 u_cini_module_0__majority7_module_38_U15 ( .A1(
        n_cini_module_0__majority7_module_38_n16), .A2(
        n_cini_module_0__majority7_module_38_n17), .ZN(
        n_cini_module_0__majority7_module_38_n13) );
  NAND2_X1 u_cini_module_0__majority7_module_38_U14 ( .A1(
        n_cini_module_0__xor_module_3_res), .A2(
        n_cini_module_0__xor_module_15_res), .ZN(
        n_cini_module_0__majority7_module_38_n14) );
  XOR2_X1 u_cini_module_0__majority7_module_38_U13 ( .A(
        n_cini_module_0__xor_module_3_res), .B(
        n_cini_module_0__xor_module_15_res), .Z(
        n_cini_module_0__majority7_module_38_n11) );
  NAND2_X1 u_cini_module_0__majority7_module_38_U12 ( .A1(
        n_cini_module_0__xor_module_27_res), .A2(
        n_cini_module_0__majority7_module_38_n11), .ZN(
        n_cini_module_0__majority7_module_38_n15) );
  NAND2_X1 u_cini_module_0__majority7_module_38_U11 ( .A1(
        n_cini_module_0__majority7_module_38_n14), .A2(
        n_cini_module_0__majority7_module_38_n15), .ZN(
        n_cini_module_0__majority7_module_38_n12) );
  NAND2_X1 u_cini_module_0__majority7_module_38_U10 ( .A1(
        n_cini_module_0__majority7_module_38_n13), .A2(
        n_cini_module_0__majority7_module_38_n12), .ZN(
        n_cini_module_0__majority7_module_38_n1) );
  OR2_X1 u_cini_module_0__majority7_module_38_U9 ( .A1(
        n_cini_module_0__majority7_module_38_n12), .A2(
        n_cini_module_0__majority7_module_38_n13), .ZN(
        n_cini_module_0__majority7_module_38_n3) );
  XOR2_X1 u_cini_module_0__majority7_module_38_U8 ( .A(
        n_cini_module_0__xor_module_27_res), .B(
        n_cini_module_0__majority7_module_38_n11), .Z(
        n_cini_module_0__majority7_module_38_n9) );
  NAND2_X1 u_cini_module_0__majority7_module_38_U7 ( .A1(
        n_cini_module_0__xor_module_75_res), .A2(
        n_cini_module_0__majority7_module_38_n9), .ZN(
        n_cini_module_0__majority7_module_38_n5) );
  XOR2_X1 u_cini_module_0__majority7_module_38_U6 ( .A(
        n_cini_module_0__xor_module_63_res), .B(
        n_cini_module_0__majority7_module_38_n10), .Z(
        n_cini_module_0__majority7_module_38_n7) );
  OR2_X1 u_cini_module_0__majority7_module_38_U5 ( .A1(
        n_cini_module_0__majority7_module_38_n9), .A2(
        n_cini_module_0__xor_module_75_res), .ZN(
        n_cini_module_0__majority7_module_38_n8) );
  NAND2_X1 u_cini_module_0__majority7_module_38_U4 ( .A1(
        n_cini_module_0__majority7_module_38_n7), .A2(
        n_cini_module_0__majority7_module_38_n8), .ZN(
        n_cini_module_0__majority7_module_38_n6) );
  NAND2_X1 u_cini_module_0__majority7_module_38_U3 ( .A1(
        n_cini_module_0__majority7_module_38_n5), .A2(
        n_cini_module_0__majority7_module_38_n6), .ZN(
        n_cini_module_0__majority7_module_38_n4) );
  NAND2_X1 u_cini_module_0__majority7_module_38_U2 ( .A1(
        n_cini_module_0__majority7_module_38_n3), .A2(
        n_cini_module_0__majority7_module_38_n4), .ZN(
        n_cini_module_0__majority7_module_38_n2) );
  NAND2_X1 u_cini_module_0__majority7_module_38_U1 ( .A1(
        n_cini_module_0__majority7_module_38_n1), .A2(
        n_cini_module_0__majority7_module_38_n2), .ZN(
        n_cini_module_0__majority7_module_38_res) );
  DFF_X1 u_cini_module_0__reg_module_181__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority7_module_38_res), .CK(clock_3), .Q(
        n_cini_module_0__reg_module_181_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_91_U1 ( .A1(
        n_cini_module_0__reg_module_181_res), .A2(io_a_s0_d3), .ZN(
        n_cini_module_0__and_module_91_res) );
  DFF_X1 u_cini_module_0__reg_module_182__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_91_res), .CK(clock_3), .Q(
        n_cini_module_0__reg_module_182_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_160_U1 ( .A(
        n_cini_module_0__reg_module_180_res), .B(
        n_cini_module_0__reg_module_182_res), .Z(
        n_cini_module_0__xor_module_160_res) );
  XOR2_X1 u_cini_module_0__xor_module_161_U1 ( .A(
        n_cini_module_0__xor_module_159_res), .B(
        n_cini_module_0__xor_module_160_res), .Z(
        n_cini_module_0__xor_module_161_res) );
  XOR2_X1 u_cini_module_0__xor_module_162_U1 ( .A(
        n_cini_module_0__xor_module_161_res), .B(
        n_cini_module_0__reg_module_170_res), .Z(io_c_s0_d3) );
  DFF_X1 u_cini_module_0__reg_module_183__hpc_correct_b_s0_d0_reg ( .D(
        io_b_s1_d3), .CK(clock_3), .Q(n_cini_module_0__reg_module_183_res), 
        .QN() );
  AND2_X1 u_cini_module_0__and_module_92_U1 ( .A1(
        n_cini_module_0__reg_module_183_res), .A2(io_a_s1_d3), .ZN(
        n_cini_module_0__and_module_92_res) );
  DFF_X1 u_cini_module_0__reg_module_184__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_92_res), .CK(clock_3), .Q(
        n_cini_module_0__reg_module_184_res), .QN() );
  DFF_X1 u_cini_module_0__reg_module_185__hpc_correct_b_s0_d0_reg ( .D(
        p_rand_0), .CK(clock_3), .Q(n_cini_module_0__reg_module_185_res), 
        .QN() );
  INV_X1 u_cini_module_0__not_module_40_U1 ( .A(io_a_s1_d3), .ZN(
        n_cini_module_0__not_module_40_res) );
  AND2_X1 u_cini_module_0__and_module_93_U1 ( .A1(
        n_cini_module_0__not_module_40_res), .A2(
        n_cini_module_0__reg_module_185_res), .ZN(
        n_cini_module_0__and_module_93_res) );
  DFF_X1 u_cini_module_0__reg_module_186__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_93_res), .CK(clock_3), .Q(
        n_cini_module_0__reg_module_186_res), .QN() );
  NAND2_X1 u_cini_module_0__majority7_module_39_U18 ( .A1(
        n_cini_module_0__xor_module_40_res), .A2(
        n_cini_module_0__xor_module_52_res), .ZN(
        n_cini_module_0__majority7_module_39_n16) );
  XOR2_X1 u_cini_module_0__majority7_module_39_U17 ( .A(
        n_cini_module_0__xor_module_40_res), .B(
        n_cini_module_0__xor_module_52_res), .Z(
        n_cini_module_0__majority7_module_39_n10) );
  NAND2_X1 u_cini_module_0__majority7_module_39_U16 ( .A1(
        n_cini_module_0__xor_module_64_res), .A2(
        n_cini_module_0__majority7_module_39_n10), .ZN(
        n_cini_module_0__majority7_module_39_n17) );
  NAND2_X1 u_cini_module_0__majority7_module_39_U15 ( .A1(
        n_cini_module_0__majority7_module_39_n16), .A2(
        n_cini_module_0__majority7_module_39_n17), .ZN(
        n_cini_module_0__majority7_module_39_n13) );
  NAND2_X1 u_cini_module_0__majority7_module_39_U14 ( .A1(
        n_cini_module_0__xor_module_4_res), .A2(
        n_cini_module_0__xor_module_16_res), .ZN(
        n_cini_module_0__majority7_module_39_n14) );
  XOR2_X1 u_cini_module_0__majority7_module_39_U13 ( .A(
        n_cini_module_0__xor_module_4_res), .B(
        n_cini_module_0__xor_module_16_res), .Z(
        n_cini_module_0__majority7_module_39_n11) );
  NAND2_X1 u_cini_module_0__majority7_module_39_U12 ( .A1(
        n_cini_module_0__xor_module_28_res), .A2(
        n_cini_module_0__majority7_module_39_n11), .ZN(
        n_cini_module_0__majority7_module_39_n15) );
  NAND2_X1 u_cini_module_0__majority7_module_39_U11 ( .A1(
        n_cini_module_0__majority7_module_39_n14), .A2(
        n_cini_module_0__majority7_module_39_n15), .ZN(
        n_cini_module_0__majority7_module_39_n12) );
  NAND2_X1 u_cini_module_0__majority7_module_39_U10 ( .A1(
        n_cini_module_0__majority7_module_39_n13), .A2(
        n_cini_module_0__majority7_module_39_n12), .ZN(
        n_cini_module_0__majority7_module_39_n1) );
  OR2_X1 u_cini_module_0__majority7_module_39_U9 ( .A1(
        n_cini_module_0__majority7_module_39_n12), .A2(
        n_cini_module_0__majority7_module_39_n13), .ZN(
        n_cini_module_0__majority7_module_39_n3) );
  XOR2_X1 u_cini_module_0__majority7_module_39_U8 ( .A(
        n_cini_module_0__xor_module_28_res), .B(
        n_cini_module_0__majority7_module_39_n11), .Z(
        n_cini_module_0__majority7_module_39_n9) );
  NAND2_X1 u_cini_module_0__majority7_module_39_U7 ( .A1(
        n_cini_module_0__xor_module_76_res), .A2(
        n_cini_module_0__majority7_module_39_n9), .ZN(
        n_cini_module_0__majority7_module_39_n5) );
  XOR2_X1 u_cini_module_0__majority7_module_39_U6 ( .A(
        n_cini_module_0__xor_module_64_res), .B(
        n_cini_module_0__majority7_module_39_n10), .Z(
        n_cini_module_0__majority7_module_39_n7) );
  OR2_X1 u_cini_module_0__majority7_module_39_U5 ( .A1(
        n_cini_module_0__majority7_module_39_n9), .A2(
        n_cini_module_0__xor_module_76_res), .ZN(
        n_cini_module_0__majority7_module_39_n8) );
  NAND2_X1 u_cini_module_0__majority7_module_39_U4 ( .A1(
        n_cini_module_0__majority7_module_39_n7), .A2(
        n_cini_module_0__majority7_module_39_n8), .ZN(
        n_cini_module_0__majority7_module_39_n6) );
  NAND2_X1 u_cini_module_0__majority7_module_39_U3 ( .A1(
        n_cini_module_0__majority7_module_39_n5), .A2(
        n_cini_module_0__majority7_module_39_n6), .ZN(
        n_cini_module_0__majority7_module_39_n4) );
  NAND2_X1 u_cini_module_0__majority7_module_39_U2 ( .A1(
        n_cini_module_0__majority7_module_39_n3), .A2(
        n_cini_module_0__majority7_module_39_n4), .ZN(
        n_cini_module_0__majority7_module_39_n2) );
  NAND2_X1 u_cini_module_0__majority7_module_39_U1 ( .A1(
        n_cini_module_0__majority7_module_39_n1), .A2(
        n_cini_module_0__majority7_module_39_n2), .ZN(
        n_cini_module_0__majority7_module_39_res) );
  DFF_X1 u_cini_module_0__reg_module_187__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority7_module_39_res), .CK(clock_3), .Q(
        n_cini_module_0__reg_module_187_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_94_U1 ( .A1(
        n_cini_module_0__reg_module_187_res), .A2(io_a_s1_d3), .ZN(
        n_cini_module_0__and_module_94_res) );
  DFF_X1 u_cini_module_0__reg_module_188__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_94_res), .CK(clock_3), .Q(
        n_cini_module_0__reg_module_188_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_163_U1 ( .A(
        n_cini_module_0__reg_module_186_res), .B(
        n_cini_module_0__reg_module_188_res), .Z(
        n_cini_module_0__xor_module_163_res) );
  DFF_X1 u_cini_module_0__reg_module_189__hpc_correct_b_s0_d0_reg ( .D(
        p_rand_3), .CK(clock_3), .Q(n_cini_module_0__reg_module_189_res), 
        .QN() );
  INV_X1 u_cini_module_0__not_module_41_U1 ( .A(io_a_s1_d3), .ZN(
        n_cini_module_0__not_module_41_res) );
  AND2_X1 u_cini_module_0__and_module_95_U1 ( .A1(
        n_cini_module_0__not_module_41_res), .A2(
        n_cini_module_0__reg_module_189_res), .ZN(
        n_cini_module_0__and_module_95_res) );
  DFF_X1 u_cini_module_0__reg_module_190__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_95_res), .CK(clock_3), .Q(
        n_cini_module_0__reg_module_190_res), .QN() );
  NAND2_X1 u_cini_module_0__majority7_module_40_U18 ( .A1(
        n_cini_module_0__xor_module_41_res), .A2(
        n_cini_module_0__xor_module_53_res), .ZN(
        n_cini_module_0__majority7_module_40_n16) );
  XOR2_X1 u_cini_module_0__majority7_module_40_U17 ( .A(
        n_cini_module_0__xor_module_41_res), .B(
        n_cini_module_0__xor_module_53_res), .Z(
        n_cini_module_0__majority7_module_40_n10) );
  NAND2_X1 u_cini_module_0__majority7_module_40_U16 ( .A1(
        n_cini_module_0__xor_module_65_res), .A2(
        n_cini_module_0__majority7_module_40_n10), .ZN(
        n_cini_module_0__majority7_module_40_n17) );
  NAND2_X1 u_cini_module_0__majority7_module_40_U15 ( .A1(
        n_cini_module_0__majority7_module_40_n16), .A2(
        n_cini_module_0__majority7_module_40_n17), .ZN(
        n_cini_module_0__majority7_module_40_n13) );
  NAND2_X1 u_cini_module_0__majority7_module_40_U14 ( .A1(
        n_cini_module_0__xor_module_5_res), .A2(
        n_cini_module_0__xor_module_17_res), .ZN(
        n_cini_module_0__majority7_module_40_n14) );
  XOR2_X1 u_cini_module_0__majority7_module_40_U13 ( .A(
        n_cini_module_0__xor_module_5_res), .B(
        n_cini_module_0__xor_module_17_res), .Z(
        n_cini_module_0__majority7_module_40_n11) );
  NAND2_X1 u_cini_module_0__majority7_module_40_U12 ( .A1(
        n_cini_module_0__xor_module_29_res), .A2(
        n_cini_module_0__majority7_module_40_n11), .ZN(
        n_cini_module_0__majority7_module_40_n15) );
  NAND2_X1 u_cini_module_0__majority7_module_40_U11 ( .A1(
        n_cini_module_0__majority7_module_40_n14), .A2(
        n_cini_module_0__majority7_module_40_n15), .ZN(
        n_cini_module_0__majority7_module_40_n12) );
  NAND2_X1 u_cini_module_0__majority7_module_40_U10 ( .A1(
        n_cini_module_0__majority7_module_40_n13), .A2(
        n_cini_module_0__majority7_module_40_n12), .ZN(
        n_cini_module_0__majority7_module_40_n1) );
  OR2_X1 u_cini_module_0__majority7_module_40_U9 ( .A1(
        n_cini_module_0__majority7_module_40_n12), .A2(
        n_cini_module_0__majority7_module_40_n13), .ZN(
        n_cini_module_0__majority7_module_40_n3) );
  XOR2_X1 u_cini_module_0__majority7_module_40_U8 ( .A(
        n_cini_module_0__xor_module_29_res), .B(
        n_cini_module_0__majority7_module_40_n11), .Z(
        n_cini_module_0__majority7_module_40_n9) );
  NAND2_X1 u_cini_module_0__majority7_module_40_U7 ( .A1(
        n_cini_module_0__xor_module_77_res), .A2(
        n_cini_module_0__majority7_module_40_n9), .ZN(
        n_cini_module_0__majority7_module_40_n5) );
  XOR2_X1 u_cini_module_0__majority7_module_40_U6 ( .A(
        n_cini_module_0__xor_module_65_res), .B(
        n_cini_module_0__majority7_module_40_n10), .Z(
        n_cini_module_0__majority7_module_40_n7) );
  OR2_X1 u_cini_module_0__majority7_module_40_U5 ( .A1(
        n_cini_module_0__majority7_module_40_n9), .A2(
        n_cini_module_0__xor_module_77_res), .ZN(
        n_cini_module_0__majority7_module_40_n8) );
  NAND2_X1 u_cini_module_0__majority7_module_40_U4 ( .A1(
        n_cini_module_0__majority7_module_40_n7), .A2(
        n_cini_module_0__majority7_module_40_n8), .ZN(
        n_cini_module_0__majority7_module_40_n6) );
  NAND2_X1 u_cini_module_0__majority7_module_40_U3 ( .A1(
        n_cini_module_0__majority7_module_40_n5), .A2(
        n_cini_module_0__majority7_module_40_n6), .ZN(
        n_cini_module_0__majority7_module_40_n4) );
  NAND2_X1 u_cini_module_0__majority7_module_40_U2 ( .A1(
        n_cini_module_0__majority7_module_40_n3), .A2(
        n_cini_module_0__majority7_module_40_n4), .ZN(
        n_cini_module_0__majority7_module_40_n2) );
  NAND2_X1 u_cini_module_0__majority7_module_40_U1 ( .A1(
        n_cini_module_0__majority7_module_40_n1), .A2(
        n_cini_module_0__majority7_module_40_n2), .ZN(
        n_cini_module_0__majority7_module_40_res) );
  DFF_X1 u_cini_module_0__reg_module_191__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority7_module_40_res), .CK(clock_3), .Q(
        n_cini_module_0__reg_module_191_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_96_U1 ( .A1(
        n_cini_module_0__reg_module_191_res), .A2(io_a_s1_d3), .ZN(
        n_cini_module_0__and_module_96_res) );
  DFF_X1 u_cini_module_0__reg_module_192__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_96_res), .CK(clock_3), .Q(
        n_cini_module_0__reg_module_192_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_164_U1 ( .A(
        n_cini_module_0__reg_module_190_res), .B(
        n_cini_module_0__reg_module_192_res), .Z(
        n_cini_module_0__xor_module_164_res) );
  XOR2_X1 u_cini_module_0__xor_module_165_U1 ( .A(
        n_cini_module_0__xor_module_163_res), .B(
        n_cini_module_0__xor_module_164_res), .Z(
        n_cini_module_0__xor_module_165_res) );
  DFF_X1 u_cini_module_0__reg_module_193__hpc_correct_b_s0_d0_reg ( .D(
        p_rand_4), .CK(clock_3), .Q(n_cini_module_0__reg_module_193_res), 
        .QN() );
  INV_X1 u_cini_module_0__not_module_42_U1 ( .A(io_a_s1_d3), .ZN(
        n_cini_module_0__not_module_42_res) );
  AND2_X1 u_cini_module_0__and_module_97_U1 ( .A1(
        n_cini_module_0__not_module_42_res), .A2(
        n_cini_module_0__reg_module_193_res), .ZN(
        n_cini_module_0__and_module_97_res) );
  DFF_X1 u_cini_module_0__reg_module_194__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_97_res), .CK(clock_3), .Q(
        n_cini_module_0__reg_module_194_res), .QN() );
  NAND2_X1 u_cini_module_0__majority7_module_41_U18 ( .A1(
        n_cini_module_0__xor_module_42_res), .A2(
        n_cini_module_0__xor_module_54_res), .ZN(
        n_cini_module_0__majority7_module_41_n16) );
  XOR2_X1 u_cini_module_0__majority7_module_41_U17 ( .A(
        n_cini_module_0__xor_module_42_res), .B(
        n_cini_module_0__xor_module_54_res), .Z(
        n_cini_module_0__majority7_module_41_n10) );
  NAND2_X1 u_cini_module_0__majority7_module_41_U16 ( .A1(
        n_cini_module_0__xor_module_66_res), .A2(
        n_cini_module_0__majority7_module_41_n10), .ZN(
        n_cini_module_0__majority7_module_41_n17) );
  NAND2_X1 u_cini_module_0__majority7_module_41_U15 ( .A1(
        n_cini_module_0__majority7_module_41_n16), .A2(
        n_cini_module_0__majority7_module_41_n17), .ZN(
        n_cini_module_0__majority7_module_41_n13) );
  NAND2_X1 u_cini_module_0__majority7_module_41_U14 ( .A1(
        n_cini_module_0__xor_module_6_res), .A2(
        n_cini_module_0__xor_module_18_res), .ZN(
        n_cini_module_0__majority7_module_41_n14) );
  XOR2_X1 u_cini_module_0__majority7_module_41_U13 ( .A(
        n_cini_module_0__xor_module_6_res), .B(
        n_cini_module_0__xor_module_18_res), .Z(
        n_cini_module_0__majority7_module_41_n11) );
  NAND2_X1 u_cini_module_0__majority7_module_41_U12 ( .A1(
        n_cini_module_0__xor_module_30_res), .A2(
        n_cini_module_0__majority7_module_41_n11), .ZN(
        n_cini_module_0__majority7_module_41_n15) );
  NAND2_X1 u_cini_module_0__majority7_module_41_U11 ( .A1(
        n_cini_module_0__majority7_module_41_n14), .A2(
        n_cini_module_0__majority7_module_41_n15), .ZN(
        n_cini_module_0__majority7_module_41_n12) );
  NAND2_X1 u_cini_module_0__majority7_module_41_U10 ( .A1(
        n_cini_module_0__majority7_module_41_n13), .A2(
        n_cini_module_0__majority7_module_41_n12), .ZN(
        n_cini_module_0__majority7_module_41_n1) );
  OR2_X1 u_cini_module_0__majority7_module_41_U9 ( .A1(
        n_cini_module_0__majority7_module_41_n12), .A2(
        n_cini_module_0__majority7_module_41_n13), .ZN(
        n_cini_module_0__majority7_module_41_n3) );
  XOR2_X1 u_cini_module_0__majority7_module_41_U8 ( .A(
        n_cini_module_0__xor_module_30_res), .B(
        n_cini_module_0__majority7_module_41_n11), .Z(
        n_cini_module_0__majority7_module_41_n9) );
  NAND2_X1 u_cini_module_0__majority7_module_41_U7 ( .A1(
        n_cini_module_0__xor_module_78_res), .A2(
        n_cini_module_0__majority7_module_41_n9), .ZN(
        n_cini_module_0__majority7_module_41_n5) );
  XOR2_X1 u_cini_module_0__majority7_module_41_U6 ( .A(
        n_cini_module_0__xor_module_66_res), .B(
        n_cini_module_0__majority7_module_41_n10), .Z(
        n_cini_module_0__majority7_module_41_n7) );
  OR2_X1 u_cini_module_0__majority7_module_41_U5 ( .A1(
        n_cini_module_0__majority7_module_41_n9), .A2(
        n_cini_module_0__xor_module_78_res), .ZN(
        n_cini_module_0__majority7_module_41_n8) );
  NAND2_X1 u_cini_module_0__majority7_module_41_U4 ( .A1(
        n_cini_module_0__majority7_module_41_n7), .A2(
        n_cini_module_0__majority7_module_41_n8), .ZN(
        n_cini_module_0__majority7_module_41_n6) );
  NAND2_X1 u_cini_module_0__majority7_module_41_U3 ( .A1(
        n_cini_module_0__majority7_module_41_n5), .A2(
        n_cini_module_0__majority7_module_41_n6), .ZN(
        n_cini_module_0__majority7_module_41_n4) );
  NAND2_X1 u_cini_module_0__majority7_module_41_U2 ( .A1(
        n_cini_module_0__majority7_module_41_n3), .A2(
        n_cini_module_0__majority7_module_41_n4), .ZN(
        n_cini_module_0__majority7_module_41_n2) );
  NAND2_X1 u_cini_module_0__majority7_module_41_U1 ( .A1(
        n_cini_module_0__majority7_module_41_n1), .A2(
        n_cini_module_0__majority7_module_41_n2), .ZN(
        n_cini_module_0__majority7_module_41_res) );
  DFF_X1 u_cini_module_0__reg_module_195__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority7_module_41_res), .CK(clock_3), .Q(
        n_cini_module_0__reg_module_195_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_98_U1 ( .A1(
        n_cini_module_0__reg_module_195_res), .A2(io_a_s1_d3), .ZN(
        n_cini_module_0__and_module_98_res) );
  DFF_X1 u_cini_module_0__reg_module_196__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_98_res), .CK(clock_3), .Q(
        n_cini_module_0__reg_module_196_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_166_U1 ( .A(
        n_cini_module_0__reg_module_194_res), .B(
        n_cini_module_0__reg_module_196_res), .Z(
        n_cini_module_0__xor_module_166_res) );
  XOR2_X1 u_cini_module_0__xor_module_167_U1 ( .A(
        n_cini_module_0__xor_module_165_res), .B(
        n_cini_module_0__xor_module_166_res), .Z(
        n_cini_module_0__xor_module_167_res) );
  XOR2_X1 u_cini_module_0__xor_module_168_U1 ( .A(
        n_cini_module_0__xor_module_167_res), .B(
        n_cini_module_0__reg_module_184_res), .Z(io_c_s1_d3) );
  DFF_X1 u_cini_module_0__reg_module_197__hpc_correct_b_s0_d0_reg ( .D(
        io_b_s2_d3), .CK(clock_3), .Q(n_cini_module_0__reg_module_197_res), 
        .QN() );
  AND2_X1 u_cini_module_0__and_module_99_U1 ( .A1(
        n_cini_module_0__reg_module_197_res), .A2(io_a_s2_d3), .ZN(
        n_cini_module_0__and_module_99_res) );
  DFF_X1 u_cini_module_0__reg_module_198__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_99_res), .CK(clock_3), .Q(
        n_cini_module_0__reg_module_198_res), .QN() );
  DFF_X1 u_cini_module_0__reg_module_199__hpc_correct_b_s0_d0_reg ( .D(
        p_rand_1), .CK(clock_3), .Q(n_cini_module_0__reg_module_199_res), 
        .QN() );
  INV_X1 u_cini_module_0__not_module_43_U1 ( .A(io_a_s2_d3), .ZN(
        n_cini_module_0__not_module_43_res) );
  AND2_X1 u_cini_module_0__and_module_100_U1 ( .A1(
        n_cini_module_0__not_module_43_res), .A2(
        n_cini_module_0__reg_module_199_res), .ZN(
        n_cini_module_0__and_module_100_res) );
  DFF_X1 u_cini_module_0__reg_module_200__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_100_res), .CK(clock_3), .Q(
        n_cini_module_0__reg_module_200_res), .QN() );
  NAND2_X1 u_cini_module_0__majority7_module_42_U18 ( .A1(
        n_cini_module_0__xor_module_43_res), .A2(
        n_cini_module_0__xor_module_55_res), .ZN(
        n_cini_module_0__majority7_module_42_n16) );
  XOR2_X1 u_cini_module_0__majority7_module_42_U17 ( .A(
        n_cini_module_0__xor_module_43_res), .B(
        n_cini_module_0__xor_module_55_res), .Z(
        n_cini_module_0__majority7_module_42_n10) );
  NAND2_X1 u_cini_module_0__majority7_module_42_U16 ( .A1(
        n_cini_module_0__xor_module_67_res), .A2(
        n_cini_module_0__majority7_module_42_n10), .ZN(
        n_cini_module_0__majority7_module_42_n17) );
  NAND2_X1 u_cini_module_0__majority7_module_42_U15 ( .A1(
        n_cini_module_0__majority7_module_42_n16), .A2(
        n_cini_module_0__majority7_module_42_n17), .ZN(
        n_cini_module_0__majority7_module_42_n13) );
  NAND2_X1 u_cini_module_0__majority7_module_42_U14 ( .A1(
        n_cini_module_0__xor_module_7_res), .A2(
        n_cini_module_0__xor_module_19_res), .ZN(
        n_cini_module_0__majority7_module_42_n14) );
  XOR2_X1 u_cini_module_0__majority7_module_42_U13 ( .A(
        n_cini_module_0__xor_module_7_res), .B(
        n_cini_module_0__xor_module_19_res), .Z(
        n_cini_module_0__majority7_module_42_n11) );
  NAND2_X1 u_cini_module_0__majority7_module_42_U12 ( .A1(
        n_cini_module_0__xor_module_31_res), .A2(
        n_cini_module_0__majority7_module_42_n11), .ZN(
        n_cini_module_0__majority7_module_42_n15) );
  NAND2_X1 u_cini_module_0__majority7_module_42_U11 ( .A1(
        n_cini_module_0__majority7_module_42_n14), .A2(
        n_cini_module_0__majority7_module_42_n15), .ZN(
        n_cini_module_0__majority7_module_42_n12) );
  NAND2_X1 u_cini_module_0__majority7_module_42_U10 ( .A1(
        n_cini_module_0__majority7_module_42_n13), .A2(
        n_cini_module_0__majority7_module_42_n12), .ZN(
        n_cini_module_0__majority7_module_42_n1) );
  OR2_X1 u_cini_module_0__majority7_module_42_U9 ( .A1(
        n_cini_module_0__majority7_module_42_n12), .A2(
        n_cini_module_0__majority7_module_42_n13), .ZN(
        n_cini_module_0__majority7_module_42_n3) );
  XOR2_X1 u_cini_module_0__majority7_module_42_U8 ( .A(
        n_cini_module_0__xor_module_31_res), .B(
        n_cini_module_0__majority7_module_42_n11), .Z(
        n_cini_module_0__majority7_module_42_n9) );
  NAND2_X1 u_cini_module_0__majority7_module_42_U7 ( .A1(
        n_cini_module_0__xor_module_79_res), .A2(
        n_cini_module_0__majority7_module_42_n9), .ZN(
        n_cini_module_0__majority7_module_42_n5) );
  XOR2_X1 u_cini_module_0__majority7_module_42_U6 ( .A(
        n_cini_module_0__xor_module_67_res), .B(
        n_cini_module_0__majority7_module_42_n10), .Z(
        n_cini_module_0__majority7_module_42_n7) );
  OR2_X1 u_cini_module_0__majority7_module_42_U5 ( .A1(
        n_cini_module_0__majority7_module_42_n9), .A2(
        n_cini_module_0__xor_module_79_res), .ZN(
        n_cini_module_0__majority7_module_42_n8) );
  NAND2_X1 u_cini_module_0__majority7_module_42_U4 ( .A1(
        n_cini_module_0__majority7_module_42_n7), .A2(
        n_cini_module_0__majority7_module_42_n8), .ZN(
        n_cini_module_0__majority7_module_42_n6) );
  NAND2_X1 u_cini_module_0__majority7_module_42_U3 ( .A1(
        n_cini_module_0__majority7_module_42_n5), .A2(
        n_cini_module_0__majority7_module_42_n6), .ZN(
        n_cini_module_0__majority7_module_42_n4) );
  NAND2_X1 u_cini_module_0__majority7_module_42_U2 ( .A1(
        n_cini_module_0__majority7_module_42_n3), .A2(
        n_cini_module_0__majority7_module_42_n4), .ZN(
        n_cini_module_0__majority7_module_42_n2) );
  NAND2_X1 u_cini_module_0__majority7_module_42_U1 ( .A1(
        n_cini_module_0__majority7_module_42_n1), .A2(
        n_cini_module_0__majority7_module_42_n2), .ZN(
        n_cini_module_0__majority7_module_42_res) );
  DFF_X1 u_cini_module_0__reg_module_201__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority7_module_42_res), .CK(clock_3), .Q(
        n_cini_module_0__reg_module_201_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_101_U1 ( .A1(
        n_cini_module_0__reg_module_201_res), .A2(io_a_s2_d3), .ZN(
        n_cini_module_0__and_module_101_res) );
  DFF_X1 u_cini_module_0__reg_module_202__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_101_res), .CK(clock_3), .Q(
        n_cini_module_0__reg_module_202_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_169_U1 ( .A(
        n_cini_module_0__reg_module_200_res), .B(
        n_cini_module_0__reg_module_202_res), .Z(
        n_cini_module_0__xor_module_169_res) );
  DFF_X1 u_cini_module_0__reg_module_203__hpc_correct_b_s0_d0_reg ( .D(
        p_rand_3), .CK(clock_3), .Q(n_cini_module_0__reg_module_203_res), 
        .QN() );
  INV_X1 u_cini_module_0__not_module_44_U1 ( .A(io_a_s2_d3), .ZN(
        n_cini_module_0__not_module_44_res) );
  AND2_X1 u_cini_module_0__and_module_102_U1 ( .A1(
        n_cini_module_0__not_module_44_res), .A2(
        n_cini_module_0__reg_module_203_res), .ZN(
        n_cini_module_0__and_module_102_res) );
  DFF_X1 u_cini_module_0__reg_module_204__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_102_res), .CK(clock_3), .Q(
        n_cini_module_0__reg_module_204_res), .QN() );
  NAND2_X1 u_cini_module_0__majority7_module_43_U18 ( .A1(
        n_cini_module_0__xor_module_44_res), .A2(
        n_cini_module_0__xor_module_56_res), .ZN(
        n_cini_module_0__majority7_module_43_n16) );
  XOR2_X1 u_cini_module_0__majority7_module_43_U17 ( .A(
        n_cini_module_0__xor_module_44_res), .B(
        n_cini_module_0__xor_module_56_res), .Z(
        n_cini_module_0__majority7_module_43_n10) );
  NAND2_X1 u_cini_module_0__majority7_module_43_U16 ( .A1(
        n_cini_module_0__xor_module_68_res), .A2(
        n_cini_module_0__majority7_module_43_n10), .ZN(
        n_cini_module_0__majority7_module_43_n17) );
  NAND2_X1 u_cini_module_0__majority7_module_43_U15 ( .A1(
        n_cini_module_0__majority7_module_43_n16), .A2(
        n_cini_module_0__majority7_module_43_n17), .ZN(
        n_cini_module_0__majority7_module_43_n13) );
  NAND2_X1 u_cini_module_0__majority7_module_43_U14 ( .A1(
        n_cini_module_0__xor_module_8_res), .A2(
        n_cini_module_0__xor_module_20_res), .ZN(
        n_cini_module_0__majority7_module_43_n14) );
  XOR2_X1 u_cini_module_0__majority7_module_43_U13 ( .A(
        n_cini_module_0__xor_module_8_res), .B(
        n_cini_module_0__xor_module_20_res), .Z(
        n_cini_module_0__majority7_module_43_n11) );
  NAND2_X1 u_cini_module_0__majority7_module_43_U12 ( .A1(
        n_cini_module_0__xor_module_32_res), .A2(
        n_cini_module_0__majority7_module_43_n11), .ZN(
        n_cini_module_0__majority7_module_43_n15) );
  NAND2_X1 u_cini_module_0__majority7_module_43_U11 ( .A1(
        n_cini_module_0__majority7_module_43_n14), .A2(
        n_cini_module_0__majority7_module_43_n15), .ZN(
        n_cini_module_0__majority7_module_43_n12) );
  NAND2_X1 u_cini_module_0__majority7_module_43_U10 ( .A1(
        n_cini_module_0__majority7_module_43_n13), .A2(
        n_cini_module_0__majority7_module_43_n12), .ZN(
        n_cini_module_0__majority7_module_43_n1) );
  OR2_X1 u_cini_module_0__majority7_module_43_U9 ( .A1(
        n_cini_module_0__majority7_module_43_n12), .A2(
        n_cini_module_0__majority7_module_43_n13), .ZN(
        n_cini_module_0__majority7_module_43_n3) );
  XOR2_X1 u_cini_module_0__majority7_module_43_U8 ( .A(
        n_cini_module_0__xor_module_32_res), .B(
        n_cini_module_0__majority7_module_43_n11), .Z(
        n_cini_module_0__majority7_module_43_n9) );
  NAND2_X1 u_cini_module_0__majority7_module_43_U7 ( .A1(
        n_cini_module_0__xor_module_80_res), .A2(
        n_cini_module_0__majority7_module_43_n9), .ZN(
        n_cini_module_0__majority7_module_43_n5) );
  XOR2_X1 u_cini_module_0__majority7_module_43_U6 ( .A(
        n_cini_module_0__xor_module_68_res), .B(
        n_cini_module_0__majority7_module_43_n10), .Z(
        n_cini_module_0__majority7_module_43_n7) );
  OR2_X1 u_cini_module_0__majority7_module_43_U5 ( .A1(
        n_cini_module_0__majority7_module_43_n9), .A2(
        n_cini_module_0__xor_module_80_res), .ZN(
        n_cini_module_0__majority7_module_43_n8) );
  NAND2_X1 u_cini_module_0__majority7_module_43_U4 ( .A1(
        n_cini_module_0__majority7_module_43_n7), .A2(
        n_cini_module_0__majority7_module_43_n8), .ZN(
        n_cini_module_0__majority7_module_43_n6) );
  NAND2_X1 u_cini_module_0__majority7_module_43_U3 ( .A1(
        n_cini_module_0__majority7_module_43_n5), .A2(
        n_cini_module_0__majority7_module_43_n6), .ZN(
        n_cini_module_0__majority7_module_43_n4) );
  NAND2_X1 u_cini_module_0__majority7_module_43_U2 ( .A1(
        n_cini_module_0__majority7_module_43_n3), .A2(
        n_cini_module_0__majority7_module_43_n4), .ZN(
        n_cini_module_0__majority7_module_43_n2) );
  NAND2_X1 u_cini_module_0__majority7_module_43_U1 ( .A1(
        n_cini_module_0__majority7_module_43_n1), .A2(
        n_cini_module_0__majority7_module_43_n2), .ZN(
        n_cini_module_0__majority7_module_43_res) );
  DFF_X1 u_cini_module_0__reg_module_205__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority7_module_43_res), .CK(clock_3), .Q(
        n_cini_module_0__reg_module_205_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_103_U1 ( .A1(
        n_cini_module_0__reg_module_205_res), .A2(io_a_s2_d3), .ZN(
        n_cini_module_0__and_module_103_res) );
  DFF_X1 u_cini_module_0__reg_module_206__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_103_res), .CK(clock_3), .Q(
        n_cini_module_0__reg_module_206_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_170_U1 ( .A(
        n_cini_module_0__reg_module_204_res), .B(
        n_cini_module_0__reg_module_206_res), .Z(
        n_cini_module_0__xor_module_170_res) );
  XOR2_X1 u_cini_module_0__xor_module_171_U1 ( .A(
        n_cini_module_0__xor_module_169_res), .B(
        n_cini_module_0__xor_module_170_res), .Z(
        n_cini_module_0__xor_module_171_res) );
  DFF_X1 u_cini_module_0__reg_module_207__hpc_correct_b_s0_d0_reg ( .D(
        p_rand_5), .CK(clock_3), .Q(n_cini_module_0__reg_module_207_res), 
        .QN() );
  INV_X1 u_cini_module_0__not_module_45_U1 ( .A(io_a_s2_d3), .ZN(
        n_cini_module_0__not_module_45_res) );
  AND2_X1 u_cini_module_0__and_module_104_U1 ( .A1(
        n_cini_module_0__not_module_45_res), .A2(
        n_cini_module_0__reg_module_207_res), .ZN(
        n_cini_module_0__and_module_104_res) );
  DFF_X1 u_cini_module_0__reg_module_208__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_104_res), .CK(clock_3), .Q(
        n_cini_module_0__reg_module_208_res), .QN() );
  NAND2_X1 u_cini_module_0__majority7_module_44_U18 ( .A1(
        n_cini_module_0__xor_module_45_res), .A2(
        n_cini_module_0__xor_module_57_res), .ZN(
        n_cini_module_0__majority7_module_44_n16) );
  XOR2_X1 u_cini_module_0__majority7_module_44_U17 ( .A(
        n_cini_module_0__xor_module_45_res), .B(
        n_cini_module_0__xor_module_57_res), .Z(
        n_cini_module_0__majority7_module_44_n10) );
  NAND2_X1 u_cini_module_0__majority7_module_44_U16 ( .A1(
        n_cini_module_0__xor_module_69_res), .A2(
        n_cini_module_0__majority7_module_44_n10), .ZN(
        n_cini_module_0__majority7_module_44_n17) );
  NAND2_X1 u_cini_module_0__majority7_module_44_U15 ( .A1(
        n_cini_module_0__majority7_module_44_n16), .A2(
        n_cini_module_0__majority7_module_44_n17), .ZN(
        n_cini_module_0__majority7_module_44_n13) );
  NAND2_X1 u_cini_module_0__majority7_module_44_U14 ( .A1(
        n_cini_module_0__xor_module_9_res), .A2(
        n_cini_module_0__xor_module_21_res), .ZN(
        n_cini_module_0__majority7_module_44_n14) );
  XOR2_X1 u_cini_module_0__majority7_module_44_U13 ( .A(
        n_cini_module_0__xor_module_9_res), .B(
        n_cini_module_0__xor_module_21_res), .Z(
        n_cini_module_0__majority7_module_44_n11) );
  NAND2_X1 u_cini_module_0__majority7_module_44_U12 ( .A1(
        n_cini_module_0__xor_module_33_res), .A2(
        n_cini_module_0__majority7_module_44_n11), .ZN(
        n_cini_module_0__majority7_module_44_n15) );
  NAND2_X1 u_cini_module_0__majority7_module_44_U11 ( .A1(
        n_cini_module_0__majority7_module_44_n14), .A2(
        n_cini_module_0__majority7_module_44_n15), .ZN(
        n_cini_module_0__majority7_module_44_n12) );
  NAND2_X1 u_cini_module_0__majority7_module_44_U10 ( .A1(
        n_cini_module_0__majority7_module_44_n13), .A2(
        n_cini_module_0__majority7_module_44_n12), .ZN(
        n_cini_module_0__majority7_module_44_n1) );
  OR2_X1 u_cini_module_0__majority7_module_44_U9 ( .A1(
        n_cini_module_0__majority7_module_44_n12), .A2(
        n_cini_module_0__majority7_module_44_n13), .ZN(
        n_cini_module_0__majority7_module_44_n3) );
  XOR2_X1 u_cini_module_0__majority7_module_44_U8 ( .A(
        n_cini_module_0__xor_module_33_res), .B(
        n_cini_module_0__majority7_module_44_n11), .Z(
        n_cini_module_0__majority7_module_44_n9) );
  NAND2_X1 u_cini_module_0__majority7_module_44_U7 ( .A1(
        n_cini_module_0__xor_module_81_res), .A2(
        n_cini_module_0__majority7_module_44_n9), .ZN(
        n_cini_module_0__majority7_module_44_n5) );
  XOR2_X1 u_cini_module_0__majority7_module_44_U6 ( .A(
        n_cini_module_0__xor_module_69_res), .B(
        n_cini_module_0__majority7_module_44_n10), .Z(
        n_cini_module_0__majority7_module_44_n7) );
  OR2_X1 u_cini_module_0__majority7_module_44_U5 ( .A1(
        n_cini_module_0__majority7_module_44_n9), .A2(
        n_cini_module_0__xor_module_81_res), .ZN(
        n_cini_module_0__majority7_module_44_n8) );
  NAND2_X1 u_cini_module_0__majority7_module_44_U4 ( .A1(
        n_cini_module_0__majority7_module_44_n7), .A2(
        n_cini_module_0__majority7_module_44_n8), .ZN(
        n_cini_module_0__majority7_module_44_n6) );
  NAND2_X1 u_cini_module_0__majority7_module_44_U3 ( .A1(
        n_cini_module_0__majority7_module_44_n5), .A2(
        n_cini_module_0__majority7_module_44_n6), .ZN(
        n_cini_module_0__majority7_module_44_n4) );
  NAND2_X1 u_cini_module_0__majority7_module_44_U2 ( .A1(
        n_cini_module_0__majority7_module_44_n3), .A2(
        n_cini_module_0__majority7_module_44_n4), .ZN(
        n_cini_module_0__majority7_module_44_n2) );
  NAND2_X1 u_cini_module_0__majority7_module_44_U1 ( .A1(
        n_cini_module_0__majority7_module_44_n1), .A2(
        n_cini_module_0__majority7_module_44_n2), .ZN(
        n_cini_module_0__majority7_module_44_res) );
  DFF_X1 u_cini_module_0__reg_module_209__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority7_module_44_res), .CK(clock_3), .Q(
        n_cini_module_0__reg_module_209_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_105_U1 ( .A1(
        n_cini_module_0__reg_module_209_res), .A2(io_a_s2_d3), .ZN(
        n_cini_module_0__and_module_105_res) );
  DFF_X1 u_cini_module_0__reg_module_210__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_105_res), .CK(clock_3), .Q(
        n_cini_module_0__reg_module_210_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_172_U1 ( .A(
        n_cini_module_0__reg_module_208_res), .B(
        n_cini_module_0__reg_module_210_res), .Z(
        n_cini_module_0__xor_module_172_res) );
  XOR2_X1 u_cini_module_0__xor_module_173_U1 ( .A(
        n_cini_module_0__xor_module_171_res), .B(
        n_cini_module_0__xor_module_172_res), .Z(
        n_cini_module_0__xor_module_173_res) );
  XOR2_X1 u_cini_module_0__xor_module_174_U1 ( .A(
        n_cini_module_0__xor_module_173_res), .B(
        n_cini_module_0__reg_module_198_res), .Z(io_c_s2_d3) );
  DFF_X1 u_cini_module_0__reg_module_211__hpc_correct_b_s0_d0_reg ( .D(
        io_b_s3_d3), .CK(clock_3), .Q(n_cini_module_0__reg_module_211_res), 
        .QN() );
  AND2_X1 u_cini_module_0__and_module_106_U1 ( .A1(
        n_cini_module_0__reg_module_211_res), .A2(io_a_s3_d3), .ZN(
        n_cini_module_0__and_module_106_res) );
  DFF_X1 u_cini_module_0__reg_module_212__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_106_res), .CK(clock_3), .Q(
        n_cini_module_0__reg_module_212_res), .QN() );
  DFF_X1 u_cini_module_0__reg_module_213__hpc_correct_b_s0_d0_reg ( .D(
        p_rand_2), .CK(clock_3), .Q(n_cini_module_0__reg_module_213_res), 
        .QN() );
  INV_X1 u_cini_module_0__not_module_46_U1 ( .A(io_a_s3_d3), .ZN(
        n_cini_module_0__not_module_46_res) );
  AND2_X1 u_cini_module_0__and_module_107_U1 ( .A1(
        n_cini_module_0__not_module_46_res), .A2(
        n_cini_module_0__reg_module_213_res), .ZN(
        n_cini_module_0__and_module_107_res) );
  DFF_X1 u_cini_module_0__reg_module_214__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_107_res), .CK(clock_3), .Q(
        n_cini_module_0__reg_module_214_res), .QN() );
  NAND2_X1 u_cini_module_0__majority7_module_45_U18 ( .A1(
        n_cini_module_0__xor_module_46_res), .A2(
        n_cini_module_0__xor_module_58_res), .ZN(
        n_cini_module_0__majority7_module_45_n16) );
  XOR2_X1 u_cini_module_0__majority7_module_45_U17 ( .A(
        n_cini_module_0__xor_module_46_res), .B(
        n_cini_module_0__xor_module_58_res), .Z(
        n_cini_module_0__majority7_module_45_n10) );
  NAND2_X1 u_cini_module_0__majority7_module_45_U16 ( .A1(
        n_cini_module_0__xor_module_70_res), .A2(
        n_cini_module_0__majority7_module_45_n10), .ZN(
        n_cini_module_0__majority7_module_45_n17) );
  NAND2_X1 u_cini_module_0__majority7_module_45_U15 ( .A1(
        n_cini_module_0__majority7_module_45_n16), .A2(
        n_cini_module_0__majority7_module_45_n17), .ZN(
        n_cini_module_0__majority7_module_45_n13) );
  NAND2_X1 u_cini_module_0__majority7_module_45_U14 ( .A1(
        n_cini_module_0__xor_module_10_res), .A2(
        n_cini_module_0__xor_module_22_res), .ZN(
        n_cini_module_0__majority7_module_45_n14) );
  XOR2_X1 u_cini_module_0__majority7_module_45_U13 ( .A(
        n_cini_module_0__xor_module_10_res), .B(
        n_cini_module_0__xor_module_22_res), .Z(
        n_cini_module_0__majority7_module_45_n11) );
  NAND2_X1 u_cini_module_0__majority7_module_45_U12 ( .A1(
        n_cini_module_0__xor_module_34_res), .A2(
        n_cini_module_0__majority7_module_45_n11), .ZN(
        n_cini_module_0__majority7_module_45_n15) );
  NAND2_X1 u_cini_module_0__majority7_module_45_U11 ( .A1(
        n_cini_module_0__majority7_module_45_n14), .A2(
        n_cini_module_0__majority7_module_45_n15), .ZN(
        n_cini_module_0__majority7_module_45_n12) );
  NAND2_X1 u_cini_module_0__majority7_module_45_U10 ( .A1(
        n_cini_module_0__majority7_module_45_n13), .A2(
        n_cini_module_0__majority7_module_45_n12), .ZN(
        n_cini_module_0__majority7_module_45_n1) );
  OR2_X1 u_cini_module_0__majority7_module_45_U9 ( .A1(
        n_cini_module_0__majority7_module_45_n12), .A2(
        n_cini_module_0__majority7_module_45_n13), .ZN(
        n_cini_module_0__majority7_module_45_n3) );
  XOR2_X1 u_cini_module_0__majority7_module_45_U8 ( .A(
        n_cini_module_0__xor_module_34_res), .B(
        n_cini_module_0__majority7_module_45_n11), .Z(
        n_cini_module_0__majority7_module_45_n9) );
  NAND2_X1 u_cini_module_0__majority7_module_45_U7 ( .A1(
        n_cini_module_0__xor_module_82_res), .A2(
        n_cini_module_0__majority7_module_45_n9), .ZN(
        n_cini_module_0__majority7_module_45_n5) );
  XOR2_X1 u_cini_module_0__majority7_module_45_U6 ( .A(
        n_cini_module_0__xor_module_70_res), .B(
        n_cini_module_0__majority7_module_45_n10), .Z(
        n_cini_module_0__majority7_module_45_n7) );
  OR2_X1 u_cini_module_0__majority7_module_45_U5 ( .A1(
        n_cini_module_0__majority7_module_45_n9), .A2(
        n_cini_module_0__xor_module_82_res), .ZN(
        n_cini_module_0__majority7_module_45_n8) );
  NAND2_X1 u_cini_module_0__majority7_module_45_U4 ( .A1(
        n_cini_module_0__majority7_module_45_n7), .A2(
        n_cini_module_0__majority7_module_45_n8), .ZN(
        n_cini_module_0__majority7_module_45_n6) );
  NAND2_X1 u_cini_module_0__majority7_module_45_U3 ( .A1(
        n_cini_module_0__majority7_module_45_n5), .A2(
        n_cini_module_0__majority7_module_45_n6), .ZN(
        n_cini_module_0__majority7_module_45_n4) );
  NAND2_X1 u_cini_module_0__majority7_module_45_U2 ( .A1(
        n_cini_module_0__majority7_module_45_n3), .A2(
        n_cini_module_0__majority7_module_45_n4), .ZN(
        n_cini_module_0__majority7_module_45_n2) );
  NAND2_X1 u_cini_module_0__majority7_module_45_U1 ( .A1(
        n_cini_module_0__majority7_module_45_n1), .A2(
        n_cini_module_0__majority7_module_45_n2), .ZN(
        n_cini_module_0__majority7_module_45_res) );
  DFF_X1 u_cini_module_0__reg_module_215__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority7_module_45_res), .CK(clock_3), .Q(
        n_cini_module_0__reg_module_215_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_108_U1 ( .A1(
        n_cini_module_0__reg_module_215_res), .A2(io_a_s3_d3), .ZN(
        n_cini_module_0__and_module_108_res) );
  DFF_X1 u_cini_module_0__reg_module_216__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_108_res), .CK(clock_3), .Q(
        n_cini_module_0__reg_module_216_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_175_U1 ( .A(
        n_cini_module_0__reg_module_214_res), .B(
        n_cini_module_0__reg_module_216_res), .Z(
        n_cini_module_0__xor_module_175_res) );
  DFF_X1 u_cini_module_0__reg_module_217__hpc_correct_b_s0_d0_reg ( .D(
        p_rand_4), .CK(clock_3), .Q(n_cini_module_0__reg_module_217_res), 
        .QN() );
  INV_X1 u_cini_module_0__not_module_47_U1 ( .A(io_a_s3_d3), .ZN(
        n_cini_module_0__not_module_47_res) );
  AND2_X1 u_cini_module_0__and_module_109_U1 ( .A1(
        n_cini_module_0__not_module_47_res), .A2(
        n_cini_module_0__reg_module_217_res), .ZN(
        n_cini_module_0__and_module_109_res) );
  DFF_X1 u_cini_module_0__reg_module_218__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_109_res), .CK(clock_3), .Q(
        n_cini_module_0__reg_module_218_res), .QN() );
  NAND2_X1 u_cini_module_0__majority7_module_46_U18 ( .A1(
        n_cini_module_0__xor_module_47_res), .A2(
        n_cini_module_0__xor_module_59_res), .ZN(
        n_cini_module_0__majority7_module_46_n16) );
  XOR2_X1 u_cini_module_0__majority7_module_46_U17 ( .A(
        n_cini_module_0__xor_module_47_res), .B(
        n_cini_module_0__xor_module_59_res), .Z(
        n_cini_module_0__majority7_module_46_n10) );
  NAND2_X1 u_cini_module_0__majority7_module_46_U16 ( .A1(
        n_cini_module_0__xor_module_71_res), .A2(
        n_cini_module_0__majority7_module_46_n10), .ZN(
        n_cini_module_0__majority7_module_46_n17) );
  NAND2_X1 u_cini_module_0__majority7_module_46_U15 ( .A1(
        n_cini_module_0__majority7_module_46_n16), .A2(
        n_cini_module_0__majority7_module_46_n17), .ZN(
        n_cini_module_0__majority7_module_46_n13) );
  NAND2_X1 u_cini_module_0__majority7_module_46_U14 ( .A1(
        n_cini_module_0__xor_module_11_res), .A2(
        n_cini_module_0__xor_module_23_res), .ZN(
        n_cini_module_0__majority7_module_46_n14) );
  XOR2_X1 u_cini_module_0__majority7_module_46_U13 ( .A(
        n_cini_module_0__xor_module_11_res), .B(
        n_cini_module_0__xor_module_23_res), .Z(
        n_cini_module_0__majority7_module_46_n11) );
  NAND2_X1 u_cini_module_0__majority7_module_46_U12 ( .A1(
        n_cini_module_0__xor_module_35_res), .A2(
        n_cini_module_0__majority7_module_46_n11), .ZN(
        n_cini_module_0__majority7_module_46_n15) );
  NAND2_X1 u_cini_module_0__majority7_module_46_U11 ( .A1(
        n_cini_module_0__majority7_module_46_n14), .A2(
        n_cini_module_0__majority7_module_46_n15), .ZN(
        n_cini_module_0__majority7_module_46_n12) );
  NAND2_X1 u_cini_module_0__majority7_module_46_U10 ( .A1(
        n_cini_module_0__majority7_module_46_n13), .A2(
        n_cini_module_0__majority7_module_46_n12), .ZN(
        n_cini_module_0__majority7_module_46_n1) );
  OR2_X1 u_cini_module_0__majority7_module_46_U9 ( .A1(
        n_cini_module_0__majority7_module_46_n12), .A2(
        n_cini_module_0__majority7_module_46_n13), .ZN(
        n_cini_module_0__majority7_module_46_n3) );
  XOR2_X1 u_cini_module_0__majority7_module_46_U8 ( .A(
        n_cini_module_0__xor_module_35_res), .B(
        n_cini_module_0__majority7_module_46_n11), .Z(
        n_cini_module_0__majority7_module_46_n9) );
  NAND2_X1 u_cini_module_0__majority7_module_46_U7 ( .A1(
        n_cini_module_0__xor_module_83_res), .A2(
        n_cini_module_0__majority7_module_46_n9), .ZN(
        n_cini_module_0__majority7_module_46_n5) );
  XOR2_X1 u_cini_module_0__majority7_module_46_U6 ( .A(
        n_cini_module_0__xor_module_71_res), .B(
        n_cini_module_0__majority7_module_46_n10), .Z(
        n_cini_module_0__majority7_module_46_n7) );
  OR2_X1 u_cini_module_0__majority7_module_46_U5 ( .A1(
        n_cini_module_0__majority7_module_46_n9), .A2(
        n_cini_module_0__xor_module_83_res), .ZN(
        n_cini_module_0__majority7_module_46_n8) );
  NAND2_X1 u_cini_module_0__majority7_module_46_U4 ( .A1(
        n_cini_module_0__majority7_module_46_n7), .A2(
        n_cini_module_0__majority7_module_46_n8), .ZN(
        n_cini_module_0__majority7_module_46_n6) );
  NAND2_X1 u_cini_module_0__majority7_module_46_U3 ( .A1(
        n_cini_module_0__majority7_module_46_n5), .A2(
        n_cini_module_0__majority7_module_46_n6), .ZN(
        n_cini_module_0__majority7_module_46_n4) );
  NAND2_X1 u_cini_module_0__majority7_module_46_U2 ( .A1(
        n_cini_module_0__majority7_module_46_n3), .A2(
        n_cini_module_0__majority7_module_46_n4), .ZN(
        n_cini_module_0__majority7_module_46_n2) );
  NAND2_X1 u_cini_module_0__majority7_module_46_U1 ( .A1(
        n_cini_module_0__majority7_module_46_n1), .A2(
        n_cini_module_0__majority7_module_46_n2), .ZN(
        n_cini_module_0__majority7_module_46_res) );
  DFF_X1 u_cini_module_0__reg_module_219__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority7_module_46_res), .CK(clock_3), .Q(
        n_cini_module_0__reg_module_219_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_110_U1 ( .A1(
        n_cini_module_0__reg_module_219_res), .A2(io_a_s3_d3), .ZN(
        n_cini_module_0__and_module_110_res) );
  DFF_X1 u_cini_module_0__reg_module_220__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_110_res), .CK(clock_3), .Q(
        n_cini_module_0__reg_module_220_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_176_U1 ( .A(
        n_cini_module_0__reg_module_218_res), .B(
        n_cini_module_0__reg_module_220_res), .Z(
        n_cini_module_0__xor_module_176_res) );
  XOR2_X1 u_cini_module_0__xor_module_177_U1 ( .A(
        n_cini_module_0__xor_module_175_res), .B(
        n_cini_module_0__xor_module_176_res), .Z(
        n_cini_module_0__xor_module_177_res) );
  DFF_X1 u_cini_module_0__reg_module_221__hpc_correct_b_s0_d0_reg ( .D(
        p_rand_5), .CK(clock_3), .Q(n_cini_module_0__reg_module_221_res), 
        .QN() );
  INV_X1 u_cini_module_0__not_module_48_U1 ( .A(io_a_s3_d3), .ZN(
        n_cini_module_0__not_module_48_res) );
  AND2_X1 u_cini_module_0__and_module_111_U1 ( .A1(
        n_cini_module_0__not_module_48_res), .A2(
        n_cini_module_0__reg_module_221_res), .ZN(
        n_cini_module_0__and_module_111_res) );
  DFF_X1 u_cini_module_0__reg_module_222__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_111_res), .CK(clock_3), .Q(
        n_cini_module_0__reg_module_222_res), .QN() );
  NAND2_X1 u_cini_module_0__majority7_module_47_U18 ( .A1(
        n_cini_module_0__xor_module_48_res), .A2(
        n_cini_module_0__xor_module_60_res), .ZN(
        n_cini_module_0__majority7_module_47_n16) );
  XOR2_X1 u_cini_module_0__majority7_module_47_U17 ( .A(
        n_cini_module_0__xor_module_48_res), .B(
        n_cini_module_0__xor_module_60_res), .Z(
        n_cini_module_0__majority7_module_47_n10) );
  NAND2_X1 u_cini_module_0__majority7_module_47_U16 ( .A1(
        n_cini_module_0__xor_module_72_res), .A2(
        n_cini_module_0__majority7_module_47_n10), .ZN(
        n_cini_module_0__majority7_module_47_n17) );
  NAND2_X1 u_cini_module_0__majority7_module_47_U15 ( .A1(
        n_cini_module_0__majority7_module_47_n16), .A2(
        n_cini_module_0__majority7_module_47_n17), .ZN(
        n_cini_module_0__majority7_module_47_n13) );
  NAND2_X1 u_cini_module_0__majority7_module_47_U14 ( .A1(
        n_cini_module_0__xor_module_12_res), .A2(
        n_cini_module_0__xor_module_24_res), .ZN(
        n_cini_module_0__majority7_module_47_n14) );
  XOR2_X1 u_cini_module_0__majority7_module_47_U13 ( .A(
        n_cini_module_0__xor_module_12_res), .B(
        n_cini_module_0__xor_module_24_res), .Z(
        n_cini_module_0__majority7_module_47_n11) );
  NAND2_X1 u_cini_module_0__majority7_module_47_U12 ( .A1(
        n_cini_module_0__xor_module_36_res), .A2(
        n_cini_module_0__majority7_module_47_n11), .ZN(
        n_cini_module_0__majority7_module_47_n15) );
  NAND2_X1 u_cini_module_0__majority7_module_47_U11 ( .A1(
        n_cini_module_0__majority7_module_47_n14), .A2(
        n_cini_module_0__majority7_module_47_n15), .ZN(
        n_cini_module_0__majority7_module_47_n12) );
  NAND2_X1 u_cini_module_0__majority7_module_47_U10 ( .A1(
        n_cini_module_0__majority7_module_47_n13), .A2(
        n_cini_module_0__majority7_module_47_n12), .ZN(
        n_cini_module_0__majority7_module_47_n1) );
  OR2_X1 u_cini_module_0__majority7_module_47_U9 ( .A1(
        n_cini_module_0__majority7_module_47_n12), .A2(
        n_cini_module_0__majority7_module_47_n13), .ZN(
        n_cini_module_0__majority7_module_47_n3) );
  XOR2_X1 u_cini_module_0__majority7_module_47_U8 ( .A(
        n_cini_module_0__xor_module_36_res), .B(
        n_cini_module_0__majority7_module_47_n11), .Z(
        n_cini_module_0__majority7_module_47_n9) );
  NAND2_X1 u_cini_module_0__majority7_module_47_U7 ( .A1(
        n_cini_module_0__xor_module_84_res), .A2(
        n_cini_module_0__majority7_module_47_n9), .ZN(
        n_cini_module_0__majority7_module_47_n5) );
  XOR2_X1 u_cini_module_0__majority7_module_47_U6 ( .A(
        n_cini_module_0__xor_module_72_res), .B(
        n_cini_module_0__majority7_module_47_n10), .Z(
        n_cini_module_0__majority7_module_47_n7) );
  OR2_X1 u_cini_module_0__majority7_module_47_U5 ( .A1(
        n_cini_module_0__majority7_module_47_n9), .A2(
        n_cini_module_0__xor_module_84_res), .ZN(
        n_cini_module_0__majority7_module_47_n8) );
  NAND2_X1 u_cini_module_0__majority7_module_47_U4 ( .A1(
        n_cini_module_0__majority7_module_47_n7), .A2(
        n_cini_module_0__majority7_module_47_n8), .ZN(
        n_cini_module_0__majority7_module_47_n6) );
  NAND2_X1 u_cini_module_0__majority7_module_47_U3 ( .A1(
        n_cini_module_0__majority7_module_47_n5), .A2(
        n_cini_module_0__majority7_module_47_n6), .ZN(
        n_cini_module_0__majority7_module_47_n4) );
  NAND2_X1 u_cini_module_0__majority7_module_47_U2 ( .A1(
        n_cini_module_0__majority7_module_47_n3), .A2(
        n_cini_module_0__majority7_module_47_n4), .ZN(
        n_cini_module_0__majority7_module_47_n2) );
  NAND2_X1 u_cini_module_0__majority7_module_47_U1 ( .A1(
        n_cini_module_0__majority7_module_47_n1), .A2(
        n_cini_module_0__majority7_module_47_n2), .ZN(
        n_cini_module_0__majority7_module_47_res) );
  DFF_X1 u_cini_module_0__reg_module_223__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority7_module_47_res), .CK(clock_3), .Q(
        n_cini_module_0__reg_module_223_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_112_U1 ( .A1(
        n_cini_module_0__reg_module_223_res), .A2(io_a_s3_d3), .ZN(
        n_cini_module_0__and_module_112_res) );
  DFF_X1 u_cini_module_0__reg_module_224__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_112_res), .CK(clock_3), .Q(
        n_cini_module_0__reg_module_224_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_178_U1 ( .A(
        n_cini_module_0__reg_module_222_res), .B(
        n_cini_module_0__reg_module_224_res), .Z(
        n_cini_module_0__xor_module_178_res) );
  XOR2_X1 u_cini_module_0__xor_module_179_U1 ( .A(
        n_cini_module_0__xor_module_177_res), .B(
        n_cini_module_0__xor_module_178_res), .Z(
        n_cini_module_0__xor_module_179_res) );
  XOR2_X1 u_cini_module_0__xor_module_180_U1 ( .A(
        n_cini_module_0__xor_module_179_res), .B(
        n_cini_module_0__reg_module_212_res), .Z(io_c_s3_d3) );
  DFF_X1 u_cini_module_0__reg_module_225__hpc_correct_b_s0_d0_reg ( .D(
        io_b_s0_d4), .CK(clock_4), .Q(n_cini_module_0__reg_module_225_res), 
        .QN() );
  AND2_X1 u_cini_module_0__and_module_113_U1 ( .A1(
        n_cini_module_0__reg_module_225_res), .A2(io_a_s0_d4), .ZN(
        n_cini_module_0__and_module_113_res) );
  DFF_X1 u_cini_module_0__reg_module_226__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_113_res), .CK(clock_4), .Q(
        n_cini_module_0__reg_module_226_res), .QN() );
  DFF_X1 u_cini_module_0__reg_module_227__hpc_correct_b_s0_d0_reg ( .D(
        p_rand_0), .CK(clock_4), .Q(n_cini_module_0__reg_module_227_res), 
        .QN() );
  INV_X1 u_cini_module_0__not_module_49_U1 ( .A(io_a_s0_d4), .ZN(
        n_cini_module_0__not_module_49_res) );
  AND2_X1 u_cini_module_0__and_module_114_U1 ( .A1(
        n_cini_module_0__not_module_49_res), .A2(
        n_cini_module_0__reg_module_227_res), .ZN(
        n_cini_module_0__and_module_114_res) );
  DFF_X1 u_cini_module_0__reg_module_228__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_114_res), .CK(clock_4), .Q(
        n_cini_module_0__reg_module_228_res), .QN() );
  NAND2_X1 u_cini_module_0__majority7_module_48_U18 ( .A1(
        n_cini_module_0__xor_module_37_res), .A2(
        n_cini_module_0__xor_module_49_res), .ZN(
        n_cini_module_0__majority7_module_48_n16) );
  XOR2_X1 u_cini_module_0__majority7_module_48_U17 ( .A(
        n_cini_module_0__xor_module_37_res), .B(
        n_cini_module_0__xor_module_49_res), .Z(
        n_cini_module_0__majority7_module_48_n10) );
  NAND2_X1 u_cini_module_0__majority7_module_48_U16 ( .A1(
        n_cini_module_0__xor_module_61_res), .A2(
        n_cini_module_0__majority7_module_48_n10), .ZN(
        n_cini_module_0__majority7_module_48_n17) );
  NAND2_X1 u_cini_module_0__majority7_module_48_U15 ( .A1(
        n_cini_module_0__majority7_module_48_n16), .A2(
        n_cini_module_0__majority7_module_48_n17), .ZN(
        n_cini_module_0__majority7_module_48_n13) );
  NAND2_X1 u_cini_module_0__majority7_module_48_U14 ( .A1(
        n_cini_module_0__xor_module_1_res), .A2(
        n_cini_module_0__xor_module_13_res), .ZN(
        n_cini_module_0__majority7_module_48_n14) );
  XOR2_X1 u_cini_module_0__majority7_module_48_U13 ( .A(
        n_cini_module_0__xor_module_1_res), .B(
        n_cini_module_0__xor_module_13_res), .Z(
        n_cini_module_0__majority7_module_48_n11) );
  NAND2_X1 u_cini_module_0__majority7_module_48_U12 ( .A1(
        n_cini_module_0__xor_module_25_res), .A2(
        n_cini_module_0__majority7_module_48_n11), .ZN(
        n_cini_module_0__majority7_module_48_n15) );
  NAND2_X1 u_cini_module_0__majority7_module_48_U11 ( .A1(
        n_cini_module_0__majority7_module_48_n14), .A2(
        n_cini_module_0__majority7_module_48_n15), .ZN(
        n_cini_module_0__majority7_module_48_n12) );
  NAND2_X1 u_cini_module_0__majority7_module_48_U10 ( .A1(
        n_cini_module_0__majority7_module_48_n13), .A2(
        n_cini_module_0__majority7_module_48_n12), .ZN(
        n_cini_module_0__majority7_module_48_n1) );
  OR2_X1 u_cini_module_0__majority7_module_48_U9 ( .A1(
        n_cini_module_0__majority7_module_48_n12), .A2(
        n_cini_module_0__majority7_module_48_n13), .ZN(
        n_cini_module_0__majority7_module_48_n3) );
  XOR2_X1 u_cini_module_0__majority7_module_48_U8 ( .A(
        n_cini_module_0__xor_module_25_res), .B(
        n_cini_module_0__majority7_module_48_n11), .Z(
        n_cini_module_0__majority7_module_48_n9) );
  NAND2_X1 u_cini_module_0__majority7_module_48_U7 ( .A1(
        n_cini_module_0__xor_module_73_res), .A2(
        n_cini_module_0__majority7_module_48_n9), .ZN(
        n_cini_module_0__majority7_module_48_n5) );
  XOR2_X1 u_cini_module_0__majority7_module_48_U6 ( .A(
        n_cini_module_0__xor_module_61_res), .B(
        n_cini_module_0__majority7_module_48_n10), .Z(
        n_cini_module_0__majority7_module_48_n7) );
  OR2_X1 u_cini_module_0__majority7_module_48_U5 ( .A1(
        n_cini_module_0__majority7_module_48_n9), .A2(
        n_cini_module_0__xor_module_73_res), .ZN(
        n_cini_module_0__majority7_module_48_n8) );
  NAND2_X1 u_cini_module_0__majority7_module_48_U4 ( .A1(
        n_cini_module_0__majority7_module_48_n7), .A2(
        n_cini_module_0__majority7_module_48_n8), .ZN(
        n_cini_module_0__majority7_module_48_n6) );
  NAND2_X1 u_cini_module_0__majority7_module_48_U3 ( .A1(
        n_cini_module_0__majority7_module_48_n5), .A2(
        n_cini_module_0__majority7_module_48_n6), .ZN(
        n_cini_module_0__majority7_module_48_n4) );
  NAND2_X1 u_cini_module_0__majority7_module_48_U2 ( .A1(
        n_cini_module_0__majority7_module_48_n3), .A2(
        n_cini_module_0__majority7_module_48_n4), .ZN(
        n_cini_module_0__majority7_module_48_n2) );
  NAND2_X1 u_cini_module_0__majority7_module_48_U1 ( .A1(
        n_cini_module_0__majority7_module_48_n1), .A2(
        n_cini_module_0__majority7_module_48_n2), .ZN(
        n_cini_module_0__majority7_module_48_res) );
  DFF_X1 u_cini_module_0__reg_module_229__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority7_module_48_res), .CK(clock_4), .Q(
        n_cini_module_0__reg_module_229_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_115_U1 ( .A1(
        n_cini_module_0__reg_module_229_res), .A2(io_a_s0_d4), .ZN(
        n_cini_module_0__and_module_115_res) );
  DFF_X1 u_cini_module_0__reg_module_230__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_115_res), .CK(clock_4), .Q(
        n_cini_module_0__reg_module_230_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_181_U1 ( .A(
        n_cini_module_0__reg_module_228_res), .B(
        n_cini_module_0__reg_module_230_res), .Z(
        n_cini_module_0__xor_module_181_res) );
  DFF_X1 u_cini_module_0__reg_module_231__hpc_correct_b_s0_d0_reg ( .D(
        p_rand_1), .CK(clock_4), .Q(n_cini_module_0__reg_module_231_res), 
        .QN() );
  INV_X1 u_cini_module_0__not_module_50_U1 ( .A(io_a_s0_d4), .ZN(
        n_cini_module_0__not_module_50_res) );
  AND2_X1 u_cini_module_0__and_module_116_U1 ( .A1(
        n_cini_module_0__not_module_50_res), .A2(
        n_cini_module_0__reg_module_231_res), .ZN(
        n_cini_module_0__and_module_116_res) );
  DFF_X1 u_cini_module_0__reg_module_232__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_116_res), .CK(clock_4), .Q(
        n_cini_module_0__reg_module_232_res), .QN() );
  NAND2_X1 u_cini_module_0__majority7_module_49_U18 ( .A1(
        n_cini_module_0__xor_module_38_res), .A2(
        n_cini_module_0__xor_module_50_res), .ZN(
        n_cini_module_0__majority7_module_49_n16) );
  XOR2_X1 u_cini_module_0__majority7_module_49_U17 ( .A(
        n_cini_module_0__xor_module_38_res), .B(
        n_cini_module_0__xor_module_50_res), .Z(
        n_cini_module_0__majority7_module_49_n10) );
  NAND2_X1 u_cini_module_0__majority7_module_49_U16 ( .A1(
        n_cini_module_0__xor_module_62_res), .A2(
        n_cini_module_0__majority7_module_49_n10), .ZN(
        n_cini_module_0__majority7_module_49_n17) );
  NAND2_X1 u_cini_module_0__majority7_module_49_U15 ( .A1(
        n_cini_module_0__majority7_module_49_n16), .A2(
        n_cini_module_0__majority7_module_49_n17), .ZN(
        n_cini_module_0__majority7_module_49_n13) );
  NAND2_X1 u_cini_module_0__majority7_module_49_U14 ( .A1(
        n_cini_module_0__xor_module_2_res), .A2(
        n_cini_module_0__xor_module_14_res), .ZN(
        n_cini_module_0__majority7_module_49_n14) );
  XOR2_X1 u_cini_module_0__majority7_module_49_U13 ( .A(
        n_cini_module_0__xor_module_2_res), .B(
        n_cini_module_0__xor_module_14_res), .Z(
        n_cini_module_0__majority7_module_49_n11) );
  NAND2_X1 u_cini_module_0__majority7_module_49_U12 ( .A1(
        n_cini_module_0__xor_module_26_res), .A2(
        n_cini_module_0__majority7_module_49_n11), .ZN(
        n_cini_module_0__majority7_module_49_n15) );
  NAND2_X1 u_cini_module_0__majority7_module_49_U11 ( .A1(
        n_cini_module_0__majority7_module_49_n14), .A2(
        n_cini_module_0__majority7_module_49_n15), .ZN(
        n_cini_module_0__majority7_module_49_n12) );
  NAND2_X1 u_cini_module_0__majority7_module_49_U10 ( .A1(
        n_cini_module_0__majority7_module_49_n13), .A2(
        n_cini_module_0__majority7_module_49_n12), .ZN(
        n_cini_module_0__majority7_module_49_n1) );
  OR2_X1 u_cini_module_0__majority7_module_49_U9 ( .A1(
        n_cini_module_0__majority7_module_49_n12), .A2(
        n_cini_module_0__majority7_module_49_n13), .ZN(
        n_cini_module_0__majority7_module_49_n3) );
  XOR2_X1 u_cini_module_0__majority7_module_49_U8 ( .A(
        n_cini_module_0__xor_module_26_res), .B(
        n_cini_module_0__majority7_module_49_n11), .Z(
        n_cini_module_0__majority7_module_49_n9) );
  NAND2_X1 u_cini_module_0__majority7_module_49_U7 ( .A1(
        n_cini_module_0__xor_module_74_res), .A2(
        n_cini_module_0__majority7_module_49_n9), .ZN(
        n_cini_module_0__majority7_module_49_n5) );
  XOR2_X1 u_cini_module_0__majority7_module_49_U6 ( .A(
        n_cini_module_0__xor_module_62_res), .B(
        n_cini_module_0__majority7_module_49_n10), .Z(
        n_cini_module_0__majority7_module_49_n7) );
  OR2_X1 u_cini_module_0__majority7_module_49_U5 ( .A1(
        n_cini_module_0__majority7_module_49_n9), .A2(
        n_cini_module_0__xor_module_74_res), .ZN(
        n_cini_module_0__majority7_module_49_n8) );
  NAND2_X1 u_cini_module_0__majority7_module_49_U4 ( .A1(
        n_cini_module_0__majority7_module_49_n7), .A2(
        n_cini_module_0__majority7_module_49_n8), .ZN(
        n_cini_module_0__majority7_module_49_n6) );
  NAND2_X1 u_cini_module_0__majority7_module_49_U3 ( .A1(
        n_cini_module_0__majority7_module_49_n5), .A2(
        n_cini_module_0__majority7_module_49_n6), .ZN(
        n_cini_module_0__majority7_module_49_n4) );
  NAND2_X1 u_cini_module_0__majority7_module_49_U2 ( .A1(
        n_cini_module_0__majority7_module_49_n3), .A2(
        n_cini_module_0__majority7_module_49_n4), .ZN(
        n_cini_module_0__majority7_module_49_n2) );
  NAND2_X1 u_cini_module_0__majority7_module_49_U1 ( .A1(
        n_cini_module_0__majority7_module_49_n1), .A2(
        n_cini_module_0__majority7_module_49_n2), .ZN(
        n_cini_module_0__majority7_module_49_res) );
  DFF_X1 u_cini_module_0__reg_module_233__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority7_module_49_res), .CK(clock_4), .Q(
        n_cini_module_0__reg_module_233_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_117_U1 ( .A1(
        n_cini_module_0__reg_module_233_res), .A2(io_a_s0_d4), .ZN(
        n_cini_module_0__and_module_117_res) );
  DFF_X1 u_cini_module_0__reg_module_234__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_117_res), .CK(clock_4), .Q(
        n_cini_module_0__reg_module_234_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_182_U1 ( .A(
        n_cini_module_0__reg_module_232_res), .B(
        n_cini_module_0__reg_module_234_res), .Z(
        n_cini_module_0__xor_module_182_res) );
  XOR2_X1 u_cini_module_0__xor_module_183_U1 ( .A(
        n_cini_module_0__xor_module_181_res), .B(
        n_cini_module_0__xor_module_182_res), .Z(
        n_cini_module_0__xor_module_183_res) );
  DFF_X1 u_cini_module_0__reg_module_235__hpc_correct_b_s0_d0_reg ( .D(
        p_rand_2), .CK(clock_4), .Q(n_cini_module_0__reg_module_235_res), 
        .QN() );
  INV_X1 u_cini_module_0__not_module_51_U1 ( .A(io_a_s0_d4), .ZN(
        n_cini_module_0__not_module_51_res) );
  AND2_X1 u_cini_module_0__and_module_118_U1 ( .A1(
        n_cini_module_0__not_module_51_res), .A2(
        n_cini_module_0__reg_module_235_res), .ZN(
        n_cini_module_0__and_module_118_res) );
  DFF_X1 u_cini_module_0__reg_module_236__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_118_res), .CK(clock_4), .Q(
        n_cini_module_0__reg_module_236_res), .QN() );
  NAND2_X1 u_cini_module_0__majority7_module_50_U18 ( .A1(
        n_cini_module_0__xor_module_39_res), .A2(
        n_cini_module_0__xor_module_51_res), .ZN(
        n_cini_module_0__majority7_module_50_n16) );
  XOR2_X1 u_cini_module_0__majority7_module_50_U17 ( .A(
        n_cini_module_0__xor_module_39_res), .B(
        n_cini_module_0__xor_module_51_res), .Z(
        n_cini_module_0__majority7_module_50_n10) );
  NAND2_X1 u_cini_module_0__majority7_module_50_U16 ( .A1(
        n_cini_module_0__xor_module_63_res), .A2(
        n_cini_module_0__majority7_module_50_n10), .ZN(
        n_cini_module_0__majority7_module_50_n17) );
  NAND2_X1 u_cini_module_0__majority7_module_50_U15 ( .A1(
        n_cini_module_0__majority7_module_50_n16), .A2(
        n_cini_module_0__majority7_module_50_n17), .ZN(
        n_cini_module_0__majority7_module_50_n13) );
  NAND2_X1 u_cini_module_0__majority7_module_50_U14 ( .A1(
        n_cini_module_0__xor_module_3_res), .A2(
        n_cini_module_0__xor_module_15_res), .ZN(
        n_cini_module_0__majority7_module_50_n14) );
  XOR2_X1 u_cini_module_0__majority7_module_50_U13 ( .A(
        n_cini_module_0__xor_module_3_res), .B(
        n_cini_module_0__xor_module_15_res), .Z(
        n_cini_module_0__majority7_module_50_n11) );
  NAND2_X1 u_cini_module_0__majority7_module_50_U12 ( .A1(
        n_cini_module_0__xor_module_27_res), .A2(
        n_cini_module_0__majority7_module_50_n11), .ZN(
        n_cini_module_0__majority7_module_50_n15) );
  NAND2_X1 u_cini_module_0__majority7_module_50_U11 ( .A1(
        n_cini_module_0__majority7_module_50_n14), .A2(
        n_cini_module_0__majority7_module_50_n15), .ZN(
        n_cini_module_0__majority7_module_50_n12) );
  NAND2_X1 u_cini_module_0__majority7_module_50_U10 ( .A1(
        n_cini_module_0__majority7_module_50_n13), .A2(
        n_cini_module_0__majority7_module_50_n12), .ZN(
        n_cini_module_0__majority7_module_50_n1) );
  OR2_X1 u_cini_module_0__majority7_module_50_U9 ( .A1(
        n_cini_module_0__majority7_module_50_n12), .A2(
        n_cini_module_0__majority7_module_50_n13), .ZN(
        n_cini_module_0__majority7_module_50_n3) );
  XOR2_X1 u_cini_module_0__majority7_module_50_U8 ( .A(
        n_cini_module_0__xor_module_27_res), .B(
        n_cini_module_0__majority7_module_50_n11), .Z(
        n_cini_module_0__majority7_module_50_n9) );
  NAND2_X1 u_cini_module_0__majority7_module_50_U7 ( .A1(
        n_cini_module_0__xor_module_75_res), .A2(
        n_cini_module_0__majority7_module_50_n9), .ZN(
        n_cini_module_0__majority7_module_50_n5) );
  XOR2_X1 u_cini_module_0__majority7_module_50_U6 ( .A(
        n_cini_module_0__xor_module_63_res), .B(
        n_cini_module_0__majority7_module_50_n10), .Z(
        n_cini_module_0__majority7_module_50_n7) );
  OR2_X1 u_cini_module_0__majority7_module_50_U5 ( .A1(
        n_cini_module_0__majority7_module_50_n9), .A2(
        n_cini_module_0__xor_module_75_res), .ZN(
        n_cini_module_0__majority7_module_50_n8) );
  NAND2_X1 u_cini_module_0__majority7_module_50_U4 ( .A1(
        n_cini_module_0__majority7_module_50_n7), .A2(
        n_cini_module_0__majority7_module_50_n8), .ZN(
        n_cini_module_0__majority7_module_50_n6) );
  NAND2_X1 u_cini_module_0__majority7_module_50_U3 ( .A1(
        n_cini_module_0__majority7_module_50_n5), .A2(
        n_cini_module_0__majority7_module_50_n6), .ZN(
        n_cini_module_0__majority7_module_50_n4) );
  NAND2_X1 u_cini_module_0__majority7_module_50_U2 ( .A1(
        n_cini_module_0__majority7_module_50_n3), .A2(
        n_cini_module_0__majority7_module_50_n4), .ZN(
        n_cini_module_0__majority7_module_50_n2) );
  NAND2_X1 u_cini_module_0__majority7_module_50_U1 ( .A1(
        n_cini_module_0__majority7_module_50_n1), .A2(
        n_cini_module_0__majority7_module_50_n2), .ZN(
        n_cini_module_0__majority7_module_50_res) );
  DFF_X1 u_cini_module_0__reg_module_237__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority7_module_50_res), .CK(clock_4), .Q(
        n_cini_module_0__reg_module_237_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_119_U1 ( .A1(
        n_cini_module_0__reg_module_237_res), .A2(io_a_s0_d4), .ZN(
        n_cini_module_0__and_module_119_res) );
  DFF_X1 u_cini_module_0__reg_module_238__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_119_res), .CK(clock_4), .Q(
        n_cini_module_0__reg_module_238_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_184_U1 ( .A(
        n_cini_module_0__reg_module_236_res), .B(
        n_cini_module_0__reg_module_238_res), .Z(
        n_cini_module_0__xor_module_184_res) );
  XOR2_X1 u_cini_module_0__xor_module_185_U1 ( .A(
        n_cini_module_0__xor_module_183_res), .B(
        n_cini_module_0__xor_module_184_res), .Z(
        n_cini_module_0__xor_module_185_res) );
  XOR2_X1 u_cini_module_0__xor_module_186_U1 ( .A(
        n_cini_module_0__xor_module_185_res), .B(
        n_cini_module_0__reg_module_226_res), .Z(io_c_s0_d4) );
  DFF_X1 u_cini_module_0__reg_module_239__hpc_correct_b_s0_d0_reg ( .D(
        io_b_s1_d4), .CK(clock_4), .Q(n_cini_module_0__reg_module_239_res), 
        .QN() );
  AND2_X1 u_cini_module_0__and_module_120_U1 ( .A1(
        n_cini_module_0__reg_module_239_res), .A2(io_a_s1_d4), .ZN(
        n_cini_module_0__and_module_120_res) );
  DFF_X1 u_cini_module_0__reg_module_240__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_120_res), .CK(clock_4), .Q(
        n_cini_module_0__reg_module_240_res), .QN() );
  DFF_X1 u_cini_module_0__reg_module_241__hpc_correct_b_s0_d0_reg ( .D(
        p_rand_0), .CK(clock_4), .Q(n_cini_module_0__reg_module_241_res), 
        .QN() );
  INV_X1 u_cini_module_0__not_module_52_U1 ( .A(io_a_s1_d4), .ZN(
        n_cini_module_0__not_module_52_res) );
  AND2_X1 u_cini_module_0__and_module_121_U1 ( .A1(
        n_cini_module_0__not_module_52_res), .A2(
        n_cini_module_0__reg_module_241_res), .ZN(
        n_cini_module_0__and_module_121_res) );
  DFF_X1 u_cini_module_0__reg_module_242__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_121_res), .CK(clock_4), .Q(
        n_cini_module_0__reg_module_242_res), .QN() );
  NAND2_X1 u_cini_module_0__majority7_module_51_U18 ( .A1(
        n_cini_module_0__xor_module_40_res), .A2(
        n_cini_module_0__xor_module_52_res), .ZN(
        n_cini_module_0__majority7_module_51_n16) );
  XOR2_X1 u_cini_module_0__majority7_module_51_U17 ( .A(
        n_cini_module_0__xor_module_40_res), .B(
        n_cini_module_0__xor_module_52_res), .Z(
        n_cini_module_0__majority7_module_51_n10) );
  NAND2_X1 u_cini_module_0__majority7_module_51_U16 ( .A1(
        n_cini_module_0__xor_module_64_res), .A2(
        n_cini_module_0__majority7_module_51_n10), .ZN(
        n_cini_module_0__majority7_module_51_n17) );
  NAND2_X1 u_cini_module_0__majority7_module_51_U15 ( .A1(
        n_cini_module_0__majority7_module_51_n16), .A2(
        n_cini_module_0__majority7_module_51_n17), .ZN(
        n_cini_module_0__majority7_module_51_n13) );
  NAND2_X1 u_cini_module_0__majority7_module_51_U14 ( .A1(
        n_cini_module_0__xor_module_4_res), .A2(
        n_cini_module_0__xor_module_16_res), .ZN(
        n_cini_module_0__majority7_module_51_n14) );
  XOR2_X1 u_cini_module_0__majority7_module_51_U13 ( .A(
        n_cini_module_0__xor_module_4_res), .B(
        n_cini_module_0__xor_module_16_res), .Z(
        n_cini_module_0__majority7_module_51_n11) );
  NAND2_X1 u_cini_module_0__majority7_module_51_U12 ( .A1(
        n_cini_module_0__xor_module_28_res), .A2(
        n_cini_module_0__majority7_module_51_n11), .ZN(
        n_cini_module_0__majority7_module_51_n15) );
  NAND2_X1 u_cini_module_0__majority7_module_51_U11 ( .A1(
        n_cini_module_0__majority7_module_51_n14), .A2(
        n_cini_module_0__majority7_module_51_n15), .ZN(
        n_cini_module_0__majority7_module_51_n12) );
  NAND2_X1 u_cini_module_0__majority7_module_51_U10 ( .A1(
        n_cini_module_0__majority7_module_51_n13), .A2(
        n_cini_module_0__majority7_module_51_n12), .ZN(
        n_cini_module_0__majority7_module_51_n1) );
  OR2_X1 u_cini_module_0__majority7_module_51_U9 ( .A1(
        n_cini_module_0__majority7_module_51_n12), .A2(
        n_cini_module_0__majority7_module_51_n13), .ZN(
        n_cini_module_0__majority7_module_51_n3) );
  XOR2_X1 u_cini_module_0__majority7_module_51_U8 ( .A(
        n_cini_module_0__xor_module_28_res), .B(
        n_cini_module_0__majority7_module_51_n11), .Z(
        n_cini_module_0__majority7_module_51_n9) );
  NAND2_X1 u_cini_module_0__majority7_module_51_U7 ( .A1(
        n_cini_module_0__xor_module_76_res), .A2(
        n_cini_module_0__majority7_module_51_n9), .ZN(
        n_cini_module_0__majority7_module_51_n5) );
  XOR2_X1 u_cini_module_0__majority7_module_51_U6 ( .A(
        n_cini_module_0__xor_module_64_res), .B(
        n_cini_module_0__majority7_module_51_n10), .Z(
        n_cini_module_0__majority7_module_51_n7) );
  OR2_X1 u_cini_module_0__majority7_module_51_U5 ( .A1(
        n_cini_module_0__majority7_module_51_n9), .A2(
        n_cini_module_0__xor_module_76_res), .ZN(
        n_cini_module_0__majority7_module_51_n8) );
  NAND2_X1 u_cini_module_0__majority7_module_51_U4 ( .A1(
        n_cini_module_0__majority7_module_51_n7), .A2(
        n_cini_module_0__majority7_module_51_n8), .ZN(
        n_cini_module_0__majority7_module_51_n6) );
  NAND2_X1 u_cini_module_0__majority7_module_51_U3 ( .A1(
        n_cini_module_0__majority7_module_51_n5), .A2(
        n_cini_module_0__majority7_module_51_n6), .ZN(
        n_cini_module_0__majority7_module_51_n4) );
  NAND2_X1 u_cini_module_0__majority7_module_51_U2 ( .A1(
        n_cini_module_0__majority7_module_51_n3), .A2(
        n_cini_module_0__majority7_module_51_n4), .ZN(
        n_cini_module_0__majority7_module_51_n2) );
  NAND2_X1 u_cini_module_0__majority7_module_51_U1 ( .A1(
        n_cini_module_0__majority7_module_51_n1), .A2(
        n_cini_module_0__majority7_module_51_n2), .ZN(
        n_cini_module_0__majority7_module_51_res) );
  DFF_X1 u_cini_module_0__reg_module_243__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority7_module_51_res), .CK(clock_4), .Q(
        n_cini_module_0__reg_module_243_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_122_U1 ( .A1(
        n_cini_module_0__reg_module_243_res), .A2(io_a_s1_d4), .ZN(
        n_cini_module_0__and_module_122_res) );
  DFF_X1 u_cini_module_0__reg_module_244__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_122_res), .CK(clock_4), .Q(
        n_cini_module_0__reg_module_244_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_187_U1 ( .A(
        n_cini_module_0__reg_module_242_res), .B(
        n_cini_module_0__reg_module_244_res), .Z(
        n_cini_module_0__xor_module_187_res) );
  DFF_X1 u_cini_module_0__reg_module_245__hpc_correct_b_s0_d0_reg ( .D(
        p_rand_3), .CK(clock_4), .Q(n_cini_module_0__reg_module_245_res), 
        .QN() );
  INV_X1 u_cini_module_0__not_module_53_U1 ( .A(io_a_s1_d4), .ZN(
        n_cini_module_0__not_module_53_res) );
  AND2_X1 u_cini_module_0__and_module_123_U1 ( .A1(
        n_cini_module_0__not_module_53_res), .A2(
        n_cini_module_0__reg_module_245_res), .ZN(
        n_cini_module_0__and_module_123_res) );
  DFF_X1 u_cini_module_0__reg_module_246__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_123_res), .CK(clock_4), .Q(
        n_cini_module_0__reg_module_246_res), .QN() );
  NAND2_X1 u_cini_module_0__majority7_module_52_U18 ( .A1(
        n_cini_module_0__xor_module_41_res), .A2(
        n_cini_module_0__xor_module_53_res), .ZN(
        n_cini_module_0__majority7_module_52_n16) );
  XOR2_X1 u_cini_module_0__majority7_module_52_U17 ( .A(
        n_cini_module_0__xor_module_41_res), .B(
        n_cini_module_0__xor_module_53_res), .Z(
        n_cini_module_0__majority7_module_52_n10) );
  NAND2_X1 u_cini_module_0__majority7_module_52_U16 ( .A1(
        n_cini_module_0__xor_module_65_res), .A2(
        n_cini_module_0__majority7_module_52_n10), .ZN(
        n_cini_module_0__majority7_module_52_n17) );
  NAND2_X1 u_cini_module_0__majority7_module_52_U15 ( .A1(
        n_cini_module_0__majority7_module_52_n16), .A2(
        n_cini_module_0__majority7_module_52_n17), .ZN(
        n_cini_module_0__majority7_module_52_n13) );
  NAND2_X1 u_cini_module_0__majority7_module_52_U14 ( .A1(
        n_cini_module_0__xor_module_5_res), .A2(
        n_cini_module_0__xor_module_17_res), .ZN(
        n_cini_module_0__majority7_module_52_n14) );
  XOR2_X1 u_cini_module_0__majority7_module_52_U13 ( .A(
        n_cini_module_0__xor_module_5_res), .B(
        n_cini_module_0__xor_module_17_res), .Z(
        n_cini_module_0__majority7_module_52_n11) );
  NAND2_X1 u_cini_module_0__majority7_module_52_U12 ( .A1(
        n_cini_module_0__xor_module_29_res), .A2(
        n_cini_module_0__majority7_module_52_n11), .ZN(
        n_cini_module_0__majority7_module_52_n15) );
  NAND2_X1 u_cini_module_0__majority7_module_52_U11 ( .A1(
        n_cini_module_0__majority7_module_52_n14), .A2(
        n_cini_module_0__majority7_module_52_n15), .ZN(
        n_cini_module_0__majority7_module_52_n12) );
  NAND2_X1 u_cini_module_0__majority7_module_52_U10 ( .A1(
        n_cini_module_0__majority7_module_52_n13), .A2(
        n_cini_module_0__majority7_module_52_n12), .ZN(
        n_cini_module_0__majority7_module_52_n1) );
  OR2_X1 u_cini_module_0__majority7_module_52_U9 ( .A1(
        n_cini_module_0__majority7_module_52_n12), .A2(
        n_cini_module_0__majority7_module_52_n13), .ZN(
        n_cini_module_0__majority7_module_52_n3) );
  XOR2_X1 u_cini_module_0__majority7_module_52_U8 ( .A(
        n_cini_module_0__xor_module_29_res), .B(
        n_cini_module_0__majority7_module_52_n11), .Z(
        n_cini_module_0__majority7_module_52_n9) );
  NAND2_X1 u_cini_module_0__majority7_module_52_U7 ( .A1(
        n_cini_module_0__xor_module_77_res), .A2(
        n_cini_module_0__majority7_module_52_n9), .ZN(
        n_cini_module_0__majority7_module_52_n5) );
  XOR2_X1 u_cini_module_0__majority7_module_52_U6 ( .A(
        n_cini_module_0__xor_module_65_res), .B(
        n_cini_module_0__majority7_module_52_n10), .Z(
        n_cini_module_0__majority7_module_52_n7) );
  OR2_X1 u_cini_module_0__majority7_module_52_U5 ( .A1(
        n_cini_module_0__majority7_module_52_n9), .A2(
        n_cini_module_0__xor_module_77_res), .ZN(
        n_cini_module_0__majority7_module_52_n8) );
  NAND2_X1 u_cini_module_0__majority7_module_52_U4 ( .A1(
        n_cini_module_0__majority7_module_52_n7), .A2(
        n_cini_module_0__majority7_module_52_n8), .ZN(
        n_cini_module_0__majority7_module_52_n6) );
  NAND2_X1 u_cini_module_0__majority7_module_52_U3 ( .A1(
        n_cini_module_0__majority7_module_52_n5), .A2(
        n_cini_module_0__majority7_module_52_n6), .ZN(
        n_cini_module_0__majority7_module_52_n4) );
  NAND2_X1 u_cini_module_0__majority7_module_52_U2 ( .A1(
        n_cini_module_0__majority7_module_52_n3), .A2(
        n_cini_module_0__majority7_module_52_n4), .ZN(
        n_cini_module_0__majority7_module_52_n2) );
  NAND2_X1 u_cini_module_0__majority7_module_52_U1 ( .A1(
        n_cini_module_0__majority7_module_52_n1), .A2(
        n_cini_module_0__majority7_module_52_n2), .ZN(
        n_cini_module_0__majority7_module_52_res) );
  DFF_X1 u_cini_module_0__reg_module_247__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority7_module_52_res), .CK(clock_4), .Q(
        n_cini_module_0__reg_module_247_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_124_U1 ( .A1(
        n_cini_module_0__reg_module_247_res), .A2(io_a_s1_d4), .ZN(
        n_cini_module_0__and_module_124_res) );
  DFF_X1 u_cini_module_0__reg_module_248__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_124_res), .CK(clock_4), .Q(
        n_cini_module_0__reg_module_248_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_188_U1 ( .A(
        n_cini_module_0__reg_module_246_res), .B(
        n_cini_module_0__reg_module_248_res), .Z(
        n_cini_module_0__xor_module_188_res) );
  XOR2_X1 u_cini_module_0__xor_module_189_U1 ( .A(
        n_cini_module_0__xor_module_187_res), .B(
        n_cini_module_0__xor_module_188_res), .Z(
        n_cini_module_0__xor_module_189_res) );
  DFF_X1 u_cini_module_0__reg_module_249__hpc_correct_b_s0_d0_reg ( .D(
        p_rand_4), .CK(clock_4), .Q(n_cini_module_0__reg_module_249_res), 
        .QN() );
  INV_X1 u_cini_module_0__not_module_54_U1 ( .A(io_a_s1_d4), .ZN(
        n_cini_module_0__not_module_54_res) );
  AND2_X1 u_cini_module_0__and_module_125_U1 ( .A1(
        n_cini_module_0__not_module_54_res), .A2(
        n_cini_module_0__reg_module_249_res), .ZN(
        n_cini_module_0__and_module_125_res) );
  DFF_X1 u_cini_module_0__reg_module_250__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_125_res), .CK(clock_4), .Q(
        n_cini_module_0__reg_module_250_res), .QN() );
  NAND2_X1 u_cini_module_0__majority7_module_53_U18 ( .A1(
        n_cini_module_0__xor_module_42_res), .A2(
        n_cini_module_0__xor_module_54_res), .ZN(
        n_cini_module_0__majority7_module_53_n16) );
  XOR2_X1 u_cini_module_0__majority7_module_53_U17 ( .A(
        n_cini_module_0__xor_module_42_res), .B(
        n_cini_module_0__xor_module_54_res), .Z(
        n_cini_module_0__majority7_module_53_n10) );
  NAND2_X1 u_cini_module_0__majority7_module_53_U16 ( .A1(
        n_cini_module_0__xor_module_66_res), .A2(
        n_cini_module_0__majority7_module_53_n10), .ZN(
        n_cini_module_0__majority7_module_53_n17) );
  NAND2_X1 u_cini_module_0__majority7_module_53_U15 ( .A1(
        n_cini_module_0__majority7_module_53_n16), .A2(
        n_cini_module_0__majority7_module_53_n17), .ZN(
        n_cini_module_0__majority7_module_53_n13) );
  NAND2_X1 u_cini_module_0__majority7_module_53_U14 ( .A1(
        n_cini_module_0__xor_module_6_res), .A2(
        n_cini_module_0__xor_module_18_res), .ZN(
        n_cini_module_0__majority7_module_53_n14) );
  XOR2_X1 u_cini_module_0__majority7_module_53_U13 ( .A(
        n_cini_module_0__xor_module_6_res), .B(
        n_cini_module_0__xor_module_18_res), .Z(
        n_cini_module_0__majority7_module_53_n11) );
  NAND2_X1 u_cini_module_0__majority7_module_53_U12 ( .A1(
        n_cini_module_0__xor_module_30_res), .A2(
        n_cini_module_0__majority7_module_53_n11), .ZN(
        n_cini_module_0__majority7_module_53_n15) );
  NAND2_X1 u_cini_module_0__majority7_module_53_U11 ( .A1(
        n_cini_module_0__majority7_module_53_n14), .A2(
        n_cini_module_0__majority7_module_53_n15), .ZN(
        n_cini_module_0__majority7_module_53_n12) );
  NAND2_X1 u_cini_module_0__majority7_module_53_U10 ( .A1(
        n_cini_module_0__majority7_module_53_n13), .A2(
        n_cini_module_0__majority7_module_53_n12), .ZN(
        n_cini_module_0__majority7_module_53_n1) );
  OR2_X1 u_cini_module_0__majority7_module_53_U9 ( .A1(
        n_cini_module_0__majority7_module_53_n12), .A2(
        n_cini_module_0__majority7_module_53_n13), .ZN(
        n_cini_module_0__majority7_module_53_n3) );
  XOR2_X1 u_cini_module_0__majority7_module_53_U8 ( .A(
        n_cini_module_0__xor_module_30_res), .B(
        n_cini_module_0__majority7_module_53_n11), .Z(
        n_cini_module_0__majority7_module_53_n9) );
  NAND2_X1 u_cini_module_0__majority7_module_53_U7 ( .A1(
        n_cini_module_0__xor_module_78_res), .A2(
        n_cini_module_0__majority7_module_53_n9), .ZN(
        n_cini_module_0__majority7_module_53_n5) );
  XOR2_X1 u_cini_module_0__majority7_module_53_U6 ( .A(
        n_cini_module_0__xor_module_66_res), .B(
        n_cini_module_0__majority7_module_53_n10), .Z(
        n_cini_module_0__majority7_module_53_n7) );
  OR2_X1 u_cini_module_0__majority7_module_53_U5 ( .A1(
        n_cini_module_0__majority7_module_53_n9), .A2(
        n_cini_module_0__xor_module_78_res), .ZN(
        n_cini_module_0__majority7_module_53_n8) );
  NAND2_X1 u_cini_module_0__majority7_module_53_U4 ( .A1(
        n_cini_module_0__majority7_module_53_n7), .A2(
        n_cini_module_0__majority7_module_53_n8), .ZN(
        n_cini_module_0__majority7_module_53_n6) );
  NAND2_X1 u_cini_module_0__majority7_module_53_U3 ( .A1(
        n_cini_module_0__majority7_module_53_n5), .A2(
        n_cini_module_0__majority7_module_53_n6), .ZN(
        n_cini_module_0__majority7_module_53_n4) );
  NAND2_X1 u_cini_module_0__majority7_module_53_U2 ( .A1(
        n_cini_module_0__majority7_module_53_n3), .A2(
        n_cini_module_0__majority7_module_53_n4), .ZN(
        n_cini_module_0__majority7_module_53_n2) );
  NAND2_X1 u_cini_module_0__majority7_module_53_U1 ( .A1(
        n_cini_module_0__majority7_module_53_n1), .A2(
        n_cini_module_0__majority7_module_53_n2), .ZN(
        n_cini_module_0__majority7_module_53_res) );
  DFF_X1 u_cini_module_0__reg_module_251__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority7_module_53_res), .CK(clock_4), .Q(
        n_cini_module_0__reg_module_251_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_126_U1 ( .A1(
        n_cini_module_0__reg_module_251_res), .A2(io_a_s1_d4), .ZN(
        n_cini_module_0__and_module_126_res) );
  DFF_X1 u_cini_module_0__reg_module_252__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_126_res), .CK(clock_4), .Q(
        n_cini_module_0__reg_module_252_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_190_U1 ( .A(
        n_cini_module_0__reg_module_250_res), .B(
        n_cini_module_0__reg_module_252_res), .Z(
        n_cini_module_0__xor_module_190_res) );
  XOR2_X1 u_cini_module_0__xor_module_191_U1 ( .A(
        n_cini_module_0__xor_module_189_res), .B(
        n_cini_module_0__xor_module_190_res), .Z(
        n_cini_module_0__xor_module_191_res) );
  XOR2_X1 u_cini_module_0__xor_module_192_U1 ( .A(
        n_cini_module_0__xor_module_191_res), .B(
        n_cini_module_0__reg_module_240_res), .Z(io_c_s1_d4) );
  DFF_X1 u_cini_module_0__reg_module_253__hpc_correct_b_s0_d0_reg ( .D(
        io_b_s2_d4), .CK(clock_4), .Q(n_cini_module_0__reg_module_253_res), 
        .QN() );
  AND2_X1 u_cini_module_0__and_module_127_U1 ( .A1(
        n_cini_module_0__reg_module_253_res), .A2(io_a_s2_d4), .ZN(
        n_cini_module_0__and_module_127_res) );
  DFF_X1 u_cini_module_0__reg_module_254__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_127_res), .CK(clock_4), .Q(
        n_cini_module_0__reg_module_254_res), .QN() );
  DFF_X1 u_cini_module_0__reg_module_255__hpc_correct_b_s0_d0_reg ( .D(
        p_rand_1), .CK(clock_4), .Q(n_cini_module_0__reg_module_255_res), 
        .QN() );
  INV_X1 u_cini_module_0__not_module_55_U1 ( .A(io_a_s2_d4), .ZN(
        n_cini_module_0__not_module_55_res) );
  AND2_X1 u_cini_module_0__and_module_128_U1 ( .A1(
        n_cini_module_0__not_module_55_res), .A2(
        n_cini_module_0__reg_module_255_res), .ZN(
        n_cini_module_0__and_module_128_res) );
  DFF_X1 u_cini_module_0__reg_module_256__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_128_res), .CK(clock_4), .Q(
        n_cini_module_0__reg_module_256_res), .QN() );
  NAND2_X1 u_cini_module_0__majority7_module_54_U18 ( .A1(
        n_cini_module_0__xor_module_43_res), .A2(
        n_cini_module_0__xor_module_55_res), .ZN(
        n_cini_module_0__majority7_module_54_n16) );
  XOR2_X1 u_cini_module_0__majority7_module_54_U17 ( .A(
        n_cini_module_0__xor_module_43_res), .B(
        n_cini_module_0__xor_module_55_res), .Z(
        n_cini_module_0__majority7_module_54_n10) );
  NAND2_X1 u_cini_module_0__majority7_module_54_U16 ( .A1(
        n_cini_module_0__xor_module_67_res), .A2(
        n_cini_module_0__majority7_module_54_n10), .ZN(
        n_cini_module_0__majority7_module_54_n17) );
  NAND2_X1 u_cini_module_0__majority7_module_54_U15 ( .A1(
        n_cini_module_0__majority7_module_54_n16), .A2(
        n_cini_module_0__majority7_module_54_n17), .ZN(
        n_cini_module_0__majority7_module_54_n13) );
  NAND2_X1 u_cini_module_0__majority7_module_54_U14 ( .A1(
        n_cini_module_0__xor_module_7_res), .A2(
        n_cini_module_0__xor_module_19_res), .ZN(
        n_cini_module_0__majority7_module_54_n14) );
  XOR2_X1 u_cini_module_0__majority7_module_54_U13 ( .A(
        n_cini_module_0__xor_module_7_res), .B(
        n_cini_module_0__xor_module_19_res), .Z(
        n_cini_module_0__majority7_module_54_n11) );
  NAND2_X1 u_cini_module_0__majority7_module_54_U12 ( .A1(
        n_cini_module_0__xor_module_31_res), .A2(
        n_cini_module_0__majority7_module_54_n11), .ZN(
        n_cini_module_0__majority7_module_54_n15) );
  NAND2_X1 u_cini_module_0__majority7_module_54_U11 ( .A1(
        n_cini_module_0__majority7_module_54_n14), .A2(
        n_cini_module_0__majority7_module_54_n15), .ZN(
        n_cini_module_0__majority7_module_54_n12) );
  NAND2_X1 u_cini_module_0__majority7_module_54_U10 ( .A1(
        n_cini_module_0__majority7_module_54_n13), .A2(
        n_cini_module_0__majority7_module_54_n12), .ZN(
        n_cini_module_0__majority7_module_54_n1) );
  OR2_X1 u_cini_module_0__majority7_module_54_U9 ( .A1(
        n_cini_module_0__majority7_module_54_n12), .A2(
        n_cini_module_0__majority7_module_54_n13), .ZN(
        n_cini_module_0__majority7_module_54_n3) );
  XOR2_X1 u_cini_module_0__majority7_module_54_U8 ( .A(
        n_cini_module_0__xor_module_31_res), .B(
        n_cini_module_0__majority7_module_54_n11), .Z(
        n_cini_module_0__majority7_module_54_n9) );
  NAND2_X1 u_cini_module_0__majority7_module_54_U7 ( .A1(
        n_cini_module_0__xor_module_79_res), .A2(
        n_cini_module_0__majority7_module_54_n9), .ZN(
        n_cini_module_0__majority7_module_54_n5) );
  XOR2_X1 u_cini_module_0__majority7_module_54_U6 ( .A(
        n_cini_module_0__xor_module_67_res), .B(
        n_cini_module_0__majority7_module_54_n10), .Z(
        n_cini_module_0__majority7_module_54_n7) );
  OR2_X1 u_cini_module_0__majority7_module_54_U5 ( .A1(
        n_cini_module_0__majority7_module_54_n9), .A2(
        n_cini_module_0__xor_module_79_res), .ZN(
        n_cini_module_0__majority7_module_54_n8) );
  NAND2_X1 u_cini_module_0__majority7_module_54_U4 ( .A1(
        n_cini_module_0__majority7_module_54_n7), .A2(
        n_cini_module_0__majority7_module_54_n8), .ZN(
        n_cini_module_0__majority7_module_54_n6) );
  NAND2_X1 u_cini_module_0__majority7_module_54_U3 ( .A1(
        n_cini_module_0__majority7_module_54_n5), .A2(
        n_cini_module_0__majority7_module_54_n6), .ZN(
        n_cini_module_0__majority7_module_54_n4) );
  NAND2_X1 u_cini_module_0__majority7_module_54_U2 ( .A1(
        n_cini_module_0__majority7_module_54_n3), .A2(
        n_cini_module_0__majority7_module_54_n4), .ZN(
        n_cini_module_0__majority7_module_54_n2) );
  NAND2_X1 u_cini_module_0__majority7_module_54_U1 ( .A1(
        n_cini_module_0__majority7_module_54_n1), .A2(
        n_cini_module_0__majority7_module_54_n2), .ZN(
        n_cini_module_0__majority7_module_54_res) );
  DFF_X1 u_cini_module_0__reg_module_257__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority7_module_54_res), .CK(clock_4), .Q(
        n_cini_module_0__reg_module_257_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_129_U1 ( .A1(
        n_cini_module_0__reg_module_257_res), .A2(io_a_s2_d4), .ZN(
        n_cini_module_0__and_module_129_res) );
  DFF_X1 u_cini_module_0__reg_module_258__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_129_res), .CK(clock_4), .Q(
        n_cini_module_0__reg_module_258_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_193_U1 ( .A(
        n_cini_module_0__reg_module_256_res), .B(
        n_cini_module_0__reg_module_258_res), .Z(
        n_cini_module_0__xor_module_193_res) );
  DFF_X1 u_cini_module_0__reg_module_259__hpc_correct_b_s0_d0_reg ( .D(
        p_rand_3), .CK(clock_4), .Q(n_cini_module_0__reg_module_259_res), 
        .QN() );
  INV_X1 u_cini_module_0__not_module_56_U1 ( .A(io_a_s2_d4), .ZN(
        n_cini_module_0__not_module_56_res) );
  AND2_X1 u_cini_module_0__and_module_130_U1 ( .A1(
        n_cini_module_0__not_module_56_res), .A2(
        n_cini_module_0__reg_module_259_res), .ZN(
        n_cini_module_0__and_module_130_res) );
  DFF_X1 u_cini_module_0__reg_module_260__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_130_res), .CK(clock_4), .Q(
        n_cini_module_0__reg_module_260_res), .QN() );
  NAND2_X1 u_cini_module_0__majority7_module_55_U18 ( .A1(
        n_cini_module_0__xor_module_44_res), .A2(
        n_cini_module_0__xor_module_56_res), .ZN(
        n_cini_module_0__majority7_module_55_n16) );
  XOR2_X1 u_cini_module_0__majority7_module_55_U17 ( .A(
        n_cini_module_0__xor_module_44_res), .B(
        n_cini_module_0__xor_module_56_res), .Z(
        n_cini_module_0__majority7_module_55_n10) );
  NAND2_X1 u_cini_module_0__majority7_module_55_U16 ( .A1(
        n_cini_module_0__xor_module_68_res), .A2(
        n_cini_module_0__majority7_module_55_n10), .ZN(
        n_cini_module_0__majority7_module_55_n17) );
  NAND2_X1 u_cini_module_0__majority7_module_55_U15 ( .A1(
        n_cini_module_0__majority7_module_55_n16), .A2(
        n_cini_module_0__majority7_module_55_n17), .ZN(
        n_cini_module_0__majority7_module_55_n13) );
  NAND2_X1 u_cini_module_0__majority7_module_55_U14 ( .A1(
        n_cini_module_0__xor_module_8_res), .A2(
        n_cini_module_0__xor_module_20_res), .ZN(
        n_cini_module_0__majority7_module_55_n14) );
  XOR2_X1 u_cini_module_0__majority7_module_55_U13 ( .A(
        n_cini_module_0__xor_module_8_res), .B(
        n_cini_module_0__xor_module_20_res), .Z(
        n_cini_module_0__majority7_module_55_n11) );
  NAND2_X1 u_cini_module_0__majority7_module_55_U12 ( .A1(
        n_cini_module_0__xor_module_32_res), .A2(
        n_cini_module_0__majority7_module_55_n11), .ZN(
        n_cini_module_0__majority7_module_55_n15) );
  NAND2_X1 u_cini_module_0__majority7_module_55_U11 ( .A1(
        n_cini_module_0__majority7_module_55_n14), .A2(
        n_cini_module_0__majority7_module_55_n15), .ZN(
        n_cini_module_0__majority7_module_55_n12) );
  NAND2_X1 u_cini_module_0__majority7_module_55_U10 ( .A1(
        n_cini_module_0__majority7_module_55_n13), .A2(
        n_cini_module_0__majority7_module_55_n12), .ZN(
        n_cini_module_0__majority7_module_55_n1) );
  OR2_X1 u_cini_module_0__majority7_module_55_U9 ( .A1(
        n_cini_module_0__majority7_module_55_n12), .A2(
        n_cini_module_0__majority7_module_55_n13), .ZN(
        n_cini_module_0__majority7_module_55_n3) );
  XOR2_X1 u_cini_module_0__majority7_module_55_U8 ( .A(
        n_cini_module_0__xor_module_32_res), .B(
        n_cini_module_0__majority7_module_55_n11), .Z(
        n_cini_module_0__majority7_module_55_n9) );
  NAND2_X1 u_cini_module_0__majority7_module_55_U7 ( .A1(
        n_cini_module_0__xor_module_80_res), .A2(
        n_cini_module_0__majority7_module_55_n9), .ZN(
        n_cini_module_0__majority7_module_55_n5) );
  XOR2_X1 u_cini_module_0__majority7_module_55_U6 ( .A(
        n_cini_module_0__xor_module_68_res), .B(
        n_cini_module_0__majority7_module_55_n10), .Z(
        n_cini_module_0__majority7_module_55_n7) );
  OR2_X1 u_cini_module_0__majority7_module_55_U5 ( .A1(
        n_cini_module_0__majority7_module_55_n9), .A2(
        n_cini_module_0__xor_module_80_res), .ZN(
        n_cini_module_0__majority7_module_55_n8) );
  NAND2_X1 u_cini_module_0__majority7_module_55_U4 ( .A1(
        n_cini_module_0__majority7_module_55_n7), .A2(
        n_cini_module_0__majority7_module_55_n8), .ZN(
        n_cini_module_0__majority7_module_55_n6) );
  NAND2_X1 u_cini_module_0__majority7_module_55_U3 ( .A1(
        n_cini_module_0__majority7_module_55_n5), .A2(
        n_cini_module_0__majority7_module_55_n6), .ZN(
        n_cini_module_0__majority7_module_55_n4) );
  NAND2_X1 u_cini_module_0__majority7_module_55_U2 ( .A1(
        n_cini_module_0__majority7_module_55_n3), .A2(
        n_cini_module_0__majority7_module_55_n4), .ZN(
        n_cini_module_0__majority7_module_55_n2) );
  NAND2_X1 u_cini_module_0__majority7_module_55_U1 ( .A1(
        n_cini_module_0__majority7_module_55_n1), .A2(
        n_cini_module_0__majority7_module_55_n2), .ZN(
        n_cini_module_0__majority7_module_55_res) );
  DFF_X1 u_cini_module_0__reg_module_261__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority7_module_55_res), .CK(clock_4), .Q(
        n_cini_module_0__reg_module_261_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_131_U1 ( .A1(
        n_cini_module_0__reg_module_261_res), .A2(io_a_s2_d4), .ZN(
        n_cini_module_0__and_module_131_res) );
  DFF_X1 u_cini_module_0__reg_module_262__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_131_res), .CK(clock_4), .Q(
        n_cini_module_0__reg_module_262_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_194_U1 ( .A(
        n_cini_module_0__reg_module_260_res), .B(
        n_cini_module_0__reg_module_262_res), .Z(
        n_cini_module_0__xor_module_194_res) );
  XOR2_X1 u_cini_module_0__xor_module_195_U1 ( .A(
        n_cini_module_0__xor_module_193_res), .B(
        n_cini_module_0__xor_module_194_res), .Z(
        n_cini_module_0__xor_module_195_res) );
  DFF_X1 u_cini_module_0__reg_module_263__hpc_correct_b_s0_d0_reg ( .D(
        p_rand_5), .CK(clock_4), .Q(n_cini_module_0__reg_module_263_res), 
        .QN() );
  INV_X1 u_cini_module_0__not_module_57_U1 ( .A(io_a_s2_d4), .ZN(
        n_cini_module_0__not_module_57_res) );
  AND2_X1 u_cini_module_0__and_module_132_U1 ( .A1(
        n_cini_module_0__not_module_57_res), .A2(
        n_cini_module_0__reg_module_263_res), .ZN(
        n_cini_module_0__and_module_132_res) );
  DFF_X1 u_cini_module_0__reg_module_264__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_132_res), .CK(clock_4), .Q(
        n_cini_module_0__reg_module_264_res), .QN() );
  NAND2_X1 u_cini_module_0__majority7_module_56_U18 ( .A1(
        n_cini_module_0__xor_module_45_res), .A2(
        n_cini_module_0__xor_module_57_res), .ZN(
        n_cini_module_0__majority7_module_56_n16) );
  XOR2_X1 u_cini_module_0__majority7_module_56_U17 ( .A(
        n_cini_module_0__xor_module_45_res), .B(
        n_cini_module_0__xor_module_57_res), .Z(
        n_cini_module_0__majority7_module_56_n10) );
  NAND2_X1 u_cini_module_0__majority7_module_56_U16 ( .A1(
        n_cini_module_0__xor_module_69_res), .A2(
        n_cini_module_0__majority7_module_56_n10), .ZN(
        n_cini_module_0__majority7_module_56_n17) );
  NAND2_X1 u_cini_module_0__majority7_module_56_U15 ( .A1(
        n_cini_module_0__majority7_module_56_n16), .A2(
        n_cini_module_0__majority7_module_56_n17), .ZN(
        n_cini_module_0__majority7_module_56_n13) );
  NAND2_X1 u_cini_module_0__majority7_module_56_U14 ( .A1(
        n_cini_module_0__xor_module_9_res), .A2(
        n_cini_module_0__xor_module_21_res), .ZN(
        n_cini_module_0__majority7_module_56_n14) );
  XOR2_X1 u_cini_module_0__majority7_module_56_U13 ( .A(
        n_cini_module_0__xor_module_9_res), .B(
        n_cini_module_0__xor_module_21_res), .Z(
        n_cini_module_0__majority7_module_56_n11) );
  NAND2_X1 u_cini_module_0__majority7_module_56_U12 ( .A1(
        n_cini_module_0__xor_module_33_res), .A2(
        n_cini_module_0__majority7_module_56_n11), .ZN(
        n_cini_module_0__majority7_module_56_n15) );
  NAND2_X1 u_cini_module_0__majority7_module_56_U11 ( .A1(
        n_cini_module_0__majority7_module_56_n14), .A2(
        n_cini_module_0__majority7_module_56_n15), .ZN(
        n_cini_module_0__majority7_module_56_n12) );
  NAND2_X1 u_cini_module_0__majority7_module_56_U10 ( .A1(
        n_cini_module_0__majority7_module_56_n13), .A2(
        n_cini_module_0__majority7_module_56_n12), .ZN(
        n_cini_module_0__majority7_module_56_n1) );
  OR2_X1 u_cini_module_0__majority7_module_56_U9 ( .A1(
        n_cini_module_0__majority7_module_56_n12), .A2(
        n_cini_module_0__majority7_module_56_n13), .ZN(
        n_cini_module_0__majority7_module_56_n3) );
  XOR2_X1 u_cini_module_0__majority7_module_56_U8 ( .A(
        n_cini_module_0__xor_module_33_res), .B(
        n_cini_module_0__majority7_module_56_n11), .Z(
        n_cini_module_0__majority7_module_56_n9) );
  NAND2_X1 u_cini_module_0__majority7_module_56_U7 ( .A1(
        n_cini_module_0__xor_module_81_res), .A2(
        n_cini_module_0__majority7_module_56_n9), .ZN(
        n_cini_module_0__majority7_module_56_n5) );
  XOR2_X1 u_cini_module_0__majority7_module_56_U6 ( .A(
        n_cini_module_0__xor_module_69_res), .B(
        n_cini_module_0__majority7_module_56_n10), .Z(
        n_cini_module_0__majority7_module_56_n7) );
  OR2_X1 u_cini_module_0__majority7_module_56_U5 ( .A1(
        n_cini_module_0__majority7_module_56_n9), .A2(
        n_cini_module_0__xor_module_81_res), .ZN(
        n_cini_module_0__majority7_module_56_n8) );
  NAND2_X1 u_cini_module_0__majority7_module_56_U4 ( .A1(
        n_cini_module_0__majority7_module_56_n7), .A2(
        n_cini_module_0__majority7_module_56_n8), .ZN(
        n_cini_module_0__majority7_module_56_n6) );
  NAND2_X1 u_cini_module_0__majority7_module_56_U3 ( .A1(
        n_cini_module_0__majority7_module_56_n5), .A2(
        n_cini_module_0__majority7_module_56_n6), .ZN(
        n_cini_module_0__majority7_module_56_n4) );
  NAND2_X1 u_cini_module_0__majority7_module_56_U2 ( .A1(
        n_cini_module_0__majority7_module_56_n3), .A2(
        n_cini_module_0__majority7_module_56_n4), .ZN(
        n_cini_module_0__majority7_module_56_n2) );
  NAND2_X1 u_cini_module_0__majority7_module_56_U1 ( .A1(
        n_cini_module_0__majority7_module_56_n1), .A2(
        n_cini_module_0__majority7_module_56_n2), .ZN(
        n_cini_module_0__majority7_module_56_res) );
  DFF_X1 u_cini_module_0__reg_module_265__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority7_module_56_res), .CK(clock_4), .Q(
        n_cini_module_0__reg_module_265_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_133_U1 ( .A1(
        n_cini_module_0__reg_module_265_res), .A2(io_a_s2_d4), .ZN(
        n_cini_module_0__and_module_133_res) );
  DFF_X1 u_cini_module_0__reg_module_266__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_133_res), .CK(clock_4), .Q(
        n_cini_module_0__reg_module_266_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_196_U1 ( .A(
        n_cini_module_0__reg_module_264_res), .B(
        n_cini_module_0__reg_module_266_res), .Z(
        n_cini_module_0__xor_module_196_res) );
  XOR2_X1 u_cini_module_0__xor_module_197_U1 ( .A(
        n_cini_module_0__xor_module_195_res), .B(
        n_cini_module_0__xor_module_196_res), .Z(
        n_cini_module_0__xor_module_197_res) );
  XOR2_X1 u_cini_module_0__xor_module_198_U1 ( .A(
        n_cini_module_0__xor_module_197_res), .B(
        n_cini_module_0__reg_module_254_res), .Z(io_c_s2_d4) );
  DFF_X1 u_cini_module_0__reg_module_267__hpc_correct_b_s0_d0_reg ( .D(
        io_b_s3_d4), .CK(clock_4), .Q(n_cini_module_0__reg_module_267_res), 
        .QN() );
  AND2_X1 u_cini_module_0__and_module_134_U1 ( .A1(
        n_cini_module_0__reg_module_267_res), .A2(io_a_s3_d4), .ZN(
        n_cini_module_0__and_module_134_res) );
  DFF_X1 u_cini_module_0__reg_module_268__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_134_res), .CK(clock_4), .Q(
        n_cini_module_0__reg_module_268_res), .QN() );
  DFF_X1 u_cini_module_0__reg_module_269__hpc_correct_b_s0_d0_reg ( .D(
        p_rand_2), .CK(clock_4), .Q(n_cini_module_0__reg_module_269_res), 
        .QN() );
  INV_X1 u_cini_module_0__not_module_58_U1 ( .A(io_a_s3_d4), .ZN(
        n_cini_module_0__not_module_58_res) );
  AND2_X1 u_cini_module_0__and_module_135_U1 ( .A1(
        n_cini_module_0__not_module_58_res), .A2(
        n_cini_module_0__reg_module_269_res), .ZN(
        n_cini_module_0__and_module_135_res) );
  DFF_X1 u_cini_module_0__reg_module_270__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_135_res), .CK(clock_4), .Q(
        n_cini_module_0__reg_module_270_res), .QN() );
  NAND2_X1 u_cini_module_0__majority7_module_57_U18 ( .A1(
        n_cini_module_0__xor_module_46_res), .A2(
        n_cini_module_0__xor_module_58_res), .ZN(
        n_cini_module_0__majority7_module_57_n16) );
  XOR2_X1 u_cini_module_0__majority7_module_57_U17 ( .A(
        n_cini_module_0__xor_module_46_res), .B(
        n_cini_module_0__xor_module_58_res), .Z(
        n_cini_module_0__majority7_module_57_n10) );
  NAND2_X1 u_cini_module_0__majority7_module_57_U16 ( .A1(
        n_cini_module_0__xor_module_70_res), .A2(
        n_cini_module_0__majority7_module_57_n10), .ZN(
        n_cini_module_0__majority7_module_57_n17) );
  NAND2_X1 u_cini_module_0__majority7_module_57_U15 ( .A1(
        n_cini_module_0__majority7_module_57_n16), .A2(
        n_cini_module_0__majority7_module_57_n17), .ZN(
        n_cini_module_0__majority7_module_57_n13) );
  NAND2_X1 u_cini_module_0__majority7_module_57_U14 ( .A1(
        n_cini_module_0__xor_module_10_res), .A2(
        n_cini_module_0__xor_module_22_res), .ZN(
        n_cini_module_0__majority7_module_57_n14) );
  XOR2_X1 u_cini_module_0__majority7_module_57_U13 ( .A(
        n_cini_module_0__xor_module_10_res), .B(
        n_cini_module_0__xor_module_22_res), .Z(
        n_cini_module_0__majority7_module_57_n11) );
  NAND2_X1 u_cini_module_0__majority7_module_57_U12 ( .A1(
        n_cini_module_0__xor_module_34_res), .A2(
        n_cini_module_0__majority7_module_57_n11), .ZN(
        n_cini_module_0__majority7_module_57_n15) );
  NAND2_X1 u_cini_module_0__majority7_module_57_U11 ( .A1(
        n_cini_module_0__majority7_module_57_n14), .A2(
        n_cini_module_0__majority7_module_57_n15), .ZN(
        n_cini_module_0__majority7_module_57_n12) );
  NAND2_X1 u_cini_module_0__majority7_module_57_U10 ( .A1(
        n_cini_module_0__majority7_module_57_n13), .A2(
        n_cini_module_0__majority7_module_57_n12), .ZN(
        n_cini_module_0__majority7_module_57_n1) );
  OR2_X1 u_cini_module_0__majority7_module_57_U9 ( .A1(
        n_cini_module_0__majority7_module_57_n12), .A2(
        n_cini_module_0__majority7_module_57_n13), .ZN(
        n_cini_module_0__majority7_module_57_n3) );
  XOR2_X1 u_cini_module_0__majority7_module_57_U8 ( .A(
        n_cini_module_0__xor_module_34_res), .B(
        n_cini_module_0__majority7_module_57_n11), .Z(
        n_cini_module_0__majority7_module_57_n9) );
  NAND2_X1 u_cini_module_0__majority7_module_57_U7 ( .A1(
        n_cini_module_0__xor_module_82_res), .A2(
        n_cini_module_0__majority7_module_57_n9), .ZN(
        n_cini_module_0__majority7_module_57_n5) );
  XOR2_X1 u_cini_module_0__majority7_module_57_U6 ( .A(
        n_cini_module_0__xor_module_70_res), .B(
        n_cini_module_0__majority7_module_57_n10), .Z(
        n_cini_module_0__majority7_module_57_n7) );
  OR2_X1 u_cini_module_0__majority7_module_57_U5 ( .A1(
        n_cini_module_0__majority7_module_57_n9), .A2(
        n_cini_module_0__xor_module_82_res), .ZN(
        n_cini_module_0__majority7_module_57_n8) );
  NAND2_X1 u_cini_module_0__majority7_module_57_U4 ( .A1(
        n_cini_module_0__majority7_module_57_n7), .A2(
        n_cini_module_0__majority7_module_57_n8), .ZN(
        n_cini_module_0__majority7_module_57_n6) );
  NAND2_X1 u_cini_module_0__majority7_module_57_U3 ( .A1(
        n_cini_module_0__majority7_module_57_n5), .A2(
        n_cini_module_0__majority7_module_57_n6), .ZN(
        n_cini_module_0__majority7_module_57_n4) );
  NAND2_X1 u_cini_module_0__majority7_module_57_U2 ( .A1(
        n_cini_module_0__majority7_module_57_n3), .A2(
        n_cini_module_0__majority7_module_57_n4), .ZN(
        n_cini_module_0__majority7_module_57_n2) );
  NAND2_X1 u_cini_module_0__majority7_module_57_U1 ( .A1(
        n_cini_module_0__majority7_module_57_n1), .A2(
        n_cini_module_0__majority7_module_57_n2), .ZN(
        n_cini_module_0__majority7_module_57_res) );
  DFF_X1 u_cini_module_0__reg_module_271__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority7_module_57_res), .CK(clock_4), .Q(
        n_cini_module_0__reg_module_271_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_136_U1 ( .A1(
        n_cini_module_0__reg_module_271_res), .A2(io_a_s3_d4), .ZN(
        n_cini_module_0__and_module_136_res) );
  DFF_X1 u_cini_module_0__reg_module_272__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_136_res), .CK(clock_4), .Q(
        n_cini_module_0__reg_module_272_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_199_U1 ( .A(
        n_cini_module_0__reg_module_270_res), .B(
        n_cini_module_0__reg_module_272_res), .Z(
        n_cini_module_0__xor_module_199_res) );
  DFF_X1 u_cini_module_0__reg_module_273__hpc_correct_b_s0_d0_reg ( .D(
        p_rand_4), .CK(clock_4), .Q(n_cini_module_0__reg_module_273_res), 
        .QN() );
  INV_X1 u_cini_module_0__not_module_59_U1 ( .A(io_a_s3_d4), .ZN(
        n_cini_module_0__not_module_59_res) );
  AND2_X1 u_cini_module_0__and_module_137_U1 ( .A1(
        n_cini_module_0__not_module_59_res), .A2(
        n_cini_module_0__reg_module_273_res), .ZN(
        n_cini_module_0__and_module_137_res) );
  DFF_X1 u_cini_module_0__reg_module_274__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_137_res), .CK(clock_4), .Q(
        n_cini_module_0__reg_module_274_res), .QN() );
  NAND2_X1 u_cini_module_0__majority7_module_58_U18 ( .A1(
        n_cini_module_0__xor_module_47_res), .A2(
        n_cini_module_0__xor_module_59_res), .ZN(
        n_cini_module_0__majority7_module_58_n16) );
  XOR2_X1 u_cini_module_0__majority7_module_58_U17 ( .A(
        n_cini_module_0__xor_module_47_res), .B(
        n_cini_module_0__xor_module_59_res), .Z(
        n_cini_module_0__majority7_module_58_n10) );
  NAND2_X1 u_cini_module_0__majority7_module_58_U16 ( .A1(
        n_cini_module_0__xor_module_71_res), .A2(
        n_cini_module_0__majority7_module_58_n10), .ZN(
        n_cini_module_0__majority7_module_58_n17) );
  NAND2_X1 u_cini_module_0__majority7_module_58_U15 ( .A1(
        n_cini_module_0__majority7_module_58_n16), .A2(
        n_cini_module_0__majority7_module_58_n17), .ZN(
        n_cini_module_0__majority7_module_58_n13) );
  NAND2_X1 u_cini_module_0__majority7_module_58_U14 ( .A1(
        n_cini_module_0__xor_module_11_res), .A2(
        n_cini_module_0__xor_module_23_res), .ZN(
        n_cini_module_0__majority7_module_58_n14) );
  XOR2_X1 u_cini_module_0__majority7_module_58_U13 ( .A(
        n_cini_module_0__xor_module_11_res), .B(
        n_cini_module_0__xor_module_23_res), .Z(
        n_cini_module_0__majority7_module_58_n11) );
  NAND2_X1 u_cini_module_0__majority7_module_58_U12 ( .A1(
        n_cini_module_0__xor_module_35_res), .A2(
        n_cini_module_0__majority7_module_58_n11), .ZN(
        n_cini_module_0__majority7_module_58_n15) );
  NAND2_X1 u_cini_module_0__majority7_module_58_U11 ( .A1(
        n_cini_module_0__majority7_module_58_n14), .A2(
        n_cini_module_0__majority7_module_58_n15), .ZN(
        n_cini_module_0__majority7_module_58_n12) );
  NAND2_X1 u_cini_module_0__majority7_module_58_U10 ( .A1(
        n_cini_module_0__majority7_module_58_n13), .A2(
        n_cini_module_0__majority7_module_58_n12), .ZN(
        n_cini_module_0__majority7_module_58_n1) );
  OR2_X1 u_cini_module_0__majority7_module_58_U9 ( .A1(
        n_cini_module_0__majority7_module_58_n12), .A2(
        n_cini_module_0__majority7_module_58_n13), .ZN(
        n_cini_module_0__majority7_module_58_n3) );
  XOR2_X1 u_cini_module_0__majority7_module_58_U8 ( .A(
        n_cini_module_0__xor_module_35_res), .B(
        n_cini_module_0__majority7_module_58_n11), .Z(
        n_cini_module_0__majority7_module_58_n9) );
  NAND2_X1 u_cini_module_0__majority7_module_58_U7 ( .A1(
        n_cini_module_0__xor_module_83_res), .A2(
        n_cini_module_0__majority7_module_58_n9), .ZN(
        n_cini_module_0__majority7_module_58_n5) );
  XOR2_X1 u_cini_module_0__majority7_module_58_U6 ( .A(
        n_cini_module_0__xor_module_71_res), .B(
        n_cini_module_0__majority7_module_58_n10), .Z(
        n_cini_module_0__majority7_module_58_n7) );
  OR2_X1 u_cini_module_0__majority7_module_58_U5 ( .A1(
        n_cini_module_0__majority7_module_58_n9), .A2(
        n_cini_module_0__xor_module_83_res), .ZN(
        n_cini_module_0__majority7_module_58_n8) );
  NAND2_X1 u_cini_module_0__majority7_module_58_U4 ( .A1(
        n_cini_module_0__majority7_module_58_n7), .A2(
        n_cini_module_0__majority7_module_58_n8), .ZN(
        n_cini_module_0__majority7_module_58_n6) );
  NAND2_X1 u_cini_module_0__majority7_module_58_U3 ( .A1(
        n_cini_module_0__majority7_module_58_n5), .A2(
        n_cini_module_0__majority7_module_58_n6), .ZN(
        n_cini_module_0__majority7_module_58_n4) );
  NAND2_X1 u_cini_module_0__majority7_module_58_U2 ( .A1(
        n_cini_module_0__majority7_module_58_n3), .A2(
        n_cini_module_0__majority7_module_58_n4), .ZN(
        n_cini_module_0__majority7_module_58_n2) );
  NAND2_X1 u_cini_module_0__majority7_module_58_U1 ( .A1(
        n_cini_module_0__majority7_module_58_n1), .A2(
        n_cini_module_0__majority7_module_58_n2), .ZN(
        n_cini_module_0__majority7_module_58_res) );
  DFF_X1 u_cini_module_0__reg_module_275__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority7_module_58_res), .CK(clock_4), .Q(
        n_cini_module_0__reg_module_275_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_138_U1 ( .A1(
        n_cini_module_0__reg_module_275_res), .A2(io_a_s3_d4), .ZN(
        n_cini_module_0__and_module_138_res) );
  DFF_X1 u_cini_module_0__reg_module_276__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_138_res), .CK(clock_4), .Q(
        n_cini_module_0__reg_module_276_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_200_U1 ( .A(
        n_cini_module_0__reg_module_274_res), .B(
        n_cini_module_0__reg_module_276_res), .Z(
        n_cini_module_0__xor_module_200_res) );
  XOR2_X1 u_cini_module_0__xor_module_201_U1 ( .A(
        n_cini_module_0__xor_module_199_res), .B(
        n_cini_module_0__xor_module_200_res), .Z(
        n_cini_module_0__xor_module_201_res) );
  DFF_X1 u_cini_module_0__reg_module_277__hpc_correct_b_s0_d0_reg ( .D(
        p_rand_5), .CK(clock_4), .Q(n_cini_module_0__reg_module_277_res), 
        .QN() );
  INV_X1 u_cini_module_0__not_module_60_U1 ( .A(io_a_s3_d4), .ZN(
        n_cini_module_0__not_module_60_res) );
  AND2_X1 u_cini_module_0__and_module_139_U1 ( .A1(
        n_cini_module_0__not_module_60_res), .A2(
        n_cini_module_0__reg_module_277_res), .ZN(
        n_cini_module_0__and_module_139_res) );
  DFF_X1 u_cini_module_0__reg_module_278__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_139_res), .CK(clock_4), .Q(
        n_cini_module_0__reg_module_278_res), .QN() );
  NAND2_X1 u_cini_module_0__majority7_module_59_U18 ( .A1(
        n_cini_module_0__xor_module_48_res), .A2(
        n_cini_module_0__xor_module_60_res), .ZN(
        n_cini_module_0__majority7_module_59_n16) );
  XOR2_X1 u_cini_module_0__majority7_module_59_U17 ( .A(
        n_cini_module_0__xor_module_48_res), .B(
        n_cini_module_0__xor_module_60_res), .Z(
        n_cini_module_0__majority7_module_59_n10) );
  NAND2_X1 u_cini_module_0__majority7_module_59_U16 ( .A1(
        n_cini_module_0__xor_module_72_res), .A2(
        n_cini_module_0__majority7_module_59_n10), .ZN(
        n_cini_module_0__majority7_module_59_n17) );
  NAND2_X1 u_cini_module_0__majority7_module_59_U15 ( .A1(
        n_cini_module_0__majority7_module_59_n16), .A2(
        n_cini_module_0__majority7_module_59_n17), .ZN(
        n_cini_module_0__majority7_module_59_n13) );
  NAND2_X1 u_cini_module_0__majority7_module_59_U14 ( .A1(
        n_cini_module_0__xor_module_12_res), .A2(
        n_cini_module_0__xor_module_24_res), .ZN(
        n_cini_module_0__majority7_module_59_n14) );
  XOR2_X1 u_cini_module_0__majority7_module_59_U13 ( .A(
        n_cini_module_0__xor_module_12_res), .B(
        n_cini_module_0__xor_module_24_res), .Z(
        n_cini_module_0__majority7_module_59_n11) );
  NAND2_X1 u_cini_module_0__majority7_module_59_U12 ( .A1(
        n_cini_module_0__xor_module_36_res), .A2(
        n_cini_module_0__majority7_module_59_n11), .ZN(
        n_cini_module_0__majority7_module_59_n15) );
  NAND2_X1 u_cini_module_0__majority7_module_59_U11 ( .A1(
        n_cini_module_0__majority7_module_59_n14), .A2(
        n_cini_module_0__majority7_module_59_n15), .ZN(
        n_cini_module_0__majority7_module_59_n12) );
  NAND2_X1 u_cini_module_0__majority7_module_59_U10 ( .A1(
        n_cini_module_0__majority7_module_59_n13), .A2(
        n_cini_module_0__majority7_module_59_n12), .ZN(
        n_cini_module_0__majority7_module_59_n1) );
  OR2_X1 u_cini_module_0__majority7_module_59_U9 ( .A1(
        n_cini_module_0__majority7_module_59_n12), .A2(
        n_cini_module_0__majority7_module_59_n13), .ZN(
        n_cini_module_0__majority7_module_59_n3) );
  XOR2_X1 u_cini_module_0__majority7_module_59_U8 ( .A(
        n_cini_module_0__xor_module_36_res), .B(
        n_cini_module_0__majority7_module_59_n11), .Z(
        n_cini_module_0__majority7_module_59_n9) );
  NAND2_X1 u_cini_module_0__majority7_module_59_U7 ( .A1(
        n_cini_module_0__xor_module_84_res), .A2(
        n_cini_module_0__majority7_module_59_n9), .ZN(
        n_cini_module_0__majority7_module_59_n5) );
  XOR2_X1 u_cini_module_0__majority7_module_59_U6 ( .A(
        n_cini_module_0__xor_module_72_res), .B(
        n_cini_module_0__majority7_module_59_n10), .Z(
        n_cini_module_0__majority7_module_59_n7) );
  OR2_X1 u_cini_module_0__majority7_module_59_U5 ( .A1(
        n_cini_module_0__majority7_module_59_n9), .A2(
        n_cini_module_0__xor_module_84_res), .ZN(
        n_cini_module_0__majority7_module_59_n8) );
  NAND2_X1 u_cini_module_0__majority7_module_59_U4 ( .A1(
        n_cini_module_0__majority7_module_59_n7), .A2(
        n_cini_module_0__majority7_module_59_n8), .ZN(
        n_cini_module_0__majority7_module_59_n6) );
  NAND2_X1 u_cini_module_0__majority7_module_59_U3 ( .A1(
        n_cini_module_0__majority7_module_59_n5), .A2(
        n_cini_module_0__majority7_module_59_n6), .ZN(
        n_cini_module_0__majority7_module_59_n4) );
  NAND2_X1 u_cini_module_0__majority7_module_59_U2 ( .A1(
        n_cini_module_0__majority7_module_59_n3), .A2(
        n_cini_module_0__majority7_module_59_n4), .ZN(
        n_cini_module_0__majority7_module_59_n2) );
  NAND2_X1 u_cini_module_0__majority7_module_59_U1 ( .A1(
        n_cini_module_0__majority7_module_59_n1), .A2(
        n_cini_module_0__majority7_module_59_n2), .ZN(
        n_cini_module_0__majority7_module_59_res) );
  DFF_X1 u_cini_module_0__reg_module_279__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority7_module_59_res), .CK(clock_4), .Q(
        n_cini_module_0__reg_module_279_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_140_U1 ( .A1(
        n_cini_module_0__reg_module_279_res), .A2(io_a_s3_d4), .ZN(
        n_cini_module_0__and_module_140_res) );
  DFF_X1 u_cini_module_0__reg_module_280__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_140_res), .CK(clock_4), .Q(
        n_cini_module_0__reg_module_280_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_202_U1 ( .A(
        n_cini_module_0__reg_module_278_res), .B(
        n_cini_module_0__reg_module_280_res), .Z(
        n_cini_module_0__xor_module_202_res) );
  XOR2_X1 u_cini_module_0__xor_module_203_U1 ( .A(
        n_cini_module_0__xor_module_201_res), .B(
        n_cini_module_0__xor_module_202_res), .Z(
        n_cini_module_0__xor_module_203_res) );
  XOR2_X1 u_cini_module_0__xor_module_204_U1 ( .A(
        n_cini_module_0__xor_module_203_res), .B(
        n_cini_module_0__reg_module_268_res), .Z(io_c_s3_d4) );
  DFF_X1 u_cini_module_0__reg_module_281__hpc_correct_b_s0_d0_reg ( .D(
        io_b_s0_d5), .CK(clock_5), .Q(n_cini_module_0__reg_module_281_res), 
        .QN() );
  AND2_X1 u_cini_module_0__and_module_141_U1 ( .A1(
        n_cini_module_0__reg_module_281_res), .A2(io_a_s0_d5), .ZN(
        n_cini_module_0__and_module_141_res) );
  DFF_X1 u_cini_module_0__reg_module_282__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_141_res), .CK(clock_5), .Q(
        n_cini_module_0__reg_module_282_res), .QN() );
  DFF_X1 u_cini_module_0__reg_module_283__hpc_correct_b_s0_d0_reg ( .D(
        p_rand_0), .CK(clock_5), .Q(n_cini_module_0__reg_module_283_res), 
        .QN() );
  INV_X1 u_cini_module_0__not_module_61_U1 ( .A(io_a_s0_d5), .ZN(
        n_cini_module_0__not_module_61_res) );
  AND2_X1 u_cini_module_0__and_module_142_U1 ( .A1(
        n_cini_module_0__not_module_61_res), .A2(
        n_cini_module_0__reg_module_283_res), .ZN(
        n_cini_module_0__and_module_142_res) );
  DFF_X1 u_cini_module_0__reg_module_284__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_142_res), .CK(clock_5), .Q(
        n_cini_module_0__reg_module_284_res), .QN() );
  NAND2_X1 u_cini_module_0__majority7_module_60_U18 ( .A1(
        n_cini_module_0__xor_module_37_res), .A2(
        n_cini_module_0__xor_module_49_res), .ZN(
        n_cini_module_0__majority7_module_60_n16) );
  XOR2_X1 u_cini_module_0__majority7_module_60_U17 ( .A(
        n_cini_module_0__xor_module_37_res), .B(
        n_cini_module_0__xor_module_49_res), .Z(
        n_cini_module_0__majority7_module_60_n10) );
  NAND2_X1 u_cini_module_0__majority7_module_60_U16 ( .A1(
        n_cini_module_0__xor_module_61_res), .A2(
        n_cini_module_0__majority7_module_60_n10), .ZN(
        n_cini_module_0__majority7_module_60_n17) );
  NAND2_X1 u_cini_module_0__majority7_module_60_U15 ( .A1(
        n_cini_module_0__majority7_module_60_n16), .A2(
        n_cini_module_0__majority7_module_60_n17), .ZN(
        n_cini_module_0__majority7_module_60_n13) );
  NAND2_X1 u_cini_module_0__majority7_module_60_U14 ( .A1(
        n_cini_module_0__xor_module_1_res), .A2(
        n_cini_module_0__xor_module_13_res), .ZN(
        n_cini_module_0__majority7_module_60_n14) );
  XOR2_X1 u_cini_module_0__majority7_module_60_U13 ( .A(
        n_cini_module_0__xor_module_1_res), .B(
        n_cini_module_0__xor_module_13_res), .Z(
        n_cini_module_0__majority7_module_60_n11) );
  NAND2_X1 u_cini_module_0__majority7_module_60_U12 ( .A1(
        n_cini_module_0__xor_module_25_res), .A2(
        n_cini_module_0__majority7_module_60_n11), .ZN(
        n_cini_module_0__majority7_module_60_n15) );
  NAND2_X1 u_cini_module_0__majority7_module_60_U11 ( .A1(
        n_cini_module_0__majority7_module_60_n14), .A2(
        n_cini_module_0__majority7_module_60_n15), .ZN(
        n_cini_module_0__majority7_module_60_n12) );
  NAND2_X1 u_cini_module_0__majority7_module_60_U10 ( .A1(
        n_cini_module_0__majority7_module_60_n13), .A2(
        n_cini_module_0__majority7_module_60_n12), .ZN(
        n_cini_module_0__majority7_module_60_n1) );
  OR2_X1 u_cini_module_0__majority7_module_60_U9 ( .A1(
        n_cini_module_0__majority7_module_60_n12), .A2(
        n_cini_module_0__majority7_module_60_n13), .ZN(
        n_cini_module_0__majority7_module_60_n3) );
  XOR2_X1 u_cini_module_0__majority7_module_60_U8 ( .A(
        n_cini_module_0__xor_module_25_res), .B(
        n_cini_module_0__majority7_module_60_n11), .Z(
        n_cini_module_0__majority7_module_60_n9) );
  NAND2_X1 u_cini_module_0__majority7_module_60_U7 ( .A1(
        n_cini_module_0__xor_module_73_res), .A2(
        n_cini_module_0__majority7_module_60_n9), .ZN(
        n_cini_module_0__majority7_module_60_n5) );
  XOR2_X1 u_cini_module_0__majority7_module_60_U6 ( .A(
        n_cini_module_0__xor_module_61_res), .B(
        n_cini_module_0__majority7_module_60_n10), .Z(
        n_cini_module_0__majority7_module_60_n7) );
  OR2_X1 u_cini_module_0__majority7_module_60_U5 ( .A1(
        n_cini_module_0__majority7_module_60_n9), .A2(
        n_cini_module_0__xor_module_73_res), .ZN(
        n_cini_module_0__majority7_module_60_n8) );
  NAND2_X1 u_cini_module_0__majority7_module_60_U4 ( .A1(
        n_cini_module_0__majority7_module_60_n7), .A2(
        n_cini_module_0__majority7_module_60_n8), .ZN(
        n_cini_module_0__majority7_module_60_n6) );
  NAND2_X1 u_cini_module_0__majority7_module_60_U3 ( .A1(
        n_cini_module_0__majority7_module_60_n5), .A2(
        n_cini_module_0__majority7_module_60_n6), .ZN(
        n_cini_module_0__majority7_module_60_n4) );
  NAND2_X1 u_cini_module_0__majority7_module_60_U2 ( .A1(
        n_cini_module_0__majority7_module_60_n3), .A2(
        n_cini_module_0__majority7_module_60_n4), .ZN(
        n_cini_module_0__majority7_module_60_n2) );
  NAND2_X1 u_cini_module_0__majority7_module_60_U1 ( .A1(
        n_cini_module_0__majority7_module_60_n1), .A2(
        n_cini_module_0__majority7_module_60_n2), .ZN(
        n_cini_module_0__majority7_module_60_res) );
  DFF_X1 u_cini_module_0__reg_module_285__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority7_module_60_res), .CK(clock_5), .Q(
        n_cini_module_0__reg_module_285_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_143_U1 ( .A1(
        n_cini_module_0__reg_module_285_res), .A2(io_a_s0_d5), .ZN(
        n_cini_module_0__and_module_143_res) );
  DFF_X1 u_cini_module_0__reg_module_286__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_143_res), .CK(clock_5), .Q(
        n_cini_module_0__reg_module_286_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_205_U1 ( .A(
        n_cini_module_0__reg_module_284_res), .B(
        n_cini_module_0__reg_module_286_res), .Z(
        n_cini_module_0__xor_module_205_res) );
  DFF_X1 u_cini_module_0__reg_module_287__hpc_correct_b_s0_d0_reg ( .D(
        p_rand_1), .CK(clock_5), .Q(n_cini_module_0__reg_module_287_res), 
        .QN() );
  INV_X1 u_cini_module_0__not_module_62_U1 ( .A(io_a_s0_d5), .ZN(
        n_cini_module_0__not_module_62_res) );
  AND2_X1 u_cini_module_0__and_module_144_U1 ( .A1(
        n_cini_module_0__not_module_62_res), .A2(
        n_cini_module_0__reg_module_287_res), .ZN(
        n_cini_module_0__and_module_144_res) );
  DFF_X1 u_cini_module_0__reg_module_288__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_144_res), .CK(clock_5), .Q(
        n_cini_module_0__reg_module_288_res), .QN() );
  NAND2_X1 u_cini_module_0__majority7_module_61_U18 ( .A1(
        n_cini_module_0__xor_module_38_res), .A2(
        n_cini_module_0__xor_module_50_res), .ZN(
        n_cini_module_0__majority7_module_61_n16) );
  XOR2_X1 u_cini_module_0__majority7_module_61_U17 ( .A(
        n_cini_module_0__xor_module_38_res), .B(
        n_cini_module_0__xor_module_50_res), .Z(
        n_cini_module_0__majority7_module_61_n10) );
  NAND2_X1 u_cini_module_0__majority7_module_61_U16 ( .A1(
        n_cini_module_0__xor_module_62_res), .A2(
        n_cini_module_0__majority7_module_61_n10), .ZN(
        n_cini_module_0__majority7_module_61_n17) );
  NAND2_X1 u_cini_module_0__majority7_module_61_U15 ( .A1(
        n_cini_module_0__majority7_module_61_n16), .A2(
        n_cini_module_0__majority7_module_61_n17), .ZN(
        n_cini_module_0__majority7_module_61_n13) );
  NAND2_X1 u_cini_module_0__majority7_module_61_U14 ( .A1(
        n_cini_module_0__xor_module_2_res), .A2(
        n_cini_module_0__xor_module_14_res), .ZN(
        n_cini_module_0__majority7_module_61_n14) );
  XOR2_X1 u_cini_module_0__majority7_module_61_U13 ( .A(
        n_cini_module_0__xor_module_2_res), .B(
        n_cini_module_0__xor_module_14_res), .Z(
        n_cini_module_0__majority7_module_61_n11) );
  NAND2_X1 u_cini_module_0__majority7_module_61_U12 ( .A1(
        n_cini_module_0__xor_module_26_res), .A2(
        n_cini_module_0__majority7_module_61_n11), .ZN(
        n_cini_module_0__majority7_module_61_n15) );
  NAND2_X1 u_cini_module_0__majority7_module_61_U11 ( .A1(
        n_cini_module_0__majority7_module_61_n14), .A2(
        n_cini_module_0__majority7_module_61_n15), .ZN(
        n_cini_module_0__majority7_module_61_n12) );
  NAND2_X1 u_cini_module_0__majority7_module_61_U10 ( .A1(
        n_cini_module_0__majority7_module_61_n13), .A2(
        n_cini_module_0__majority7_module_61_n12), .ZN(
        n_cini_module_0__majority7_module_61_n1) );
  OR2_X1 u_cini_module_0__majority7_module_61_U9 ( .A1(
        n_cini_module_0__majority7_module_61_n12), .A2(
        n_cini_module_0__majority7_module_61_n13), .ZN(
        n_cini_module_0__majority7_module_61_n3) );
  XOR2_X1 u_cini_module_0__majority7_module_61_U8 ( .A(
        n_cini_module_0__xor_module_26_res), .B(
        n_cini_module_0__majority7_module_61_n11), .Z(
        n_cini_module_0__majority7_module_61_n9) );
  NAND2_X1 u_cini_module_0__majority7_module_61_U7 ( .A1(
        n_cini_module_0__xor_module_74_res), .A2(
        n_cini_module_0__majority7_module_61_n9), .ZN(
        n_cini_module_0__majority7_module_61_n5) );
  XOR2_X1 u_cini_module_0__majority7_module_61_U6 ( .A(
        n_cini_module_0__xor_module_62_res), .B(
        n_cini_module_0__majority7_module_61_n10), .Z(
        n_cini_module_0__majority7_module_61_n7) );
  OR2_X1 u_cini_module_0__majority7_module_61_U5 ( .A1(
        n_cini_module_0__majority7_module_61_n9), .A2(
        n_cini_module_0__xor_module_74_res), .ZN(
        n_cini_module_0__majority7_module_61_n8) );
  NAND2_X1 u_cini_module_0__majority7_module_61_U4 ( .A1(
        n_cini_module_0__majority7_module_61_n7), .A2(
        n_cini_module_0__majority7_module_61_n8), .ZN(
        n_cini_module_0__majority7_module_61_n6) );
  NAND2_X1 u_cini_module_0__majority7_module_61_U3 ( .A1(
        n_cini_module_0__majority7_module_61_n5), .A2(
        n_cini_module_0__majority7_module_61_n6), .ZN(
        n_cini_module_0__majority7_module_61_n4) );
  NAND2_X1 u_cini_module_0__majority7_module_61_U2 ( .A1(
        n_cini_module_0__majority7_module_61_n3), .A2(
        n_cini_module_0__majority7_module_61_n4), .ZN(
        n_cini_module_0__majority7_module_61_n2) );
  NAND2_X1 u_cini_module_0__majority7_module_61_U1 ( .A1(
        n_cini_module_0__majority7_module_61_n1), .A2(
        n_cini_module_0__majority7_module_61_n2), .ZN(
        n_cini_module_0__majority7_module_61_res) );
  DFF_X1 u_cini_module_0__reg_module_289__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority7_module_61_res), .CK(clock_5), .Q(
        n_cini_module_0__reg_module_289_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_145_U1 ( .A1(
        n_cini_module_0__reg_module_289_res), .A2(io_a_s0_d5), .ZN(
        n_cini_module_0__and_module_145_res) );
  DFF_X1 u_cini_module_0__reg_module_290__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_145_res), .CK(clock_5), .Q(
        n_cini_module_0__reg_module_290_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_206_U1 ( .A(
        n_cini_module_0__reg_module_288_res), .B(
        n_cini_module_0__reg_module_290_res), .Z(
        n_cini_module_0__xor_module_206_res) );
  XOR2_X1 u_cini_module_0__xor_module_207_U1 ( .A(
        n_cini_module_0__xor_module_205_res), .B(
        n_cini_module_0__xor_module_206_res), .Z(
        n_cini_module_0__xor_module_207_res) );
  DFF_X1 u_cini_module_0__reg_module_291__hpc_correct_b_s0_d0_reg ( .D(
        p_rand_2), .CK(clock_5), .Q(n_cini_module_0__reg_module_291_res), 
        .QN() );
  INV_X1 u_cini_module_0__not_module_63_U1 ( .A(io_a_s0_d5), .ZN(
        n_cini_module_0__not_module_63_res) );
  AND2_X1 u_cini_module_0__and_module_146_U1 ( .A1(
        n_cini_module_0__not_module_63_res), .A2(
        n_cini_module_0__reg_module_291_res), .ZN(
        n_cini_module_0__and_module_146_res) );
  DFF_X1 u_cini_module_0__reg_module_292__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_146_res), .CK(clock_5), .Q(
        n_cini_module_0__reg_module_292_res), .QN() );
  NAND2_X1 u_cini_module_0__majority7_module_62_U18 ( .A1(
        n_cini_module_0__xor_module_39_res), .A2(
        n_cini_module_0__xor_module_51_res), .ZN(
        n_cini_module_0__majority7_module_62_n16) );
  XOR2_X1 u_cini_module_0__majority7_module_62_U17 ( .A(
        n_cini_module_0__xor_module_39_res), .B(
        n_cini_module_0__xor_module_51_res), .Z(
        n_cini_module_0__majority7_module_62_n10) );
  NAND2_X1 u_cini_module_0__majority7_module_62_U16 ( .A1(
        n_cini_module_0__xor_module_63_res), .A2(
        n_cini_module_0__majority7_module_62_n10), .ZN(
        n_cini_module_0__majority7_module_62_n17) );
  NAND2_X1 u_cini_module_0__majority7_module_62_U15 ( .A1(
        n_cini_module_0__majority7_module_62_n16), .A2(
        n_cini_module_0__majority7_module_62_n17), .ZN(
        n_cini_module_0__majority7_module_62_n13) );
  NAND2_X1 u_cini_module_0__majority7_module_62_U14 ( .A1(
        n_cini_module_0__xor_module_3_res), .A2(
        n_cini_module_0__xor_module_15_res), .ZN(
        n_cini_module_0__majority7_module_62_n14) );
  XOR2_X1 u_cini_module_0__majority7_module_62_U13 ( .A(
        n_cini_module_0__xor_module_3_res), .B(
        n_cini_module_0__xor_module_15_res), .Z(
        n_cini_module_0__majority7_module_62_n11) );
  NAND2_X1 u_cini_module_0__majority7_module_62_U12 ( .A1(
        n_cini_module_0__xor_module_27_res), .A2(
        n_cini_module_0__majority7_module_62_n11), .ZN(
        n_cini_module_0__majority7_module_62_n15) );
  NAND2_X1 u_cini_module_0__majority7_module_62_U11 ( .A1(
        n_cini_module_0__majority7_module_62_n14), .A2(
        n_cini_module_0__majority7_module_62_n15), .ZN(
        n_cini_module_0__majority7_module_62_n12) );
  NAND2_X1 u_cini_module_0__majority7_module_62_U10 ( .A1(
        n_cini_module_0__majority7_module_62_n13), .A2(
        n_cini_module_0__majority7_module_62_n12), .ZN(
        n_cini_module_0__majority7_module_62_n1) );
  OR2_X1 u_cini_module_0__majority7_module_62_U9 ( .A1(
        n_cini_module_0__majority7_module_62_n12), .A2(
        n_cini_module_0__majority7_module_62_n13), .ZN(
        n_cini_module_0__majority7_module_62_n3) );
  XOR2_X1 u_cini_module_0__majority7_module_62_U8 ( .A(
        n_cini_module_0__xor_module_27_res), .B(
        n_cini_module_0__majority7_module_62_n11), .Z(
        n_cini_module_0__majority7_module_62_n9) );
  NAND2_X1 u_cini_module_0__majority7_module_62_U7 ( .A1(
        n_cini_module_0__xor_module_75_res), .A2(
        n_cini_module_0__majority7_module_62_n9), .ZN(
        n_cini_module_0__majority7_module_62_n5) );
  XOR2_X1 u_cini_module_0__majority7_module_62_U6 ( .A(
        n_cini_module_0__xor_module_63_res), .B(
        n_cini_module_0__majority7_module_62_n10), .Z(
        n_cini_module_0__majority7_module_62_n7) );
  OR2_X1 u_cini_module_0__majority7_module_62_U5 ( .A1(
        n_cini_module_0__majority7_module_62_n9), .A2(
        n_cini_module_0__xor_module_75_res), .ZN(
        n_cini_module_0__majority7_module_62_n8) );
  NAND2_X1 u_cini_module_0__majority7_module_62_U4 ( .A1(
        n_cini_module_0__majority7_module_62_n7), .A2(
        n_cini_module_0__majority7_module_62_n8), .ZN(
        n_cini_module_0__majority7_module_62_n6) );
  NAND2_X1 u_cini_module_0__majority7_module_62_U3 ( .A1(
        n_cini_module_0__majority7_module_62_n5), .A2(
        n_cini_module_0__majority7_module_62_n6), .ZN(
        n_cini_module_0__majority7_module_62_n4) );
  NAND2_X1 u_cini_module_0__majority7_module_62_U2 ( .A1(
        n_cini_module_0__majority7_module_62_n3), .A2(
        n_cini_module_0__majority7_module_62_n4), .ZN(
        n_cini_module_0__majority7_module_62_n2) );
  NAND2_X1 u_cini_module_0__majority7_module_62_U1 ( .A1(
        n_cini_module_0__majority7_module_62_n1), .A2(
        n_cini_module_0__majority7_module_62_n2), .ZN(
        n_cini_module_0__majority7_module_62_res) );
  DFF_X1 u_cini_module_0__reg_module_293__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority7_module_62_res), .CK(clock_5), .Q(
        n_cini_module_0__reg_module_293_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_147_U1 ( .A1(
        n_cini_module_0__reg_module_293_res), .A2(io_a_s0_d5), .ZN(
        n_cini_module_0__and_module_147_res) );
  DFF_X1 u_cini_module_0__reg_module_294__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_147_res), .CK(clock_5), .Q(
        n_cini_module_0__reg_module_294_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_208_U1 ( .A(
        n_cini_module_0__reg_module_292_res), .B(
        n_cini_module_0__reg_module_294_res), .Z(
        n_cini_module_0__xor_module_208_res) );
  XOR2_X1 u_cini_module_0__xor_module_209_U1 ( .A(
        n_cini_module_0__xor_module_207_res), .B(
        n_cini_module_0__xor_module_208_res), .Z(
        n_cini_module_0__xor_module_209_res) );
  XOR2_X1 u_cini_module_0__xor_module_210_U1 ( .A(
        n_cini_module_0__xor_module_209_res), .B(
        n_cini_module_0__reg_module_282_res), .Z(io_c_s0_d5) );
  DFF_X1 u_cini_module_0__reg_module_295__hpc_correct_b_s0_d0_reg ( .D(
        io_b_s1_d5), .CK(clock_5), .Q(n_cini_module_0__reg_module_295_res), 
        .QN() );
  AND2_X1 u_cini_module_0__and_module_148_U1 ( .A1(
        n_cini_module_0__reg_module_295_res), .A2(io_a_s1_d5), .ZN(
        n_cini_module_0__and_module_148_res) );
  DFF_X1 u_cini_module_0__reg_module_296__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_148_res), .CK(clock_5), .Q(
        n_cini_module_0__reg_module_296_res), .QN() );
  DFF_X1 u_cini_module_0__reg_module_297__hpc_correct_b_s0_d0_reg ( .D(
        p_rand_0), .CK(clock_5), .Q(n_cini_module_0__reg_module_297_res), 
        .QN() );
  INV_X1 u_cini_module_0__not_module_64_U1 ( .A(io_a_s1_d5), .ZN(
        n_cini_module_0__not_module_64_res) );
  AND2_X1 u_cini_module_0__and_module_149_U1 ( .A1(
        n_cini_module_0__not_module_64_res), .A2(
        n_cini_module_0__reg_module_297_res), .ZN(
        n_cini_module_0__and_module_149_res) );
  DFF_X1 u_cini_module_0__reg_module_298__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_149_res), .CK(clock_5), .Q(
        n_cini_module_0__reg_module_298_res), .QN() );
  NAND2_X1 u_cini_module_0__majority7_module_63_U18 ( .A1(
        n_cini_module_0__xor_module_40_res), .A2(
        n_cini_module_0__xor_module_52_res), .ZN(
        n_cini_module_0__majority7_module_63_n16) );
  XOR2_X1 u_cini_module_0__majority7_module_63_U17 ( .A(
        n_cini_module_0__xor_module_40_res), .B(
        n_cini_module_0__xor_module_52_res), .Z(
        n_cini_module_0__majority7_module_63_n10) );
  NAND2_X1 u_cini_module_0__majority7_module_63_U16 ( .A1(
        n_cini_module_0__xor_module_64_res), .A2(
        n_cini_module_0__majority7_module_63_n10), .ZN(
        n_cini_module_0__majority7_module_63_n17) );
  NAND2_X1 u_cini_module_0__majority7_module_63_U15 ( .A1(
        n_cini_module_0__majority7_module_63_n16), .A2(
        n_cini_module_0__majority7_module_63_n17), .ZN(
        n_cini_module_0__majority7_module_63_n13) );
  NAND2_X1 u_cini_module_0__majority7_module_63_U14 ( .A1(
        n_cini_module_0__xor_module_4_res), .A2(
        n_cini_module_0__xor_module_16_res), .ZN(
        n_cini_module_0__majority7_module_63_n14) );
  XOR2_X1 u_cini_module_0__majority7_module_63_U13 ( .A(
        n_cini_module_0__xor_module_4_res), .B(
        n_cini_module_0__xor_module_16_res), .Z(
        n_cini_module_0__majority7_module_63_n11) );
  NAND2_X1 u_cini_module_0__majority7_module_63_U12 ( .A1(
        n_cini_module_0__xor_module_28_res), .A2(
        n_cini_module_0__majority7_module_63_n11), .ZN(
        n_cini_module_0__majority7_module_63_n15) );
  NAND2_X1 u_cini_module_0__majority7_module_63_U11 ( .A1(
        n_cini_module_0__majority7_module_63_n14), .A2(
        n_cini_module_0__majority7_module_63_n15), .ZN(
        n_cini_module_0__majority7_module_63_n12) );
  NAND2_X1 u_cini_module_0__majority7_module_63_U10 ( .A1(
        n_cini_module_0__majority7_module_63_n13), .A2(
        n_cini_module_0__majority7_module_63_n12), .ZN(
        n_cini_module_0__majority7_module_63_n1) );
  OR2_X1 u_cini_module_0__majority7_module_63_U9 ( .A1(
        n_cini_module_0__majority7_module_63_n12), .A2(
        n_cini_module_0__majority7_module_63_n13), .ZN(
        n_cini_module_0__majority7_module_63_n3) );
  XOR2_X1 u_cini_module_0__majority7_module_63_U8 ( .A(
        n_cini_module_0__xor_module_28_res), .B(
        n_cini_module_0__majority7_module_63_n11), .Z(
        n_cini_module_0__majority7_module_63_n9) );
  NAND2_X1 u_cini_module_0__majority7_module_63_U7 ( .A1(
        n_cini_module_0__xor_module_76_res), .A2(
        n_cini_module_0__majority7_module_63_n9), .ZN(
        n_cini_module_0__majority7_module_63_n5) );
  XOR2_X1 u_cini_module_0__majority7_module_63_U6 ( .A(
        n_cini_module_0__xor_module_64_res), .B(
        n_cini_module_0__majority7_module_63_n10), .Z(
        n_cini_module_0__majority7_module_63_n7) );
  OR2_X1 u_cini_module_0__majority7_module_63_U5 ( .A1(
        n_cini_module_0__majority7_module_63_n9), .A2(
        n_cini_module_0__xor_module_76_res), .ZN(
        n_cini_module_0__majority7_module_63_n8) );
  NAND2_X1 u_cini_module_0__majority7_module_63_U4 ( .A1(
        n_cini_module_0__majority7_module_63_n7), .A2(
        n_cini_module_0__majority7_module_63_n8), .ZN(
        n_cini_module_0__majority7_module_63_n6) );
  NAND2_X1 u_cini_module_0__majority7_module_63_U3 ( .A1(
        n_cini_module_0__majority7_module_63_n5), .A2(
        n_cini_module_0__majority7_module_63_n6), .ZN(
        n_cini_module_0__majority7_module_63_n4) );
  NAND2_X1 u_cini_module_0__majority7_module_63_U2 ( .A1(
        n_cini_module_0__majority7_module_63_n3), .A2(
        n_cini_module_0__majority7_module_63_n4), .ZN(
        n_cini_module_0__majority7_module_63_n2) );
  NAND2_X1 u_cini_module_0__majority7_module_63_U1 ( .A1(
        n_cini_module_0__majority7_module_63_n1), .A2(
        n_cini_module_0__majority7_module_63_n2), .ZN(
        n_cini_module_0__majority7_module_63_res) );
  DFF_X1 u_cini_module_0__reg_module_299__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority7_module_63_res), .CK(clock_5), .Q(
        n_cini_module_0__reg_module_299_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_150_U1 ( .A1(
        n_cini_module_0__reg_module_299_res), .A2(io_a_s1_d5), .ZN(
        n_cini_module_0__and_module_150_res) );
  DFF_X1 u_cini_module_0__reg_module_300__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_150_res), .CK(clock_5), .Q(
        n_cini_module_0__reg_module_300_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_211_U1 ( .A(
        n_cini_module_0__reg_module_298_res), .B(
        n_cini_module_0__reg_module_300_res), .Z(
        n_cini_module_0__xor_module_211_res) );
  DFF_X1 u_cini_module_0__reg_module_301__hpc_correct_b_s0_d0_reg ( .D(
        p_rand_3), .CK(clock_5), .Q(n_cini_module_0__reg_module_301_res), 
        .QN() );
  INV_X1 u_cini_module_0__not_module_65_U1 ( .A(io_a_s1_d5), .ZN(
        n_cini_module_0__not_module_65_res) );
  AND2_X1 u_cini_module_0__and_module_151_U1 ( .A1(
        n_cini_module_0__not_module_65_res), .A2(
        n_cini_module_0__reg_module_301_res), .ZN(
        n_cini_module_0__and_module_151_res) );
  DFF_X1 u_cini_module_0__reg_module_302__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_151_res), .CK(clock_5), .Q(
        n_cini_module_0__reg_module_302_res), .QN() );
  NAND2_X1 u_cini_module_0__majority7_module_64_U18 ( .A1(
        n_cini_module_0__xor_module_41_res), .A2(
        n_cini_module_0__xor_module_53_res), .ZN(
        n_cini_module_0__majority7_module_64_n16) );
  XOR2_X1 u_cini_module_0__majority7_module_64_U17 ( .A(
        n_cini_module_0__xor_module_41_res), .B(
        n_cini_module_0__xor_module_53_res), .Z(
        n_cini_module_0__majority7_module_64_n10) );
  NAND2_X1 u_cini_module_0__majority7_module_64_U16 ( .A1(
        n_cini_module_0__xor_module_65_res), .A2(
        n_cini_module_0__majority7_module_64_n10), .ZN(
        n_cini_module_0__majority7_module_64_n17) );
  NAND2_X1 u_cini_module_0__majority7_module_64_U15 ( .A1(
        n_cini_module_0__majority7_module_64_n16), .A2(
        n_cini_module_0__majority7_module_64_n17), .ZN(
        n_cini_module_0__majority7_module_64_n13) );
  NAND2_X1 u_cini_module_0__majority7_module_64_U14 ( .A1(
        n_cini_module_0__xor_module_5_res), .A2(
        n_cini_module_0__xor_module_17_res), .ZN(
        n_cini_module_0__majority7_module_64_n14) );
  XOR2_X1 u_cini_module_0__majority7_module_64_U13 ( .A(
        n_cini_module_0__xor_module_5_res), .B(
        n_cini_module_0__xor_module_17_res), .Z(
        n_cini_module_0__majority7_module_64_n11) );
  NAND2_X1 u_cini_module_0__majority7_module_64_U12 ( .A1(
        n_cini_module_0__xor_module_29_res), .A2(
        n_cini_module_0__majority7_module_64_n11), .ZN(
        n_cini_module_0__majority7_module_64_n15) );
  NAND2_X1 u_cini_module_0__majority7_module_64_U11 ( .A1(
        n_cini_module_0__majority7_module_64_n14), .A2(
        n_cini_module_0__majority7_module_64_n15), .ZN(
        n_cini_module_0__majority7_module_64_n12) );
  NAND2_X1 u_cini_module_0__majority7_module_64_U10 ( .A1(
        n_cini_module_0__majority7_module_64_n13), .A2(
        n_cini_module_0__majority7_module_64_n12), .ZN(
        n_cini_module_0__majority7_module_64_n1) );
  OR2_X1 u_cini_module_0__majority7_module_64_U9 ( .A1(
        n_cini_module_0__majority7_module_64_n12), .A2(
        n_cini_module_0__majority7_module_64_n13), .ZN(
        n_cini_module_0__majority7_module_64_n3) );
  XOR2_X1 u_cini_module_0__majority7_module_64_U8 ( .A(
        n_cini_module_0__xor_module_29_res), .B(
        n_cini_module_0__majority7_module_64_n11), .Z(
        n_cini_module_0__majority7_module_64_n9) );
  NAND2_X1 u_cini_module_0__majority7_module_64_U7 ( .A1(
        n_cini_module_0__xor_module_77_res), .A2(
        n_cini_module_0__majority7_module_64_n9), .ZN(
        n_cini_module_0__majority7_module_64_n5) );
  XOR2_X1 u_cini_module_0__majority7_module_64_U6 ( .A(
        n_cini_module_0__xor_module_65_res), .B(
        n_cini_module_0__majority7_module_64_n10), .Z(
        n_cini_module_0__majority7_module_64_n7) );
  OR2_X1 u_cini_module_0__majority7_module_64_U5 ( .A1(
        n_cini_module_0__majority7_module_64_n9), .A2(
        n_cini_module_0__xor_module_77_res), .ZN(
        n_cini_module_0__majority7_module_64_n8) );
  NAND2_X1 u_cini_module_0__majority7_module_64_U4 ( .A1(
        n_cini_module_0__majority7_module_64_n7), .A2(
        n_cini_module_0__majority7_module_64_n8), .ZN(
        n_cini_module_0__majority7_module_64_n6) );
  NAND2_X1 u_cini_module_0__majority7_module_64_U3 ( .A1(
        n_cini_module_0__majority7_module_64_n5), .A2(
        n_cini_module_0__majority7_module_64_n6), .ZN(
        n_cini_module_0__majority7_module_64_n4) );
  NAND2_X1 u_cini_module_0__majority7_module_64_U2 ( .A1(
        n_cini_module_0__majority7_module_64_n3), .A2(
        n_cini_module_0__majority7_module_64_n4), .ZN(
        n_cini_module_0__majority7_module_64_n2) );
  NAND2_X1 u_cini_module_0__majority7_module_64_U1 ( .A1(
        n_cini_module_0__majority7_module_64_n1), .A2(
        n_cini_module_0__majority7_module_64_n2), .ZN(
        n_cini_module_0__majority7_module_64_res) );
  DFF_X1 u_cini_module_0__reg_module_303__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority7_module_64_res), .CK(clock_5), .Q(
        n_cini_module_0__reg_module_303_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_152_U1 ( .A1(
        n_cini_module_0__reg_module_303_res), .A2(io_a_s1_d5), .ZN(
        n_cini_module_0__and_module_152_res) );
  DFF_X1 u_cini_module_0__reg_module_304__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_152_res), .CK(clock_5), .Q(
        n_cini_module_0__reg_module_304_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_212_U1 ( .A(
        n_cini_module_0__reg_module_302_res), .B(
        n_cini_module_0__reg_module_304_res), .Z(
        n_cini_module_0__xor_module_212_res) );
  XOR2_X1 u_cini_module_0__xor_module_213_U1 ( .A(
        n_cini_module_0__xor_module_211_res), .B(
        n_cini_module_0__xor_module_212_res), .Z(
        n_cini_module_0__xor_module_213_res) );
  DFF_X1 u_cini_module_0__reg_module_305__hpc_correct_b_s0_d0_reg ( .D(
        p_rand_4), .CK(clock_5), .Q(n_cini_module_0__reg_module_305_res), 
        .QN() );
  INV_X1 u_cini_module_0__not_module_66_U1 ( .A(io_a_s1_d5), .ZN(
        n_cini_module_0__not_module_66_res) );
  AND2_X1 u_cini_module_0__and_module_153_U1 ( .A1(
        n_cini_module_0__not_module_66_res), .A2(
        n_cini_module_0__reg_module_305_res), .ZN(
        n_cini_module_0__and_module_153_res) );
  DFF_X1 u_cini_module_0__reg_module_306__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_153_res), .CK(clock_5), .Q(
        n_cini_module_0__reg_module_306_res), .QN() );
  NAND2_X1 u_cini_module_0__majority7_module_65_U18 ( .A1(
        n_cini_module_0__xor_module_42_res), .A2(
        n_cini_module_0__xor_module_54_res), .ZN(
        n_cini_module_0__majority7_module_65_n16) );
  XOR2_X1 u_cini_module_0__majority7_module_65_U17 ( .A(
        n_cini_module_0__xor_module_42_res), .B(
        n_cini_module_0__xor_module_54_res), .Z(
        n_cini_module_0__majority7_module_65_n10) );
  NAND2_X1 u_cini_module_0__majority7_module_65_U16 ( .A1(
        n_cini_module_0__xor_module_66_res), .A2(
        n_cini_module_0__majority7_module_65_n10), .ZN(
        n_cini_module_0__majority7_module_65_n17) );
  NAND2_X1 u_cini_module_0__majority7_module_65_U15 ( .A1(
        n_cini_module_0__majority7_module_65_n16), .A2(
        n_cini_module_0__majority7_module_65_n17), .ZN(
        n_cini_module_0__majority7_module_65_n13) );
  NAND2_X1 u_cini_module_0__majority7_module_65_U14 ( .A1(
        n_cini_module_0__xor_module_6_res), .A2(
        n_cini_module_0__xor_module_18_res), .ZN(
        n_cini_module_0__majority7_module_65_n14) );
  XOR2_X1 u_cini_module_0__majority7_module_65_U13 ( .A(
        n_cini_module_0__xor_module_6_res), .B(
        n_cini_module_0__xor_module_18_res), .Z(
        n_cini_module_0__majority7_module_65_n11) );
  NAND2_X1 u_cini_module_0__majority7_module_65_U12 ( .A1(
        n_cini_module_0__xor_module_30_res), .A2(
        n_cini_module_0__majority7_module_65_n11), .ZN(
        n_cini_module_0__majority7_module_65_n15) );
  NAND2_X1 u_cini_module_0__majority7_module_65_U11 ( .A1(
        n_cini_module_0__majority7_module_65_n14), .A2(
        n_cini_module_0__majority7_module_65_n15), .ZN(
        n_cini_module_0__majority7_module_65_n12) );
  NAND2_X1 u_cini_module_0__majority7_module_65_U10 ( .A1(
        n_cini_module_0__majority7_module_65_n13), .A2(
        n_cini_module_0__majority7_module_65_n12), .ZN(
        n_cini_module_0__majority7_module_65_n1) );
  OR2_X1 u_cini_module_0__majority7_module_65_U9 ( .A1(
        n_cini_module_0__majority7_module_65_n12), .A2(
        n_cini_module_0__majority7_module_65_n13), .ZN(
        n_cini_module_0__majority7_module_65_n3) );
  XOR2_X1 u_cini_module_0__majority7_module_65_U8 ( .A(
        n_cini_module_0__xor_module_30_res), .B(
        n_cini_module_0__majority7_module_65_n11), .Z(
        n_cini_module_0__majority7_module_65_n9) );
  NAND2_X1 u_cini_module_0__majority7_module_65_U7 ( .A1(
        n_cini_module_0__xor_module_78_res), .A2(
        n_cini_module_0__majority7_module_65_n9), .ZN(
        n_cini_module_0__majority7_module_65_n5) );
  XOR2_X1 u_cini_module_0__majority7_module_65_U6 ( .A(
        n_cini_module_0__xor_module_66_res), .B(
        n_cini_module_0__majority7_module_65_n10), .Z(
        n_cini_module_0__majority7_module_65_n7) );
  OR2_X1 u_cini_module_0__majority7_module_65_U5 ( .A1(
        n_cini_module_0__majority7_module_65_n9), .A2(
        n_cini_module_0__xor_module_78_res), .ZN(
        n_cini_module_0__majority7_module_65_n8) );
  NAND2_X1 u_cini_module_0__majority7_module_65_U4 ( .A1(
        n_cini_module_0__majority7_module_65_n7), .A2(
        n_cini_module_0__majority7_module_65_n8), .ZN(
        n_cini_module_0__majority7_module_65_n6) );
  NAND2_X1 u_cini_module_0__majority7_module_65_U3 ( .A1(
        n_cini_module_0__majority7_module_65_n5), .A2(
        n_cini_module_0__majority7_module_65_n6), .ZN(
        n_cini_module_0__majority7_module_65_n4) );
  NAND2_X1 u_cini_module_0__majority7_module_65_U2 ( .A1(
        n_cini_module_0__majority7_module_65_n3), .A2(
        n_cini_module_0__majority7_module_65_n4), .ZN(
        n_cini_module_0__majority7_module_65_n2) );
  NAND2_X1 u_cini_module_0__majority7_module_65_U1 ( .A1(
        n_cini_module_0__majority7_module_65_n1), .A2(
        n_cini_module_0__majority7_module_65_n2), .ZN(
        n_cini_module_0__majority7_module_65_res) );
  DFF_X1 u_cini_module_0__reg_module_307__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority7_module_65_res), .CK(clock_5), .Q(
        n_cini_module_0__reg_module_307_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_154_U1 ( .A1(
        n_cini_module_0__reg_module_307_res), .A2(io_a_s1_d5), .ZN(
        n_cini_module_0__and_module_154_res) );
  DFF_X1 u_cini_module_0__reg_module_308__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_154_res), .CK(clock_5), .Q(
        n_cini_module_0__reg_module_308_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_214_U1 ( .A(
        n_cini_module_0__reg_module_306_res), .B(
        n_cini_module_0__reg_module_308_res), .Z(
        n_cini_module_0__xor_module_214_res) );
  XOR2_X1 u_cini_module_0__xor_module_215_U1 ( .A(
        n_cini_module_0__xor_module_213_res), .B(
        n_cini_module_0__xor_module_214_res), .Z(
        n_cini_module_0__xor_module_215_res) );
  XOR2_X1 u_cini_module_0__xor_module_216_U1 ( .A(
        n_cini_module_0__xor_module_215_res), .B(
        n_cini_module_0__reg_module_296_res), .Z(io_c_s1_d5) );
  DFF_X1 u_cini_module_0__reg_module_309__hpc_correct_b_s0_d0_reg ( .D(
        io_b_s2_d5), .CK(clock_5), .Q(n_cini_module_0__reg_module_309_res), 
        .QN() );
  AND2_X1 u_cini_module_0__and_module_155_U1 ( .A1(
        n_cini_module_0__reg_module_309_res), .A2(io_a_s2_d5), .ZN(
        n_cini_module_0__and_module_155_res) );
  DFF_X1 u_cini_module_0__reg_module_310__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_155_res), .CK(clock_5), .Q(
        n_cini_module_0__reg_module_310_res), .QN() );
  DFF_X1 u_cini_module_0__reg_module_311__hpc_correct_b_s0_d0_reg ( .D(
        p_rand_1), .CK(clock_5), .Q(n_cini_module_0__reg_module_311_res), 
        .QN() );
  INV_X1 u_cini_module_0__not_module_67_U1 ( .A(io_a_s2_d5), .ZN(
        n_cini_module_0__not_module_67_res) );
  AND2_X1 u_cini_module_0__and_module_156_U1 ( .A1(
        n_cini_module_0__not_module_67_res), .A2(
        n_cini_module_0__reg_module_311_res), .ZN(
        n_cini_module_0__and_module_156_res) );
  DFF_X1 u_cini_module_0__reg_module_312__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_156_res), .CK(clock_5), .Q(
        n_cini_module_0__reg_module_312_res), .QN() );
  NAND2_X1 u_cini_module_0__majority7_module_66_U18 ( .A1(
        n_cini_module_0__xor_module_43_res), .A2(
        n_cini_module_0__xor_module_55_res), .ZN(
        n_cini_module_0__majority7_module_66_n16) );
  XOR2_X1 u_cini_module_0__majority7_module_66_U17 ( .A(
        n_cini_module_0__xor_module_43_res), .B(
        n_cini_module_0__xor_module_55_res), .Z(
        n_cini_module_0__majority7_module_66_n10) );
  NAND2_X1 u_cini_module_0__majority7_module_66_U16 ( .A1(
        n_cini_module_0__xor_module_67_res), .A2(
        n_cini_module_0__majority7_module_66_n10), .ZN(
        n_cini_module_0__majority7_module_66_n17) );
  NAND2_X1 u_cini_module_0__majority7_module_66_U15 ( .A1(
        n_cini_module_0__majority7_module_66_n16), .A2(
        n_cini_module_0__majority7_module_66_n17), .ZN(
        n_cini_module_0__majority7_module_66_n13) );
  NAND2_X1 u_cini_module_0__majority7_module_66_U14 ( .A1(
        n_cini_module_0__xor_module_7_res), .A2(
        n_cini_module_0__xor_module_19_res), .ZN(
        n_cini_module_0__majority7_module_66_n14) );
  XOR2_X1 u_cini_module_0__majority7_module_66_U13 ( .A(
        n_cini_module_0__xor_module_7_res), .B(
        n_cini_module_0__xor_module_19_res), .Z(
        n_cini_module_0__majority7_module_66_n11) );
  NAND2_X1 u_cini_module_0__majority7_module_66_U12 ( .A1(
        n_cini_module_0__xor_module_31_res), .A2(
        n_cini_module_0__majority7_module_66_n11), .ZN(
        n_cini_module_0__majority7_module_66_n15) );
  NAND2_X1 u_cini_module_0__majority7_module_66_U11 ( .A1(
        n_cini_module_0__majority7_module_66_n14), .A2(
        n_cini_module_0__majority7_module_66_n15), .ZN(
        n_cini_module_0__majority7_module_66_n12) );
  NAND2_X1 u_cini_module_0__majority7_module_66_U10 ( .A1(
        n_cini_module_0__majority7_module_66_n13), .A2(
        n_cini_module_0__majority7_module_66_n12), .ZN(
        n_cini_module_0__majority7_module_66_n1) );
  OR2_X1 u_cini_module_0__majority7_module_66_U9 ( .A1(
        n_cini_module_0__majority7_module_66_n12), .A2(
        n_cini_module_0__majority7_module_66_n13), .ZN(
        n_cini_module_0__majority7_module_66_n3) );
  XOR2_X1 u_cini_module_0__majority7_module_66_U8 ( .A(
        n_cini_module_0__xor_module_31_res), .B(
        n_cini_module_0__majority7_module_66_n11), .Z(
        n_cini_module_0__majority7_module_66_n9) );
  NAND2_X1 u_cini_module_0__majority7_module_66_U7 ( .A1(
        n_cini_module_0__xor_module_79_res), .A2(
        n_cini_module_0__majority7_module_66_n9), .ZN(
        n_cini_module_0__majority7_module_66_n5) );
  XOR2_X1 u_cini_module_0__majority7_module_66_U6 ( .A(
        n_cini_module_0__xor_module_67_res), .B(
        n_cini_module_0__majority7_module_66_n10), .Z(
        n_cini_module_0__majority7_module_66_n7) );
  OR2_X1 u_cini_module_0__majority7_module_66_U5 ( .A1(
        n_cini_module_0__majority7_module_66_n9), .A2(
        n_cini_module_0__xor_module_79_res), .ZN(
        n_cini_module_0__majority7_module_66_n8) );
  NAND2_X1 u_cini_module_0__majority7_module_66_U4 ( .A1(
        n_cini_module_0__majority7_module_66_n7), .A2(
        n_cini_module_0__majority7_module_66_n8), .ZN(
        n_cini_module_0__majority7_module_66_n6) );
  NAND2_X1 u_cini_module_0__majority7_module_66_U3 ( .A1(
        n_cini_module_0__majority7_module_66_n5), .A2(
        n_cini_module_0__majority7_module_66_n6), .ZN(
        n_cini_module_0__majority7_module_66_n4) );
  NAND2_X1 u_cini_module_0__majority7_module_66_U2 ( .A1(
        n_cini_module_0__majority7_module_66_n3), .A2(
        n_cini_module_0__majority7_module_66_n4), .ZN(
        n_cini_module_0__majority7_module_66_n2) );
  NAND2_X1 u_cini_module_0__majority7_module_66_U1 ( .A1(
        n_cini_module_0__majority7_module_66_n1), .A2(
        n_cini_module_0__majority7_module_66_n2), .ZN(
        n_cini_module_0__majority7_module_66_res) );
  DFF_X1 u_cini_module_0__reg_module_313__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority7_module_66_res), .CK(clock_5), .Q(
        n_cini_module_0__reg_module_313_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_157_U1 ( .A1(
        n_cini_module_0__reg_module_313_res), .A2(io_a_s2_d5), .ZN(
        n_cini_module_0__and_module_157_res) );
  DFF_X1 u_cini_module_0__reg_module_314__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_157_res), .CK(clock_5), .Q(
        n_cini_module_0__reg_module_314_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_217_U1 ( .A(
        n_cini_module_0__reg_module_312_res), .B(
        n_cini_module_0__reg_module_314_res), .Z(
        n_cini_module_0__xor_module_217_res) );
  DFF_X1 u_cini_module_0__reg_module_315__hpc_correct_b_s0_d0_reg ( .D(
        p_rand_3), .CK(clock_5), .Q(n_cini_module_0__reg_module_315_res), 
        .QN() );
  INV_X1 u_cini_module_0__not_module_68_U1 ( .A(io_a_s2_d5), .ZN(
        n_cini_module_0__not_module_68_res) );
  AND2_X1 u_cini_module_0__and_module_158_U1 ( .A1(
        n_cini_module_0__not_module_68_res), .A2(
        n_cini_module_0__reg_module_315_res), .ZN(
        n_cini_module_0__and_module_158_res) );
  DFF_X1 u_cini_module_0__reg_module_316__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_158_res), .CK(clock_5), .Q(
        n_cini_module_0__reg_module_316_res), .QN() );
  NAND2_X1 u_cini_module_0__majority7_module_67_U18 ( .A1(
        n_cini_module_0__xor_module_44_res), .A2(
        n_cini_module_0__xor_module_56_res), .ZN(
        n_cini_module_0__majority7_module_67_n16) );
  XOR2_X1 u_cini_module_0__majority7_module_67_U17 ( .A(
        n_cini_module_0__xor_module_44_res), .B(
        n_cini_module_0__xor_module_56_res), .Z(
        n_cini_module_0__majority7_module_67_n10) );
  NAND2_X1 u_cini_module_0__majority7_module_67_U16 ( .A1(
        n_cini_module_0__xor_module_68_res), .A2(
        n_cini_module_0__majority7_module_67_n10), .ZN(
        n_cini_module_0__majority7_module_67_n17) );
  NAND2_X1 u_cini_module_0__majority7_module_67_U15 ( .A1(
        n_cini_module_0__majority7_module_67_n16), .A2(
        n_cini_module_0__majority7_module_67_n17), .ZN(
        n_cini_module_0__majority7_module_67_n13) );
  NAND2_X1 u_cini_module_0__majority7_module_67_U14 ( .A1(
        n_cini_module_0__xor_module_8_res), .A2(
        n_cini_module_0__xor_module_20_res), .ZN(
        n_cini_module_0__majority7_module_67_n14) );
  XOR2_X1 u_cini_module_0__majority7_module_67_U13 ( .A(
        n_cini_module_0__xor_module_8_res), .B(
        n_cini_module_0__xor_module_20_res), .Z(
        n_cini_module_0__majority7_module_67_n11) );
  NAND2_X1 u_cini_module_0__majority7_module_67_U12 ( .A1(
        n_cini_module_0__xor_module_32_res), .A2(
        n_cini_module_0__majority7_module_67_n11), .ZN(
        n_cini_module_0__majority7_module_67_n15) );
  NAND2_X1 u_cini_module_0__majority7_module_67_U11 ( .A1(
        n_cini_module_0__majority7_module_67_n14), .A2(
        n_cini_module_0__majority7_module_67_n15), .ZN(
        n_cini_module_0__majority7_module_67_n12) );
  NAND2_X1 u_cini_module_0__majority7_module_67_U10 ( .A1(
        n_cini_module_0__majority7_module_67_n13), .A2(
        n_cini_module_0__majority7_module_67_n12), .ZN(
        n_cini_module_0__majority7_module_67_n1) );
  OR2_X1 u_cini_module_0__majority7_module_67_U9 ( .A1(
        n_cini_module_0__majority7_module_67_n12), .A2(
        n_cini_module_0__majority7_module_67_n13), .ZN(
        n_cini_module_0__majority7_module_67_n3) );
  XOR2_X1 u_cini_module_0__majority7_module_67_U8 ( .A(
        n_cini_module_0__xor_module_32_res), .B(
        n_cini_module_0__majority7_module_67_n11), .Z(
        n_cini_module_0__majority7_module_67_n9) );
  NAND2_X1 u_cini_module_0__majority7_module_67_U7 ( .A1(
        n_cini_module_0__xor_module_80_res), .A2(
        n_cini_module_0__majority7_module_67_n9), .ZN(
        n_cini_module_0__majority7_module_67_n5) );
  XOR2_X1 u_cini_module_0__majority7_module_67_U6 ( .A(
        n_cini_module_0__xor_module_68_res), .B(
        n_cini_module_0__majority7_module_67_n10), .Z(
        n_cini_module_0__majority7_module_67_n7) );
  OR2_X1 u_cini_module_0__majority7_module_67_U5 ( .A1(
        n_cini_module_0__majority7_module_67_n9), .A2(
        n_cini_module_0__xor_module_80_res), .ZN(
        n_cini_module_0__majority7_module_67_n8) );
  NAND2_X1 u_cini_module_0__majority7_module_67_U4 ( .A1(
        n_cini_module_0__majority7_module_67_n7), .A2(
        n_cini_module_0__majority7_module_67_n8), .ZN(
        n_cini_module_0__majority7_module_67_n6) );
  NAND2_X1 u_cini_module_0__majority7_module_67_U3 ( .A1(
        n_cini_module_0__majority7_module_67_n5), .A2(
        n_cini_module_0__majority7_module_67_n6), .ZN(
        n_cini_module_0__majority7_module_67_n4) );
  NAND2_X1 u_cini_module_0__majority7_module_67_U2 ( .A1(
        n_cini_module_0__majority7_module_67_n3), .A2(
        n_cini_module_0__majority7_module_67_n4), .ZN(
        n_cini_module_0__majority7_module_67_n2) );
  NAND2_X1 u_cini_module_0__majority7_module_67_U1 ( .A1(
        n_cini_module_0__majority7_module_67_n1), .A2(
        n_cini_module_0__majority7_module_67_n2), .ZN(
        n_cini_module_0__majority7_module_67_res) );
  DFF_X1 u_cini_module_0__reg_module_317__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority7_module_67_res), .CK(clock_5), .Q(
        n_cini_module_0__reg_module_317_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_159_U1 ( .A1(
        n_cini_module_0__reg_module_317_res), .A2(io_a_s2_d5), .ZN(
        n_cini_module_0__and_module_159_res) );
  DFF_X1 u_cini_module_0__reg_module_318__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_159_res), .CK(clock_5), .Q(
        n_cini_module_0__reg_module_318_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_218_U1 ( .A(
        n_cini_module_0__reg_module_316_res), .B(
        n_cini_module_0__reg_module_318_res), .Z(
        n_cini_module_0__xor_module_218_res) );
  XOR2_X1 u_cini_module_0__xor_module_219_U1 ( .A(
        n_cini_module_0__xor_module_217_res), .B(
        n_cini_module_0__xor_module_218_res), .Z(
        n_cini_module_0__xor_module_219_res) );
  DFF_X1 u_cini_module_0__reg_module_319__hpc_correct_b_s0_d0_reg ( .D(
        p_rand_5), .CK(clock_5), .Q(n_cini_module_0__reg_module_319_res), 
        .QN() );
  INV_X1 u_cini_module_0__not_module_69_U1 ( .A(io_a_s2_d5), .ZN(
        n_cini_module_0__not_module_69_res) );
  AND2_X1 u_cini_module_0__and_module_160_U1 ( .A1(
        n_cini_module_0__not_module_69_res), .A2(
        n_cini_module_0__reg_module_319_res), .ZN(
        n_cini_module_0__and_module_160_res) );
  DFF_X1 u_cini_module_0__reg_module_320__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_160_res), .CK(clock_5), .Q(
        n_cini_module_0__reg_module_320_res), .QN() );
  NAND2_X1 u_cini_module_0__majority7_module_68_U18 ( .A1(
        n_cini_module_0__xor_module_45_res), .A2(
        n_cini_module_0__xor_module_57_res), .ZN(
        n_cini_module_0__majority7_module_68_n16) );
  XOR2_X1 u_cini_module_0__majority7_module_68_U17 ( .A(
        n_cini_module_0__xor_module_45_res), .B(
        n_cini_module_0__xor_module_57_res), .Z(
        n_cini_module_0__majority7_module_68_n10) );
  NAND2_X1 u_cini_module_0__majority7_module_68_U16 ( .A1(
        n_cini_module_0__xor_module_69_res), .A2(
        n_cini_module_0__majority7_module_68_n10), .ZN(
        n_cini_module_0__majority7_module_68_n17) );
  NAND2_X1 u_cini_module_0__majority7_module_68_U15 ( .A1(
        n_cini_module_0__majority7_module_68_n16), .A2(
        n_cini_module_0__majority7_module_68_n17), .ZN(
        n_cini_module_0__majority7_module_68_n13) );
  NAND2_X1 u_cini_module_0__majority7_module_68_U14 ( .A1(
        n_cini_module_0__xor_module_9_res), .A2(
        n_cini_module_0__xor_module_21_res), .ZN(
        n_cini_module_0__majority7_module_68_n14) );
  XOR2_X1 u_cini_module_0__majority7_module_68_U13 ( .A(
        n_cini_module_0__xor_module_9_res), .B(
        n_cini_module_0__xor_module_21_res), .Z(
        n_cini_module_0__majority7_module_68_n11) );
  NAND2_X1 u_cini_module_0__majority7_module_68_U12 ( .A1(
        n_cini_module_0__xor_module_33_res), .A2(
        n_cini_module_0__majority7_module_68_n11), .ZN(
        n_cini_module_0__majority7_module_68_n15) );
  NAND2_X1 u_cini_module_0__majority7_module_68_U11 ( .A1(
        n_cini_module_0__majority7_module_68_n14), .A2(
        n_cini_module_0__majority7_module_68_n15), .ZN(
        n_cini_module_0__majority7_module_68_n12) );
  NAND2_X1 u_cini_module_0__majority7_module_68_U10 ( .A1(
        n_cini_module_0__majority7_module_68_n13), .A2(
        n_cini_module_0__majority7_module_68_n12), .ZN(
        n_cini_module_0__majority7_module_68_n1) );
  OR2_X1 u_cini_module_0__majority7_module_68_U9 ( .A1(
        n_cini_module_0__majority7_module_68_n12), .A2(
        n_cini_module_0__majority7_module_68_n13), .ZN(
        n_cini_module_0__majority7_module_68_n3) );
  XOR2_X1 u_cini_module_0__majority7_module_68_U8 ( .A(
        n_cini_module_0__xor_module_33_res), .B(
        n_cini_module_0__majority7_module_68_n11), .Z(
        n_cini_module_0__majority7_module_68_n9) );
  NAND2_X1 u_cini_module_0__majority7_module_68_U7 ( .A1(
        n_cini_module_0__xor_module_81_res), .A2(
        n_cini_module_0__majority7_module_68_n9), .ZN(
        n_cini_module_0__majority7_module_68_n5) );
  XOR2_X1 u_cini_module_0__majority7_module_68_U6 ( .A(
        n_cini_module_0__xor_module_69_res), .B(
        n_cini_module_0__majority7_module_68_n10), .Z(
        n_cini_module_0__majority7_module_68_n7) );
  OR2_X1 u_cini_module_0__majority7_module_68_U5 ( .A1(
        n_cini_module_0__majority7_module_68_n9), .A2(
        n_cini_module_0__xor_module_81_res), .ZN(
        n_cini_module_0__majority7_module_68_n8) );
  NAND2_X1 u_cini_module_0__majority7_module_68_U4 ( .A1(
        n_cini_module_0__majority7_module_68_n7), .A2(
        n_cini_module_0__majority7_module_68_n8), .ZN(
        n_cini_module_0__majority7_module_68_n6) );
  NAND2_X1 u_cini_module_0__majority7_module_68_U3 ( .A1(
        n_cini_module_0__majority7_module_68_n5), .A2(
        n_cini_module_0__majority7_module_68_n6), .ZN(
        n_cini_module_0__majority7_module_68_n4) );
  NAND2_X1 u_cini_module_0__majority7_module_68_U2 ( .A1(
        n_cini_module_0__majority7_module_68_n3), .A2(
        n_cini_module_0__majority7_module_68_n4), .ZN(
        n_cini_module_0__majority7_module_68_n2) );
  NAND2_X1 u_cini_module_0__majority7_module_68_U1 ( .A1(
        n_cini_module_0__majority7_module_68_n1), .A2(
        n_cini_module_0__majority7_module_68_n2), .ZN(
        n_cini_module_0__majority7_module_68_res) );
  DFF_X1 u_cini_module_0__reg_module_321__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority7_module_68_res), .CK(clock_5), .Q(
        n_cini_module_0__reg_module_321_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_161_U1 ( .A1(
        n_cini_module_0__reg_module_321_res), .A2(io_a_s2_d5), .ZN(
        n_cini_module_0__and_module_161_res) );
  DFF_X1 u_cini_module_0__reg_module_322__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_161_res), .CK(clock_5), .Q(
        n_cini_module_0__reg_module_322_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_220_U1 ( .A(
        n_cini_module_0__reg_module_320_res), .B(
        n_cini_module_0__reg_module_322_res), .Z(
        n_cini_module_0__xor_module_220_res) );
  XOR2_X1 u_cini_module_0__xor_module_221_U1 ( .A(
        n_cini_module_0__xor_module_219_res), .B(
        n_cini_module_0__xor_module_220_res), .Z(
        n_cini_module_0__xor_module_221_res) );
  XOR2_X1 u_cini_module_0__xor_module_222_U1 ( .A(
        n_cini_module_0__xor_module_221_res), .B(
        n_cini_module_0__reg_module_310_res), .Z(io_c_s2_d5) );
  DFF_X1 u_cini_module_0__reg_module_323__hpc_correct_b_s0_d0_reg ( .D(
        io_b_s3_d5), .CK(clock_5), .Q(n_cini_module_0__reg_module_323_res), 
        .QN() );
  AND2_X1 u_cini_module_0__and_module_162_U1 ( .A1(
        n_cini_module_0__reg_module_323_res), .A2(io_a_s3_d5), .ZN(
        n_cini_module_0__and_module_162_res) );
  DFF_X1 u_cini_module_0__reg_module_324__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_162_res), .CK(clock_5), .Q(
        n_cini_module_0__reg_module_324_res), .QN() );
  DFF_X1 u_cini_module_0__reg_module_325__hpc_correct_b_s0_d0_reg ( .D(
        p_rand_2), .CK(clock_5), .Q(n_cini_module_0__reg_module_325_res), 
        .QN() );
  INV_X1 u_cini_module_0__not_module_70_U1 ( .A(io_a_s3_d5), .ZN(
        n_cini_module_0__not_module_70_res) );
  AND2_X1 u_cini_module_0__and_module_163_U1 ( .A1(
        n_cini_module_0__not_module_70_res), .A2(
        n_cini_module_0__reg_module_325_res), .ZN(
        n_cini_module_0__and_module_163_res) );
  DFF_X1 u_cini_module_0__reg_module_326__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_163_res), .CK(clock_5), .Q(
        n_cini_module_0__reg_module_326_res), .QN() );
  NAND2_X1 u_cini_module_0__majority7_module_69_U18 ( .A1(
        n_cini_module_0__xor_module_46_res), .A2(
        n_cini_module_0__xor_module_58_res), .ZN(
        n_cini_module_0__majority7_module_69_n16) );
  XOR2_X1 u_cini_module_0__majority7_module_69_U17 ( .A(
        n_cini_module_0__xor_module_46_res), .B(
        n_cini_module_0__xor_module_58_res), .Z(
        n_cini_module_0__majority7_module_69_n10) );
  NAND2_X1 u_cini_module_0__majority7_module_69_U16 ( .A1(
        n_cini_module_0__xor_module_70_res), .A2(
        n_cini_module_0__majority7_module_69_n10), .ZN(
        n_cini_module_0__majority7_module_69_n17) );
  NAND2_X1 u_cini_module_0__majority7_module_69_U15 ( .A1(
        n_cini_module_0__majority7_module_69_n16), .A2(
        n_cini_module_0__majority7_module_69_n17), .ZN(
        n_cini_module_0__majority7_module_69_n13) );
  NAND2_X1 u_cini_module_0__majority7_module_69_U14 ( .A1(
        n_cini_module_0__xor_module_10_res), .A2(
        n_cini_module_0__xor_module_22_res), .ZN(
        n_cini_module_0__majority7_module_69_n14) );
  XOR2_X1 u_cini_module_0__majority7_module_69_U13 ( .A(
        n_cini_module_0__xor_module_10_res), .B(
        n_cini_module_0__xor_module_22_res), .Z(
        n_cini_module_0__majority7_module_69_n11) );
  NAND2_X1 u_cini_module_0__majority7_module_69_U12 ( .A1(
        n_cini_module_0__xor_module_34_res), .A2(
        n_cini_module_0__majority7_module_69_n11), .ZN(
        n_cini_module_0__majority7_module_69_n15) );
  NAND2_X1 u_cini_module_0__majority7_module_69_U11 ( .A1(
        n_cini_module_0__majority7_module_69_n14), .A2(
        n_cini_module_0__majority7_module_69_n15), .ZN(
        n_cini_module_0__majority7_module_69_n12) );
  NAND2_X1 u_cini_module_0__majority7_module_69_U10 ( .A1(
        n_cini_module_0__majority7_module_69_n13), .A2(
        n_cini_module_0__majority7_module_69_n12), .ZN(
        n_cini_module_0__majority7_module_69_n1) );
  OR2_X1 u_cini_module_0__majority7_module_69_U9 ( .A1(
        n_cini_module_0__majority7_module_69_n12), .A2(
        n_cini_module_0__majority7_module_69_n13), .ZN(
        n_cini_module_0__majority7_module_69_n3) );
  XOR2_X1 u_cini_module_0__majority7_module_69_U8 ( .A(
        n_cini_module_0__xor_module_34_res), .B(
        n_cini_module_0__majority7_module_69_n11), .Z(
        n_cini_module_0__majority7_module_69_n9) );
  NAND2_X1 u_cini_module_0__majority7_module_69_U7 ( .A1(
        n_cini_module_0__xor_module_82_res), .A2(
        n_cini_module_0__majority7_module_69_n9), .ZN(
        n_cini_module_0__majority7_module_69_n5) );
  XOR2_X1 u_cini_module_0__majority7_module_69_U6 ( .A(
        n_cini_module_0__xor_module_70_res), .B(
        n_cini_module_0__majority7_module_69_n10), .Z(
        n_cini_module_0__majority7_module_69_n7) );
  OR2_X1 u_cini_module_0__majority7_module_69_U5 ( .A1(
        n_cini_module_0__majority7_module_69_n9), .A2(
        n_cini_module_0__xor_module_82_res), .ZN(
        n_cini_module_0__majority7_module_69_n8) );
  NAND2_X1 u_cini_module_0__majority7_module_69_U4 ( .A1(
        n_cini_module_0__majority7_module_69_n7), .A2(
        n_cini_module_0__majority7_module_69_n8), .ZN(
        n_cini_module_0__majority7_module_69_n6) );
  NAND2_X1 u_cini_module_0__majority7_module_69_U3 ( .A1(
        n_cini_module_0__majority7_module_69_n5), .A2(
        n_cini_module_0__majority7_module_69_n6), .ZN(
        n_cini_module_0__majority7_module_69_n4) );
  NAND2_X1 u_cini_module_0__majority7_module_69_U2 ( .A1(
        n_cini_module_0__majority7_module_69_n3), .A2(
        n_cini_module_0__majority7_module_69_n4), .ZN(
        n_cini_module_0__majority7_module_69_n2) );
  NAND2_X1 u_cini_module_0__majority7_module_69_U1 ( .A1(
        n_cini_module_0__majority7_module_69_n1), .A2(
        n_cini_module_0__majority7_module_69_n2), .ZN(
        n_cini_module_0__majority7_module_69_res) );
  DFF_X1 u_cini_module_0__reg_module_327__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority7_module_69_res), .CK(clock_5), .Q(
        n_cini_module_0__reg_module_327_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_164_U1 ( .A1(
        n_cini_module_0__reg_module_327_res), .A2(io_a_s3_d5), .ZN(
        n_cini_module_0__and_module_164_res) );
  DFF_X1 u_cini_module_0__reg_module_328__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_164_res), .CK(clock_5), .Q(
        n_cini_module_0__reg_module_328_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_223_U1 ( .A(
        n_cini_module_0__reg_module_326_res), .B(
        n_cini_module_0__reg_module_328_res), .Z(
        n_cini_module_0__xor_module_223_res) );
  DFF_X1 u_cini_module_0__reg_module_329__hpc_correct_b_s0_d0_reg ( .D(
        p_rand_4), .CK(clock_5), .Q(n_cini_module_0__reg_module_329_res), 
        .QN() );
  INV_X1 u_cini_module_0__not_module_71_U1 ( .A(io_a_s3_d5), .ZN(
        n_cini_module_0__not_module_71_res) );
  AND2_X1 u_cini_module_0__and_module_165_U1 ( .A1(
        n_cini_module_0__not_module_71_res), .A2(
        n_cini_module_0__reg_module_329_res), .ZN(
        n_cini_module_0__and_module_165_res) );
  DFF_X1 u_cini_module_0__reg_module_330__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_165_res), .CK(clock_5), .Q(
        n_cini_module_0__reg_module_330_res), .QN() );
  NAND2_X1 u_cini_module_0__majority7_module_70_U18 ( .A1(
        n_cini_module_0__xor_module_47_res), .A2(
        n_cini_module_0__xor_module_59_res), .ZN(
        n_cini_module_0__majority7_module_70_n16) );
  XOR2_X1 u_cini_module_0__majority7_module_70_U17 ( .A(
        n_cini_module_0__xor_module_47_res), .B(
        n_cini_module_0__xor_module_59_res), .Z(
        n_cini_module_0__majority7_module_70_n10) );
  NAND2_X1 u_cini_module_0__majority7_module_70_U16 ( .A1(
        n_cini_module_0__xor_module_71_res), .A2(
        n_cini_module_0__majority7_module_70_n10), .ZN(
        n_cini_module_0__majority7_module_70_n17) );
  NAND2_X1 u_cini_module_0__majority7_module_70_U15 ( .A1(
        n_cini_module_0__majority7_module_70_n16), .A2(
        n_cini_module_0__majority7_module_70_n17), .ZN(
        n_cini_module_0__majority7_module_70_n13) );
  NAND2_X1 u_cini_module_0__majority7_module_70_U14 ( .A1(
        n_cini_module_0__xor_module_11_res), .A2(
        n_cini_module_0__xor_module_23_res), .ZN(
        n_cini_module_0__majority7_module_70_n14) );
  XOR2_X1 u_cini_module_0__majority7_module_70_U13 ( .A(
        n_cini_module_0__xor_module_11_res), .B(
        n_cini_module_0__xor_module_23_res), .Z(
        n_cini_module_0__majority7_module_70_n11) );
  NAND2_X1 u_cini_module_0__majority7_module_70_U12 ( .A1(
        n_cini_module_0__xor_module_35_res), .A2(
        n_cini_module_0__majority7_module_70_n11), .ZN(
        n_cini_module_0__majority7_module_70_n15) );
  NAND2_X1 u_cini_module_0__majority7_module_70_U11 ( .A1(
        n_cini_module_0__majority7_module_70_n14), .A2(
        n_cini_module_0__majority7_module_70_n15), .ZN(
        n_cini_module_0__majority7_module_70_n12) );
  NAND2_X1 u_cini_module_0__majority7_module_70_U10 ( .A1(
        n_cini_module_0__majority7_module_70_n13), .A2(
        n_cini_module_0__majority7_module_70_n12), .ZN(
        n_cini_module_0__majority7_module_70_n1) );
  OR2_X1 u_cini_module_0__majority7_module_70_U9 ( .A1(
        n_cini_module_0__majority7_module_70_n12), .A2(
        n_cini_module_0__majority7_module_70_n13), .ZN(
        n_cini_module_0__majority7_module_70_n3) );
  XOR2_X1 u_cini_module_0__majority7_module_70_U8 ( .A(
        n_cini_module_0__xor_module_35_res), .B(
        n_cini_module_0__majority7_module_70_n11), .Z(
        n_cini_module_0__majority7_module_70_n9) );
  NAND2_X1 u_cini_module_0__majority7_module_70_U7 ( .A1(
        n_cini_module_0__xor_module_83_res), .A2(
        n_cini_module_0__majority7_module_70_n9), .ZN(
        n_cini_module_0__majority7_module_70_n5) );
  XOR2_X1 u_cini_module_0__majority7_module_70_U6 ( .A(
        n_cini_module_0__xor_module_71_res), .B(
        n_cini_module_0__majority7_module_70_n10), .Z(
        n_cini_module_0__majority7_module_70_n7) );
  OR2_X1 u_cini_module_0__majority7_module_70_U5 ( .A1(
        n_cini_module_0__majority7_module_70_n9), .A2(
        n_cini_module_0__xor_module_83_res), .ZN(
        n_cini_module_0__majority7_module_70_n8) );
  NAND2_X1 u_cini_module_0__majority7_module_70_U4 ( .A1(
        n_cini_module_0__majority7_module_70_n7), .A2(
        n_cini_module_0__majority7_module_70_n8), .ZN(
        n_cini_module_0__majority7_module_70_n6) );
  NAND2_X1 u_cini_module_0__majority7_module_70_U3 ( .A1(
        n_cini_module_0__majority7_module_70_n5), .A2(
        n_cini_module_0__majority7_module_70_n6), .ZN(
        n_cini_module_0__majority7_module_70_n4) );
  NAND2_X1 u_cini_module_0__majority7_module_70_U2 ( .A1(
        n_cini_module_0__majority7_module_70_n3), .A2(
        n_cini_module_0__majority7_module_70_n4), .ZN(
        n_cini_module_0__majority7_module_70_n2) );
  NAND2_X1 u_cini_module_0__majority7_module_70_U1 ( .A1(
        n_cini_module_0__majority7_module_70_n1), .A2(
        n_cini_module_0__majority7_module_70_n2), .ZN(
        n_cini_module_0__majority7_module_70_res) );
  DFF_X1 u_cini_module_0__reg_module_331__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority7_module_70_res), .CK(clock_5), .Q(
        n_cini_module_0__reg_module_331_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_166_U1 ( .A1(
        n_cini_module_0__reg_module_331_res), .A2(io_a_s3_d5), .ZN(
        n_cini_module_0__and_module_166_res) );
  DFF_X1 u_cini_module_0__reg_module_332__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_166_res), .CK(clock_5), .Q(
        n_cini_module_0__reg_module_332_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_224_U1 ( .A(
        n_cini_module_0__reg_module_330_res), .B(
        n_cini_module_0__reg_module_332_res), .Z(
        n_cini_module_0__xor_module_224_res) );
  XOR2_X1 u_cini_module_0__xor_module_225_U1 ( .A(
        n_cini_module_0__xor_module_223_res), .B(
        n_cini_module_0__xor_module_224_res), .Z(
        n_cini_module_0__xor_module_225_res) );
  DFF_X1 u_cini_module_0__reg_module_333__hpc_correct_b_s0_d0_reg ( .D(
        p_rand_5), .CK(clock_5), .Q(n_cini_module_0__reg_module_333_res), 
        .QN() );
  INV_X1 u_cini_module_0__not_module_72_U1 ( .A(io_a_s3_d5), .ZN(
        n_cini_module_0__not_module_72_res) );
  AND2_X1 u_cini_module_0__and_module_167_U1 ( .A1(
        n_cini_module_0__not_module_72_res), .A2(
        n_cini_module_0__reg_module_333_res), .ZN(
        n_cini_module_0__and_module_167_res) );
  DFF_X1 u_cini_module_0__reg_module_334__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_167_res), .CK(clock_5), .Q(
        n_cini_module_0__reg_module_334_res), .QN() );
  NAND2_X1 u_cini_module_0__majority7_module_71_U18 ( .A1(
        n_cini_module_0__xor_module_48_res), .A2(
        n_cini_module_0__xor_module_60_res), .ZN(
        n_cini_module_0__majority7_module_71_n16) );
  XOR2_X1 u_cini_module_0__majority7_module_71_U17 ( .A(
        n_cini_module_0__xor_module_48_res), .B(
        n_cini_module_0__xor_module_60_res), .Z(
        n_cini_module_0__majority7_module_71_n10) );
  NAND2_X1 u_cini_module_0__majority7_module_71_U16 ( .A1(
        n_cini_module_0__xor_module_72_res), .A2(
        n_cini_module_0__majority7_module_71_n10), .ZN(
        n_cini_module_0__majority7_module_71_n17) );
  NAND2_X1 u_cini_module_0__majority7_module_71_U15 ( .A1(
        n_cini_module_0__majority7_module_71_n16), .A2(
        n_cini_module_0__majority7_module_71_n17), .ZN(
        n_cini_module_0__majority7_module_71_n13) );
  NAND2_X1 u_cini_module_0__majority7_module_71_U14 ( .A1(
        n_cini_module_0__xor_module_12_res), .A2(
        n_cini_module_0__xor_module_24_res), .ZN(
        n_cini_module_0__majority7_module_71_n14) );
  XOR2_X1 u_cini_module_0__majority7_module_71_U13 ( .A(
        n_cini_module_0__xor_module_12_res), .B(
        n_cini_module_0__xor_module_24_res), .Z(
        n_cini_module_0__majority7_module_71_n11) );
  NAND2_X1 u_cini_module_0__majority7_module_71_U12 ( .A1(
        n_cini_module_0__xor_module_36_res), .A2(
        n_cini_module_0__majority7_module_71_n11), .ZN(
        n_cini_module_0__majority7_module_71_n15) );
  NAND2_X1 u_cini_module_0__majority7_module_71_U11 ( .A1(
        n_cini_module_0__majority7_module_71_n14), .A2(
        n_cini_module_0__majority7_module_71_n15), .ZN(
        n_cini_module_0__majority7_module_71_n12) );
  NAND2_X1 u_cini_module_0__majority7_module_71_U10 ( .A1(
        n_cini_module_0__majority7_module_71_n13), .A2(
        n_cini_module_0__majority7_module_71_n12), .ZN(
        n_cini_module_0__majority7_module_71_n1) );
  OR2_X1 u_cini_module_0__majority7_module_71_U9 ( .A1(
        n_cini_module_0__majority7_module_71_n12), .A2(
        n_cini_module_0__majority7_module_71_n13), .ZN(
        n_cini_module_0__majority7_module_71_n3) );
  XOR2_X1 u_cini_module_0__majority7_module_71_U8 ( .A(
        n_cini_module_0__xor_module_36_res), .B(
        n_cini_module_0__majority7_module_71_n11), .Z(
        n_cini_module_0__majority7_module_71_n9) );
  NAND2_X1 u_cini_module_0__majority7_module_71_U7 ( .A1(
        n_cini_module_0__xor_module_84_res), .A2(
        n_cini_module_0__majority7_module_71_n9), .ZN(
        n_cini_module_0__majority7_module_71_n5) );
  XOR2_X1 u_cini_module_0__majority7_module_71_U6 ( .A(
        n_cini_module_0__xor_module_72_res), .B(
        n_cini_module_0__majority7_module_71_n10), .Z(
        n_cini_module_0__majority7_module_71_n7) );
  OR2_X1 u_cini_module_0__majority7_module_71_U5 ( .A1(
        n_cini_module_0__majority7_module_71_n9), .A2(
        n_cini_module_0__xor_module_84_res), .ZN(
        n_cini_module_0__majority7_module_71_n8) );
  NAND2_X1 u_cini_module_0__majority7_module_71_U4 ( .A1(
        n_cini_module_0__majority7_module_71_n7), .A2(
        n_cini_module_0__majority7_module_71_n8), .ZN(
        n_cini_module_0__majority7_module_71_n6) );
  NAND2_X1 u_cini_module_0__majority7_module_71_U3 ( .A1(
        n_cini_module_0__majority7_module_71_n5), .A2(
        n_cini_module_0__majority7_module_71_n6), .ZN(
        n_cini_module_0__majority7_module_71_n4) );
  NAND2_X1 u_cini_module_0__majority7_module_71_U2 ( .A1(
        n_cini_module_0__majority7_module_71_n3), .A2(
        n_cini_module_0__majority7_module_71_n4), .ZN(
        n_cini_module_0__majority7_module_71_n2) );
  NAND2_X1 u_cini_module_0__majority7_module_71_U1 ( .A1(
        n_cini_module_0__majority7_module_71_n1), .A2(
        n_cini_module_0__majority7_module_71_n2), .ZN(
        n_cini_module_0__majority7_module_71_res) );
  DFF_X1 u_cini_module_0__reg_module_335__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority7_module_71_res), .CK(clock_5), .Q(
        n_cini_module_0__reg_module_335_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_168_U1 ( .A1(
        n_cini_module_0__reg_module_335_res), .A2(io_a_s3_d5), .ZN(
        n_cini_module_0__and_module_168_res) );
  DFF_X1 u_cini_module_0__reg_module_336__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_168_res), .CK(clock_5), .Q(
        n_cini_module_0__reg_module_336_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_226_U1 ( .A(
        n_cini_module_0__reg_module_334_res), .B(
        n_cini_module_0__reg_module_336_res), .Z(
        n_cini_module_0__xor_module_226_res) );
  XOR2_X1 u_cini_module_0__xor_module_227_U1 ( .A(
        n_cini_module_0__xor_module_225_res), .B(
        n_cini_module_0__xor_module_226_res), .Z(
        n_cini_module_0__xor_module_227_res) );
  XOR2_X1 u_cini_module_0__xor_module_228_U1 ( .A(
        n_cini_module_0__xor_module_227_res), .B(
        n_cini_module_0__reg_module_324_res), .Z(io_c_s3_d5) );
  DFF_X1 u_cini_module_0__reg_module_337__hpc_correct_b_s0_d0_reg ( .D(
        io_b_s0_d6), .CK(clock_6), .Q(n_cini_module_0__reg_module_337_res), 
        .QN() );
  AND2_X1 u_cini_module_0__and_module_169_U1 ( .A1(
        n_cini_module_0__reg_module_337_res), .A2(io_a_s0_d6), .ZN(
        n_cini_module_0__and_module_169_res) );
  DFF_X1 u_cini_module_0__reg_module_338__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_169_res), .CK(clock_6), .Q(
        n_cini_module_0__reg_module_338_res), .QN() );
  DFF_X1 u_cini_module_0__reg_module_339__hpc_correct_b_s0_d0_reg ( .D(
        p_rand_0), .CK(clock_6), .Q(n_cini_module_0__reg_module_339_res), 
        .QN() );
  INV_X1 u_cini_module_0__not_module_73_U1 ( .A(io_a_s0_d6), .ZN(
        n_cini_module_0__not_module_73_res) );
  AND2_X1 u_cini_module_0__and_module_170_U1 ( .A1(
        n_cini_module_0__not_module_73_res), .A2(
        n_cini_module_0__reg_module_339_res), .ZN(
        n_cini_module_0__and_module_170_res) );
  DFF_X1 u_cini_module_0__reg_module_340__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_170_res), .CK(clock_6), .Q(
        n_cini_module_0__reg_module_340_res), .QN() );
  NAND2_X1 u_cini_module_0__majority7_module_72_U18 ( .A1(
        n_cini_module_0__xor_module_37_res), .A2(
        n_cini_module_0__xor_module_49_res), .ZN(
        n_cini_module_0__majority7_module_72_n16) );
  XOR2_X1 u_cini_module_0__majority7_module_72_U17 ( .A(
        n_cini_module_0__xor_module_37_res), .B(
        n_cini_module_0__xor_module_49_res), .Z(
        n_cini_module_0__majority7_module_72_n10) );
  NAND2_X1 u_cini_module_0__majority7_module_72_U16 ( .A1(
        n_cini_module_0__xor_module_61_res), .A2(
        n_cini_module_0__majority7_module_72_n10), .ZN(
        n_cini_module_0__majority7_module_72_n17) );
  NAND2_X1 u_cini_module_0__majority7_module_72_U15 ( .A1(
        n_cini_module_0__majority7_module_72_n16), .A2(
        n_cini_module_0__majority7_module_72_n17), .ZN(
        n_cini_module_0__majority7_module_72_n13) );
  NAND2_X1 u_cini_module_0__majority7_module_72_U14 ( .A1(
        n_cini_module_0__xor_module_1_res), .A2(
        n_cini_module_0__xor_module_13_res), .ZN(
        n_cini_module_0__majority7_module_72_n14) );
  XOR2_X1 u_cini_module_0__majority7_module_72_U13 ( .A(
        n_cini_module_0__xor_module_1_res), .B(
        n_cini_module_0__xor_module_13_res), .Z(
        n_cini_module_0__majority7_module_72_n11) );
  NAND2_X1 u_cini_module_0__majority7_module_72_U12 ( .A1(
        n_cini_module_0__xor_module_25_res), .A2(
        n_cini_module_0__majority7_module_72_n11), .ZN(
        n_cini_module_0__majority7_module_72_n15) );
  NAND2_X1 u_cini_module_0__majority7_module_72_U11 ( .A1(
        n_cini_module_0__majority7_module_72_n14), .A2(
        n_cini_module_0__majority7_module_72_n15), .ZN(
        n_cini_module_0__majority7_module_72_n12) );
  NAND2_X1 u_cini_module_0__majority7_module_72_U10 ( .A1(
        n_cini_module_0__majority7_module_72_n13), .A2(
        n_cini_module_0__majority7_module_72_n12), .ZN(
        n_cini_module_0__majority7_module_72_n1) );
  OR2_X1 u_cini_module_0__majority7_module_72_U9 ( .A1(
        n_cini_module_0__majority7_module_72_n12), .A2(
        n_cini_module_0__majority7_module_72_n13), .ZN(
        n_cini_module_0__majority7_module_72_n3) );
  XOR2_X1 u_cini_module_0__majority7_module_72_U8 ( .A(
        n_cini_module_0__xor_module_25_res), .B(
        n_cini_module_0__majority7_module_72_n11), .Z(
        n_cini_module_0__majority7_module_72_n9) );
  NAND2_X1 u_cini_module_0__majority7_module_72_U7 ( .A1(
        n_cini_module_0__xor_module_73_res), .A2(
        n_cini_module_0__majority7_module_72_n9), .ZN(
        n_cini_module_0__majority7_module_72_n5) );
  XOR2_X1 u_cini_module_0__majority7_module_72_U6 ( .A(
        n_cini_module_0__xor_module_61_res), .B(
        n_cini_module_0__majority7_module_72_n10), .Z(
        n_cini_module_0__majority7_module_72_n7) );
  OR2_X1 u_cini_module_0__majority7_module_72_U5 ( .A1(
        n_cini_module_0__majority7_module_72_n9), .A2(
        n_cini_module_0__xor_module_73_res), .ZN(
        n_cini_module_0__majority7_module_72_n8) );
  NAND2_X1 u_cini_module_0__majority7_module_72_U4 ( .A1(
        n_cini_module_0__majority7_module_72_n7), .A2(
        n_cini_module_0__majority7_module_72_n8), .ZN(
        n_cini_module_0__majority7_module_72_n6) );
  NAND2_X1 u_cini_module_0__majority7_module_72_U3 ( .A1(
        n_cini_module_0__majority7_module_72_n5), .A2(
        n_cini_module_0__majority7_module_72_n6), .ZN(
        n_cini_module_0__majority7_module_72_n4) );
  NAND2_X1 u_cini_module_0__majority7_module_72_U2 ( .A1(
        n_cini_module_0__majority7_module_72_n3), .A2(
        n_cini_module_0__majority7_module_72_n4), .ZN(
        n_cini_module_0__majority7_module_72_n2) );
  NAND2_X1 u_cini_module_0__majority7_module_72_U1 ( .A1(
        n_cini_module_0__majority7_module_72_n1), .A2(
        n_cini_module_0__majority7_module_72_n2), .ZN(
        n_cini_module_0__majority7_module_72_res) );
  DFF_X1 u_cini_module_0__reg_module_341__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority7_module_72_res), .CK(clock_6), .Q(
        n_cini_module_0__reg_module_341_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_171_U1 ( .A1(
        n_cini_module_0__reg_module_341_res), .A2(io_a_s0_d6), .ZN(
        n_cini_module_0__and_module_171_res) );
  DFF_X1 u_cini_module_0__reg_module_342__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_171_res), .CK(clock_6), .Q(
        n_cini_module_0__reg_module_342_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_229_U1 ( .A(
        n_cini_module_0__reg_module_340_res), .B(
        n_cini_module_0__reg_module_342_res), .Z(
        n_cini_module_0__xor_module_229_res) );
  DFF_X1 u_cini_module_0__reg_module_343__hpc_correct_b_s0_d0_reg ( .D(
        p_rand_1), .CK(clock_6), .Q(n_cini_module_0__reg_module_343_res), 
        .QN() );
  INV_X1 u_cini_module_0__not_module_74_U1 ( .A(io_a_s0_d6), .ZN(
        n_cini_module_0__not_module_74_res) );
  AND2_X1 u_cini_module_0__and_module_172_U1 ( .A1(
        n_cini_module_0__not_module_74_res), .A2(
        n_cini_module_0__reg_module_343_res), .ZN(
        n_cini_module_0__and_module_172_res) );
  DFF_X1 u_cini_module_0__reg_module_344__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_172_res), .CK(clock_6), .Q(
        n_cini_module_0__reg_module_344_res), .QN() );
  NAND2_X1 u_cini_module_0__majority7_module_73_U18 ( .A1(
        n_cini_module_0__xor_module_38_res), .A2(
        n_cini_module_0__xor_module_50_res), .ZN(
        n_cini_module_0__majority7_module_73_n16) );
  XOR2_X1 u_cini_module_0__majority7_module_73_U17 ( .A(
        n_cini_module_0__xor_module_38_res), .B(
        n_cini_module_0__xor_module_50_res), .Z(
        n_cini_module_0__majority7_module_73_n10) );
  NAND2_X1 u_cini_module_0__majority7_module_73_U16 ( .A1(
        n_cini_module_0__xor_module_62_res), .A2(
        n_cini_module_0__majority7_module_73_n10), .ZN(
        n_cini_module_0__majority7_module_73_n17) );
  NAND2_X1 u_cini_module_0__majority7_module_73_U15 ( .A1(
        n_cini_module_0__majority7_module_73_n16), .A2(
        n_cini_module_0__majority7_module_73_n17), .ZN(
        n_cini_module_0__majority7_module_73_n13) );
  NAND2_X1 u_cini_module_0__majority7_module_73_U14 ( .A1(
        n_cini_module_0__xor_module_2_res), .A2(
        n_cini_module_0__xor_module_14_res), .ZN(
        n_cini_module_0__majority7_module_73_n14) );
  XOR2_X1 u_cini_module_0__majority7_module_73_U13 ( .A(
        n_cini_module_0__xor_module_2_res), .B(
        n_cini_module_0__xor_module_14_res), .Z(
        n_cini_module_0__majority7_module_73_n11) );
  NAND2_X1 u_cini_module_0__majority7_module_73_U12 ( .A1(
        n_cini_module_0__xor_module_26_res), .A2(
        n_cini_module_0__majority7_module_73_n11), .ZN(
        n_cini_module_0__majority7_module_73_n15) );
  NAND2_X1 u_cini_module_0__majority7_module_73_U11 ( .A1(
        n_cini_module_0__majority7_module_73_n14), .A2(
        n_cini_module_0__majority7_module_73_n15), .ZN(
        n_cini_module_0__majority7_module_73_n12) );
  NAND2_X1 u_cini_module_0__majority7_module_73_U10 ( .A1(
        n_cini_module_0__majority7_module_73_n13), .A2(
        n_cini_module_0__majority7_module_73_n12), .ZN(
        n_cini_module_0__majority7_module_73_n1) );
  OR2_X1 u_cini_module_0__majority7_module_73_U9 ( .A1(
        n_cini_module_0__majority7_module_73_n12), .A2(
        n_cini_module_0__majority7_module_73_n13), .ZN(
        n_cini_module_0__majority7_module_73_n3) );
  XOR2_X1 u_cini_module_0__majority7_module_73_U8 ( .A(
        n_cini_module_0__xor_module_26_res), .B(
        n_cini_module_0__majority7_module_73_n11), .Z(
        n_cini_module_0__majority7_module_73_n9) );
  NAND2_X1 u_cini_module_0__majority7_module_73_U7 ( .A1(
        n_cini_module_0__xor_module_74_res), .A2(
        n_cini_module_0__majority7_module_73_n9), .ZN(
        n_cini_module_0__majority7_module_73_n5) );
  XOR2_X1 u_cini_module_0__majority7_module_73_U6 ( .A(
        n_cini_module_0__xor_module_62_res), .B(
        n_cini_module_0__majority7_module_73_n10), .Z(
        n_cini_module_0__majority7_module_73_n7) );
  OR2_X1 u_cini_module_0__majority7_module_73_U5 ( .A1(
        n_cini_module_0__majority7_module_73_n9), .A2(
        n_cini_module_0__xor_module_74_res), .ZN(
        n_cini_module_0__majority7_module_73_n8) );
  NAND2_X1 u_cini_module_0__majority7_module_73_U4 ( .A1(
        n_cini_module_0__majority7_module_73_n7), .A2(
        n_cini_module_0__majority7_module_73_n8), .ZN(
        n_cini_module_0__majority7_module_73_n6) );
  NAND2_X1 u_cini_module_0__majority7_module_73_U3 ( .A1(
        n_cini_module_0__majority7_module_73_n5), .A2(
        n_cini_module_0__majority7_module_73_n6), .ZN(
        n_cini_module_0__majority7_module_73_n4) );
  NAND2_X1 u_cini_module_0__majority7_module_73_U2 ( .A1(
        n_cini_module_0__majority7_module_73_n3), .A2(
        n_cini_module_0__majority7_module_73_n4), .ZN(
        n_cini_module_0__majority7_module_73_n2) );
  NAND2_X1 u_cini_module_0__majority7_module_73_U1 ( .A1(
        n_cini_module_0__majority7_module_73_n1), .A2(
        n_cini_module_0__majority7_module_73_n2), .ZN(
        n_cini_module_0__majority7_module_73_res) );
  DFF_X1 u_cini_module_0__reg_module_345__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority7_module_73_res), .CK(clock_6), .Q(
        n_cini_module_0__reg_module_345_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_173_U1 ( .A1(
        n_cini_module_0__reg_module_345_res), .A2(io_a_s0_d6), .ZN(
        n_cini_module_0__and_module_173_res) );
  DFF_X1 u_cini_module_0__reg_module_346__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_173_res), .CK(clock_6), .Q(
        n_cini_module_0__reg_module_346_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_230_U1 ( .A(
        n_cini_module_0__reg_module_344_res), .B(
        n_cini_module_0__reg_module_346_res), .Z(
        n_cini_module_0__xor_module_230_res) );
  XOR2_X1 u_cini_module_0__xor_module_231_U1 ( .A(
        n_cini_module_0__xor_module_229_res), .B(
        n_cini_module_0__xor_module_230_res), .Z(
        n_cini_module_0__xor_module_231_res) );
  DFF_X1 u_cini_module_0__reg_module_347__hpc_correct_b_s0_d0_reg ( .D(
        p_rand_2), .CK(clock_6), .Q(n_cini_module_0__reg_module_347_res), 
        .QN() );
  INV_X1 u_cini_module_0__not_module_75_U1 ( .A(io_a_s0_d6), .ZN(
        n_cini_module_0__not_module_75_res) );
  AND2_X1 u_cini_module_0__and_module_174_U1 ( .A1(
        n_cini_module_0__not_module_75_res), .A2(
        n_cini_module_0__reg_module_347_res), .ZN(
        n_cini_module_0__and_module_174_res) );
  DFF_X1 u_cini_module_0__reg_module_348__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_174_res), .CK(clock_6), .Q(
        n_cini_module_0__reg_module_348_res), .QN() );
  NAND2_X1 u_cini_module_0__majority7_module_74_U18 ( .A1(
        n_cini_module_0__xor_module_39_res), .A2(
        n_cini_module_0__xor_module_51_res), .ZN(
        n_cini_module_0__majority7_module_74_n16) );
  XOR2_X1 u_cini_module_0__majority7_module_74_U17 ( .A(
        n_cini_module_0__xor_module_39_res), .B(
        n_cini_module_0__xor_module_51_res), .Z(
        n_cini_module_0__majority7_module_74_n10) );
  NAND2_X1 u_cini_module_0__majority7_module_74_U16 ( .A1(
        n_cini_module_0__xor_module_63_res), .A2(
        n_cini_module_0__majority7_module_74_n10), .ZN(
        n_cini_module_0__majority7_module_74_n17) );
  NAND2_X1 u_cini_module_0__majority7_module_74_U15 ( .A1(
        n_cini_module_0__majority7_module_74_n16), .A2(
        n_cini_module_0__majority7_module_74_n17), .ZN(
        n_cini_module_0__majority7_module_74_n13) );
  NAND2_X1 u_cini_module_0__majority7_module_74_U14 ( .A1(
        n_cini_module_0__xor_module_3_res), .A2(
        n_cini_module_0__xor_module_15_res), .ZN(
        n_cini_module_0__majority7_module_74_n14) );
  XOR2_X1 u_cini_module_0__majority7_module_74_U13 ( .A(
        n_cini_module_0__xor_module_3_res), .B(
        n_cini_module_0__xor_module_15_res), .Z(
        n_cini_module_0__majority7_module_74_n11) );
  NAND2_X1 u_cini_module_0__majority7_module_74_U12 ( .A1(
        n_cini_module_0__xor_module_27_res), .A2(
        n_cini_module_0__majority7_module_74_n11), .ZN(
        n_cini_module_0__majority7_module_74_n15) );
  NAND2_X1 u_cini_module_0__majority7_module_74_U11 ( .A1(
        n_cini_module_0__majority7_module_74_n14), .A2(
        n_cini_module_0__majority7_module_74_n15), .ZN(
        n_cini_module_0__majority7_module_74_n12) );
  NAND2_X1 u_cini_module_0__majority7_module_74_U10 ( .A1(
        n_cini_module_0__majority7_module_74_n13), .A2(
        n_cini_module_0__majority7_module_74_n12), .ZN(
        n_cini_module_0__majority7_module_74_n1) );
  OR2_X1 u_cini_module_0__majority7_module_74_U9 ( .A1(
        n_cini_module_0__majority7_module_74_n12), .A2(
        n_cini_module_0__majority7_module_74_n13), .ZN(
        n_cini_module_0__majority7_module_74_n3) );
  XOR2_X1 u_cini_module_0__majority7_module_74_U8 ( .A(
        n_cini_module_0__xor_module_27_res), .B(
        n_cini_module_0__majority7_module_74_n11), .Z(
        n_cini_module_0__majority7_module_74_n9) );
  NAND2_X1 u_cini_module_0__majority7_module_74_U7 ( .A1(
        n_cini_module_0__xor_module_75_res), .A2(
        n_cini_module_0__majority7_module_74_n9), .ZN(
        n_cini_module_0__majority7_module_74_n5) );
  XOR2_X1 u_cini_module_0__majority7_module_74_U6 ( .A(
        n_cini_module_0__xor_module_63_res), .B(
        n_cini_module_0__majority7_module_74_n10), .Z(
        n_cini_module_0__majority7_module_74_n7) );
  OR2_X1 u_cini_module_0__majority7_module_74_U5 ( .A1(
        n_cini_module_0__majority7_module_74_n9), .A2(
        n_cini_module_0__xor_module_75_res), .ZN(
        n_cini_module_0__majority7_module_74_n8) );
  NAND2_X1 u_cini_module_0__majority7_module_74_U4 ( .A1(
        n_cini_module_0__majority7_module_74_n7), .A2(
        n_cini_module_0__majority7_module_74_n8), .ZN(
        n_cini_module_0__majority7_module_74_n6) );
  NAND2_X1 u_cini_module_0__majority7_module_74_U3 ( .A1(
        n_cini_module_0__majority7_module_74_n5), .A2(
        n_cini_module_0__majority7_module_74_n6), .ZN(
        n_cini_module_0__majority7_module_74_n4) );
  NAND2_X1 u_cini_module_0__majority7_module_74_U2 ( .A1(
        n_cini_module_0__majority7_module_74_n3), .A2(
        n_cini_module_0__majority7_module_74_n4), .ZN(
        n_cini_module_0__majority7_module_74_n2) );
  NAND2_X1 u_cini_module_0__majority7_module_74_U1 ( .A1(
        n_cini_module_0__majority7_module_74_n1), .A2(
        n_cini_module_0__majority7_module_74_n2), .ZN(
        n_cini_module_0__majority7_module_74_res) );
  DFF_X1 u_cini_module_0__reg_module_349__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority7_module_74_res), .CK(clock_6), .Q(
        n_cini_module_0__reg_module_349_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_175_U1 ( .A1(
        n_cini_module_0__reg_module_349_res), .A2(io_a_s0_d6), .ZN(
        n_cini_module_0__and_module_175_res) );
  DFF_X1 u_cini_module_0__reg_module_350__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_175_res), .CK(clock_6), .Q(
        n_cini_module_0__reg_module_350_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_232_U1 ( .A(
        n_cini_module_0__reg_module_348_res), .B(
        n_cini_module_0__reg_module_350_res), .Z(
        n_cini_module_0__xor_module_232_res) );
  XOR2_X1 u_cini_module_0__xor_module_233_U1 ( .A(
        n_cini_module_0__xor_module_231_res), .B(
        n_cini_module_0__xor_module_232_res), .Z(
        n_cini_module_0__xor_module_233_res) );
  XOR2_X1 u_cini_module_0__xor_module_234_U1 ( .A(
        n_cini_module_0__xor_module_233_res), .B(
        n_cini_module_0__reg_module_338_res), .Z(io_c_s0_d6) );
  DFF_X1 u_cini_module_0__reg_module_351__hpc_correct_b_s0_d0_reg ( .D(
        io_b_s1_d6), .CK(clock_6), .Q(n_cini_module_0__reg_module_351_res), 
        .QN() );
  AND2_X1 u_cini_module_0__and_module_176_U1 ( .A1(
        n_cini_module_0__reg_module_351_res), .A2(io_a_s1_d6), .ZN(
        n_cini_module_0__and_module_176_res) );
  DFF_X1 u_cini_module_0__reg_module_352__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_176_res), .CK(clock_6), .Q(
        n_cini_module_0__reg_module_352_res), .QN() );
  DFF_X1 u_cini_module_0__reg_module_353__hpc_correct_b_s0_d0_reg ( .D(
        p_rand_0), .CK(clock_6), .Q(n_cini_module_0__reg_module_353_res), 
        .QN() );
  INV_X1 u_cini_module_0__not_module_76_U1 ( .A(io_a_s1_d6), .ZN(
        n_cini_module_0__not_module_76_res) );
  AND2_X1 u_cini_module_0__and_module_177_U1 ( .A1(
        n_cini_module_0__not_module_76_res), .A2(
        n_cini_module_0__reg_module_353_res), .ZN(
        n_cini_module_0__and_module_177_res) );
  DFF_X1 u_cini_module_0__reg_module_354__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_177_res), .CK(clock_6), .Q(
        n_cini_module_0__reg_module_354_res), .QN() );
  NAND2_X1 u_cini_module_0__majority7_module_75_U18 ( .A1(
        n_cini_module_0__xor_module_40_res), .A2(
        n_cini_module_0__xor_module_52_res), .ZN(
        n_cini_module_0__majority7_module_75_n16) );
  XOR2_X1 u_cini_module_0__majority7_module_75_U17 ( .A(
        n_cini_module_0__xor_module_40_res), .B(
        n_cini_module_0__xor_module_52_res), .Z(
        n_cini_module_0__majority7_module_75_n10) );
  NAND2_X1 u_cini_module_0__majority7_module_75_U16 ( .A1(
        n_cini_module_0__xor_module_64_res), .A2(
        n_cini_module_0__majority7_module_75_n10), .ZN(
        n_cini_module_0__majority7_module_75_n17) );
  NAND2_X1 u_cini_module_0__majority7_module_75_U15 ( .A1(
        n_cini_module_0__majority7_module_75_n16), .A2(
        n_cini_module_0__majority7_module_75_n17), .ZN(
        n_cini_module_0__majority7_module_75_n13) );
  NAND2_X1 u_cini_module_0__majority7_module_75_U14 ( .A1(
        n_cini_module_0__xor_module_4_res), .A2(
        n_cini_module_0__xor_module_16_res), .ZN(
        n_cini_module_0__majority7_module_75_n14) );
  XOR2_X1 u_cini_module_0__majority7_module_75_U13 ( .A(
        n_cini_module_0__xor_module_4_res), .B(
        n_cini_module_0__xor_module_16_res), .Z(
        n_cini_module_0__majority7_module_75_n11) );
  NAND2_X1 u_cini_module_0__majority7_module_75_U12 ( .A1(
        n_cini_module_0__xor_module_28_res), .A2(
        n_cini_module_0__majority7_module_75_n11), .ZN(
        n_cini_module_0__majority7_module_75_n15) );
  NAND2_X1 u_cini_module_0__majority7_module_75_U11 ( .A1(
        n_cini_module_0__majority7_module_75_n14), .A2(
        n_cini_module_0__majority7_module_75_n15), .ZN(
        n_cini_module_0__majority7_module_75_n12) );
  NAND2_X1 u_cini_module_0__majority7_module_75_U10 ( .A1(
        n_cini_module_0__majority7_module_75_n13), .A2(
        n_cini_module_0__majority7_module_75_n12), .ZN(
        n_cini_module_0__majority7_module_75_n1) );
  OR2_X1 u_cini_module_0__majority7_module_75_U9 ( .A1(
        n_cini_module_0__majority7_module_75_n12), .A2(
        n_cini_module_0__majority7_module_75_n13), .ZN(
        n_cini_module_0__majority7_module_75_n3) );
  XOR2_X1 u_cini_module_0__majority7_module_75_U8 ( .A(
        n_cini_module_0__xor_module_28_res), .B(
        n_cini_module_0__majority7_module_75_n11), .Z(
        n_cini_module_0__majority7_module_75_n9) );
  NAND2_X1 u_cini_module_0__majority7_module_75_U7 ( .A1(
        n_cini_module_0__xor_module_76_res), .A2(
        n_cini_module_0__majority7_module_75_n9), .ZN(
        n_cini_module_0__majority7_module_75_n5) );
  XOR2_X1 u_cini_module_0__majority7_module_75_U6 ( .A(
        n_cini_module_0__xor_module_64_res), .B(
        n_cini_module_0__majority7_module_75_n10), .Z(
        n_cini_module_0__majority7_module_75_n7) );
  OR2_X1 u_cini_module_0__majority7_module_75_U5 ( .A1(
        n_cini_module_0__majority7_module_75_n9), .A2(
        n_cini_module_0__xor_module_76_res), .ZN(
        n_cini_module_0__majority7_module_75_n8) );
  NAND2_X1 u_cini_module_0__majority7_module_75_U4 ( .A1(
        n_cini_module_0__majority7_module_75_n7), .A2(
        n_cini_module_0__majority7_module_75_n8), .ZN(
        n_cini_module_0__majority7_module_75_n6) );
  NAND2_X1 u_cini_module_0__majority7_module_75_U3 ( .A1(
        n_cini_module_0__majority7_module_75_n5), .A2(
        n_cini_module_0__majority7_module_75_n6), .ZN(
        n_cini_module_0__majority7_module_75_n4) );
  NAND2_X1 u_cini_module_0__majority7_module_75_U2 ( .A1(
        n_cini_module_0__majority7_module_75_n3), .A2(
        n_cini_module_0__majority7_module_75_n4), .ZN(
        n_cini_module_0__majority7_module_75_n2) );
  NAND2_X1 u_cini_module_0__majority7_module_75_U1 ( .A1(
        n_cini_module_0__majority7_module_75_n1), .A2(
        n_cini_module_0__majority7_module_75_n2), .ZN(
        n_cini_module_0__majority7_module_75_res) );
  DFF_X1 u_cini_module_0__reg_module_355__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority7_module_75_res), .CK(clock_6), .Q(
        n_cini_module_0__reg_module_355_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_178_U1 ( .A1(
        n_cini_module_0__reg_module_355_res), .A2(io_a_s1_d6), .ZN(
        n_cini_module_0__and_module_178_res) );
  DFF_X1 u_cini_module_0__reg_module_356__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_178_res), .CK(clock_6), .Q(
        n_cini_module_0__reg_module_356_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_235_U1 ( .A(
        n_cini_module_0__reg_module_354_res), .B(
        n_cini_module_0__reg_module_356_res), .Z(
        n_cini_module_0__xor_module_235_res) );
  DFF_X1 u_cini_module_0__reg_module_357__hpc_correct_b_s0_d0_reg ( .D(
        p_rand_3), .CK(clock_6), .Q(n_cini_module_0__reg_module_357_res), 
        .QN() );
  INV_X1 u_cini_module_0__not_module_77_U1 ( .A(io_a_s1_d6), .ZN(
        n_cini_module_0__not_module_77_res) );
  AND2_X1 u_cini_module_0__and_module_179_U1 ( .A1(
        n_cini_module_0__not_module_77_res), .A2(
        n_cini_module_0__reg_module_357_res), .ZN(
        n_cini_module_0__and_module_179_res) );
  DFF_X1 u_cini_module_0__reg_module_358__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_179_res), .CK(clock_6), .Q(
        n_cini_module_0__reg_module_358_res), .QN() );
  NAND2_X1 u_cini_module_0__majority7_module_76_U18 ( .A1(
        n_cini_module_0__xor_module_41_res), .A2(
        n_cini_module_0__xor_module_53_res), .ZN(
        n_cini_module_0__majority7_module_76_n16) );
  XOR2_X1 u_cini_module_0__majority7_module_76_U17 ( .A(
        n_cini_module_0__xor_module_41_res), .B(
        n_cini_module_0__xor_module_53_res), .Z(
        n_cini_module_0__majority7_module_76_n10) );
  NAND2_X1 u_cini_module_0__majority7_module_76_U16 ( .A1(
        n_cini_module_0__xor_module_65_res), .A2(
        n_cini_module_0__majority7_module_76_n10), .ZN(
        n_cini_module_0__majority7_module_76_n17) );
  NAND2_X1 u_cini_module_0__majority7_module_76_U15 ( .A1(
        n_cini_module_0__majority7_module_76_n16), .A2(
        n_cini_module_0__majority7_module_76_n17), .ZN(
        n_cini_module_0__majority7_module_76_n13) );
  NAND2_X1 u_cini_module_0__majority7_module_76_U14 ( .A1(
        n_cini_module_0__xor_module_5_res), .A2(
        n_cini_module_0__xor_module_17_res), .ZN(
        n_cini_module_0__majority7_module_76_n14) );
  XOR2_X1 u_cini_module_0__majority7_module_76_U13 ( .A(
        n_cini_module_0__xor_module_5_res), .B(
        n_cini_module_0__xor_module_17_res), .Z(
        n_cini_module_0__majority7_module_76_n11) );
  NAND2_X1 u_cini_module_0__majority7_module_76_U12 ( .A1(
        n_cini_module_0__xor_module_29_res), .A2(
        n_cini_module_0__majority7_module_76_n11), .ZN(
        n_cini_module_0__majority7_module_76_n15) );
  NAND2_X1 u_cini_module_0__majority7_module_76_U11 ( .A1(
        n_cini_module_0__majority7_module_76_n14), .A2(
        n_cini_module_0__majority7_module_76_n15), .ZN(
        n_cini_module_0__majority7_module_76_n12) );
  NAND2_X1 u_cini_module_0__majority7_module_76_U10 ( .A1(
        n_cini_module_0__majority7_module_76_n13), .A2(
        n_cini_module_0__majority7_module_76_n12), .ZN(
        n_cini_module_0__majority7_module_76_n1) );
  OR2_X1 u_cini_module_0__majority7_module_76_U9 ( .A1(
        n_cini_module_0__majority7_module_76_n12), .A2(
        n_cini_module_0__majority7_module_76_n13), .ZN(
        n_cini_module_0__majority7_module_76_n3) );
  XOR2_X1 u_cini_module_0__majority7_module_76_U8 ( .A(
        n_cini_module_0__xor_module_29_res), .B(
        n_cini_module_0__majority7_module_76_n11), .Z(
        n_cini_module_0__majority7_module_76_n9) );
  NAND2_X1 u_cini_module_0__majority7_module_76_U7 ( .A1(
        n_cini_module_0__xor_module_77_res), .A2(
        n_cini_module_0__majority7_module_76_n9), .ZN(
        n_cini_module_0__majority7_module_76_n5) );
  XOR2_X1 u_cini_module_0__majority7_module_76_U6 ( .A(
        n_cini_module_0__xor_module_65_res), .B(
        n_cini_module_0__majority7_module_76_n10), .Z(
        n_cini_module_0__majority7_module_76_n7) );
  OR2_X1 u_cini_module_0__majority7_module_76_U5 ( .A1(
        n_cini_module_0__majority7_module_76_n9), .A2(
        n_cini_module_0__xor_module_77_res), .ZN(
        n_cini_module_0__majority7_module_76_n8) );
  NAND2_X1 u_cini_module_0__majority7_module_76_U4 ( .A1(
        n_cini_module_0__majority7_module_76_n7), .A2(
        n_cini_module_0__majority7_module_76_n8), .ZN(
        n_cini_module_0__majority7_module_76_n6) );
  NAND2_X1 u_cini_module_0__majority7_module_76_U3 ( .A1(
        n_cini_module_0__majority7_module_76_n5), .A2(
        n_cini_module_0__majority7_module_76_n6), .ZN(
        n_cini_module_0__majority7_module_76_n4) );
  NAND2_X1 u_cini_module_0__majority7_module_76_U2 ( .A1(
        n_cini_module_0__majority7_module_76_n3), .A2(
        n_cini_module_0__majority7_module_76_n4), .ZN(
        n_cini_module_0__majority7_module_76_n2) );
  NAND2_X1 u_cini_module_0__majority7_module_76_U1 ( .A1(
        n_cini_module_0__majority7_module_76_n1), .A2(
        n_cini_module_0__majority7_module_76_n2), .ZN(
        n_cini_module_0__majority7_module_76_res) );
  DFF_X1 u_cini_module_0__reg_module_359__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority7_module_76_res), .CK(clock_6), .Q(
        n_cini_module_0__reg_module_359_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_180_U1 ( .A1(
        n_cini_module_0__reg_module_359_res), .A2(io_a_s1_d6), .ZN(
        n_cini_module_0__and_module_180_res) );
  DFF_X1 u_cini_module_0__reg_module_360__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_180_res), .CK(clock_6), .Q(
        n_cini_module_0__reg_module_360_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_236_U1 ( .A(
        n_cini_module_0__reg_module_358_res), .B(
        n_cini_module_0__reg_module_360_res), .Z(
        n_cini_module_0__xor_module_236_res) );
  XOR2_X1 u_cini_module_0__xor_module_237_U1 ( .A(
        n_cini_module_0__xor_module_235_res), .B(
        n_cini_module_0__xor_module_236_res), .Z(
        n_cini_module_0__xor_module_237_res) );
  DFF_X1 u_cini_module_0__reg_module_361__hpc_correct_b_s0_d0_reg ( .D(
        p_rand_4), .CK(clock_6), .Q(n_cini_module_0__reg_module_361_res), 
        .QN() );
  INV_X1 u_cini_module_0__not_module_78_U1 ( .A(io_a_s1_d6), .ZN(
        n_cini_module_0__not_module_78_res) );
  AND2_X1 u_cini_module_0__and_module_181_U1 ( .A1(
        n_cini_module_0__not_module_78_res), .A2(
        n_cini_module_0__reg_module_361_res), .ZN(
        n_cini_module_0__and_module_181_res) );
  DFF_X1 u_cini_module_0__reg_module_362__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_181_res), .CK(clock_6), .Q(
        n_cini_module_0__reg_module_362_res), .QN() );
  NAND2_X1 u_cini_module_0__majority7_module_77_U18 ( .A1(
        n_cini_module_0__xor_module_42_res), .A2(
        n_cini_module_0__xor_module_54_res), .ZN(
        n_cini_module_0__majority7_module_77_n16) );
  XOR2_X1 u_cini_module_0__majority7_module_77_U17 ( .A(
        n_cini_module_0__xor_module_42_res), .B(
        n_cini_module_0__xor_module_54_res), .Z(
        n_cini_module_0__majority7_module_77_n10) );
  NAND2_X1 u_cini_module_0__majority7_module_77_U16 ( .A1(
        n_cini_module_0__xor_module_66_res), .A2(
        n_cini_module_0__majority7_module_77_n10), .ZN(
        n_cini_module_0__majority7_module_77_n17) );
  NAND2_X1 u_cini_module_0__majority7_module_77_U15 ( .A1(
        n_cini_module_0__majority7_module_77_n16), .A2(
        n_cini_module_0__majority7_module_77_n17), .ZN(
        n_cini_module_0__majority7_module_77_n13) );
  NAND2_X1 u_cini_module_0__majority7_module_77_U14 ( .A1(
        n_cini_module_0__xor_module_6_res), .A2(
        n_cini_module_0__xor_module_18_res), .ZN(
        n_cini_module_0__majority7_module_77_n14) );
  XOR2_X1 u_cini_module_0__majority7_module_77_U13 ( .A(
        n_cini_module_0__xor_module_6_res), .B(
        n_cini_module_0__xor_module_18_res), .Z(
        n_cini_module_0__majority7_module_77_n11) );
  NAND2_X1 u_cini_module_0__majority7_module_77_U12 ( .A1(
        n_cini_module_0__xor_module_30_res), .A2(
        n_cini_module_0__majority7_module_77_n11), .ZN(
        n_cini_module_0__majority7_module_77_n15) );
  NAND2_X1 u_cini_module_0__majority7_module_77_U11 ( .A1(
        n_cini_module_0__majority7_module_77_n14), .A2(
        n_cini_module_0__majority7_module_77_n15), .ZN(
        n_cini_module_0__majority7_module_77_n12) );
  NAND2_X1 u_cini_module_0__majority7_module_77_U10 ( .A1(
        n_cini_module_0__majority7_module_77_n13), .A2(
        n_cini_module_0__majority7_module_77_n12), .ZN(
        n_cini_module_0__majority7_module_77_n1) );
  OR2_X1 u_cini_module_0__majority7_module_77_U9 ( .A1(
        n_cini_module_0__majority7_module_77_n12), .A2(
        n_cini_module_0__majority7_module_77_n13), .ZN(
        n_cini_module_0__majority7_module_77_n3) );
  XOR2_X1 u_cini_module_0__majority7_module_77_U8 ( .A(
        n_cini_module_0__xor_module_30_res), .B(
        n_cini_module_0__majority7_module_77_n11), .Z(
        n_cini_module_0__majority7_module_77_n9) );
  NAND2_X1 u_cini_module_0__majority7_module_77_U7 ( .A1(
        n_cini_module_0__xor_module_78_res), .A2(
        n_cini_module_0__majority7_module_77_n9), .ZN(
        n_cini_module_0__majority7_module_77_n5) );
  XOR2_X1 u_cini_module_0__majority7_module_77_U6 ( .A(
        n_cini_module_0__xor_module_66_res), .B(
        n_cini_module_0__majority7_module_77_n10), .Z(
        n_cini_module_0__majority7_module_77_n7) );
  OR2_X1 u_cini_module_0__majority7_module_77_U5 ( .A1(
        n_cini_module_0__majority7_module_77_n9), .A2(
        n_cini_module_0__xor_module_78_res), .ZN(
        n_cini_module_0__majority7_module_77_n8) );
  NAND2_X1 u_cini_module_0__majority7_module_77_U4 ( .A1(
        n_cini_module_0__majority7_module_77_n7), .A2(
        n_cini_module_0__majority7_module_77_n8), .ZN(
        n_cini_module_0__majority7_module_77_n6) );
  NAND2_X1 u_cini_module_0__majority7_module_77_U3 ( .A1(
        n_cini_module_0__majority7_module_77_n5), .A2(
        n_cini_module_0__majority7_module_77_n6), .ZN(
        n_cini_module_0__majority7_module_77_n4) );
  NAND2_X1 u_cini_module_0__majority7_module_77_U2 ( .A1(
        n_cini_module_0__majority7_module_77_n3), .A2(
        n_cini_module_0__majority7_module_77_n4), .ZN(
        n_cini_module_0__majority7_module_77_n2) );
  NAND2_X1 u_cini_module_0__majority7_module_77_U1 ( .A1(
        n_cini_module_0__majority7_module_77_n1), .A2(
        n_cini_module_0__majority7_module_77_n2), .ZN(
        n_cini_module_0__majority7_module_77_res) );
  DFF_X1 u_cini_module_0__reg_module_363__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority7_module_77_res), .CK(clock_6), .Q(
        n_cini_module_0__reg_module_363_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_182_U1 ( .A1(
        n_cini_module_0__reg_module_363_res), .A2(io_a_s1_d6), .ZN(
        n_cini_module_0__and_module_182_res) );
  DFF_X1 u_cini_module_0__reg_module_364__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_182_res), .CK(clock_6), .Q(
        n_cini_module_0__reg_module_364_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_238_U1 ( .A(
        n_cini_module_0__reg_module_362_res), .B(
        n_cini_module_0__reg_module_364_res), .Z(
        n_cini_module_0__xor_module_238_res) );
  XOR2_X1 u_cini_module_0__xor_module_239_U1 ( .A(
        n_cini_module_0__xor_module_237_res), .B(
        n_cini_module_0__xor_module_238_res), .Z(
        n_cini_module_0__xor_module_239_res) );
  XOR2_X1 u_cini_module_0__xor_module_240_U1 ( .A(
        n_cini_module_0__xor_module_239_res), .B(
        n_cini_module_0__reg_module_352_res), .Z(io_c_s1_d6) );
  DFF_X1 u_cini_module_0__reg_module_365__hpc_correct_b_s0_d0_reg ( .D(
        io_b_s2_d6), .CK(clock_6), .Q(n_cini_module_0__reg_module_365_res), 
        .QN() );
  AND2_X1 u_cini_module_0__and_module_183_U1 ( .A1(
        n_cini_module_0__reg_module_365_res), .A2(io_a_s2_d6), .ZN(
        n_cini_module_0__and_module_183_res) );
  DFF_X1 u_cini_module_0__reg_module_366__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_183_res), .CK(clock_6), .Q(
        n_cini_module_0__reg_module_366_res), .QN() );
  DFF_X1 u_cini_module_0__reg_module_367__hpc_correct_b_s0_d0_reg ( .D(
        p_rand_1), .CK(clock_6), .Q(n_cini_module_0__reg_module_367_res), 
        .QN() );
  INV_X1 u_cini_module_0__not_module_79_U1 ( .A(io_a_s2_d6), .ZN(
        n_cini_module_0__not_module_79_res) );
  AND2_X1 u_cini_module_0__and_module_184_U1 ( .A1(
        n_cini_module_0__not_module_79_res), .A2(
        n_cini_module_0__reg_module_367_res), .ZN(
        n_cini_module_0__and_module_184_res) );
  DFF_X1 u_cini_module_0__reg_module_368__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_184_res), .CK(clock_6), .Q(
        n_cini_module_0__reg_module_368_res), .QN() );
  NAND2_X1 u_cini_module_0__majority7_module_78_U18 ( .A1(
        n_cini_module_0__xor_module_43_res), .A2(
        n_cini_module_0__xor_module_55_res), .ZN(
        n_cini_module_0__majority7_module_78_n16) );
  XOR2_X1 u_cini_module_0__majority7_module_78_U17 ( .A(
        n_cini_module_0__xor_module_43_res), .B(
        n_cini_module_0__xor_module_55_res), .Z(
        n_cini_module_0__majority7_module_78_n10) );
  NAND2_X1 u_cini_module_0__majority7_module_78_U16 ( .A1(
        n_cini_module_0__xor_module_67_res), .A2(
        n_cini_module_0__majority7_module_78_n10), .ZN(
        n_cini_module_0__majority7_module_78_n17) );
  NAND2_X1 u_cini_module_0__majority7_module_78_U15 ( .A1(
        n_cini_module_0__majority7_module_78_n16), .A2(
        n_cini_module_0__majority7_module_78_n17), .ZN(
        n_cini_module_0__majority7_module_78_n13) );
  NAND2_X1 u_cini_module_0__majority7_module_78_U14 ( .A1(
        n_cini_module_0__xor_module_7_res), .A2(
        n_cini_module_0__xor_module_19_res), .ZN(
        n_cini_module_0__majority7_module_78_n14) );
  XOR2_X1 u_cini_module_0__majority7_module_78_U13 ( .A(
        n_cini_module_0__xor_module_7_res), .B(
        n_cini_module_0__xor_module_19_res), .Z(
        n_cini_module_0__majority7_module_78_n11) );
  NAND2_X1 u_cini_module_0__majority7_module_78_U12 ( .A1(
        n_cini_module_0__xor_module_31_res), .A2(
        n_cini_module_0__majority7_module_78_n11), .ZN(
        n_cini_module_0__majority7_module_78_n15) );
  NAND2_X1 u_cini_module_0__majority7_module_78_U11 ( .A1(
        n_cini_module_0__majority7_module_78_n14), .A2(
        n_cini_module_0__majority7_module_78_n15), .ZN(
        n_cini_module_0__majority7_module_78_n12) );
  NAND2_X1 u_cini_module_0__majority7_module_78_U10 ( .A1(
        n_cini_module_0__majority7_module_78_n13), .A2(
        n_cini_module_0__majority7_module_78_n12), .ZN(
        n_cini_module_0__majority7_module_78_n1) );
  OR2_X1 u_cini_module_0__majority7_module_78_U9 ( .A1(
        n_cini_module_0__majority7_module_78_n12), .A2(
        n_cini_module_0__majority7_module_78_n13), .ZN(
        n_cini_module_0__majority7_module_78_n3) );
  XOR2_X1 u_cini_module_0__majority7_module_78_U8 ( .A(
        n_cini_module_0__xor_module_31_res), .B(
        n_cini_module_0__majority7_module_78_n11), .Z(
        n_cini_module_0__majority7_module_78_n9) );
  NAND2_X1 u_cini_module_0__majority7_module_78_U7 ( .A1(
        n_cini_module_0__xor_module_79_res), .A2(
        n_cini_module_0__majority7_module_78_n9), .ZN(
        n_cini_module_0__majority7_module_78_n5) );
  XOR2_X1 u_cini_module_0__majority7_module_78_U6 ( .A(
        n_cini_module_0__xor_module_67_res), .B(
        n_cini_module_0__majority7_module_78_n10), .Z(
        n_cini_module_0__majority7_module_78_n7) );
  OR2_X1 u_cini_module_0__majority7_module_78_U5 ( .A1(
        n_cini_module_0__majority7_module_78_n9), .A2(
        n_cini_module_0__xor_module_79_res), .ZN(
        n_cini_module_0__majority7_module_78_n8) );
  NAND2_X1 u_cini_module_0__majority7_module_78_U4 ( .A1(
        n_cini_module_0__majority7_module_78_n7), .A2(
        n_cini_module_0__majority7_module_78_n8), .ZN(
        n_cini_module_0__majority7_module_78_n6) );
  NAND2_X1 u_cini_module_0__majority7_module_78_U3 ( .A1(
        n_cini_module_0__majority7_module_78_n5), .A2(
        n_cini_module_0__majority7_module_78_n6), .ZN(
        n_cini_module_0__majority7_module_78_n4) );
  NAND2_X1 u_cini_module_0__majority7_module_78_U2 ( .A1(
        n_cini_module_0__majority7_module_78_n3), .A2(
        n_cini_module_0__majority7_module_78_n4), .ZN(
        n_cini_module_0__majority7_module_78_n2) );
  NAND2_X1 u_cini_module_0__majority7_module_78_U1 ( .A1(
        n_cini_module_0__majority7_module_78_n1), .A2(
        n_cini_module_0__majority7_module_78_n2), .ZN(
        n_cini_module_0__majority7_module_78_res) );
  DFF_X1 u_cini_module_0__reg_module_369__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority7_module_78_res), .CK(clock_6), .Q(
        n_cini_module_0__reg_module_369_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_185_U1 ( .A1(
        n_cini_module_0__reg_module_369_res), .A2(io_a_s2_d6), .ZN(
        n_cini_module_0__and_module_185_res) );
  DFF_X1 u_cini_module_0__reg_module_370__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_185_res), .CK(clock_6), .Q(
        n_cini_module_0__reg_module_370_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_241_U1 ( .A(
        n_cini_module_0__reg_module_368_res), .B(
        n_cini_module_0__reg_module_370_res), .Z(
        n_cini_module_0__xor_module_241_res) );
  DFF_X1 u_cini_module_0__reg_module_371__hpc_correct_b_s0_d0_reg ( .D(
        p_rand_3), .CK(clock_6), .Q(n_cini_module_0__reg_module_371_res), 
        .QN() );
  INV_X1 u_cini_module_0__not_module_80_U1 ( .A(io_a_s2_d6), .ZN(
        n_cini_module_0__not_module_80_res) );
  AND2_X1 u_cini_module_0__and_module_186_U1 ( .A1(
        n_cini_module_0__not_module_80_res), .A2(
        n_cini_module_0__reg_module_371_res), .ZN(
        n_cini_module_0__and_module_186_res) );
  DFF_X1 u_cini_module_0__reg_module_372__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_186_res), .CK(clock_6), .Q(
        n_cini_module_0__reg_module_372_res), .QN() );
  NAND2_X1 u_cini_module_0__majority7_module_79_U18 ( .A1(
        n_cini_module_0__xor_module_44_res), .A2(
        n_cini_module_0__xor_module_56_res), .ZN(
        n_cini_module_0__majority7_module_79_n16) );
  XOR2_X1 u_cini_module_0__majority7_module_79_U17 ( .A(
        n_cini_module_0__xor_module_44_res), .B(
        n_cini_module_0__xor_module_56_res), .Z(
        n_cini_module_0__majority7_module_79_n10) );
  NAND2_X1 u_cini_module_0__majority7_module_79_U16 ( .A1(
        n_cini_module_0__xor_module_68_res), .A2(
        n_cini_module_0__majority7_module_79_n10), .ZN(
        n_cini_module_0__majority7_module_79_n17) );
  NAND2_X1 u_cini_module_0__majority7_module_79_U15 ( .A1(
        n_cini_module_0__majority7_module_79_n16), .A2(
        n_cini_module_0__majority7_module_79_n17), .ZN(
        n_cini_module_0__majority7_module_79_n13) );
  NAND2_X1 u_cini_module_0__majority7_module_79_U14 ( .A1(
        n_cini_module_0__xor_module_8_res), .A2(
        n_cini_module_0__xor_module_20_res), .ZN(
        n_cini_module_0__majority7_module_79_n14) );
  XOR2_X1 u_cini_module_0__majority7_module_79_U13 ( .A(
        n_cini_module_0__xor_module_8_res), .B(
        n_cini_module_0__xor_module_20_res), .Z(
        n_cini_module_0__majority7_module_79_n11) );
  NAND2_X1 u_cini_module_0__majority7_module_79_U12 ( .A1(
        n_cini_module_0__xor_module_32_res), .A2(
        n_cini_module_0__majority7_module_79_n11), .ZN(
        n_cini_module_0__majority7_module_79_n15) );
  NAND2_X1 u_cini_module_0__majority7_module_79_U11 ( .A1(
        n_cini_module_0__majority7_module_79_n14), .A2(
        n_cini_module_0__majority7_module_79_n15), .ZN(
        n_cini_module_0__majority7_module_79_n12) );
  NAND2_X1 u_cini_module_0__majority7_module_79_U10 ( .A1(
        n_cini_module_0__majority7_module_79_n13), .A2(
        n_cini_module_0__majority7_module_79_n12), .ZN(
        n_cini_module_0__majority7_module_79_n1) );
  OR2_X1 u_cini_module_0__majority7_module_79_U9 ( .A1(
        n_cini_module_0__majority7_module_79_n12), .A2(
        n_cini_module_0__majority7_module_79_n13), .ZN(
        n_cini_module_0__majority7_module_79_n3) );
  XOR2_X1 u_cini_module_0__majority7_module_79_U8 ( .A(
        n_cini_module_0__xor_module_32_res), .B(
        n_cini_module_0__majority7_module_79_n11), .Z(
        n_cini_module_0__majority7_module_79_n9) );
  NAND2_X1 u_cini_module_0__majority7_module_79_U7 ( .A1(
        n_cini_module_0__xor_module_80_res), .A2(
        n_cini_module_0__majority7_module_79_n9), .ZN(
        n_cini_module_0__majority7_module_79_n5) );
  XOR2_X1 u_cini_module_0__majority7_module_79_U6 ( .A(
        n_cini_module_0__xor_module_68_res), .B(
        n_cini_module_0__majority7_module_79_n10), .Z(
        n_cini_module_0__majority7_module_79_n7) );
  OR2_X1 u_cini_module_0__majority7_module_79_U5 ( .A1(
        n_cini_module_0__majority7_module_79_n9), .A2(
        n_cini_module_0__xor_module_80_res), .ZN(
        n_cini_module_0__majority7_module_79_n8) );
  NAND2_X1 u_cini_module_0__majority7_module_79_U4 ( .A1(
        n_cini_module_0__majority7_module_79_n7), .A2(
        n_cini_module_0__majority7_module_79_n8), .ZN(
        n_cini_module_0__majority7_module_79_n6) );
  NAND2_X1 u_cini_module_0__majority7_module_79_U3 ( .A1(
        n_cini_module_0__majority7_module_79_n5), .A2(
        n_cini_module_0__majority7_module_79_n6), .ZN(
        n_cini_module_0__majority7_module_79_n4) );
  NAND2_X1 u_cini_module_0__majority7_module_79_U2 ( .A1(
        n_cini_module_0__majority7_module_79_n3), .A2(
        n_cini_module_0__majority7_module_79_n4), .ZN(
        n_cini_module_0__majority7_module_79_n2) );
  NAND2_X1 u_cini_module_0__majority7_module_79_U1 ( .A1(
        n_cini_module_0__majority7_module_79_n1), .A2(
        n_cini_module_0__majority7_module_79_n2), .ZN(
        n_cini_module_0__majority7_module_79_res) );
  DFF_X1 u_cini_module_0__reg_module_373__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority7_module_79_res), .CK(clock_6), .Q(
        n_cini_module_0__reg_module_373_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_187_U1 ( .A1(
        n_cini_module_0__reg_module_373_res), .A2(io_a_s2_d6), .ZN(
        n_cini_module_0__and_module_187_res) );
  DFF_X1 u_cini_module_0__reg_module_374__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_187_res), .CK(clock_6), .Q(
        n_cini_module_0__reg_module_374_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_242_U1 ( .A(
        n_cini_module_0__reg_module_372_res), .B(
        n_cini_module_0__reg_module_374_res), .Z(
        n_cini_module_0__xor_module_242_res) );
  XOR2_X1 u_cini_module_0__xor_module_243_U1 ( .A(
        n_cini_module_0__xor_module_241_res), .B(
        n_cini_module_0__xor_module_242_res), .Z(
        n_cini_module_0__xor_module_243_res) );
  DFF_X1 u_cini_module_0__reg_module_375__hpc_correct_b_s0_d0_reg ( .D(
        p_rand_5), .CK(clock_6), .Q(n_cini_module_0__reg_module_375_res), 
        .QN() );
  INV_X1 u_cini_module_0__not_module_81_U1 ( .A(io_a_s2_d6), .ZN(
        n_cini_module_0__not_module_81_res) );
  AND2_X1 u_cini_module_0__and_module_188_U1 ( .A1(
        n_cini_module_0__not_module_81_res), .A2(
        n_cini_module_0__reg_module_375_res), .ZN(
        n_cini_module_0__and_module_188_res) );
  DFF_X1 u_cini_module_0__reg_module_376__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_188_res), .CK(clock_6), .Q(
        n_cini_module_0__reg_module_376_res), .QN() );
  NAND2_X1 u_cini_module_0__majority7_module_80_U18 ( .A1(
        n_cini_module_0__xor_module_45_res), .A2(
        n_cini_module_0__xor_module_57_res), .ZN(
        n_cini_module_0__majority7_module_80_n16) );
  XOR2_X1 u_cini_module_0__majority7_module_80_U17 ( .A(
        n_cini_module_0__xor_module_45_res), .B(
        n_cini_module_0__xor_module_57_res), .Z(
        n_cini_module_0__majority7_module_80_n10) );
  NAND2_X1 u_cini_module_0__majority7_module_80_U16 ( .A1(
        n_cini_module_0__xor_module_69_res), .A2(
        n_cini_module_0__majority7_module_80_n10), .ZN(
        n_cini_module_0__majority7_module_80_n17) );
  NAND2_X1 u_cini_module_0__majority7_module_80_U15 ( .A1(
        n_cini_module_0__majority7_module_80_n16), .A2(
        n_cini_module_0__majority7_module_80_n17), .ZN(
        n_cini_module_0__majority7_module_80_n13) );
  NAND2_X1 u_cini_module_0__majority7_module_80_U14 ( .A1(
        n_cini_module_0__xor_module_9_res), .A2(
        n_cini_module_0__xor_module_21_res), .ZN(
        n_cini_module_0__majority7_module_80_n14) );
  XOR2_X1 u_cini_module_0__majority7_module_80_U13 ( .A(
        n_cini_module_0__xor_module_9_res), .B(
        n_cini_module_0__xor_module_21_res), .Z(
        n_cini_module_0__majority7_module_80_n11) );
  NAND2_X1 u_cini_module_0__majority7_module_80_U12 ( .A1(
        n_cini_module_0__xor_module_33_res), .A2(
        n_cini_module_0__majority7_module_80_n11), .ZN(
        n_cini_module_0__majority7_module_80_n15) );
  NAND2_X1 u_cini_module_0__majority7_module_80_U11 ( .A1(
        n_cini_module_0__majority7_module_80_n14), .A2(
        n_cini_module_0__majority7_module_80_n15), .ZN(
        n_cini_module_0__majority7_module_80_n12) );
  NAND2_X1 u_cini_module_0__majority7_module_80_U10 ( .A1(
        n_cini_module_0__majority7_module_80_n13), .A2(
        n_cini_module_0__majority7_module_80_n12), .ZN(
        n_cini_module_0__majority7_module_80_n1) );
  OR2_X1 u_cini_module_0__majority7_module_80_U9 ( .A1(
        n_cini_module_0__majority7_module_80_n12), .A2(
        n_cini_module_0__majority7_module_80_n13), .ZN(
        n_cini_module_0__majority7_module_80_n3) );
  XOR2_X1 u_cini_module_0__majority7_module_80_U8 ( .A(
        n_cini_module_0__xor_module_33_res), .B(
        n_cini_module_0__majority7_module_80_n11), .Z(
        n_cini_module_0__majority7_module_80_n9) );
  NAND2_X1 u_cini_module_0__majority7_module_80_U7 ( .A1(
        n_cini_module_0__xor_module_81_res), .A2(
        n_cini_module_0__majority7_module_80_n9), .ZN(
        n_cini_module_0__majority7_module_80_n5) );
  XOR2_X1 u_cini_module_0__majority7_module_80_U6 ( .A(
        n_cini_module_0__xor_module_69_res), .B(
        n_cini_module_0__majority7_module_80_n10), .Z(
        n_cini_module_0__majority7_module_80_n7) );
  OR2_X1 u_cini_module_0__majority7_module_80_U5 ( .A1(
        n_cini_module_0__majority7_module_80_n9), .A2(
        n_cini_module_0__xor_module_81_res), .ZN(
        n_cini_module_0__majority7_module_80_n8) );
  NAND2_X1 u_cini_module_0__majority7_module_80_U4 ( .A1(
        n_cini_module_0__majority7_module_80_n7), .A2(
        n_cini_module_0__majority7_module_80_n8), .ZN(
        n_cini_module_0__majority7_module_80_n6) );
  NAND2_X1 u_cini_module_0__majority7_module_80_U3 ( .A1(
        n_cini_module_0__majority7_module_80_n5), .A2(
        n_cini_module_0__majority7_module_80_n6), .ZN(
        n_cini_module_0__majority7_module_80_n4) );
  NAND2_X1 u_cini_module_0__majority7_module_80_U2 ( .A1(
        n_cini_module_0__majority7_module_80_n3), .A2(
        n_cini_module_0__majority7_module_80_n4), .ZN(
        n_cini_module_0__majority7_module_80_n2) );
  NAND2_X1 u_cini_module_0__majority7_module_80_U1 ( .A1(
        n_cini_module_0__majority7_module_80_n1), .A2(
        n_cini_module_0__majority7_module_80_n2), .ZN(
        n_cini_module_0__majority7_module_80_res) );
  DFF_X1 u_cini_module_0__reg_module_377__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority7_module_80_res), .CK(clock_6), .Q(
        n_cini_module_0__reg_module_377_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_189_U1 ( .A1(
        n_cini_module_0__reg_module_377_res), .A2(io_a_s2_d6), .ZN(
        n_cini_module_0__and_module_189_res) );
  DFF_X1 u_cini_module_0__reg_module_378__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_189_res), .CK(clock_6), .Q(
        n_cini_module_0__reg_module_378_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_244_U1 ( .A(
        n_cini_module_0__reg_module_376_res), .B(
        n_cini_module_0__reg_module_378_res), .Z(
        n_cini_module_0__xor_module_244_res) );
  XOR2_X1 u_cini_module_0__xor_module_245_U1 ( .A(
        n_cini_module_0__xor_module_243_res), .B(
        n_cini_module_0__xor_module_244_res), .Z(
        n_cini_module_0__xor_module_245_res) );
  XOR2_X1 u_cini_module_0__xor_module_246_U1 ( .A(
        n_cini_module_0__xor_module_245_res), .B(
        n_cini_module_0__reg_module_366_res), .Z(io_c_s2_d6) );
  DFF_X1 u_cini_module_0__reg_module_379__hpc_correct_b_s0_d0_reg ( .D(
        io_b_s3_d6), .CK(clock_6), .Q(n_cini_module_0__reg_module_379_res), 
        .QN() );
  AND2_X1 u_cini_module_0__and_module_190_U1 ( .A1(
        n_cini_module_0__reg_module_379_res), .A2(io_a_s3_d6), .ZN(
        n_cini_module_0__and_module_190_res) );
  DFF_X1 u_cini_module_0__reg_module_380__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_190_res), .CK(clock_6), .Q(
        n_cini_module_0__reg_module_380_res), .QN() );
  DFF_X1 u_cini_module_0__reg_module_381__hpc_correct_b_s0_d0_reg ( .D(
        p_rand_2), .CK(clock_6), .Q(n_cini_module_0__reg_module_381_res), 
        .QN() );
  INV_X1 u_cini_module_0__not_module_82_U1 ( .A(io_a_s3_d6), .ZN(
        n_cini_module_0__not_module_82_res) );
  AND2_X1 u_cini_module_0__and_module_191_U1 ( .A1(
        n_cini_module_0__not_module_82_res), .A2(
        n_cini_module_0__reg_module_381_res), .ZN(
        n_cini_module_0__and_module_191_res) );
  DFF_X1 u_cini_module_0__reg_module_382__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_191_res), .CK(clock_6), .Q(
        n_cini_module_0__reg_module_382_res), .QN() );
  NAND2_X1 u_cini_module_0__majority7_module_81_U18 ( .A1(
        n_cini_module_0__xor_module_46_res), .A2(
        n_cini_module_0__xor_module_58_res), .ZN(
        n_cini_module_0__majority7_module_81_n16) );
  XOR2_X1 u_cini_module_0__majority7_module_81_U17 ( .A(
        n_cini_module_0__xor_module_46_res), .B(
        n_cini_module_0__xor_module_58_res), .Z(
        n_cini_module_0__majority7_module_81_n10) );
  NAND2_X1 u_cini_module_0__majority7_module_81_U16 ( .A1(
        n_cini_module_0__xor_module_70_res), .A2(
        n_cini_module_0__majority7_module_81_n10), .ZN(
        n_cini_module_0__majority7_module_81_n17) );
  NAND2_X1 u_cini_module_0__majority7_module_81_U15 ( .A1(
        n_cini_module_0__majority7_module_81_n16), .A2(
        n_cini_module_0__majority7_module_81_n17), .ZN(
        n_cini_module_0__majority7_module_81_n13) );
  NAND2_X1 u_cini_module_0__majority7_module_81_U14 ( .A1(
        n_cini_module_0__xor_module_10_res), .A2(
        n_cini_module_0__xor_module_22_res), .ZN(
        n_cini_module_0__majority7_module_81_n14) );
  XOR2_X1 u_cini_module_0__majority7_module_81_U13 ( .A(
        n_cini_module_0__xor_module_10_res), .B(
        n_cini_module_0__xor_module_22_res), .Z(
        n_cini_module_0__majority7_module_81_n11) );
  NAND2_X1 u_cini_module_0__majority7_module_81_U12 ( .A1(
        n_cini_module_0__xor_module_34_res), .A2(
        n_cini_module_0__majority7_module_81_n11), .ZN(
        n_cini_module_0__majority7_module_81_n15) );
  NAND2_X1 u_cini_module_0__majority7_module_81_U11 ( .A1(
        n_cini_module_0__majority7_module_81_n14), .A2(
        n_cini_module_0__majority7_module_81_n15), .ZN(
        n_cini_module_0__majority7_module_81_n12) );
  NAND2_X1 u_cini_module_0__majority7_module_81_U10 ( .A1(
        n_cini_module_0__majority7_module_81_n13), .A2(
        n_cini_module_0__majority7_module_81_n12), .ZN(
        n_cini_module_0__majority7_module_81_n1) );
  OR2_X1 u_cini_module_0__majority7_module_81_U9 ( .A1(
        n_cini_module_0__majority7_module_81_n12), .A2(
        n_cini_module_0__majority7_module_81_n13), .ZN(
        n_cini_module_0__majority7_module_81_n3) );
  XOR2_X1 u_cini_module_0__majority7_module_81_U8 ( .A(
        n_cini_module_0__xor_module_34_res), .B(
        n_cini_module_0__majority7_module_81_n11), .Z(
        n_cini_module_0__majority7_module_81_n9) );
  NAND2_X1 u_cini_module_0__majority7_module_81_U7 ( .A1(
        n_cini_module_0__xor_module_82_res), .A2(
        n_cini_module_0__majority7_module_81_n9), .ZN(
        n_cini_module_0__majority7_module_81_n5) );
  XOR2_X1 u_cini_module_0__majority7_module_81_U6 ( .A(
        n_cini_module_0__xor_module_70_res), .B(
        n_cini_module_0__majority7_module_81_n10), .Z(
        n_cini_module_0__majority7_module_81_n7) );
  OR2_X1 u_cini_module_0__majority7_module_81_U5 ( .A1(
        n_cini_module_0__majority7_module_81_n9), .A2(
        n_cini_module_0__xor_module_82_res), .ZN(
        n_cini_module_0__majority7_module_81_n8) );
  NAND2_X1 u_cini_module_0__majority7_module_81_U4 ( .A1(
        n_cini_module_0__majority7_module_81_n7), .A2(
        n_cini_module_0__majority7_module_81_n8), .ZN(
        n_cini_module_0__majority7_module_81_n6) );
  NAND2_X1 u_cini_module_0__majority7_module_81_U3 ( .A1(
        n_cini_module_0__majority7_module_81_n5), .A2(
        n_cini_module_0__majority7_module_81_n6), .ZN(
        n_cini_module_0__majority7_module_81_n4) );
  NAND2_X1 u_cini_module_0__majority7_module_81_U2 ( .A1(
        n_cini_module_0__majority7_module_81_n3), .A2(
        n_cini_module_0__majority7_module_81_n4), .ZN(
        n_cini_module_0__majority7_module_81_n2) );
  NAND2_X1 u_cini_module_0__majority7_module_81_U1 ( .A1(
        n_cini_module_0__majority7_module_81_n1), .A2(
        n_cini_module_0__majority7_module_81_n2), .ZN(
        n_cini_module_0__majority7_module_81_res) );
  DFF_X1 u_cini_module_0__reg_module_383__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority7_module_81_res), .CK(clock_6), .Q(
        n_cini_module_0__reg_module_383_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_192_U1 ( .A1(
        n_cini_module_0__reg_module_383_res), .A2(io_a_s3_d6), .ZN(
        n_cini_module_0__and_module_192_res) );
  DFF_X1 u_cini_module_0__reg_module_384__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_192_res), .CK(clock_6), .Q(
        n_cini_module_0__reg_module_384_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_247_U1 ( .A(
        n_cini_module_0__reg_module_382_res), .B(
        n_cini_module_0__reg_module_384_res), .Z(
        n_cini_module_0__xor_module_247_res) );
  DFF_X1 u_cini_module_0__reg_module_385__hpc_correct_b_s0_d0_reg ( .D(
        p_rand_4), .CK(clock_6), .Q(n_cini_module_0__reg_module_385_res), 
        .QN() );
  INV_X1 u_cini_module_0__not_module_83_U1 ( .A(io_a_s3_d6), .ZN(
        n_cini_module_0__not_module_83_res) );
  AND2_X1 u_cini_module_0__and_module_193_U1 ( .A1(
        n_cini_module_0__not_module_83_res), .A2(
        n_cini_module_0__reg_module_385_res), .ZN(
        n_cini_module_0__and_module_193_res) );
  DFF_X1 u_cini_module_0__reg_module_386__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_193_res), .CK(clock_6), .Q(
        n_cini_module_0__reg_module_386_res), .QN() );
  NAND2_X1 u_cini_module_0__majority7_module_82_U18 ( .A1(
        n_cini_module_0__xor_module_47_res), .A2(
        n_cini_module_0__xor_module_59_res), .ZN(
        n_cini_module_0__majority7_module_82_n16) );
  XOR2_X1 u_cini_module_0__majority7_module_82_U17 ( .A(
        n_cini_module_0__xor_module_47_res), .B(
        n_cini_module_0__xor_module_59_res), .Z(
        n_cini_module_0__majority7_module_82_n10) );
  NAND2_X1 u_cini_module_0__majority7_module_82_U16 ( .A1(
        n_cini_module_0__xor_module_71_res), .A2(
        n_cini_module_0__majority7_module_82_n10), .ZN(
        n_cini_module_0__majority7_module_82_n17) );
  NAND2_X1 u_cini_module_0__majority7_module_82_U15 ( .A1(
        n_cini_module_0__majority7_module_82_n16), .A2(
        n_cini_module_0__majority7_module_82_n17), .ZN(
        n_cini_module_0__majority7_module_82_n13) );
  NAND2_X1 u_cini_module_0__majority7_module_82_U14 ( .A1(
        n_cini_module_0__xor_module_11_res), .A2(
        n_cini_module_0__xor_module_23_res), .ZN(
        n_cini_module_0__majority7_module_82_n14) );
  XOR2_X1 u_cini_module_0__majority7_module_82_U13 ( .A(
        n_cini_module_0__xor_module_11_res), .B(
        n_cini_module_0__xor_module_23_res), .Z(
        n_cini_module_0__majority7_module_82_n11) );
  NAND2_X1 u_cini_module_0__majority7_module_82_U12 ( .A1(
        n_cini_module_0__xor_module_35_res), .A2(
        n_cini_module_0__majority7_module_82_n11), .ZN(
        n_cini_module_0__majority7_module_82_n15) );
  NAND2_X1 u_cini_module_0__majority7_module_82_U11 ( .A1(
        n_cini_module_0__majority7_module_82_n14), .A2(
        n_cini_module_0__majority7_module_82_n15), .ZN(
        n_cini_module_0__majority7_module_82_n12) );
  NAND2_X1 u_cini_module_0__majority7_module_82_U10 ( .A1(
        n_cini_module_0__majority7_module_82_n13), .A2(
        n_cini_module_0__majority7_module_82_n12), .ZN(
        n_cini_module_0__majority7_module_82_n1) );
  OR2_X1 u_cini_module_0__majority7_module_82_U9 ( .A1(
        n_cini_module_0__majority7_module_82_n12), .A2(
        n_cini_module_0__majority7_module_82_n13), .ZN(
        n_cini_module_0__majority7_module_82_n3) );
  XOR2_X1 u_cini_module_0__majority7_module_82_U8 ( .A(
        n_cini_module_0__xor_module_35_res), .B(
        n_cini_module_0__majority7_module_82_n11), .Z(
        n_cini_module_0__majority7_module_82_n9) );
  NAND2_X1 u_cini_module_0__majority7_module_82_U7 ( .A1(
        n_cini_module_0__xor_module_83_res), .A2(
        n_cini_module_0__majority7_module_82_n9), .ZN(
        n_cini_module_0__majority7_module_82_n5) );
  XOR2_X1 u_cini_module_0__majority7_module_82_U6 ( .A(
        n_cini_module_0__xor_module_71_res), .B(
        n_cini_module_0__majority7_module_82_n10), .Z(
        n_cini_module_0__majority7_module_82_n7) );
  OR2_X1 u_cini_module_0__majority7_module_82_U5 ( .A1(
        n_cini_module_0__majority7_module_82_n9), .A2(
        n_cini_module_0__xor_module_83_res), .ZN(
        n_cini_module_0__majority7_module_82_n8) );
  NAND2_X1 u_cini_module_0__majority7_module_82_U4 ( .A1(
        n_cini_module_0__majority7_module_82_n7), .A2(
        n_cini_module_0__majority7_module_82_n8), .ZN(
        n_cini_module_0__majority7_module_82_n6) );
  NAND2_X1 u_cini_module_0__majority7_module_82_U3 ( .A1(
        n_cini_module_0__majority7_module_82_n5), .A2(
        n_cini_module_0__majority7_module_82_n6), .ZN(
        n_cini_module_0__majority7_module_82_n4) );
  NAND2_X1 u_cini_module_0__majority7_module_82_U2 ( .A1(
        n_cini_module_0__majority7_module_82_n3), .A2(
        n_cini_module_0__majority7_module_82_n4), .ZN(
        n_cini_module_0__majority7_module_82_n2) );
  NAND2_X1 u_cini_module_0__majority7_module_82_U1 ( .A1(
        n_cini_module_0__majority7_module_82_n1), .A2(
        n_cini_module_0__majority7_module_82_n2), .ZN(
        n_cini_module_0__majority7_module_82_res) );
  DFF_X1 u_cini_module_0__reg_module_387__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority7_module_82_res), .CK(clock_6), .Q(
        n_cini_module_0__reg_module_387_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_194_U1 ( .A1(
        n_cini_module_0__reg_module_387_res), .A2(io_a_s3_d6), .ZN(
        n_cini_module_0__and_module_194_res) );
  DFF_X1 u_cini_module_0__reg_module_388__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_194_res), .CK(clock_6), .Q(
        n_cini_module_0__reg_module_388_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_248_U1 ( .A(
        n_cini_module_0__reg_module_386_res), .B(
        n_cini_module_0__reg_module_388_res), .Z(
        n_cini_module_0__xor_module_248_res) );
  XOR2_X1 u_cini_module_0__xor_module_249_U1 ( .A(
        n_cini_module_0__xor_module_247_res), .B(
        n_cini_module_0__xor_module_248_res), .Z(
        n_cini_module_0__xor_module_249_res) );
  DFF_X1 u_cini_module_0__reg_module_389__hpc_correct_b_s0_d0_reg ( .D(
        p_rand_5), .CK(clock_6), .Q(n_cini_module_0__reg_module_389_res), 
        .QN() );
  INV_X1 u_cini_module_0__not_module_84_U1 ( .A(io_a_s3_d6), .ZN(
        n_cini_module_0__not_module_84_res) );
  AND2_X1 u_cini_module_0__and_module_195_U1 ( .A1(
        n_cini_module_0__not_module_84_res), .A2(
        n_cini_module_0__reg_module_389_res), .ZN(
        n_cini_module_0__and_module_195_res) );
  DFF_X1 u_cini_module_0__reg_module_390__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_195_res), .CK(clock_6), .Q(
        n_cini_module_0__reg_module_390_res), .QN() );
  NAND2_X1 u_cini_module_0__majority7_module_83_U18 ( .A1(
        n_cini_module_0__xor_module_48_res), .A2(
        n_cini_module_0__xor_module_60_res), .ZN(
        n_cini_module_0__majority7_module_83_n16) );
  XOR2_X1 u_cini_module_0__majority7_module_83_U17 ( .A(
        n_cini_module_0__xor_module_48_res), .B(
        n_cini_module_0__xor_module_60_res), .Z(
        n_cini_module_0__majority7_module_83_n10) );
  NAND2_X1 u_cini_module_0__majority7_module_83_U16 ( .A1(
        n_cini_module_0__xor_module_72_res), .A2(
        n_cini_module_0__majority7_module_83_n10), .ZN(
        n_cini_module_0__majority7_module_83_n17) );
  NAND2_X1 u_cini_module_0__majority7_module_83_U15 ( .A1(
        n_cini_module_0__majority7_module_83_n16), .A2(
        n_cini_module_0__majority7_module_83_n17), .ZN(
        n_cini_module_0__majority7_module_83_n13) );
  NAND2_X1 u_cini_module_0__majority7_module_83_U14 ( .A1(
        n_cini_module_0__xor_module_12_res), .A2(
        n_cini_module_0__xor_module_24_res), .ZN(
        n_cini_module_0__majority7_module_83_n14) );
  XOR2_X1 u_cini_module_0__majority7_module_83_U13 ( .A(
        n_cini_module_0__xor_module_12_res), .B(
        n_cini_module_0__xor_module_24_res), .Z(
        n_cini_module_0__majority7_module_83_n11) );
  NAND2_X1 u_cini_module_0__majority7_module_83_U12 ( .A1(
        n_cini_module_0__xor_module_36_res), .A2(
        n_cini_module_0__majority7_module_83_n11), .ZN(
        n_cini_module_0__majority7_module_83_n15) );
  NAND2_X1 u_cini_module_0__majority7_module_83_U11 ( .A1(
        n_cini_module_0__majority7_module_83_n14), .A2(
        n_cini_module_0__majority7_module_83_n15), .ZN(
        n_cini_module_0__majority7_module_83_n12) );
  NAND2_X1 u_cini_module_0__majority7_module_83_U10 ( .A1(
        n_cini_module_0__majority7_module_83_n13), .A2(
        n_cini_module_0__majority7_module_83_n12), .ZN(
        n_cini_module_0__majority7_module_83_n1) );
  OR2_X1 u_cini_module_0__majority7_module_83_U9 ( .A1(
        n_cini_module_0__majority7_module_83_n12), .A2(
        n_cini_module_0__majority7_module_83_n13), .ZN(
        n_cini_module_0__majority7_module_83_n3) );
  XOR2_X1 u_cini_module_0__majority7_module_83_U8 ( .A(
        n_cini_module_0__xor_module_36_res), .B(
        n_cini_module_0__majority7_module_83_n11), .Z(
        n_cini_module_0__majority7_module_83_n9) );
  NAND2_X1 u_cini_module_0__majority7_module_83_U7 ( .A1(
        n_cini_module_0__xor_module_84_res), .A2(
        n_cini_module_0__majority7_module_83_n9), .ZN(
        n_cini_module_0__majority7_module_83_n5) );
  XOR2_X1 u_cini_module_0__majority7_module_83_U6 ( .A(
        n_cini_module_0__xor_module_72_res), .B(
        n_cini_module_0__majority7_module_83_n10), .Z(
        n_cini_module_0__majority7_module_83_n7) );
  OR2_X1 u_cini_module_0__majority7_module_83_U5 ( .A1(
        n_cini_module_0__majority7_module_83_n9), .A2(
        n_cini_module_0__xor_module_84_res), .ZN(
        n_cini_module_0__majority7_module_83_n8) );
  NAND2_X1 u_cini_module_0__majority7_module_83_U4 ( .A1(
        n_cini_module_0__majority7_module_83_n7), .A2(
        n_cini_module_0__majority7_module_83_n8), .ZN(
        n_cini_module_0__majority7_module_83_n6) );
  NAND2_X1 u_cini_module_0__majority7_module_83_U3 ( .A1(
        n_cini_module_0__majority7_module_83_n5), .A2(
        n_cini_module_0__majority7_module_83_n6), .ZN(
        n_cini_module_0__majority7_module_83_n4) );
  NAND2_X1 u_cini_module_0__majority7_module_83_U2 ( .A1(
        n_cini_module_0__majority7_module_83_n3), .A2(
        n_cini_module_0__majority7_module_83_n4), .ZN(
        n_cini_module_0__majority7_module_83_n2) );
  NAND2_X1 u_cini_module_0__majority7_module_83_U1 ( .A1(
        n_cini_module_0__majority7_module_83_n1), .A2(
        n_cini_module_0__majority7_module_83_n2), .ZN(
        n_cini_module_0__majority7_module_83_res) );
  DFF_X1 u_cini_module_0__reg_module_391__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority7_module_83_res), .CK(clock_6), .Q(
        n_cini_module_0__reg_module_391_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_196_U1 ( .A1(
        n_cini_module_0__reg_module_391_res), .A2(io_a_s3_d6), .ZN(
        n_cini_module_0__and_module_196_res) );
  DFF_X1 u_cini_module_0__reg_module_392__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_196_res), .CK(clock_6), .Q(
        n_cini_module_0__reg_module_392_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_250_U1 ( .A(
        n_cini_module_0__reg_module_390_res), .B(
        n_cini_module_0__reg_module_392_res), .Z(
        n_cini_module_0__xor_module_250_res) );
  XOR2_X1 u_cini_module_0__xor_module_251_U1 ( .A(
        n_cini_module_0__xor_module_249_res), .B(
        n_cini_module_0__xor_module_250_res), .Z(
        n_cini_module_0__xor_module_251_res) );
  XOR2_X1 u_cini_module_0__xor_module_252_U1 ( .A(
        n_cini_module_0__xor_module_251_res), .B(
        n_cini_module_0__reg_module_380_res), .Z(io_c_s3_d6) );
endmodule

