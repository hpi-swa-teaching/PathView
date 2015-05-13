visualization
visualizeCoveredMethods: aDictionary
	| morph |
	aDictionary keysDo: [:each | 
		morph := self pathMap getMethodMorph: each actualClass and: each methodSymbol.
		morph propagateColor: (Color 
									h: morph color hue 
									s: morph color saturation 
									v: self class coverageGrayScale)].