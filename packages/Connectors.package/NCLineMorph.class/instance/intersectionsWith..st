geometry testing
intersectionsWith: aRectangle
	"Answer a Set of points where the given Rectangle intersects with me.
	Ignores arrowForms."

	| retval |
	retval := IdentitySet new: 4.
	(self bounds intersects: aRectangle) ifFalse: [^ retval].

	self segmentsDo: [ :seg |
		aRectangle lineSegmentsDo: [ :rp1 :rp2 |
			retval addAll: (seg intersectionsWithLineFrom: rp1 to: rp2) ] ].

	^retval
