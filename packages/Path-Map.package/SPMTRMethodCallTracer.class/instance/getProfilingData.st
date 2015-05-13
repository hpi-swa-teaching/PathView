results
getProfilingData
	| result |
	result := Dictionary new.
	self wrappers select: [:each | each calls > 0]
		thenDo: [:each | result at: each asMethodReference put: each calls].
	^ result