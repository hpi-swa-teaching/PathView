visualization
visualizeEndExecutionOf: aTestCaseEntryPoint
	self 
		visualizeConcernCoverageOf: self coveredMethods;
		visualizeTestResultOf: aTestCaseEntryPoint.