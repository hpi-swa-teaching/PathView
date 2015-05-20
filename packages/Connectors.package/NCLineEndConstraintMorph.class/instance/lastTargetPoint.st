accessing
lastTargetPoint
	^lastTarget
		ifNil: [ self constrainedVertex ]
		ifNotNil: [ lastTarget first ]