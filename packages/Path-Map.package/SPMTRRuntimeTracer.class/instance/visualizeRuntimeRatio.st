visualization-ratio
visualizeRuntimeRatio
	| rawData sortedRatio morph heatColor |
	rawData := self collectRuntimeAndCallsFromAllMethods.
	sortedRatio := self computeRatioAndSort: rawData.
	self maxValue: sortedRatio first value.
	
	sortedRatio do: [:association | 
		morph := self pathMap getMethodMorph: association key actualClass 
					and: association key methodSymbol.
		self addRuntime: (rawData at: association key) second 
			 calls: (rawData at: association key) first 
			 ratioInfo: association value 
			 to: morph.
		self maxValue = 1
			ifTrue: [heatColor := self class maxHue]
			ifFalse: [heatColor := self class maxHue - ((association value ln / self maxValue ln) *
									 self class maxHue)].
		morph propagateColor: (Color h: heatColor s: 1.0 v: 1.0)	].
		self visualizeAllTestResults.