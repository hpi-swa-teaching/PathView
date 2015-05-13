visualization
visualizeAllInformation
	self options visualizeStaticMetric.
	super visualizeAllInformation.
	self options typeOfCoverage caseOf: {
		[#methods] -> [self visualizeCoveredMethods: self getAllCoveredMethods].
		[#intensity] -> [self visualizeIntensityOfCoveredMethods: self getAllCoveredMethods].
		[#statements] -> [self visualizeStatementCoverage: self getAllCoveredMethods].
	}.		