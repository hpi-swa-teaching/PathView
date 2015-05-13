user interface
getIconForConcernFrom: aCollection at: aNumber
	| icon |
	(aCollection size = aNumber) ifFalse: [^ nil].
	(self concernColors includesKey: (aCollection at: aNumber))
		ifTrue: [
			icon := Form extent: 15@15 depth: 32.
			icon fillColor: (self concernColors at: (aCollection at: aNumber)).
			^ icon].
	^ nil