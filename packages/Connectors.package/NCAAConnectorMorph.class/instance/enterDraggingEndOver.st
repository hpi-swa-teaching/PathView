event handling
enterDraggingEndOver
	self log: #debug items: {'enterDraggingEndOver'}.
	self valueOfProperty: #highlightedTargets ifPresentDo: [ :targets |
		(targets includes: self sourceMorph) ifTrue: [ constraints first stopStepping; step ].
		(targets includes: self destinationMorph) ifTrue: [ constraints second stopStepping; step ].
	].