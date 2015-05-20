drawing
fullDrawOn: aCanvas 
	"Draw the full Morphic structure on the given Canvas"

	self visible ifFalse: [^self].
	(aCanvas isVisible: self fullBounds) ifFalse: [^self].
	(self hasProperty: #errorOnDraw) ifTrue: [^self drawErrorOn: aCanvas].
	self hasDragShadow 
		ifTrue: [self drawDragShadowOn: aCanvas]
		ifFalse: [self hasDropShadow ifTrue: [self drawDropShadowOn: aCanvas]].
	(aCanvas isVisible: self bounds) ifTrue: [aCanvas drawMorph: self].
	self drawSubmorphsOn: aCanvas.
	self drawDropHighlightOn: aCanvas