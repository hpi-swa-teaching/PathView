visualization
visualizeIntensityOfCoveredMethods: aDictionary
	| morph  grayScale |
	aDictionary keysDo: [:each | 
		morph := self pathMap getMethodMorph: each actualClass and: each methodSymbol.
		grayScale := self class minGrayValue - (self testCoverageIntensityFrom: morph).
		morph propagateColor: (Color 
									h: morph color hue 
									s: morph color saturation 
									v: grayScale)].