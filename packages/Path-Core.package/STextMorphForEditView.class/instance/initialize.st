initialization
initialize

	| leftOffset |
	super initialize.
	leftOffset := (self class requiredSpaceForTwoCodeDigits * self class scaleFactorLeftMargin) rounded.
	self margins: ((leftOffset@0) corner: 0@0).