coverage events
allByteCodesAlreadyCoveredFor: aMethodReference
	^ (self numberOfByteCodesFrom: aMethodReference) = 
		(self numberOfCoveredByteCodesFrom: aMethodReference)
