debugging
debugPoint: aPoint text: aString
	
	| newMorph |
	newMorph := self debugPoint: aPoint.
	newMorph addMorphFront:
		((StringMorph
			contents: aString)
			position: newMorph position + 3 asPoint).