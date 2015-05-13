instance creation
default
	^ defaultPolicy ifNil: [defaultPolicy := SExecutionPolicy executionDisabled]