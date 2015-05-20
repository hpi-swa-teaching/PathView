*connectors-rectangle functions
lineSegmentsDo: aBlock
	"Evaluate aBlock with the receiver's line segments"
	| p |
	aBlock value: origin value: (p := self topRight).
	aBlock value: p value: corner.
	aBlock value: corner value: (p := self bottomLeft).
	aBlock value: p value: origin.