*connectors-slot getters/setters
setSmoothCurve: aBoolean
	(self costume respondsTo: #beSmoothCurve)
		ifFalse: [^self ].
	aBoolean ifTrue: [ self costume beSmoothCurve ]
		ifFalse: [ self costume beStraightSegments ].
