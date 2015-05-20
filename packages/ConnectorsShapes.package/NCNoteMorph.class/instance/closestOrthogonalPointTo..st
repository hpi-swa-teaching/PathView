geometry
closestOrthogonalPointTo: aPoint
	| pt delta |
	pt := super closestPointTo: aPoint.
	delta := pt - self topLeft.
	(delta x >= 12 or: [ delta y >= 12 ]) ifTrue: [ ^pt ].
	^delta x = 0 ifTrue: [
		(LineSegment from: pt to: pt + (20@0))
			intersectionWith: (LineSegment from: (self topLeft + (12@0)) to: (self topLeft + (0@12))).
	]
	ifFalse: [
		(LineSegment from: pt to: pt + (0@20))
			intersectionWith: (LineSegment from: (self topLeft + (12@0)) to: (self topLeft + (0@12))).
	].
