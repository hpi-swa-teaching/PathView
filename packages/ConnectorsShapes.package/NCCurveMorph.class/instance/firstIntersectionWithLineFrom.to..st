drawing
firstIntersectionWithLineFrom: start to: end 
	| intersections |
	intersections := SortedCollection sortBlock: [:a :b | (start dist: a) < (start dist: b)].
	curve
		bezierSegmentsTransformedFor: self curveBounds
		rotation: self forwardDirection
		do: [:seg | (seg intersectionsWithLineFrom: start to: end)
				do: [:int | intersections add: int]].
	intersections isEmpty
		ifTrue: [^ nil].
	^ intersections first rounded