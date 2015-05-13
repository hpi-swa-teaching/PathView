concerns
iconForConcernItem: anObject
	| icon |
	(self concernColors includesKey: anObject)
		ifTrue: [
			icon := Form extent: 15@15 depth: 32.
			icon fillColor: (self concernColors at: anObject).
			^ icon].
	^ nil