appearance
beSmoothCurve: aBoolean
	aBoolean ifTrue: [ self beSmoothCurve ]
		ifFalse: [ self beStraightSegments ]
