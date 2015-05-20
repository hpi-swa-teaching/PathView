*connectors
transformForExtent: extent
	| scale pointsRect newRect |
	contours do: [ :c | | rect | 
		rect := Rectangle encompassing: c.
		pointsRect := pointsRect ifNil: [ rect ] ifNotNil: [ pointsRect quickMerge: rect ]].
	newRect := pointsRect scaleAndTranslateToFitInside: (0@0 extent: extent asFloatPoint).
	scale := newRect extent asFloatPoint / pointsRect extent.
	^(MatrixTransform2x3 withScale: scale asPoint * (1 @ -1))
		composedWithLocal: (MatrixTransform2x3 withOffset: ((pointsRect origin x) @ (pointsRect corner y)) negated).