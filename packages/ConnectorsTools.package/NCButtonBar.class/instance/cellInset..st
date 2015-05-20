buttons
cellInset: aNumberOrPoint
	self setProperty: #cellInset toValue: aNumberOrPoint asPoint.
	self fixLayoutFrames; layoutChanged.