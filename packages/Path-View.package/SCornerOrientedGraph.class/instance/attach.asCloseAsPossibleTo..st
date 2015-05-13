layout - assigning
attach: neighbor asCloseAsPossibleTo: node
	"Start from corners of node, find the closest corner of any node that we can attach to."
	
	node corneringNodes
		select: #notNil
		thenDo: [ :otherNeighbor |
			self attach: neighbor to: otherNeighbor ].