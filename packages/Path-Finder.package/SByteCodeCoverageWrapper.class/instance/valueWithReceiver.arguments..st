evaluating
valueWithReceiver: anObject arguments: anArrayOfObjects
	| result |
	self isSpecificCall 
		ifTrue: [self decrementCallCount.
				result := thisContext
							runSimulatedMethodOnly: [self clientMethod 
															valueWithReceiver: anObject 
															arguments: anArrayOfObjects]
							contextAtEachStep: [ :context | 
								self contextStep: context]]
		ifFalse: [self decrementCallCount.
				result := self clientMethod 
								valueWithReceiver: anObject 
								arguments: anArrayOfObjects].
	^ result