event handling
mouseEnter: anEvent
	self enabled ifTrue: [
		super color: self hoverColor.
	]