%% A three-coloring problem instance.
%% Run with
%% darwin -lm Lifted -pl 3 threecolor-relational.p
%% Result is 'unsatisfiable', 
%% indicating that the given graph cannot be colored

fof(at_least_one_color, axiom,
	(! [N] : (red(N) | green(N) | blue(N)))).

fof(at_most_one_color, axiom,
	(! [N] : ( ( red(N) => ~green(N) ) &
		   ( red(N) => ~blue(N) ) &
		   ( blue(N) => ~green(N) ) ))).

fof(adjacent_different_color, axiom,
	(! [M,N] : ( edge(M,N) => ( 
	              ~( red(M) & red(N) ) &
		      ~( green(M) & green(N) ) &
		      ~( blue(M) & blue(N) ))))).

%% fof(example, axiom, 
%% 	(edge(n1, n2) & edge(n1, n3) & edge(n2, n4))).

fof(example, axiom, (
edge(n_0,n_203) &
edge(n_0,n_199) &
edge(n_0,n_298) &
edge(n_0,n_63) &
edge(n_0,n_29) &
edge(n_0,n_16) &
edge(n_0,n_233) &
edge(n_1,n_297) &
edge(n_1,n_259) &
edge(n_1,n_103) &
edge(n_1,n_14) &
edge(n_1,n_35) &
edge(n_2,n_272) &
edge(n_2,n_156) &
edge(n_2,n_125) &
edge(n_2,n_68) &
edge(n_2,n_44) &
edge(n_3,n_211) &
edge(n_3,n_76) &
edge(n_3,n_105) &
edge(n_3,n_40) &
edge(n_3,n_36) &
edge(n_3,n_256) &
edge(n_4,n_270) &
edge(n_4,n_165) &
edge(n_4,n_151) &
edge(n_4,n_50) &
edge(n_4,n_253) &
edge(n_4,n_127) &
edge(n_5,n_217) &
edge(n_5,n_187) &
edge(n_5,n_143) &
edge(n_5,n_82) &
edge(n_5,n_32) &
edge(n_6,n_265) &
edge(n_6,n_125) &
edge(n_6,n_58) &
edge(n_6,n_55) &
edge(n_6,n_44) &
edge(n_6,n_272) &
edge(n_7,n_249) &
edge(n_7,n_80) &
edge(n_7,n_58) &
edge(n_7,n_28) &
edge(n_7,n_180) &
edge(n_8,n_150) &
edge(n_8,n_132) &
edge(n_8,n_124) &
edge(n_8,n_106) &
edge(n_8,n_52) &
edge(n_8,n_20) &
edge(n_8,n_66) &
edge(n_9,n_243) &
edge(n_9,n_218) &
edge(n_9,n_189) &
edge(n_9,n_121) &
edge(n_9,n_114) &
edge(n_9,n_41) &
edge(n_9,n_295) &
edge(n_9,n_251) &
edge(n_10,n_277) &
edge(n_10,n_271) &
edge(n_10,n_207) &
edge(n_10,n_197) &
edge(n_10,n_178) &
edge(n_10,n_145) &
edge(n_10,n_11) &
edge(n_11,n_296) &
edge(n_11,n_246) &
edge(n_11,n_130) &
edge(n_11,n_13) &
edge(n_11,n_145) &
edge(n_11,n_63) &
edge(n_11,n_10) &
edge(n_11,n_223) &
edge(n_11,n_178) &
edge(n_12,n_204) &
edge(n_12,n_185) &
edge(n_12,n_146) &
edge(n_12,n_290) &
edge(n_12,n_95) &
edge(n_12,n_115) &
edge(n_12,n_31) &
edge(n_13,n_296) &
edge(n_13,n_233) &
edge(n_13,n_63) &
edge(n_13,n_16) &
edge(n_13,n_11) &
edge(n_14,n_202) &
edge(n_14,n_217) &
edge(n_14,n_143) &
edge(n_14,n_103) &
edge(n_14,n_1) &
edge(n_14,n_259) &
edge(n_15,n_116) &
edge(n_15,n_112) &
edge(n_15,n_111) &
edge(n_15,n_107) &
edge(n_15,n_19) &
edge(n_15,n_274) &
edge(n_16,n_233) &
edge(n_16,n_63) &
edge(n_16,n_13) &
edge(n_16,n_0) &
edge(n_17,n_267) &
edge(n_17,n_264) &
edge(n_17,n_183) &
edge(n_17,n_118) &
edge(n_17,n_113) &
edge(n_17,n_289) &
edge(n_18,n_195) &
edge(n_18,n_167) &
edge(n_18,n_208) &
edge(n_18,n_135) &
edge(n_19,n_275) &
edge(n_19,n_274) &
edge(n_19,n_214) &
edge(n_19,n_107) &
edge(n_19,n_92) &
edge(n_19,n_15) &
edge(n_20,n_187) &
edge(n_20,n_106) &
edge(n_20,n_52) &
edge(n_20,n_8) &
edge(n_21,n_230) &
edge(n_21,n_184) &
edge(n_21,n_158) &
edge(n_21,n_154) &
edge(n_21,n_153) &
edge(n_21,n_219) &
edge(n_22,n_294) &
edge(n_22,n_279) &
edge(n_22,n_177) &
edge(n_22,n_142) &
edge(n_23,n_258) &
edge(n_23,n_153) &
edge(n_23,n_36) &
edge(n_23,n_29) &
edge(n_23,n_203) &
edge(n_23,n_84) &
edge(n_24,n_155) &
edge(n_24,n_277) &
edge(n_24,n_91) &
edge(n_24,n_110) &
edge(n_24,n_83) &
edge(n_24,n_53) &
edge(n_24,n_161) &
edge(n_24,n_39) &
edge(n_25,n_295) &
edge(n_25,n_263) &
edge(n_25,n_180) &
edge(n_25,n_291) &
edge(n_25,n_90) &
edge(n_25,n_80) &
edge(n_25,n_62) &
edge(n_26,n_258) &
edge(n_26,n_29) &
edge(n_26,n_36) &
edge(n_26,n_211) &
edge(n_27,n_277) &
edge(n_27,n_224) &
edge(n_27,n_74) &
edge(n_27,n_67) &
edge(n_27,n_42) &
edge(n_27,n_109) &
edge(n_27,n_138) &
edge(n_28,n_180) &
edge(n_28,n_79) &
edge(n_28,n_58) &
edge(n_28,n_55) &
edge(n_28,n_284) &
edge(n_28,n_7) &
edge(n_29,n_258) &
edge(n_29,n_233) &
edge(n_29,n_203) &
edge(n_29,n_26) &
edge(n_29,n_23) &
edge(n_29,n_0) &
edge(n_29,n_211) &
edge(n_30,n_213) &
edge(n_30,n_194) &
edge(n_30,n_148) &
edge(n_30,n_137) &
edge(n_30,n_245) &
edge(n_30,n_159) &
edge(n_30,n_206) &
edge(n_30,n_73) &
edge(n_31,n_99) &
edge(n_31,n_95) &
edge(n_31,n_73) &
edge(n_31,n_185) &
edge(n_31,n_194) &
edge(n_31,n_12) &
edge(n_32,n_254) &
edge(n_32,n_190) &
edge(n_32,n_52) &
edge(n_32,n_212) &
edge(n_32,n_5) &
edge(n_32,n_187) &
edge(n_32,n_82) &
edge(n_33,n_215) &
edge(n_33,n_169) &
edge(n_33,n_124) &
edge(n_33,n_66) &
edge(n_33,n_149) &
edge(n_34,n_280) &
edge(n_34,n_248) &
edge(n_34,n_193) &
edge(n_34,n_129) &
edge(n_34,n_115) &
edge(n_34,n_204) &
edge(n_35,n_193) &
edge(n_35,n_129) &
edge(n_35,n_103) &
edge(n_35,n_201) &
edge(n_35,n_85) &
edge(n_35,n_248) &
edge(n_35,n_172) &
edge(n_35,n_297) &
edge(n_35,n_1) &
edge(n_36,n_211) &
edge(n_36,n_153) &
edge(n_36,n_23) &
edge(n_36,n_3) &
edge(n_36,n_258) &
edge(n_36,n_26) &
edge(n_36,n_40) &
edge(n_37,n_275) &
edge(n_37,n_131) &
edge(n_37,n_92) &
edge(n_37,n_57) &
edge(n_38,n_299) &
edge(n_38,n_242) &
edge(n_38,n_238) &
edge(n_38,n_175) &
edge(n_38,n_150) &
edge(n_38,n_51) &
edge(n_38,n_212) &
edge(n_39,n_277) &
edge(n_39,n_197) &
edge(n_39,n_152) &
edge(n_39,n_96) &
edge(n_39,n_155) &
edge(n_39,n_24) &
edge(n_40,n_256) &
edge(n_40,n_250) &
edge(n_40,n_3) &
edge(n_40,n_153) &
edge(n_40,n_36) &
edge(n_41,n_218) &
edge(n_41,n_170) &
edge(n_41,n_121) &
edge(n_41,n_97) &
edge(n_41,n_94) &
edge(n_41,n_9) &
edge(n_42,n_266) &
edge(n_42,n_109) &
edge(n_42,n_27) &
edge(n_43,n_247) &
edge(n_43,n_161) &
edge(n_43,n_237) &
edge(n_43,n_134) &
edge(n_43,n_91) &
edge(n_43,n_55) &
edge(n_43,n_284) &
edge(n_44,n_272) &
edge(n_44,n_171) &
edge(n_44,n_88) &
edge(n_44,n_6) &
edge(n_44,n_2) &
edge(n_44,n_297) &
edge(n_44,n_265) &
edge(n_44,n_156) &
edge(n_45,n_286) &
edge(n_45,n_273) &
edge(n_45,n_264) &
edge(n_45,n_216) &
edge(n_45,n_49) &
edge(n_46,n_176) &
edge(n_46,n_251) &
edge(n_46,n_269) &
edge(n_46,n_114) &
edge(n_46,n_181) &
edge(n_46,n_260) &
edge(n_46,n_47) &
edge(n_47,n_269) &
edge(n_47,n_220) &
edge(n_47,n_181) &
edge(n_47,n_86) &
edge(n_47,n_46) &
edge(n_48,n_163) &
edge(n_48,n_99) &
edge(n_48,n_95) &
edge(n_48,n_70) &
edge(n_48,n_290) &
edge(n_49,n_286) &
edge(n_49,n_231) &
edge(n_49,n_157) &
edge(n_49,n_141) &
edge(n_49,n_136) &
edge(n_49,n_162) &
edge(n_49,n_278) &
edge(n_49,n_235) &
edge(n_49,n_45) &
edge(n_49,n_264) &
edge(n_49,n_267) &
edge(n_50,n_270) &
edge(n_50,n_253) &
edge(n_50,n_139) &
edge(n_50,n_69) &
edge(n_50,n_4) &
edge(n_51,n_212) &
edge(n_51,n_190) &
edge(n_51,n_52) &
edge(n_51,n_150) &
edge(n_51,n_38) &
edge(n_52,n_190) &
edge(n_52,n_150) &
edge(n_52,n_51) &
edge(n_52,n_20) &
edge(n_52,n_32) &
edge(n_52,n_8) &
edge(n_52,n_187) &
edge(n_53,n_182) &
edge(n_53,n_163) &
edge(n_53,n_161) &
edge(n_53,n_155) &
edge(n_53,n_262) &
edge(n_53,n_24) &
edge(n_54,n_245) &
edge(n_54,n_222) &
edge(n_54,n_223) &
edge(n_54,n_76) &
edge(n_55,n_284) &
edge(n_55,n_237) &
edge(n_55,n_43) &
edge(n_55,n_28) &
edge(n_55,n_6) &
edge(n_55,n_58) &
edge(n_55,n_265) &
edge(n_56,n_256) &
edge(n_56,n_227) &
edge(n_56,n_164) &
edge(n_56,n_146) &
edge(n_56,n_250) &
edge(n_56,n_235) &
edge(n_57,n_299) &
edge(n_57,n_175) &
edge(n_57,n_92) &
edge(n_57,n_37) &
edge(n_57,n_131) &
edge(n_58,n_28) &
edge(n_58,n_7) &
edge(n_58,n_6) &
edge(n_58,n_55) &
edge(n_58,n_249) &
edge(n_58,n_125) &
edge(n_59,n_196) &
edge(n_59,n_198) &
edge(n_59,n_90) &
edge(n_59,n_288) &
edge(n_59,n_62) &
edge(n_59,n_156) &
edge(n_60,n_283) &
edge(n_60,n_177) &
edge(n_60,n_142) &
edge(n_60,n_104) &
edge(n_60,n_102) &
edge(n_61,n_298) &
edge(n_61,n_246) &
edge(n_61,n_133) &
edge(n_61,n_77) &
edge(n_62,n_239) &
edge(n_62,n_295) &
edge(n_62,n_198) &
edge(n_62,n_59) &
edge(n_62,n_25) &
edge(n_62,n_90) &
edge(n_63,n_298) &
edge(n_63,n_246) &
edge(n_63,n_0) &
edge(n_63,n_16) &
edge(n_63,n_13) &
edge(n_63,n_11) &
edge(n_64,n_292) &
edge(n_64,n_204) &
edge(n_64,n_157) &
edge(n_64,n_72) &
edge(n_64,n_280) &
edge(n_65,n_283) &
edge(n_65,n_255) &
edge(n_65,n_232) &
edge(n_65,n_149) &
edge(n_65,n_117) &
edge(n_65,n_104) &
edge(n_65,n_275) &
edge(n_65,n_131) &
edge(n_65,n_289) &
edge(n_66,n_106) &
edge(n_66,n_169) &
edge(n_66,n_33) &
edge(n_66,n_124) &
edge(n_66,n_8) &
edge(n_67,n_247) &
edge(n_67,n_138) &
edge(n_67,n_126) &
edge(n_67,n_109) &
edge(n_67,n_27) &
edge(n_68,n_90) &
edge(n_68,n_263) &
edge(n_68,n_156) &
edge(n_68,n_2) &
edge(n_68,n_125) &
edge(n_69,n_253) &
edge(n_69,n_209) &
edge(n_69,n_191) &
edge(n_69,n_139) &
edge(n_69,n_50) &
edge(n_69,n_226) &
edge(n_70,n_290) &
edge(n_70,n_115) &
edge(n_70,n_48) &
edge(n_70,n_182) &
edge(n_70,n_163) &
edge(n_71,n_286) &
edge(n_71,n_278) &
edge(n_71,n_273) &
edge(n_71,n_261) &
edge(n_72,n_201) &
edge(n_72,n_280) &
edge(n_72,n_157) &
edge(n_72,n_85) &
edge(n_72,n_64) &
edge(n_73,n_245) &
edge(n_73,n_194) &
edge(n_73,n_185) &
edge(n_73,n_89) &
edge(n_73,n_31) &
edge(n_73,n_105) &
edge(n_73,n_144) &
edge(n_73,n_30) &
edge(n_74,n_138) &
edge(n_74,n_134) &
edge(n_74,n_91) &
edge(n_74,n_224) &
edge(n_74,n_83) &
edge(n_74,n_27) &
edge(n_75,n_209) &
edge(n_75,n_158) &
edge(n_75,n_205) &
edge(n_75,n_127) &
edge(n_75,n_119) &
edge(n_75,n_118) &
edge(n_76,n_296) &
edge(n_76,n_223) &
edge(n_76,n_173) &
edge(n_76,n_245) &
edge(n_76,n_105) &
edge(n_76,n_54) &
edge(n_76,n_3) &
edge(n_76,n_211) &
edge(n_77,n_178) &
edge(n_77,n_246) &
edge(n_77,n_61) &
edge(n_77,n_130) &
edge(n_78,n_257) &
edge(n_78,n_220) &
edge(n_78,n_179) &
edge(n_78,n_174) &
edge(n_78,n_269) &
edge(n_78,n_81) &
edge(n_79,n_284) &
edge(n_79,n_147) &
edge(n_79,n_126) &
edge(n_79,n_28) &
edge(n_79,n_180) &
edge(n_80,n_263) &
edge(n_80,n_249) &
edge(n_80,n_25) &
edge(n_80,n_7) &
edge(n_80,n_180) &
edge(n_81,n_269) &
edge(n_81,n_260) &
edge(n_81,n_225) &
edge(n_81,n_188) &
edge(n_81,n_78) &
edge(n_81,n_179) &
edge(n_82,n_288) &
edge(n_82,n_143) &
edge(n_82,n_254) &
edge(n_82,n_5) &
edge(n_82,n_32) &
edge(n_83,n_224) &
edge(n_83,n_110) &
edge(n_83,n_74) &
edge(n_83,n_24) &
edge(n_83,n_91) &
edge(n_84,n_203) &
edge(n_84,n_101) &
edge(n_84,n_282) &
edge(n_84,n_153) &
edge(n_84,n_23) &
edge(n_85,n_278) &
edge(n_85,n_172) &
edge(n_85,n_201) &
edge(n_85,n_72) &
edge(n_85,n_261) &
edge(n_85,n_35) &
edge(n_85,n_157) &
edge(n_86,n_293) &
edge(n_86,n_181) &
edge(n_86,n_174) &
edge(n_86,n_47) &
edge(n_86,n_220) &
edge(n_87,n_287) &
edge(n_87,n_195) &
edge(n_87,n_166) &
edge(n_87,n_116) &
edge(n_87,n_208) &
edge(n_87,n_102) &
edge(n_88,n_265) &
edge(n_88,n_248) &
edge(n_88,n_182) &
edge(n_88,n_171) &
edge(n_88,n_44) &
edge(n_89,n_256) &
edge(n_89,n_144) &
edge(n_89,n_105) &
edge(n_89,n_73) &
edge(n_90,n_156) &
edge(n_90,n_59) &
edge(n_90,n_68) &
edge(n_90,n_25) &
edge(n_90,n_263) &
edge(n_90,n_62) &
edge(n_91,n_134) &
edge(n_91,n_24) &
edge(n_91,n_74) &
edge(n_91,n_43) &
edge(n_91,n_83) &
edge(n_91,n_161) &
edge(n_92,n_57) &
edge(n_92,n_19) &
edge(n_92,n_37) &
edge(n_92,n_214) &
edge(n_92,n_175) &
edge(n_92,n_275) &
edge(n_92,n_160) &
edge(n_93,n_261) &
edge(n_93,n_217) &
edge(n_93,n_216) &
edge(n_93,n_106) &
edge(n_94,n_285) &
edge(n_94,n_170) &
edge(n_94,n_97) &
edge(n_94,n_41) &
edge(n_95,n_290) &
edge(n_95,n_31) &
edge(n_95,n_48) &
edge(n_95,n_12) &
edge(n_95,n_99) &
edge(n_96,n_276) &
edge(n_96,n_236) &
edge(n_96,n_152) &
edge(n_96,n_148) &
edge(n_96,n_39) &
edge(n_96,n_197) &
edge(n_97,n_293) &
edge(n_97,n_285) &
edge(n_97,n_218) &
edge(n_97,n_94) &
edge(n_97,n_41) &
edge(n_97,n_189) &
edge(n_98,n_268) &
edge(n_98,n_257) &
edge(n_98,n_242) &
edge(n_98,n_238) &
edge(n_98,n_221) &
edge(n_98,n_174) &
edge(n_98,n_285) &
edge(n_99,n_100) &
edge(n_99,n_194) &
edge(n_99,n_163) &
edge(n_99,n_48) &
edge(n_99,n_31) &
edge(n_99,n_240) &
edge(n_99,n_95) &
edge(n_100,n_240) &
edge(n_100,n_194) &
edge(n_100,n_186) &
edge(n_100,n_99) &
edge(n_100,n_206) &
edge(n_101,n_282) &
edge(n_101,n_199) &
edge(n_101,n_84) &
edge(n_101,n_203) &
edge(n_101,n_133) &
edge(n_102,n_241) &
edge(n_102,n_120) &
edge(n_102,n_283) &
edge(n_102,n_116) &
edge(n_102,n_87) &
edge(n_102,n_60) &
edge(n_102,n_255) &
edge(n_102,n_166) &
edge(n_102,n_142) &
edge(n_103,n_172) &
edge(n_103,n_14) &
edge(n_103,n_35) &
edge(n_103,n_1) &
edge(n_103,n_202) &
edge(n_104,n_289) &
edge(n_104,n_283) &
edge(n_104,n_177) &
edge(n_104,n_60) &
edge(n_104,n_65) &
edge(n_104,n_279) &
edge(n_105,n_245) &
edge(n_105,n_89) &
edge(n_105,n_76) &
edge(n_105,n_256) &
edge(n_105,n_3) &
edge(n_105,n_73) &
edge(n_106,n_187) &
edge(n_106,n_66) &
edge(n_106,n_93) &
edge(n_106,n_20) &
edge(n_106,n_217) &
edge(n_106,n_8) &
edge(n_106,n_169) &
edge(n_106,n_216) &
edge(n_107,n_275) &
edge(n_107,n_112) &
edge(n_107,n_15) &
edge(n_107,n_19) &
edge(n_107,n_255) &
edge(n_108,n_184) &
edge(n_108,n_165) &
edge(n_108,n_127) &
edge(n_108,n_200) &
edge(n_109,n_266) &
edge(n_109,n_126) &
edge(n_109,n_42) &
edge(n_109,n_67) &
edge(n_109,n_27) &
edge(n_110,n_277) &
edge(n_110,n_83) &
edge(n_110,n_24) &
edge(n_110,n_224) &
edge(n_111,n_241) &
edge(n_111,n_112) &
edge(n_111,n_15) &
edge(n_111,n_116) &
edge(n_112,n_255) &
edge(n_112,n_241) &
edge(n_112,n_107) &
edge(n_112,n_111) &
edge(n_112,n_15) &
edge(n_113,n_279) &
edge(n_113,n_119) &
edge(n_113,n_17) &
edge(n_113,n_118) &
edge(n_113,n_289) &
edge(n_114,n_251) &
edge(n_114,n_189) &
edge(n_114,n_181) &
edge(n_114,n_46) &
edge(n_114,n_9) &
edge(n_115,n_290) &
edge(n_115,n_204) &
edge(n_115,n_182) &
edge(n_115,n_70) &
edge(n_115,n_34) &
edge(n_115,n_248) &
edge(n_115,n_12) &
edge(n_116,n_287) &
edge(n_116,n_274) &
edge(n_116,n_87) &
edge(n_116,n_15) &
edge(n_116,n_241) &
edge(n_116,n_102) &
edge(n_116,n_111) &
edge(n_117,n_289) &
edge(n_117,n_252) &
edge(n_117,n_215) &
edge(n_117,n_183) &
edge(n_117,n_149) &
edge(n_117,n_65) &
edge(n_118,n_205) &
edge(n_118,n_267) &
edge(n_118,n_119) &
edge(n_118,n_17) &
edge(n_118,n_75) &
edge(n_118,n_113) &
edge(n_119,n_209) &
edge(n_119,n_140) &
edge(n_119,n_226) &
edge(n_119,n_75) &
edge(n_119,n_118) &
edge(n_119,n_279) &
edge(n_119,n_113) &
edge(n_120,n_166) &
edge(n_120,n_142) &
edge(n_120,n_102) &
edge(n_121,n_239) &
edge(n_121,n_170) &
edge(n_121,n_41) &
edge(n_121,n_9) &
edge(n_121,n_295) &
edge(n_122,n_282) &
edge(n_122,n_230) &
edge(n_122,n_200) &
edge(n_122,n_133) &
edge(n_123,n_195) &
edge(n_123,n_166) &
edge(n_123,n_191) &
edge(n_123,n_139) &
edge(n_123,n_135) &
edge(n_124,n_149) &
edge(n_124,n_132) &
edge(n_124,n_232) &
edge(n_124,n_33) &
edge(n_124,n_8) &
edge(n_124,n_66) &
edge(n_125,n_272) &
edge(n_125,n_263) &
edge(n_125,n_249) &
edge(n_125,n_2) &
edge(n_125,n_6) &
edge(n_125,n_68) &
edge(n_125,n_58) &
edge(n_126,n_180) &
edge(n_126,n_147) &
edge(n_126,n_109) &
edge(n_126,n_79) &
edge(n_126,n_67) &
edge(n_126,n_247) &
edge(n_126,n_266) &
edge(n_127,n_253) &
edge(n_127,n_158) &
edge(n_127,n_108) &
edge(n_127,n_75) &
edge(n_127,n_165) &
edge(n_127,n_209) &
edge(n_127,n_184) &
edge(n_127,n_4) &
edge(n_128,n_254) &
edge(n_128,n_234) &
edge(n_128,n_221) &
edge(n_128,n_196) &
edge(n_128,n_288) &
edge(n_129,n_201) &
edge(n_129,n_193) &
edge(n_129,n_35) &
edge(n_129,n_34) &
edge(n_129,n_280) &
edge(n_130,n_246) &
edge(n_130,n_11) &
edge(n_130,n_178) &
edge(n_130,n_77) &
edge(n_131,n_228) &
edge(n_131,n_132) &
edge(n_131,n_37) &
edge(n_131,n_275) &
edge(n_131,n_57) &
edge(n_131,n_299) &
edge(n_131,n_65) &
edge(n_131,n_232) &
edge(n_132,n_232) &
edge(n_132,n_228) &
edge(n_132,n_150) &
edge(n_132,n_131) &
edge(n_132,n_8) &
edge(n_132,n_124) &
edge(n_133,n_200) &
edge(n_133,n_199) &
edge(n_133,n_165) &
edge(n_133,n_61) &
edge(n_133,n_282) &
edge(n_133,n_298) &
edge(n_133,n_122) &
edge(n_133,n_151) &
edge(n_133,n_101) &
edge(n_134,n_138) &
edge(n_134,n_91) &
edge(n_134,n_74) &
edge(n_134,n_43) &
edge(n_134,n_247) &
edge(n_135,n_151) &
edge(n_135,n_139) &
edge(n_135,n_18) &
edge(n_135,n_195) &
edge(n_135,n_123) &
edge(n_135,n_167) &
edge(n_136,n_162) &
edge(n_136,n_154) &
edge(n_136,n_141) &
edge(n_136,n_49) &
edge(n_136,n_250) &
edge(n_136,n_153) &
edge(n_137,n_213) &
edge(n_137,n_271) &
edge(n_137,n_197) &
edge(n_137,n_159) &
edge(n_137,n_30) &
edge(n_138,n_134) &
edge(n_138,n_74) &
edge(n_138,n_67) &
edge(n_138,n_247) &
edge(n_138,n_27) &
edge(n_139,n_135) &
edge(n_139,n_270) &
edge(n_139,n_50) &
edge(n_139,n_151) &
edge(n_139,n_69) &
edge(n_139,n_191) &
edge(n_139,n_123) &
edge(n_140,n_294) &
edge(n_140,n_279) &
edge(n_140,n_244) &
edge(n_140,n_226) &
edge(n_140,n_191) &
edge(n_140,n_119) &
edge(n_141,n_250) &
edge(n_141,n_231) &
edge(n_141,n_227) &
edge(n_141,n_49) &
edge(n_141,n_136) &
edge(n_142,n_294) &
edge(n_142,n_120) &
edge(n_142,n_22) &
edge(n_142,n_60) &
edge(n_142,n_191) &
edge(n_142,n_166) &
edge(n_142,n_177) &
edge(n_142,n_244) &
edge(n_142,n_102) &
edge(n_143,n_259) &
edge(n_143,n_156) &
edge(n_143,n_288) &
edge(n_143,n_82) &
edge(n_143,n_14) &
edge(n_143,n_5) &
edge(n_143,n_217) &
edge(n_144,n_185) &
edge(n_144,n_146) &
edge(n_144,n_89) &
edge(n_144,n_256) &
edge(n_144,n_73) &
edge(n_145,n_223) &
edge(n_145,n_222) &
edge(n_145,n_207) &
edge(n_145,n_159) &
edge(n_145,n_10) &
edge(n_145,n_11) &
edge(n_146,n_164) &
edge(n_146,n_56) &
edge(n_146,n_144) &
edge(n_146,n_12) &
edge(n_146,n_256) &
edge(n_146,n_185) &
edge(n_146,n_204) &
edge(n_147,n_284) &
edge(n_147,n_247) &
edge(n_147,n_126) &
edge(n_147,n_79) &
edge(n_148,n_236) &
edge(n_148,n_213) &
edge(n_148,n_206) &
edge(n_148,n_30) &
edge(n_148,n_96) &
edge(n_148,n_276) &
edge(n_149,n_232) &
edge(n_149,n_215) &
edge(n_149,n_124) &
edge(n_149,n_65) &
edge(n_149,n_117) &
edge(n_149,n_33) &
edge(n_150,n_228) &
edge(n_150,n_132) &
edge(n_150,n_52) &
edge(n_150,n_38) &
edge(n_150,n_8) &
edge(n_150,n_299) &
edge(n_150,n_51) &
edge(n_151,n_270) &
edge(n_151,n_4) &
edge(n_151,n_135) &
edge(n_151,n_139) &
edge(n_151,n_167) &
edge(n_151,n_165) &
edge(n_151,n_133) &
edge(n_152,n_229) &
edge(n_152,n_276) &
edge(n_152,n_155) &
edge(n_152,n_96) &
edge(n_152,n_39) &
edge(n_152,n_186) &
edge(n_153,n_154) &
edge(n_153,n_23) &
edge(n_153,n_36) &
edge(n_153,n_21) &
edge(n_153,n_250) &
edge(n_153,n_230) &
edge(n_153,n_84) &
edge(n_153,n_136) &
edge(n_153,n_40) &
edge(n_153,n_282) &
edge(n_154,n_219) &
edge(n_154,n_21) &
edge(n_154,n_153) &
edge(n_154,n_136) &
edge(n_154,n_162) &
edge(n_155,n_229) &
edge(n_155,n_163) &
edge(n_155,n_152) &
edge(n_155,n_53) &
edge(n_155,n_24) &
edge(n_155,n_39) &
edge(n_156,n_288) &
edge(n_156,n_259) &
edge(n_156,n_90) &
edge(n_156,n_143) &
edge(n_156,n_2) &
edge(n_156,n_68) &
edge(n_156,n_297) &
edge(n_156,n_59) &
edge(n_156,n_44) &
edge(n_157,n_278) &
edge(n_157,n_235) &
edge(n_157,n_64) &
edge(n_157,n_72) &
edge(n_157,n_49) &
edge(n_157,n_292) &
edge(n_157,n_85) &
edge(n_158,n_219) &
edge(n_158,n_205) &
edge(n_158,n_75) &
edge(n_158,n_127) &
edge(n_158,n_21) &
edge(n_158,n_184) &
edge(n_159,n_222) &
edge(n_159,n_145) &
edge(n_159,n_137) &
edge(n_159,n_207) &
edge(n_159,n_271) &
edge(n_159,n_245) &
edge(n_159,n_30) &
edge(n_160,n_274) &
edge(n_160,n_214) &
edge(n_160,n_192) &
edge(n_160,n_168) &
edge(n_160,n_225) &
edge(n_160,n_175) &
edge(n_160,n_188) &
edge(n_160,n_92) &
edge(n_161,n_262) &
edge(n_161,n_237) &
edge(n_161,n_43) &
edge(n_161,n_53) &
edge(n_161,n_24) &
edge(n_161,n_91) &
edge(n_162,n_267) &
edge(n_162,n_205) &
edge(n_162,n_219) &
edge(n_162,n_136) &
edge(n_162,n_49) &
edge(n_162,n_154) &
edge(n_163,n_240) &
edge(n_163,n_229) &
edge(n_163,n_155) &
edge(n_163,n_53) &
edge(n_163,n_48) &
edge(n_163,n_99) &
edge(n_163,n_70) &
edge(n_163,n_182) &
edge(n_164,n_292) &
edge(n_164,n_235) &
edge(n_164,n_56) &
edge(n_164,n_146) &
edge(n_164,n_204) &
edge(n_165,n_200) &
edge(n_165,n_4) &
edge(n_165,n_133) &
edge(n_165,n_108) &
edge(n_165,n_151) &
edge(n_165,n_127) &
edge(n_166,n_191) &
edge(n_166,n_123) &
edge(n_166,n_120) &
edge(n_166,n_87) &
edge(n_166,n_195) &
edge(n_166,n_142) &
edge(n_166,n_102) &
edge(n_167,n_18) &
edge(n_167,n_151) &
edge(n_167,n_208) &
edge(n_167,n_135) &
edge(n_168,n_192) &
edge(n_168,n_188) &
edge(n_168,n_179) &
edge(n_168,n_160) &
edge(n_169,n_252) &
edge(n_169,n_216) &
edge(n_169,n_183) &
edge(n_169,n_33) &
edge(n_169,n_215) &
edge(n_169,n_66) &
edge(n_169,n_106) &
edge(n_170,n_285) &
edge(n_170,n_121) &
edge(n_170,n_41) &
edge(n_170,n_94) &
edge(n_170,n_239) &
edge(n_171,n_297) &
edge(n_171,n_248) &
edge(n_171,n_88) &
edge(n_171,n_44) &
edge(n_172,n_261) &
edge(n_172,n_202) &
edge(n_172,n_85) &
edge(n_172,n_103) &
edge(n_172,n_35) &
edge(n_173,n_233) &
edge(n_173,n_211) &
edge(n_173,n_76) &
edge(n_173,n_296) &
edge(n_174,n_293) &
edge(n_174,n_268) &
edge(n_174,n_220) &
edge(n_174,n_86) &
edge(n_174,n_98) &
edge(n_174,n_78) &
edge(n_174,n_257) &
edge(n_174,n_285) &
edge(n_175,n_192) &
edge(n_175,n_179) &
edge(n_175,n_57) &
edge(n_175,n_38) &
edge(n_175,n_160) &
edge(n_175,n_242) &
edge(n_175,n_92) &
edge(n_175,n_299) &
edge(n_176,n_281) &
edge(n_176,n_260) &
edge(n_176,n_46) &
edge(n_176,n_251) &
edge(n_177,n_104) &
edge(n_177,n_60) &
edge(n_177,n_22) &
edge(n_177,n_279) &
edge(n_177,n_142) &
edge(n_178,n_10) &
edge(n_178,n_77) &
edge(n_178,n_130) &
edge(n_178,n_11) &
edge(n_179,n_242) &
edge(n_179,n_192) &
edge(n_179,n_168) &
edge(n_179,n_175) &
edge(n_179,n_78) &
edge(n_179,n_188) &
edge(n_179,n_257) &
edge(n_179,n_81) &
edge(n_180,n_291) &
edge(n_180,n_126) &
edge(n_180,n_25) &
edge(n_180,n_28) &
edge(n_180,n_266) &
edge(n_180,n_80) &
edge(n_180,n_7) &
edge(n_180,n_79) &
edge(n_181,n_86) &
edge(n_181,n_114) &
edge(n_181,n_47) &
edge(n_181,n_46) &
edge(n_181,n_293) &
edge(n_181,n_189) &
edge(n_182,n_262) &
edge(n_182,n_237) &
edge(n_182,n_88) &
edge(n_182,n_115) &
edge(n_182,n_53) &
edge(n_182,n_248) &
edge(n_182,n_70) &
edge(n_182,n_265) &
edge(n_182,n_163) &
edge(n_183,n_289) &
edge(n_183,n_264) &
edge(n_183,n_252) &
edge(n_183,n_169) &
edge(n_183,n_117) &
edge(n_183,n_17) &
edge(n_183,n_216) &
edge(n_184,n_230) &
edge(n_184,n_108) &
edge(n_184,n_21) &
edge(n_184,n_158) &
edge(n_184,n_200) &
edge(n_184,n_127) &
edge(n_185,n_12) &
edge(n_185,n_144) &
edge(n_185,n_73) &
edge(n_185,n_146) &
edge(n_185,n_31) &
edge(n_186,n_276) &
edge(n_186,n_240) &
edge(n_186,n_229) &
edge(n_186,n_206) &
edge(n_186,n_100) &
edge(n_186,n_152) &
edge(n_187,n_20) &
edge(n_187,n_106) &
edge(n_187,n_5) &
edge(n_187,n_217) &
edge(n_187,n_52) &
edge(n_187,n_32) &
edge(n_188,n_168) &
edge(n_188,n_225) &
edge(n_188,n_179) &
edge(n_188,n_160) &
edge(n_188,n_81) &
edge(n_189,n_218) &
edge(n_189,n_9) &
edge(n_189,n_114) &
edge(n_189,n_293) &
edge(n_189,n_97) &
edge(n_189,n_181) &
edge(n_190,n_51) &
edge(n_190,n_52) &
edge(n_190,n_32) &
edge(n_190,n_212) &
edge(n_191,n_244) &
edge(n_191,n_226) &
edge(n_191,n_166) &
edge(n_191,n_69) &
edge(n_191,n_140) &
edge(n_191,n_123) &
edge(n_191,n_142) &
edge(n_191,n_139) &
edge(n_192,n_175) &
edge(n_192,n_179) &
edge(n_192,n_168) &
edge(n_192,n_160) &
edge(n_193,n_35) &
edge(n_193,n_129) &
edge(n_193,n_34) &
edge(n_193,n_248) &
edge(n_194,n_206) &
edge(n_194,n_30) &
edge(n_194,n_100) &
edge(n_194,n_73) &
edge(n_194,n_99) &
edge(n_194,n_31) &
edge(n_195,n_18) &
edge(n_195,n_123) &
edge(n_195,n_87) &
edge(n_195,n_135) &
edge(n_195,n_166) &
edge(n_195,n_208) &
edge(n_196,n_288) &
edge(n_196,n_234) &
edge(n_196,n_59) &
edge(n_196,n_128) &
edge(n_196,n_198) &
edge(n_197,n_271) &
edge(n_197,n_236) &
edge(n_197,n_137) &
edge(n_197,n_10) &
edge(n_197,n_39) &
edge(n_197,n_213) &
edge(n_197,n_277) &
edge(n_197,n_96) &
edge(n_198,n_285) &
edge(n_198,n_234) &
edge(n_198,n_62) &
edge(n_198,n_59) &
edge(n_198,n_196) &
edge(n_198,n_239) &
edge(n_199,n_298) &
edge(n_199,n_0) &
edge(n_199,n_133) &
edge(n_199,n_101) &
edge(n_199,n_203) &
edge(n_200,n_165) &
edge(n_200,n_133) &
edge(n_200,n_122) &
edge(n_200,n_230) &
edge(n_200,n_108) &
edge(n_200,n_184) &
edge(n_201,n_280) &
edge(n_201,n_129) &
edge(n_201,n_72) &
edge(n_201,n_85) &
edge(n_201,n_35) &
edge(n_202,n_217) &
edge(n_202,n_172) &
edge(n_202,n_14) &
edge(n_202,n_103) &
edge(n_202,n_261) &
edge(n_203,n_84) &
edge(n_203,n_0) &
edge(n_203,n_29) &
edge(n_203,n_101) &
edge(n_203,n_199) &
edge(n_203,n_23) &
edge(n_204,n_292) &
edge(n_204,n_280) &
edge(n_204,n_12) &
edge(n_204,n_115) &
edge(n_204,n_64) &
edge(n_204,n_164) &
edge(n_204,n_146) &
edge(n_204,n_34) &
edge(n_205,n_267) &
edge(n_205,n_219) &
edge(n_205,n_158) &
edge(n_205,n_162) &
edge(n_205,n_118) &
edge(n_205,n_75) &
edge(n_206,n_276) &
edge(n_206,n_194) &
edge(n_206,n_148) &
edge(n_206,n_186) &
edge(n_206,n_100) &
edge(n_206,n_30) &
edge(n_207,n_271) &
edge(n_207,n_10) &
edge(n_207,n_145) &
edge(n_207,n_159) &
edge(n_208,n_287) &
edge(n_208,n_274) &
edge(n_208,n_18) &
edge(n_208,n_87) &
edge(n_208,n_195) &
edge(n_208,n_167) &
edge(n_209,n_226) &
edge(n_209,n_75) &
edge(n_209,n_119) &
edge(n_209,n_69) &
edge(n_209,n_253) &
edge(n_209,n_127) &
edge(n_210,n_260) &
edge(n_210,n_225) &
edge(n_210,n_251) &
edge(n_211,n_36) &
edge(n_211,n_173) &
edge(n_211,n_3) &
edge(n_211,n_233) &
edge(n_211,n_76) &
edge(n_211,n_29) &
edge(n_211,n_26) &
edge(n_212,n_254) &
edge(n_212,n_221) &
edge(n_212,n_238) &
edge(n_212,n_51) &
edge(n_212,n_190) &
edge(n_212,n_32) &
edge(n_212,n_38) &
edge(n_213,n_137) &
edge(n_213,n_148) &
edge(n_213,n_30) &
edge(n_213,n_197) &
edge(n_213,n_236) &
edge(n_214,n_160) &
edge(n_214,n_19) &
edge(n_214,n_92) &
edge(n_214,n_274) &
edge(n_215,n_149) &
edge(n_215,n_117) &
edge(n_215,n_33) &
edge(n_215,n_252) &
edge(n_215,n_169) &
edge(n_216,n_273) &
edge(n_216,n_169) &
edge(n_216,n_45) &
edge(n_216,n_93) &
edge(n_216,n_183) &
edge(n_216,n_261) &
edge(n_216,n_264) &
edge(n_216,n_106) &
edge(n_217,n_202) &
edge(n_217,n_5) &
edge(n_217,n_93) &
edge(n_217,n_14) &
edge(n_217,n_261) &
edge(n_217,n_187) &
edge(n_217,n_106) &
edge(n_217,n_143) &
edge(n_218,n_9) &
edge(n_218,n_189) &
edge(n_218,n_41) &
edge(n_218,n_97) &
edge(n_219,n_205) &
edge(n_219,n_158) &
edge(n_219,n_154) &
edge(n_219,n_162) &
edge(n_219,n_21) &
edge(n_220,n_78) &
edge(n_220,n_174) &
edge(n_220,n_47) &
edge(n_220,n_269) &
edge(n_220,n_86) &
edge(n_221,n_238) &
edge(n_221,n_234) &
edge(n_221,n_98) &
edge(n_221,n_212) &
edge(n_221,n_128) &
edge(n_221,n_254) &
edge(n_221,n_285) &
edge(n_222,n_223) &
edge(n_222,n_145) &
edge(n_222,n_159) &
edge(n_222,n_54) &
edge(n_222,n_245) &
edge(n_223,n_145) &
edge(n_223,n_222) &
edge(n_223,n_76) &
edge(n_223,n_54) &
edge(n_223,n_296) &
edge(n_223,n_11) &
edge(n_224,n_27) &
edge(n_224,n_83) &
edge(n_224,n_74) &
edge(n_224,n_110) &
edge(n_224,n_277) &
edge(n_225,n_274) &
edge(n_225,n_210) &
edge(n_225,n_81) &
edge(n_225,n_260) &
edge(n_225,n_188) &
edge(n_225,n_160) &
edge(n_226,n_191) &
edge(n_226,n_209) &
edge(n_226,n_140) &
edge(n_226,n_119) &
edge(n_226,n_69) &
edge(n_227,n_250) &
edge(n_227,n_235) &
edge(n_227,n_231) &
edge(n_227,n_141) &
edge(n_227,n_56) &
edge(n_228,n_299) &
edge(n_228,n_132) &
edge(n_228,n_150) &
edge(n_228,n_131) &
edge(n_229,n_186) &
edge(n_229,n_155) &
edge(n_229,n_163) &
edge(n_229,n_152) &
edge(n_229,n_240) &
edge(n_230,n_282) &
edge(n_230,n_184) &
edge(n_230,n_122) &
edge(n_230,n_21) &
edge(n_230,n_200) &
edge(n_230,n_153) &
edge(n_231,n_141) &
edge(n_231,n_227) &
edge(n_231,n_49) &
edge(n_231,n_235) &
edge(n_232,n_65) &
edge(n_232,n_149) &
edge(n_232,n_132) &
edge(n_232,n_124) &
edge(n_232,n_131) &
edge(n_233,n_173) &
edge(n_233,n_29) &
edge(n_233,n_16) &
edge(n_233,n_211) &
edge(n_233,n_13) &
edge(n_233,n_296) &
edge(n_233,n_0) &
edge(n_234,n_221) &
edge(n_234,n_128) &
edge(n_234,n_198) &
edge(n_234,n_196) &
edge(n_234,n_285) &
edge(n_235,n_227) &
edge(n_235,n_164) &
edge(n_235,n_157) &
edge(n_235,n_231) &
edge(n_235,n_292) &
edge(n_235,n_49) &
edge(n_235,n_56) &
edge(n_236,n_197) &
edge(n_236,n_96) &
edge(n_236,n_148) &
edge(n_236,n_213) &
edge(n_237,n_265) &
edge(n_237,n_262) &
edge(n_237,n_182) &
edge(n_237,n_161) &
edge(n_237,n_55) &
edge(n_237,n_43) &
edge(n_238,n_221) &
edge(n_238,n_98) &
edge(n_238,n_38) &
edge(n_238,n_212) &
edge(n_238,n_242) &
edge(n_239,n_295) &
edge(n_239,n_121) &
edge(n_239,n_62) &
edge(n_239,n_170) &
edge(n_239,n_198) &
edge(n_239,n_285) &
edge(n_240,n_100) &
edge(n_240,n_186) &
edge(n_240,n_163) &
edge(n_240,n_229) &
edge(n_240,n_99) &
edge(n_241,n_112) &
edge(n_241,n_111) &
edge(n_241,n_102) &
edge(n_241,n_255) &
edge(n_241,n_116) &
edge(n_242,n_257) &
edge(n_242,n_179) &
edge(n_242,n_38) &
edge(n_242,n_98) &
edge(n_242,n_238) &
edge(n_242,n_175) &
edge(n_243,n_295) &
edge(n_243,n_291) &
edge(n_243,n_266) &
edge(n_243,n_251) &
edge(n_243,n_9) &
edge(n_244,n_294) &
edge(n_244,n_191) &
edge(n_244,n_140) &
edge(n_244,n_142) &
edge(n_245,n_105) &
edge(n_245,n_54) &
edge(n_245,n_73) &
edge(n_245,n_222) &
edge(n_245,n_76) &
edge(n_245,n_30) &
edge(n_245,n_159) &
edge(n_246,n_61) &
edge(n_246,n_130) &
edge(n_246,n_63) &
edge(n_246,n_11) &
edge(n_246,n_77) &
edge(n_246,n_298) &
edge(n_247,n_147) &
edge(n_247,n_43) &
edge(n_247,n_67) &
edge(n_247,n_284) &
edge(n_247,n_126) &
edge(n_247,n_138) &
edge(n_247,n_134) &
edge(n_248,n_88) &
edge(n_248,n_171) &
edge(n_248,n_34) &
edge(n_248,n_297) &
edge(n_248,n_182) &
edge(n_248,n_115) &
edge(n_248,n_35) &
edge(n_248,n_193) &
edge(n_249,n_80) &
edge(n_249,n_125) &
edge(n_249,n_7) &
edge(n_249,n_263) &
edge(n_249,n_58) &
edge(n_250,n_227) &
edge(n_250,n_141) &
edge(n_250,n_40) &
edge(n_250,n_56) &
edge(n_250,n_153) &
edge(n_250,n_256) &
edge(n_250,n_136) &
edge(n_251,n_281) &
edge(n_251,n_114) &
edge(n_251,n_243) &
edge(n_251,n_260) &
edge(n_251,n_46) &
edge(n_251,n_210) &
edge(n_251,n_176) &
edge(n_251,n_9) &
edge(n_252,n_117) &
edge(n_252,n_183) &
edge(n_252,n_169) &
edge(n_252,n_215) &
edge(n_253,n_127) &
edge(n_253,n_69) &
edge(n_253,n_50) &
edge(n_253,n_209) &
edge(n_253,n_4) &
edge(n_254,n_128) &
edge(n_254,n_212) &
edge(n_254,n_32) &
edge(n_254,n_221) &
edge(n_254,n_288) &
edge(n_254,n_82) &
edge(n_255,n_283) &
edge(n_255,n_112) &
edge(n_255,n_65) &
edge(n_255,n_241) &
edge(n_255,n_275) &
edge(n_255,n_107) &
edge(n_255,n_102) &
edge(n_256,n_89) &
edge(n_256,n_56) &
edge(n_256,n_40) &
edge(n_256,n_146) &
edge(n_256,n_105) &
edge(n_256,n_144) &
edge(n_256,n_250) &
edge(n_256,n_3) &
edge(n_257,n_268) &
edge(n_257,n_242) &
edge(n_257,n_98) &
edge(n_257,n_78) &
edge(n_257,n_179) &
edge(n_257,n_174) &
edge(n_258,n_23) &
edge(n_258,n_29) &
edge(n_258,n_26) &
edge(n_258,n_36) &
edge(n_259,n_297) &
edge(n_259,n_156) &
edge(n_259,n_143) &
edge(n_259,n_1) &
edge(n_259,n_14) &
edge(n_260,n_281) &
edge(n_260,n_269) &
edge(n_260,n_176) &
edge(n_260,n_210) &
edge(n_260,n_81) &
edge(n_260,n_251) &
edge(n_260,n_225) &
edge(n_260,n_46) &
edge(n_261,n_172) &
edge(n_261,n_93) &
edge(n_261,n_71) &
edge(n_261,n_217) &
edge(n_261,n_216) &
edge(n_261,n_278) &
edge(n_261,n_85) &
edge(n_261,n_202) &
edge(n_261,n_273) &
edge(n_262,n_161) &
edge(n_262,n_237) &
edge(n_262,n_182) &
edge(n_262,n_53) &
edge(n_263,n_125) &
edge(n_263,n_80) &
edge(n_263,n_25) &
edge(n_263,n_249) &
edge(n_263,n_68) &
edge(n_263,n_90) &
edge(n_264,n_183) &
edge(n_264,n_17) &
edge(n_264,n_45) &
edge(n_264,n_49) &
edge(n_264,n_216) &
edge(n_264,n_267) &
edge(n_265,n_237) &
edge(n_265,n_6) &
edge(n_265,n_88) &
edge(n_265,n_44) &
edge(n_265,n_182) &
edge(n_265,n_55) &
edge(n_266,n_291) &
edge(n_266,n_243) &
edge(n_266,n_42) &
edge(n_266,n_109) &
edge(n_266,n_180) &
edge(n_266,n_126) &
edge(n_267,n_205) &
edge(n_267,n_162) &
edge(n_267,n_17) &
edge(n_267,n_118) &
edge(n_267,n_49) &
edge(n_267,n_264) &
edge(n_268,n_257) &
edge(n_268,n_98) &
edge(n_268,n_174) &
edge(n_269,n_260) &
edge(n_269,n_81) &
edge(n_269,n_47) &
edge(n_269,n_46) &
edge(n_269,n_78) &
edge(n_269,n_220) &
edge(n_270,n_151) &
edge(n_270,n_4) &
edge(n_270,n_50) &
edge(n_270,n_139) &
edge(n_271,n_197) &
edge(n_271,n_207) &
edge(n_271,n_10) &
edge(n_271,n_137) &
edge(n_271,n_159) &
edge(n_272,n_125) &
edge(n_272,n_2) &
edge(n_272,n_44) &
edge(n_272,n_6) &
edge(n_273,n_216) &
edge(n_273,n_45) &
edge(n_273,n_71) &
edge(n_273,n_286) &
edge(n_273,n_261) &
edge(n_274,n_287) &
edge(n_274,n_208) &
edge(n_274,n_225) &
edge(n_274,n_160) &
edge(n_274,n_19) &
edge(n_274,n_116) &
edge(n_274,n_214) &
edge(n_274,n_15) &
edge(n_275,n_19) &
edge(n_275,n_107) &
edge(n_275,n_37) &
edge(n_275,n_255) &
edge(n_275,n_131) &
edge(n_275,n_92) &
edge(n_275,n_65) &
edge(n_276,n_186) &
edge(n_276,n_206) &
edge(n_276,n_96) &
edge(n_276,n_152) &
edge(n_276,n_148) &
edge(n_277,n_27) &
edge(n_277,n_10) &
edge(n_277,n_110) &
edge(n_277,n_39) &
edge(n_277,n_24) &
edge(n_277,n_197) &
edge(n_277,n_224) &
edge(n_278,n_157) &
edge(n_278,n_85) &
edge(n_278,n_71) &
edge(n_278,n_261) &
edge(n_278,n_49) &
edge(n_278,n_286) &
edge(n_279,n_22) &
edge(n_279,n_140) &
edge(n_279,n_113) &
edge(n_279,n_294) &
edge(n_279,n_119) &
edge(n_279,n_289) &
edge(n_279,n_177) &
edge(n_279,n_104) &
edge(n_280,n_204) &
edge(n_280,n_34) &
edge(n_280,n_201) &
edge(n_280,n_72) &
edge(n_280,n_64) &
edge(n_280,n_129) &
edge(n_281,n_260) &
edge(n_281,n_176) &
edge(n_281,n_251) &
edge(n_282,n_230) &
edge(n_282,n_122) &
edge(n_282,n_101) &
edge(n_282,n_133) &
edge(n_282,n_84) &
edge(n_282,n_153) &
edge(n_283,n_104) &
edge(n_283,n_255) &
edge(n_283,n_60) &
edge(n_283,n_65) &
edge(n_283,n_102) &
edge(n_284,n_147) &
edge(n_284,n_79) &
edge(n_284,n_55) &
edge(n_284,n_247) &
edge(n_284,n_43) &
edge(n_284,n_28) &
edge(n_285,n_198) &
edge(n_285,n_94) &
edge(n_285,n_97) &
edge(n_285,n_170) &
edge(n_285,n_293) &
edge(n_285,n_234) &
edge(n_285,n_98) &
edge(n_285,n_221) &
edge(n_285,n_239) &
edge(n_285,n_174) &
edge(n_286,n_71) &
edge(n_286,n_45) &
edge(n_286,n_49) &
edge(n_286,n_273) &
edge(n_286,n_278) &
edge(n_287,n_274) &
edge(n_287,n_208) &
edge(n_287,n_116) &
edge(n_287,n_87) &
edge(n_288,n_196) &
edge(n_288,n_82) &
edge(n_288,n_156) &
edge(n_288,n_254) &
edge(n_288,n_143) &
edge(n_288,n_59) &
edge(n_288,n_128) &
edge(n_289,n_183) &
edge(n_289,n_117) &
edge(n_289,n_104) &
edge(n_289,n_279) &
edge(n_289,n_113) &
edge(n_289,n_17) &
edge(n_289,n_65) &
edge(n_290,n_70) &
edge(n_290,n_115) &
edge(n_290,n_95) &
edge(n_290,n_12) &
edge(n_290,n_48) &
edge(n_291,n_266) &
edge(n_291,n_243) &
edge(n_291,n_180) &
edge(n_291,n_295) &
edge(n_291,n_25) &
edge(n_292,n_204) &
edge(n_292,n_64) &
edge(n_292,n_164) &
edge(n_292,n_235) &
edge(n_292,n_157) &
edge(n_293,n_86) &
edge(n_293,n_174) &
edge(n_293,n_97) &
edge(n_293,n_285) &
edge(n_293,n_189) &
edge(n_293,n_181) &
edge(n_294,n_244) &
edge(n_294,n_140) &
edge(n_294,n_22) &
edge(n_294,n_142) &
edge(n_294,n_279) &
edge(n_295,n_25) &
edge(n_295,n_243) &
edge(n_295,n_239) &
edge(n_295,n_62) &
edge(n_295,n_291) &
edge(n_295,n_121) &
edge(n_295,n_9) &
edge(n_296,n_76) &
edge(n_296,n_13) &
edge(n_296,n_11) &
edge(n_296,n_233) &
edge(n_296,n_223) &
edge(n_296,n_173) &
edge(n_297,n_259) &
edge(n_297,n_1) &
edge(n_297,n_171) &
edge(n_297,n_248) &
edge(n_297,n_156) &
edge(n_297,n_44) &
edge(n_297,n_35) &
edge(n_298,n_63) &
edge(n_298,n_199) &
edge(n_298,n_61) &
edge(n_298,n_0) &
edge(n_298,n_246) &
edge(n_298,n_133) &
edge(n_299,n_57) &
edge(n_299,n_228) &
edge(n_299,n_38) &
edge(n_299,n_150) &
edge(n_299,n_175) &
edge(n_299,n_131) 
)).

