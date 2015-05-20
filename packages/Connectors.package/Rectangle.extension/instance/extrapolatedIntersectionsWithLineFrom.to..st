*connectors-geometry
extrapolatedIntersectionsWithLineFrom: start to: end
	| intersections side ex ey delta dx dy |
	intersections := self intersectionsWithLineFrom: start to: end.
	intersections size = 1 ifFalse: [ ^intersections ].
	side := self sideNearestTo: intersections anyOne.
	delta := end - start.
	side == #left ifTrue: [ ex := self right. ].
	side == #right ifTrue: [ ex := self left ].
	side == #top ifTrue: [ ey := self bottom ].
	side == #bottom ifTrue: [ ey := self top ].

	ex ifNil: [
		delta y isZero ifTrue: [ ex := start x ] ifFalse: [ 
			dx := (ey - start y) * delta x / delta y.
			ex := start x + dx.
		]
	].
	ey ifNil: [
		delta x isZero ifTrue: [ ey := start y ] ifFalse: [ 
			dy := (ex - start x) * delta y / delta x.
			ey := start y + dy
		].
	].
	intersections add: ex@ey.
	^intersections