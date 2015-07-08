layout and labels
setFontSize: aFontSizeInPoint

	| height |
	height := TextStyle pointsToPixels: aFontSizeInPoint.
	self labelMorph fontName: self class fontName size: height