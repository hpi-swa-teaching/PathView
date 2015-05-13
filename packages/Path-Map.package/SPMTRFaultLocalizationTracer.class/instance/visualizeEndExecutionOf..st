visualization
visualizeEndExecutionOf: anEntryPoint
	self 
		visualizeFaultLocalization: self coveredMethods;
		visualizeTestResultOf: anEntryPoint.