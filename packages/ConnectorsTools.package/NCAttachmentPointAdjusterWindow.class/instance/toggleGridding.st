buttons
toggleGridding
	self griddingOnOff; gridVisibleOnOff.
	target ifNil: [ ^self ].
	self initializeOriginalPositionFor: target.

