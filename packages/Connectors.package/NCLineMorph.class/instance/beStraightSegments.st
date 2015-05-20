accessing
beStraightSegments

	self isCurve ifTrue: [
		smoothCurve := false.
		self computeBounds]