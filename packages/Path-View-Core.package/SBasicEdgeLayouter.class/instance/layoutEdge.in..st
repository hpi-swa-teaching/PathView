layouting
layoutEdge: edge in: aGraph
	"A normal edge will just be rerouted around the nodes in aGraph.
	In case of pseudo-edges, iterate their represented edges (that might be more pseudo-edges) and additionally
	reroute them around the nodes in the subgraphs where they start/end.
	This is hard to describe without a picture or something, sorry. Try to read the code."
	
	| originalEdge |
	originalEdge := edge originalEdge.
	edge pseudoEdgesDo: [ :pseudoEdge |
		pseudoEdge anchorNodes
			select: #containsSubgraph
			thenDo: [ :subgraphNode |
				self reroutePseudoEdge: originalEdge aroundNodesIn: subgraphNode graph ] ].
	self reroutePseudoEdge: edge aroundNodesIn: aGraph.