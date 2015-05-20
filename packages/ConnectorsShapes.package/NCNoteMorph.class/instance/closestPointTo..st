geometry
closestPointTo: aPoint
	"fix for corner"
	| pt delta |
	pt := super closestPointTo: aPoint.
	delta := pt - self topLeft.
	(delta x >= 12 or: [ delta y >= 12 ]) ifTrue: [ ^pt ].
	^aPoint nearestPointOnLineFrom: (self topLeft + (12@0)) to: (self topLeft + (0@12))
