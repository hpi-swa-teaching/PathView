as yet unclassified
runSimulatedWith: anObject arguments: anArrayOfObjects
	| result byteCodes |
	byteCodes := Set new.
	result := thisContext
		runSimulatedMethodOnly: [self clientMethod 
										valueWithReceiver: anObject 
										arguments: anArrayOfObjects]
		contextAtEachStep: [ :context | 
			self compiledMethod == context method
				ifTrue: [byteCodes add: context pc]].
	self tracer addCoveredByteCodes: byteCodes toMethod: self asMethodReference.
	^ result
