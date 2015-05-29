converting
rerouteEdgesOf: aCollectionOfNodes in: aSubgraphNode
	
	aCollectionOfNodes do: [ :node |
		node edges copy do: [ :edge | | pseudoEdge |
			edge fromNode = node
				ifTrue: [ (aCollectionOfNodes includes: edge toNode) ifFalse: [ "Edge from subgraph to the outside"
					node clipEdge: edge.
					pseudoEdge := SPseudoGraphEdge forEdge: edge from: aSubgraphNode to: edge toNode.
					self addElement: pseudoEdge ] ]
				ifFalse: [ (aCollectionOfNodes includes: edge fromNode) ifFalse: [ "Edge from the outside into the subgraph"
					node clipEdge: edge.
					pseudoEdge := SPseudoGraphEdge forEdge: edge from: edge fromNode to: aSubgraphNode.
					self addElement: pseudoEdge ] ] ] ].