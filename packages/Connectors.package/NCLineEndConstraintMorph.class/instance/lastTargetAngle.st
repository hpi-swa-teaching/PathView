accessing
lastTargetAngle
	^lastTarget
		ifNil: [ 0 ]
		ifNotNil: [ lastTarget second ]