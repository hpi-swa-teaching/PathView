visualization-runtime
visualizeRuntime
	| runtimeDict morph heatColor |
	runtimeDict := self collectRuntimeFromAllMethods.
	self maxValue: (self maxRuntimeFrom: runtimeDict) value asNanoSeconds.
	
	runtimeDict associationsDo: [:association | 
		morph := self pathMap 
						getMethodMorph: association key actualClass 
						and: association key methodSymbol.
		self addRuntimeInfo: association value to: morph.
		self maxValue = 1
			ifTrue: [heatColor := self class maxHue]
			ifFalse: [heatColor := self class maxHue - ((association value asNanoSeconds ln / 
									self maxValue ln) * self class maxHue)].
		morph propagateColor: (Color h: heatColor s: 1.0 v: 1.0)	].
		self visualizeAllTestResults.