as yet unclassified
failingMethod: aBoolean
	self unaryMethod.
	^ aBoolean
		ifTrue: [aBoolean]
		ifFalse: [aBoolean not]