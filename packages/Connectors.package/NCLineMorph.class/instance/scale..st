rotate scale and flex
scale: scaleFactor 
	| flex center ratio |
	ratio := self scaleFactor / scaleFactor.
	self lineWidth: self lineWidth / ratio.
	self borderWidth: self borderWidth / ratio.
	center := self referencePosition.
	flex := (MorphicTransform offset: center negated)
				withScale: ratio.
	self
		setVertices: (vertices
				collect: [:v | (flex transform: v)
						- flex offset]).
	super scale: scaleFactor.