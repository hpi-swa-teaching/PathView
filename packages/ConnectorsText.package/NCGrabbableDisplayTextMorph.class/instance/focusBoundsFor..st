event handling
focusBoundsFor: anEvent
	| rect |
	rect := anEvent hand autoFocusRectangleBoundsFor: self.
	^rect quickMerge: (self outerBounds outsetBy: 40).
