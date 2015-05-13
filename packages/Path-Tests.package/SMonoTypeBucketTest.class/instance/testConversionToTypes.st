testing
testConversionToTypes
	| bucket symbolBucket typesBucket |
	self tracer run.
	bucket := self bucket.
	symbolBucket := bucket convertToSymbols.
	typesBucket := symbolBucket convertToTypes.
	self assert: (bucket instVarNamed: 'arguments') size = 
				(typesBucket instVarNamed: 'arguments') size.
	self assert: (bucket instVarNamed: 'returns') = 
				(typesBucket instVarNamed: 'returns').
	self assert: (bucket instVarNamed: 'members') = 
				(typesBucket instVarNamed: 'members').