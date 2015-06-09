collecting types
getTypeFromObject: anObject
	(anObject isCollection or: [anObject isVariableBinding])
		ifTrue: [^ self containerTypeFrom: anObject]
		ifFalse: [^ anObject class]