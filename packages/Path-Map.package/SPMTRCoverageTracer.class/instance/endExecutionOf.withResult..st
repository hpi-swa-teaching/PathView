running
endExecutionOf: anEntryPoint withResult: anObject
	super endExecutionOf: anEntryPoint withResult: anObject.
	self resetCoveredMethods.