results
getProfilingData
	| result |
	result := Dictionary new.
	self wrappers select: [:each | (each stopwatch duration isZero not) and: [each calls > 0]]
		thenDo: [:each | result 
							at: each asMethodReference 
							put: {each calls. each stopwatch duration}].
	^ result