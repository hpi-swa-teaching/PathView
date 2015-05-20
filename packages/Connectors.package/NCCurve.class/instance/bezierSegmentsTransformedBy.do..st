accessing contours
bezierSegmentsTransformedBy: aTransform do: aBlock
	| seg |
	contours do: [ :c |
		1 to: c size by: 3 do: [ :i |
			seg := Bezier2Segment from: (c at: i) to: (c at: i + 2) via: (c at: i+1).
			aBlock value: seg ]]