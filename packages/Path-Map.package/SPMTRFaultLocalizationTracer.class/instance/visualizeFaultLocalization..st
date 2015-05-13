visualization
visualizeFaultLocalization: aDictionary
	| morph suspiciousness |
	aDictionary keysDo: [:each | 
		self resetPassFailCounts.
		morph := self pathMap getMethodMorph: each actualClass 
								and: each methodSymbol.
		self computePassFailCountsFor: morph.
		suspiciousness := self computeSuspiciousness.
		self color: morph suspiciousness: suspiciousness.
		self addInfo: suspiciousness to: morph.].