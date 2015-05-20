accessing
lastTargetOwnerHash
	^lastTarget
		ifNil: [ 0 ]
		ifNotNil: [ lastTarget at: 3 ifAbsent: [ 0 ] ]