accessing
sampleGlyph
	| newContours rTransform ref endRef rot |
	"Scale the contour points to fit a 1x1 square, then offset them by the join point."
	glyph isNil ifTrue: [ ^nil ].
	newContours := glyph contoursShiftedToStartWith: joinPoint.
	rot := endPoint ifNil: [ rotation ]
		ifNotNil: [ ((endPoint- joinPoint) theta radiansToDegrees) - 90.0 ].
	rTransform := glyph transformForRect: (-0.5@-0.5 corner: (0.5@0.5)) rotation: rot.
	ref := rTransform transformPoint: joinPoint.
	endRef := rTransform transformPoint: (endPoint ifNil: [ joinPoint ]).
	newContours := newContours collect: [ :c |
		(Array withAll: c) collect: [ :pt | ((rTransform transformPoint: pt asFloatPoint) - ref) roundTo: 0.0001 ]
	].
	transformedClickPoints := self clickPoints collect: [  :pt | ((rTransform transformPoint: pt asFloatPoint) - ref) roundTo: 0.0001 ].
	^(NCLineArrowGlyph withContours: newContours)
		offset: ref - endRef;
		scale: self arrowScale;
		yourself
