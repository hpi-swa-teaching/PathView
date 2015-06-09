layout
doPerformLayout
	
	| widthDictionary |
	widthDictionary := Dictionary new.
	self collectRecursiveWidths: root into: widthDictionary.
	self setPositionOf: root rowStart: 0 currentRowWidth: 0 widthDictionary: widthDictionary totalHeight: 0.