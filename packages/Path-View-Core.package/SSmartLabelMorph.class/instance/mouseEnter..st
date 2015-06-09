event handling
mouseEnter: anEvent
	
	self hasGrabAction ifTrue: [
		self backgroundColor: self class hoveredBackground ].