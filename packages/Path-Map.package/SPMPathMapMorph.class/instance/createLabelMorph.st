building
createLabelMorph
	| stringMorph offsetPosX offsetPosY |
	stringMorph := StringMorph contents: self sourceCodeEntity asString.
	self labelMorph: (SPMLabelMorph on: self).
	self labelMorph 
		extent: stringMorph extent * self class labelResizeFactor;
		color: self class labelColor;
		borderWidth: self class labelBorderWidth;
		borderColor: self class labelBorderColor;
		addMorph: stringMorph.
	
	self labelMorph width < self labelMorphMinWidth
		ifTrue: [self labelMorph width: self labelMorphMinWidth].
	
	offsetPosX := ((self labelMorph width - stringMorph width) / 2) rounded.
	offsetPosY := ((self labelMorph height - stringMorph height) / 2) rounded.
	stringMorph position: (stringMorph position x + offsetPosX) @ 
							(stringMorph position y + offsetPosY).
	^ self labelMorph