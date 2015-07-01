private
setText: aText

	| leftOffset |
	
	super setText: aText.
	leftOffset := (self textMorph class requiredSpaceForTwoCodeDigits * self textMorph class 	scaleFactorLeftMargin) rounded.
	self textMorph margins: ((leftOffset@0) corner: 0@0)