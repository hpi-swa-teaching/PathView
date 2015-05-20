*connectors-vector functions
lineSegmentsWithParametricValueDo: aBlock
	"Evaluate aBlock with the receiver's line segments and the corresponding parametric values, ranging from just above 0 to 1.0"
	"Note: We could use forward differencing here."
	| steps last deltaStep t lastT next |
	steps := 1 max: (self length // 10). "Assume 10 pixels per step"
	last := start.
	deltaStep := 1.0 / steps asFloat.
	t := deltaStep.
	lastT := 0.0.
	1 to: steps do:[:i|
		next := self valueAt: t.
		aBlock value: last value: next value: lastT value: t.
		last := next.
		lastT := t.
		t := t + deltaStep].