geometry
midpoint
	"Answer the midpoint along my segments"
	| middle |
	middle := 0.
	self lineSegmentsDo: [ :a :b | middle := middle + (a dist: b) ].
	middle < 2 ifTrue: [ ^ self center ].
	middle := middle / 2.
	self lineSegmentsDo: [ :a :b | | dist |
		dist := (a dist: b).
		middle < dist
			ifTrue: [ ^(a + ((b - a) * (middle / dist))) asIntegerPoint ].
		middle := middle - dist.
	].
	self error: 'can''t happen'