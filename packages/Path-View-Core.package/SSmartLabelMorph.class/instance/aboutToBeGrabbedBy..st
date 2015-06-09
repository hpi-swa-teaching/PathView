dropping/grabbing
aboutToBeGrabbedBy: aHand
	
	self unhighlight.
	^ self hasGrabAction
		ifTrue: [ self grabAction ]