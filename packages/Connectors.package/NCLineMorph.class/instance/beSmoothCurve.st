accessing
beSmoothCurve
	self isCurve ifFalse: [
		smoothCurve := true.
		self computeBounds]