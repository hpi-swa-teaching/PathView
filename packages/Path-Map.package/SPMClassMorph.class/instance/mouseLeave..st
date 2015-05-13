event handling
mouseLeave: anEvent

	self color: (self color adjustBrightness: self class highlightBrightness).
	self labelMorph owner ifNotNil: [self rootMorph removeMorph: self labelMorph owner].