drawing
visible
	self forcedInvisible ifTrue: [ ^false ].
	submorphs isEmpty ifFalse: [ ^true ].
	^self preferredConnectionSelector ~~ #connectToNothing