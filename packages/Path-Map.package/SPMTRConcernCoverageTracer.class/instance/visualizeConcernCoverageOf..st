visualization
visualizeConcernCoverageOf: aDictionary
	| morph tests concerns |
	aDictionary keysDo: [:each | 
		morph := self pathMap getMethodMorph: each actualClass and: each methodSymbol.
		tests := morph allCoveringTests.
		concerns := self convertTestsToConcerns: tests.
		self addConcernInfo: concerns to: morph.
		morph propagateColor: (self getConcernColor: concerns).
		(self options multipleColorsPerMethod 
			and: [self options specificConcernMethodsOnly not])
				ifTrue: [self setAdditionalColorsFrom: concerns to: morph]].