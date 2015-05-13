visualization
visualizeEndExecutionOf: anEntryPoint
	| methodCallBag morph heatColor |
	methodCallBag := self collectAllCalls.
	self maxValue: (self maxCallCountFrom: methodCallBag).
	methodCallBag valuesAndCounts associationsDo: [:association | 
		morph := self pathMap 
						getMethodMorph: association key actualClass 
						and: association key methodSymbol.
		self addMethodCallsInfo: association value to: morph.
		self maxValue = 1
			ifTrue: [heatColor := self class maxHue]
			ifFalse: [heatColor := self class maxHue - ((association value ln / self maxValue ln) * 
									self class maxHue)].
		morph propagateColor: (Color h: heatColor s: 1.0 v: 1.0)].
	self visualizeAllTestResults.