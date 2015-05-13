drawing
drawColorHorizontalOn: aCanvas
	| lastHorizontal insetRect fillStyle |
	lastHorizontal := 0.0.
	self horizontalColors do: [:each | 
		insetRect := self bounds 
						insetOriginBy: ((self bounds width * lastHorizontal) asInteger@0)
						cornerBy: ((self bounds width - (self bounds width * each key)) asInteger@0).
		lastHorizontal := each key.
		fillStyle := GradientFillStyle colors: each value.
		fillStyle origin: insetRect topLeft.
		fillStyle direction: insetRect width@0.
		aCanvas fillRectangle: insetRect fillStyle: fillStyle].
