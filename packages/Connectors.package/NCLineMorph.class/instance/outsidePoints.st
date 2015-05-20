geometry-curves
outsidePoints
	"Answer the nVertices *2 points that are the boundary points for two sets of lines that define my outer bounds."

	| npts a b halfWidth normal ptsA ptsB tan1 tan2 angle1 angle2 halfAngle midAngle r delta arrowVertices |
	smoothCurve ifTrue: [^self outsideBezierPoints].
	arrowVertices := self arrowVertices.
	npts := arrowVertices size.
	ptsA := Array new: npts.
	ptsB := Array new: npts.
	a := 1.
	b := npts.
	halfWidth := self lineWidth * 0.5.
	2 to: arrowVertices size
		do: 
			[:i | 
			| v1 v2 v3 |
			v1 := arrowVertices at: i - 1.
			v2 := arrowVertices at: i.
			tan1 := v2 - v1.
			tan1 isZero 
				ifTrue: 
					[tan1 := i + 1 > arrowVertices size 
								ifTrue: [v2 - (arrowVertices at: i - 1)]
								ifFalse: [(arrowVertices at: i + 1) - v1]].

			tan1 isZero ifTrue: [ tan1 := 0.0 @ 1.0 ].

			angle1 := tan1 theta.

			"from end"
			a = 1 
				ifTrue: 
					[normal := tan1 normal * halfWidth.
					ptsA at: a put: v1 - normal.
					ptsB at: b put: v1 + normal.
					a := a + 1.
					b := b - 1].
			b = 1 
				ifTrue: 
					["to end"

					normal := tan1 normal * halfWidth.
					ptsA at: a put: v2 - normal.
					ptsB at: b put: v2 + normal.
					a := a + 1.
					b := b - 1]
				ifFalse: 
					[v3 := arrowVertices at: i + 1.
					tan2 := v2 - v3.
					angle2 := tan2 theta.

					"via"
					halfAngle := (angle1 - angle2) / 2.0.
					halfAngle abs < 0.004 ifTrue: [halfAngle := 0.004].
					midAngle := angle2 + halfAngle.
					r := halfWidth / halfAngle sin.
					r := r min: halfWidth * 6 max: halfWidth * -6.
					delta := (r * midAngle cos) @ (r * midAngle sin).
					ptsA at: a put: v2 + delta.
					ptsB at: b put: v2 - delta.
					a := a + 1.
					b := b - 1]].
	^{ 
		ptsA.
		ptsB}