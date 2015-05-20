geometry-curves
outsideBezierPoints
	"Answer the nVertices + 1 *6 points that are the boundary points for two sets of bezier curves that define my outer bounds."

	| npts a b halfWidth normal ptsA ptsB tan1 tan2 angle1 angle2 halfAngle midAngle r delta |
	npts := self segments size * 3.
	ptsA := Array new: npts.
	ptsB := Array new: npts.
	a := 1.
	b := npts.
	halfWidth := self lineWidth * 0.5.
	self segmentsDo: 
			[:seg | 
			tan1 ifNil: 
					[tan1 := seg tangentAtStart.
					tan1 isZero ifTrue: [tan1 := 0.0 @ 1.0]].
			angle1 := tan1 negated theta.
			tan2 := seg tangentAtEnd.
			tan2 isZero ifTrue: [tan2 := 0.0 @ 1.0].
			angle2 := tan2 theta.

			"from end"
			normal := tan1 normal * halfWidth.
			ptsA at: a put: seg start - normal.
			ptsB at: b put: seg start + normal.
			a := a + 1.
			b := b - 1.
			seg isBezier2Segment 
				ifTrue: 
					["via"

					halfAngle := (angle1 - angle2) / 2.0.
					halfAngle abs < 4.0e-5 ifTrue: [halfAngle := 4.0e-5].
					midAngle := angle2 + halfAngle.
					r := halfWidth / halfAngle sin.
					r := r min: halfWidth * 6.0 max: halfWidth * -6.0.
					delta := (r * midAngle cos) @ (r * midAngle sin).
					ptsA at: a put: seg via - delta.
					ptsB at: b put: seg via + delta.
					a := a + 1.
					b := b - 1].

			"to end"
			normal := tan2 normal * halfWidth.
			ptsA at: a put: seg end - normal.
			ptsB at: b put: seg end + normal.
			a := a + 1.
			b := b - 1.
			seg isBezier2Segment 
				ifFalse: 
					[ptsA at: a put: seg end - normal.
					ptsB at: b put: seg end + normal.
					a := a + 1.
					b := b - 1].
			tan1 := tan2].
	segments last isBezier2Segment 
		ifFalse: 
			[| csize |
			csize := ptsA size.
			ptsA at: csize - 1 put: (ptsA at: csize - 2).
			ptsB at: 2 put: (ptsB at: 3)].
	^{ 
		ptsA.
		ptsB}