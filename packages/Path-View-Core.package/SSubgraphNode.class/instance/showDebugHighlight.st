debugging
showDebugHighlight
	
	| rect |
	rect := SDebugRectangleMorph new.
	rect
		position: self position;
		extent: self extent;
		color: debugHighlightColor.
	self morph ifNotNilDo: [ :morph | morph owner addMorphFront: rect ].