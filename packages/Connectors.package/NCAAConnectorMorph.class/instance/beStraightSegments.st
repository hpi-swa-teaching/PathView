appearance
beStraightSegments
	line beStraightSegments.
	constraints do: [ :ea | ea forceRedraw; step ].
	self changed.