*connectors-geometry
intersectionWithLineSegmentFromCenterTo: aPoint 
	"Answer the point, if any, along my border that intersects the  
	line segment between my center and aPoint. Return aPoint if  
	aPoint is inside me or is on my border, else a computed point  
	somewhere along my border."

	| seg |
	(self containsPoint: aPoint)
		ifTrue: [^ aPoint].
	"Answer the set of intersections, if any"
	seg := LineSegment from: self center to: aPoint.
	self lineSegmentsDo: [ :p1 :p2 | | side int |
		side := LineSegment from: p1 to: p2.
		int := side intersectionWith: seg.
		int ifNotNil: [ ^int ].
	].

	^(self center + aPoint) // 2
