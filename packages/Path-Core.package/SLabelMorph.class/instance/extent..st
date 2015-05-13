geometry
extent: aPoint
	| borderOffset heightOffset |
	super extent: aPoint.
	self labelMorphs withIndexDo: [:each :index | 
		each position: self position x @ (self position y + ((index - 1) * each height))].
	heightOffset := (self height - (self height / self class defaultExtensionFactor)) / 2.
	self labelMorphs withIndexDo: [:each :index | 
		each width < self width
			ifTrue: [each position: 
					(each position x + (self width / 2) - (each width / 2)) @ 
					(each position y + heightOffset)]
			ifFalse: [
				borderOffset := 5.
				each position: 
					(self position x + borderOffset - 2) @ 
					(each position y + heightOffset).
				each extent: (self width - borderOffset) @ self height]].