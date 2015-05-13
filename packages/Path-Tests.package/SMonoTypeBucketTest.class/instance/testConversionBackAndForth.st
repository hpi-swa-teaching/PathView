testing
testConversionBackAndForth
	| bucket recoveredBucket |
	self tracer run.
	bucket := self bucket.
	recoveredBucket := bucket convertToSymbols convertToTypes..
	self assert: bucket = bucket copy.
	self deny: bucket = bucket convertToTypes.
	self assert: (bucket instVarNamed: 'arguments') = 
					(recoveredBucket instVarNamed: 'arguments').
	self assert: (bucket instVarNamed: 'returns') = 
					(recoveredBucket instVarNamed: 'returns').
	self assert: (bucket instVarNamed: 'members') = 
					(recoveredBucket instVarNamed: 'members').
	self assert: bucket = recoveredBucket.