-- all --
valueWithReceiver: anObject arguments: anArrayOfObjects
	| result |
	"#arguments #selfBefore #selfAfter #return #types"	
	self 
		getTypeInformation: anArrayOfObjects of: #arguments;
		getTypeInformation: (Array with: anObject) of: #self;
		getArguments: anArrayOfObjects;
		getSelfBefore: anObject.
	self isSpecificCall ifTrue: [self found: true].
	self decrementCallCount.
	^ [
		result := self clientMethod valueWithReceiver: anObject arguments: anArrayOfObjects.
		result.
	] ensure: [ self found 
				ifTrue: [self incrementCallCount.
					self 
						getSelfAfter: anObject;
						getReturn: result;
						getTypeInformation: (Array with: result) of: #result.
					self isSpecificCall 
						ifTrue: [self found: false. 
							      self decrementCallCount]]]
