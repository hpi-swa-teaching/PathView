geometry-curves
bezierPoints
	"Answer nVertices*3 points that are the control points for my bezier curves."

	| pts i |
	pts := Array new: self segments size * 3.
	i := 1.
	self bezierSegmentsDo: 
			[:seg | 
			pts
				at: i put: seg start;
				at: i + 1 put: seg via;
				at: i + 2 put: seg end.
			i := i + 3].
	^pts