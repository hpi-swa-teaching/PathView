visualization
visualizeEndExecutionOf: anEntryPoint
	| countBag morph heatColor |
	countBag := self collectAllCalls.
	self maxValue: (self maxCallCountFrom: countBag).

	countBag valuesAndCounts associationsDo: [:association | 
		morph := self pathMap getClassMorph: association key actualClass.
		self addInstanceCountInfo: association value to: morph.
		self maxValue = 1
			ifTrue: [heatColor := self class maxHue]
			ifFalse: [heatColor := self class maxHue - ((association value ln / self maxValue ln) * 
									self class maxHue)].
		morph propagateColor: (Color h: heatColor s: 1.0 v: 1.0)].