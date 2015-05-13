building
buildCustomMorphs

	self 
		buildPathMapMorphFrame: (0.224 @ 0.045 corner: 0.996 @ 0.944);
		buildTestQualityFlapCustomMorphs;
		buildProfilingFlapCustomMorphs;
		buildFaultLocalizationFlapCustomMorphs;
		buildInductiveAnalysisCustomMorphs;
		buildTraceabilityFlapCustomMorphs;
		buildOptionsFlapCustomMorphs.
