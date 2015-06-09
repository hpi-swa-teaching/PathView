accessing
methodMorphFor: aSelector
	
	^ self entries
		detect: [ :morph | morph methodName = aSelector ]
		ifNone: [ nil ]