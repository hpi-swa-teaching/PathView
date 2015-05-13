exceptions-helper
identifyWrapperContext 
	| context |
	context := thisContext.
	[context notNil and: [context receiver isContractWrapper not]] 
		whileTrue: [context := context sender].
	context ifNil: [self halt "should not be triggered but if we can debug it!"].
	^ context