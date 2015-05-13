evaluating
valueWithReceiver: anObject arguments: anArrayOfObjects
	| result byteCodes |
	result := thisContext
		runSimulatedMethodOnly: [self clientMethod 
										valueWithReceiver: anObject 
										arguments: anArrayOfObjects]
		contextAtEachStep: [ :context | 
			self compiledMethod == context method
				ifTrue: [	byteCodes := self coveredByteCodes 
											at: self currentTest ifAbsentPut: [Set new].
						byteCodes add: context pc]].
	^ result