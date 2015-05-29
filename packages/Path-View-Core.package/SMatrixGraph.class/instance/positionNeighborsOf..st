layout - assigning
positionNeighborsOf: node
	
	node sortedNeighbors
		do: [ :neighbor | self attach: neighbor to: node ].