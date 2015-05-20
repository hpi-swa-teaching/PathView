*connectors-vector functions
lineSegmentsWithParametricValueDo: aBlock
	"Evaluate aBlock with the receiver's line segments"
	aBlock value: start value: end value: 0.0 value: 1.0