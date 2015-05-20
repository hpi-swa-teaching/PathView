drawing
closestPointTo: aPoint
	| info offset |
	offset := self curveBounds origin - curve bounds origin.
	info := curve curveInfoNearest: (aPoint - offset).
	^info first + offset.