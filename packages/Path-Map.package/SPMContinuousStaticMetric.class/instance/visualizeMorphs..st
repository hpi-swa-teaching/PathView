visualization
visualizeMorphs: aCollectionOfMorphs
	| value |
	self minValue: (self getMinMetricValueFrom: aCollectionOfMorphs).
	self maxValue: (self getMaxMetricValueFrom: aCollectionOfMorphs).
	aCollectionOfMorphs do: [:each | 
		value := self getMetricValueFrom: each.
		self addMetricInfo: value to: each.
		each propagateColor: (self thresholdSelected
									ifTrue: [self thresholdColorFor: value]
									ifFalse: [self class isLogarithmic
												ifTrue: [self logarithmicColorFor: value]
												ifFalse: [self linearColorFor: value]])].