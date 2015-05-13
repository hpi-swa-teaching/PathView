accessing
updateVisuals
	super updateVisuals.
	self enabled ifTrue: [self iconForm: self activeIcon] ifFalse: [self iconForm: self inactiveIcon].