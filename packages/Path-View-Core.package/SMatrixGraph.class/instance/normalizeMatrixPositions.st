layout - assigning
normalizeMatrixPositions
	"After this, the points in the matrix will be normalized to 1@1 (to ease using these points as collection-indices)."
	
	| anyPoint minX minY offset |
	anyPoint := nodesToPositions values anyOne.
	minX := anyPoint x.
	minY := anyPoint y.
	nodesToPositions values do: [ :point |
		minX := point x min: minX.
		minY := point y min: minY ].
	offset := (minX negated  + 1) @ (minY negated + 1).
	self offsetMatrixBy: offset.