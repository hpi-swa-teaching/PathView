coverage events
numberOfByteCodesFrom: aMethodReference
	| method |
	method := aMethodReference compiledMethod isMwMethodWrapper
		ifTrue: [aMethodReference compiledMethod clientMethod]
		ifFalse: [aMethodReference compiledMethod].
	^ method endPC - method initialPC + 1