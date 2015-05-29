layout - assigning
attach: neighbor to: node
	
	| possiblePositions newPosition |
	possiblePositions := self positionsAround: (nodesToPositions at: node).
	newPosition := self
		findPositionAround: node position
		satisfying: [ :position |
			(positionsToNodes includesKey: position) not ].
	self position: neighbor inMatrixAt: newPosition.