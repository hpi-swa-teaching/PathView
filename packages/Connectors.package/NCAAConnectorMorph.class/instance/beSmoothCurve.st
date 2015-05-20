appearance
beSmoothCurve
	line beSmoothCurve.
	constraints do: [ :ea | ea forceRedraw; step ].
	self changed.