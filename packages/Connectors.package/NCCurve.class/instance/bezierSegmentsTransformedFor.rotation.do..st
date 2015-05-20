accessing contours
bezierSegmentsTransformedFor: aRectangle rotation: rotation do: aBlock
	| transform seg c |
	transform := self transformForRect: aRectangle rotation: rotation.
	contours do: [ :ct |
		c := transform localPointsToGlobal: ct.
		1 to: c size by: 3 do: [ :i |
			seg := Bezier2Segment from: (c at: i) to: (c at: i + 2) via: (c at: i+1).
			aBlock value: seg ]]
