layout - assigning
assignCornersOf: node
	
	node sortedNeighbors
		do: [ :neighbor | self attach: neighbor to: node ].