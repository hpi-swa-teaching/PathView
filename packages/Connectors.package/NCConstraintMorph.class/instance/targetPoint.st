constraints
targetPoint
	| pt input isMorph |
	input := self input.
	(constraint isNil or: [input isNil]) 
		ifTrue: [^self defaultTargetPoint].

	(isMorph := input isMorph) ifTrue: [ | inputBounds |
		inputBounds := input boundsInWorld.
		lastTargetBounds = inputBounds ifTrue: [ ^self lastTargetPoint ].
		lastTargetBounds := inputBounds.
	].

	"call target block"
	pt := constraint valueWithEnoughArguments: { input }.

	"transform point"
	pt := (isMorph 
		ifTrue: [self globalPointToLocal: (input localPointToGlobal: pt)]
		ifFalse: [self globalPointToLocal: pt]) asIntegerPoint.

	^ pt
