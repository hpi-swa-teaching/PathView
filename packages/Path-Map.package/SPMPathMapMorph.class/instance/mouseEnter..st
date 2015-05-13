event handling
mouseEnter: anEvent

	self color: (self color adjustBrightness: self class highlightBrightness negated).
	self rootMorph addMorph: self labelMorph.