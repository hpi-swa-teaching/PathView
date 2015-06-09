event handling
mouseLeaveDragging: anEvent
	
	oldHighlightColor
		ifNil: [ self removeHighlight ]
		ifNotNil: [
			self highlight: oldHighlightColor.
			oldHighlightColor := nil ].