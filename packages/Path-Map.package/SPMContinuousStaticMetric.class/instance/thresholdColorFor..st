visualization
thresholdColorFor: aNumber
	aNumber <= self class low
		ifTrue: [^ Color green].
	(aNumber between: self class low and: self class average)
		ifTrue: [^ Color yellow].
	(aNumber between: self class average and: self class high)
		ifTrue: [^ Color orange].
	^ Color red