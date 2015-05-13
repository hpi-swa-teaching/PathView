evaluating
valueWithReceiver: anObject arguments: anArrayOfObjects

	self beforeMethod.
	^ [
		false
	] ensure: [self afterMethod]