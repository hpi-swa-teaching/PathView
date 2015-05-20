geometry-curves
computeSegments
	| segs v3 l1 l2 m1 m2 lastUsed end arrowVertices |
	arrowVertices := self arrowVertices.
	arrowVertices size = 2 
		ifTrue: 
			[^{ LineSegment 
					from: arrowVertices first
					to: arrowVertices last }].

	smoothCurve ifFalse: [
		segs := Array new: arrowVertices size - 1.
		arrowVertices overlappingPairsWithIndexDo:  [ :v1 :v2 :i |
			segs at: i put: (LineSegment from: v1 to: v2)
		].
		^segs
	].

	segs := OrderedCollection new.
	lastUsed := arrowVertices first.
	2 to: arrowVertices size - 1 do:  [:i | | v2 symmetry |
			v2 := (arrowVertices at: i).
			v3 := (arrowVertices at: i + 1).
			l1 := lastUsed dist: v2.
			l2 := v2 dist: v3.
			symmetry := l1 - l2.
			symmetry < 0
				ifTrue: 
					[m1 := (lastUsed + v2) / 2.0.
					end := v2 interpolateTo: v3 at: l1 / l2 * 0.5.
					lastUsed ~= m1 
						ifTrue: 
							[segs add: (LineSegment 
										from: lastUsed
										to: m1)].
					segs add: (Bezier2Segment 
								from: m1
								to: end
								via: v2).
					lastUsed := end]
		ifFalse: [ m2 := (v2 + v3) / 2.0.
					end := v2 interpolateTo: lastUsed at: l2 / l1 * 0.5.
					lastUsed ~= end 
						ifTrue: 
							[segs add: (LineSegment 
										from: lastUsed
										to: end)].
					segs add: (Bezier2Segment 
								from: end
								to: m2
								via: v2).
					lastUsed := m2]
		].
	lastUsed ~= v3 
		ifTrue: 
			[segs add: (LineSegment 
						from: lastUsed
						to: v3)].
	^segs asArray 