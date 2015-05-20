*connectors-geometry
intersectionsWithLineFrom: start to: end
	"Answer the set of intersections, if any"
	| retval l i |
	retval := Set new: 4.
	l := LineSegment from: start to: end.
	self lineSegmentsDo: [ :p1 :p2 | | s |
		s := LineSegment from: p1 to: p2.
		i := s intersectionWith: l.
		i ifNotNil: [ retval add: i ].
	].
	^retval