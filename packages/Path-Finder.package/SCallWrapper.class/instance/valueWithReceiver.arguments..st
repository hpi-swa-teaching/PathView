evaluating
valueWithReceiver: anObject arguments: anArrayOfObjects

	self 
		beforeMethod;
		beforeMethod: anObject.
	^ [
		self clientMethod valueWithReceiver: anObject arguments: anArrayOfObjects.
	] ensure: [self afterMethod]