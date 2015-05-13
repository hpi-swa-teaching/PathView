visualization
refreshColorLegendVertical
	| colors |
	self typeOfCoverage caseOf:
	{
		[#methods] -> [colors := self class coverageColors].
		[#intensity] -> [colors := self class gradientCoverageColors].
		[#statements] -> [colors := self class gradientCoverageColors].
	}.
	self colorLegend verticalColors: colors.