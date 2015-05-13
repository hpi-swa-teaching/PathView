results
getProfilingData
	| result |
	result := Dictionary new.
	self wrappers select: [:each | each stopwatch duration isZero not]
		thenDo: [:each | result at: each asMethodReference put: each stopwatch duration].
	^ result