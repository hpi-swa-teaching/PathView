layout - assigning
position: node inMatrixAt: position
	
	positionsToNodes at: position put: node.
	nodesToPositions at: node put: position.