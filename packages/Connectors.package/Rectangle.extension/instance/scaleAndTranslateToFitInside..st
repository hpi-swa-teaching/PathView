*connectors-transforming
scaleAndTranslateToFitInside: anotherRectangle
	"Answer a Rectangle with the same aspect ratio as me, but that will fit inside
	anotherRectangle."
	| newExtent |
	newExtent := self extent scaleToNoGreaterThan: anotherRectangle extent.
	^(Rectangle origin: self origin extent: newExtent) translatedToBeWithin: anotherRectangle.
