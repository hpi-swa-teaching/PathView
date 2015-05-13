visualization
visualizeEndExecutionOf: anEntryPoint
	super visualizeEndExecutionOf: anEntryPoint.
	self options typeOfCoverage caseOf: {
		[#methods] -> [self visualizeCoveredMethods: self coveredMethods].
		[#intensity] -> [self visualizeIntensityOfCoveredMethods: self coveredMethods].
		[#statements] -> [self visualizeStatementCoverage: self coveredMethods].
	}.