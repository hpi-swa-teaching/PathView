layouting
reroutePseudoEdge: edge aroundNodesIn: graph
	
	^ self
		rerouteEdge: edge originalEdge
		aroundNodes: (edge rejectAnchorNodes: graph nodes)