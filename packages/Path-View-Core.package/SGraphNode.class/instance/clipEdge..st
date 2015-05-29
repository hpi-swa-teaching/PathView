accessing
clipEdge: aGraphEdge
	"This removes aGraphEdge from the receiver and also from the other node it connects to. Can be invoked on either of the two nodes with the same effect."
	
	| removedNeighbor |
	removedNeighbor := neighborNodes detect: [ :node |
		(aGraphEdge fromNode = node or: [ aGraphEdge toNode = node ])
			and: [ node edges includes: aGraphEdge ] ].
	removedNeighbor edges remove: aGraphEdge.
	edges remove: aGraphEdge.
	removedNeighbor checkRemoveNeighbor: self.
	self checkRemoveNeighbor: removedNeighbor.