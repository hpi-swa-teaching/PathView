evaluating
valueWithReceiver: anObject arguments: anArrayOfObjects
	| object |
	self harvester arguments: anArrayOfObjects from: self compiledMethod.
	self harvester instVarsFor: anObject.
	object := self clientMethod 
						valueWithReceiver: anObject arguments: anArrayOfObjects.
	self harvester return: object from: self compiledMethod.
	self harvester instVarsFor: anObject.
	^ object