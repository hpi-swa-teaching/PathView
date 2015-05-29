layout - positioning
assignPositions
	"From the assigned corners of the nodes, compute a grid/matrix from the nodes. Each column is as wide as the widest node in it, each row is as high as the highest node in it.
	This way there can really be no overlapping, if the corners are assigned correctly. The imaginary matrix starts in the top-left corner, meaning x grows downwards and y grows to the right."
	
	| startNode positions heightsAndWidths |
	positions := Dictionary new. "Maps from nodes to their x/y-indices in the matrix."
	startNode := self nodes anyOne.
	positions at: startNode put: 0@0.
	self positionNeighborsOf: startNode intoMatrix: positions.
	self normalizeMatrixPositions: positions.
	
	heightsAndWidths := self columnAndRowCentersOfMatrix: positions.
	self assignPositionsFromMatrix: positions columnWidths: heightsAndWidths key rowHeights: heightsAndWidths value.
	self normalizeElements.