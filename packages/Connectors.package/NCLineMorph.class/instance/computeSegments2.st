geometry-curves
computeSegments2
	| segs arrowVertices midpoints bezierSegs fillSegs |
	arrowVertices := self arrowVertices.
	arrowVertices size = 2 
		ifTrue: 
			[^{ LineSegment 
					from: arrowVertices first
					to: arrowVertices last }].

	smoothCurve ifFalse: [
		segs := Array new: arrowVertices size - 1.
		arrowVertices overlappingPairsWithIndexDo:  [ :v1 :v2 :i |
			segs at: i put: (LineSegment from: v1 to: v2) ].
		^segs ].

	midpoints := Array new: arrowVertices size - 1.
	arrowVertices overlappingPairsWithIndexDo: [ :v1 :v2 : i | midpoints at: i put: (v1 + v2) / 2 ].
	midpoints
		at: 1 put: arrowVertices first;
		at: midpoints size put: arrowVertices last.

	bezierSegs := Array new: arrowVertices size - 2.
	2 to: arrowVertices size - 1 do: [ :i | | r1 r2 t1 t2 v1 v2  v3 preferredLength |
		v1 := midpoints at: i - 1.
		v2 := arrowVertices at: i.
		v3 := midpoints at: i.
		r1 := (v2 - v1) r.
		t1 := (v1 - v2) normalized.
		r2 := (v2 - v3) r.
		t2 := (v3 - v2) normalized.
		preferredLength := r1 min: r2.
		bezierSegs at: i - 1 put: (Bezier2Segment from: (v2 + (t1 * preferredLength))
									via: v2
									to: (v2 + (t2 * preferredLength))).
	].

	fillSegs := Array new: arrowVertices size - 2.	"fill before bezier"
	bezierSegs withIndexDo: [ :seg :bi | | priorEnd nextStart d1 d2 dp dn stretch fill |
		priorEnd := bi = 1 ifTrue: [ arrowVertices first ] ifFalse: [ (bezierSegs at: bi - 1) end ].
		nextStart := bi = bezierSegs size ifTrue: [ arrowVertices last ] ifFalse: [ (bezierSegs at: bi + 1) start ].
		dp := seg via dist: priorEnd.
		d1 := seg via dist: seg start.	"same as dist to end"
		dp < d1 ifTrue: [
			d1 := dp.
			seg start: priorEnd.
			seg end: (seg via + ((seg end - seg via) normalized * d1))
		].
		dn := seg via dist: nextStart.
		d2 := d1.
		stretch := d1 * 0.2.
		(dp - dn) abs <= stretch ifTrue: [	"can stretch both ends"
				seg start: priorEnd.
				seg end: nextStart.
			] ifFalse: [

		((dp - d1) abs <= stretch)
			ifTrue: [ seg start: priorEnd ]
			ifFalse: [ | t1 |
				t1 := (seg start - seg via) normalized.
				seg start: (seg start + (t1 * stretch)).
				fill := LineSegment from: priorEnd to: seg start.
				fillSegs at: bi put: fill.
			].
		(dn - d2) abs <= stretch
			ifTrue: [ seg end: nextStart ]
			ifFalse: [  | t2 |
				t2 := (nextStart - seg end) normalized.
				seg end: (seg end + (t2 * stretch)).].
		]
	].

	^Array streamContents: [ :s |
		fillSegs with: bezierSegs do: [ :fill :bezier |
			fill ifNotNil: [ fill length > 10 ifTrue: [ s nextPut: fill ]
				ifFalse: [ bezier start: fill start ]].
			bezier ifNotNil: [ s nextPut: bezier ].

	].
		(bezierSegs last end dist: arrowVertices last) > 2 ifTrue: [
			s nextPut: (LineSegment from: bezierSegs last end to: arrowVertices last)
			]]