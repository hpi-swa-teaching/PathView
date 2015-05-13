value range contracts
contractViolationFor: aClass and: anObject
	| context violation |
	context := self identifyWrapperContext.
	violation := aClass
		on: (self getClientMethod: context) 
		kindOf: (self getContractType: context).
	self setVariableNameIn: violation for: anObject with: context.
	^ violation