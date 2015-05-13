wrapper instrumentation
getWrapperClass

	(self options isTestQualityOptions and: [self options 
												typeOfCoverage = #statements]) 
		ifTrue: [^ SPMStatementCoverageWrapper].
	^ SPMCoverageWrapper