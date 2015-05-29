layout - assigning
attach: neighbor to: node
	
	^ (self attach: neighbor directlyTo: node)
		ifFalse: [ self attach: neighbor asCloseAsPossibleTo: node ]