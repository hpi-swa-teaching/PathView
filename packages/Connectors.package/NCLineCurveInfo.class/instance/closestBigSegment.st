geometry
closestBigSegment
	"Answer the starting index of the line's (big) segment nearest to aPoint"
	| bigSegment |
	line isCurve ifFalse: [ ^segmentIndex ].
	bigSegment := 1.
	1 to: segmentIndex do: [ :i |
		(line segments at: i) isBezier2Segment ifTrue: [
			bigSegment := bigSegment + 1.
			i = segmentIndex ifTrue: [ minT < 0.5 ifTrue: [ bigSegment := bigSegment - 1 ]].
		]].
	^bigSegment