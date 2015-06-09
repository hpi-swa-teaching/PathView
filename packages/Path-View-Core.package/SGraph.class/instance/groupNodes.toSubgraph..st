converting
groupNodes: aCollectionOfNodes toSubgraph: aGraph
	"aCollectionOfNodes contains nodes from the receiver-graph. Remove all these nodes from the receiver and add them to aGraph.
	Ensure, that all edges are rerouted consistently, create some pseudo-edges to connect the new subgraph with other nodes."
	
	| subgraphNode |
	nodes := nodes copyWithoutAll: aCollectionOfNodes.
	aGraph addElements: aCollectionOfNodes.
	subgraphNode := SSubgraphNode createFrom: aGraph.
	nodes add: subgraphNode.
	aGraph addElements: (edges select: [ :edge | aCollectionOfNodes includesAllOf: { edge fromNode. edge toNode } ]). "Add all INNER edges to the subgraph."
	edges := edges reject: [ :edge | aCollectionOfNodes includesAnyOf: { edge fromNode. edge toNode } ]. "Remove all inner AND in-between edges from myself."
	self rerouteEdgesOf: aCollectionOfNodes in: subgraphNode. "Turn in-between edges into PseudoEdges and add them to myself."