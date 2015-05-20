*connectors-vector functions
intersectionsWithLineFrom: e1 to: e2
	"Answer the set of intersections, if any"
	| retval l i |
	retval := OrderedCollection new: 2.
	l := LineSegment from: e1 to: e2.
	self lineSegmentsDo: [ :p1 :p2 | | s |
		s := LineSegment from: p1 to: p2.
		i := s intersectionWith: l.
		i ifNotNil: [ retval add: i ].
		retval size = 2 ifTrue: [ ^retval asArray ].
	].
	^retval asArray