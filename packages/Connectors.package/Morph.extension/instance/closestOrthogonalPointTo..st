*connectors-geometry
closestOrthogonalPointTo: aPoint
	| xMax yMax |
	xMax := aPoint x.
	yMax := aPoint y.
	(aPoint y between: bounds top and: bounds bottom) ifTrue: [
		xMax := (aPoint x < bounds left)
			ifTrue: [ self pasteUpMorphOrWorld right ]
			ifFalse: [ self pasteUpMorphOrWorld left ].
	].
	(aPoint x between: bounds left and: bounds right) ifTrue: [
		yMax := (aPoint y < bounds top)
			ifTrue: [ self pasteUpMorphOrWorld bottom ]
			ifFalse: [ self pasteUpMorphOrWorld top ].
	].
	^(self firstIntersectionWithLineFrom: aPoint to: xMax@yMax)
		ifNil: [ self intersectionWithLineSegmentFromCenterTo: aPoint ].