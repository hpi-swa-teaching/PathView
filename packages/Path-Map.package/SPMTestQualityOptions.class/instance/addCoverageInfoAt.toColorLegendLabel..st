visualization
addCoverageInfoAt: aPosition toColorLegendLabel: aStream
	self typeOfCoverage caseOf: 
	{
		[#methods] -> [self addMethodCoverageInfoAt: aPosition to: aStream].
		[#intensity] -> [self addIntensityCoverageInfoAt: aPosition to: aStream].
		[#statements] -> [self addStatementCoverageInfoAt: aPosition to: aStream].	
	}.