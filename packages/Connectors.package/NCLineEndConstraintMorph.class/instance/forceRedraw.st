stepping and presenter
forceRedraw
	self lastTargetAngle: (self lastTargetAngle + 1e-6).
	lastTargetBounds := nil.
	self changed.
