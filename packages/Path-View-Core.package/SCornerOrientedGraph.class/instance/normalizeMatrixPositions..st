layout - positioning
normalizeMatrixPositions: positions
	"After this, the points in the positions-matrix will be normalized to 1@1 (to ease using these points as collection-indices)."
	
	| anyPoint minX minY offset |
	anyPoint := positions values anyOne.
	minX := anyPoint x.
	minY := anyPoint y.
	positions values do: [ :point |
		minX := point x min: minX.
		minY := point y min: minY ].
	offset := (minX negated  + 1) @ (minY negated + 1).
	positions keysAndValuesDo: [ :node :point |
		positions at: node put: point + offset ].