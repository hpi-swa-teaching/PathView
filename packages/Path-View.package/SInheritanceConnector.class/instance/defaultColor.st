initialization
defaultColor
	
	^ self getClassesInBetween
		ifNotEmpty: [ Color gray ]
		ifEmpty: [ super defaultColor ]