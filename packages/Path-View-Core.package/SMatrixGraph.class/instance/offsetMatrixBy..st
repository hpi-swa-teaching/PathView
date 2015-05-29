layout - assigning
offsetMatrixBy: offset
	
	| nodesToPositionsCopy |
	nodesToPositionsCopy := nodesToPositions copy.
	nodesToPositions removeAll.
	positionsToNodes removeAll.
	nodesToPositionsCopy keysAndValuesDo: [ :node :point |
		self position: node inMatrixAt: point + offset ].