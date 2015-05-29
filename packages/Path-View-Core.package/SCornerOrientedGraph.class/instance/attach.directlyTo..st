layout - assigning
attach: neighbor directlyTo: node
	"Try to find a corner of node, where neighbor can be attached to. If not possible, return false."
	
	node nextFreeCorner
		ifNil: [ ^ false ]
		ifNotNilDo: [ :freeCorner |
			node attach: neighbor toCorner: freeCorner.
			^ true ].