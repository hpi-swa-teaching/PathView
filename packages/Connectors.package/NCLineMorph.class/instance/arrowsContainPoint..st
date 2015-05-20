geometry testing
arrowsContainPoint: aPoint
	"Answer an Array of two Booleans that indicate whether the given point is inside either arrow"
	^self arrowForms collect: [:f | (f pixelValueAt: aPoint - f offset) > 0 ].
