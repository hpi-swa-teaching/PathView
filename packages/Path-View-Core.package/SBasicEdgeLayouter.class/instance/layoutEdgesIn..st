layouting
layoutEdgesIn: aGraph
	"This recursively  traverses down all subgraphs and lays out all edges.
	This requires, that all positions are already assigned."
	
	aGraph edges do: [ :edge |
		self layoutEdge: edge in: aGraph ].
	aGraph nodes
		select: #containsSubgraph
		thenDo: [ :subgraphNode |
			self layoutEdgesIn: subgraphNode graph ].