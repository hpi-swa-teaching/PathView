geometry
extent: aPoint

	| borderOffset |
	super extent: aPoint.
	self labelMorph position: self position.
	self labelMorph width < self width
		ifTrue: [self labelMorph position: 
				(self labelMorph position x + (self width / 2) - (self labelMorph width / 2)) @ 
					(self labelMorph position y + (self height / 2) - (self labelMorph height / 2))]
		ifFalse: [
			borderOffset := 5.
			self labelMorph position: 
				(self position x + borderOffset - 2) @ 
					(self labelMorph position y + (self height / 2) - (self labelMorph height / 2)).
			self labelMorph extent: (self width - borderOffset)@ self height.
			].