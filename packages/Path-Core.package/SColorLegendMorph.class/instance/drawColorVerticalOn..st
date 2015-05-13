drawing
drawColorVerticalOn: aCanvas
	| lastVertical insetRect fillStyle |
	lastVertical := 0.0.
	self verticalColors do: [:each | 
		insetRect := self bounds 
						insetOriginBy: (0@(self bounds height * lastVertical) asInteger)
						cornerBy: (0@(self bounds height - 	(self bounds height * each key)) asInteger).
		lastVertical := each key.
		fillStyle := GradientFillStyle colors: each value.
		fillStyle origin: insetRect topLeft.
		fillStyle direction: 0@insetRect height.
		aCanvas fillRectangle: insetRect fillStyle: fillStyle].
