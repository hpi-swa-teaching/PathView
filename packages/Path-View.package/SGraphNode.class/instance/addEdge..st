accessing
addEdge: aGraphEdge
	"aGraphEdge has to connect the receiver with some other node. Memorize the edge and also the other node as a neighbor."
	
	neighborNodes add:
		(self
			caseOf: {
				[ aGraphEdge fromNode ] -> [ aGraphEdge toNode ].
				[ aGraphEdge toNode ] -> [ aGraphEdge fromNode ] }
			otherwise: [ ^ self ]).
	edges add: aGraphEdge.