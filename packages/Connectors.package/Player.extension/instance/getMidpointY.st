*connectors-slot getters/setters
getMidpointY
	| midpoint w aPlayfield |
	midpoint := (self getValueFromCostume: #midpoint) ifNil: [ ^0 ].
	w := costume world.
	w ifNil: [^costume bounds top].
	aPlayfield := costume referencePlayfield.
	^aPlayfield isNil 
		ifTrue: [w cartesianOrigin y - midpoint y]
		ifFalse: [aPlayfield cartesianOrigin y - midpoint y]
