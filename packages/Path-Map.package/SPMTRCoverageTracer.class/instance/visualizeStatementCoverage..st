visualization
visualizeStatementCoverage: aDictionary
	| morph  grayScale coveredByteCodes allByteCodes ratio |
	aDictionary keysDo: [:each | 
		coveredByteCodes := self numberOfCoveredByteCodesFrom: each.
		allByteCodes := self numberOfByteCodesFrom: each.
		morph := self pathMap getMethodMorph: each actualClass and: each methodSymbol.
		ratio := allByteCodes = 0
			ifTrue: [1.0]
			ifFalse: [coveredByteCodes / allByteCodes].
		self addStatementCoveringInfo: ratio to: morph.
		grayScale := self class minGrayValue - (ratio * self class minGrayValue).
		morph propagateColor: (Color 
									h: morph color hue 
									s: morph color saturation 
									v: grayScale)].