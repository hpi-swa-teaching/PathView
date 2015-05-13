results
getProfilingData
	| duration |
	self wrappers select: [:each | each calls > 0] 
		thenDo: [:each | 
			duration := self runtimes at: each asMethodReference.
			self runtimes at: each asMethodReference put: {each calls. duration}].
	^ self runtimes