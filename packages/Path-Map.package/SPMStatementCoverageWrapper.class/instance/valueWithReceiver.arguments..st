as yet unclassified
valueWithReceiver: anObject arguments: anArrayOfObjects
	| result |
	self beforeMethod.
	^ [
		(self clientMethod isQuick or: [self allByteCodesCovered])
			ifTrue: [result := self clientMethod 
						valueWithReceiver: anObject arguments: anArrayOfObjects]
			ifFalse: [result := self runSimulatedWith: anObject 
								   arguments: anArrayOfObjects].
		result.
	   ] ensure: [self afterMethod]