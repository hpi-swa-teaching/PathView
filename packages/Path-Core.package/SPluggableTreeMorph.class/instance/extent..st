geometry
extent: aPoint

	super extent: aPoint.
	"Required for collapse system window"
	aPoint y = 0
		ifTrue: [self hide]
		ifFalse: [self show].