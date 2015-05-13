computation
moveNeighborsOf: node from: collectionOfNodes into: set
	
	(collectionOfNodes includes: node)
		ifTrue: [
			collectionOfNodes remove: node.
			set add: node.
			node neighborNodes do: [ :neighbor |
				self moveNeighborsOf: neighbor from: collectionOfNodes into: set ] ].