geometry testing
closestPointTo: aPoint
	| curveInfo |
	curveInfo := self curveInfoNearest: aPoint.
	^curveInfo closestPoint.