geometry-curves
lineSegments
	| segs |
	segs := OrderedCollection new.
	self lineSegmentsDo: [ :p1 :p2 | segs add: (LineSegment from: p1 to: p2) ].
	^segs