geometry
vertexWithinProportion: proportion andDistance: dist
	"Answer which vertex is within proportion of the current segment (0..1), if any, and also within dist pixels.
	Answer 0 if none."
	| seg |
	seg := line segments at: segmentIndex ifAbsent: [ ^0 ].
	line isCurve ifTrue: [
		seg isBezier2Segment ifFalse: [ ^0 ].
		^(((minT - 0.5) abs <= proportion) and: [ minDist <= dist ])
			ifTrue: [ ((line segments select: [ :ea | ea isBezier2Segment ]) indexOf: seg) + 1 ]
			ifFalse: [ 0 ].
	] ifFalse: [ | atBegin atEnd |
		atBegin :=  minT between: 0.0 and: proportion / 2.0.
		atEnd :=  minT between: (1.0 - (proportion / 2.0)) and: 1.0.
		^(atEnd | atBegin and: [ minDist <= dist ]) 
			ifTrue: [ segmentIndex + (atEnd ifTrue: [ 1 ] ifFalse: [ 0 ]) ]
			ifFalse: [ 0 ]
	]