*connectors-graphs
depthFirstSearchVisitPre: nodeBlock post: postNodeBlock edgeBlock: edgeBlock states: nodeStates 
	"nodeBlock is called on first encountering the node (Morph). 
	edgeBlock is called with the edge (NCConnectorMorph) and one of: 
	#unexplored -- dest morph has not yet been seen 
	#processed -- dest morph has been seen 
	#frontier -- this edge is a back edge (i.e. creates a cycle) 
	If postNodeBlock is non-nil, it will be called after visiting a node. 
	"
	| state |
	state := nodeStates
				at: self
				ifAbsentPut: [#unexplored].
	nodeBlock
		ifNotNil: [nodeBlock value: self].
	nodeStates at: self put: #frontier.
	self outgoingConnections
		do: [:conn | 
			| neighbor | 
			neighbor := conn destinationMorph.
			neighbor
				ifNotNil: [state := nodeStates
								at: neighbor
								ifAbsentPut: [#unexplored].
					edgeBlock
						ifNotNil: [edgeBlock value: conn value: state].
					state == #unexplored
						ifTrue: [neighbor
								depthFirstSearchVisitPre: nodeBlock
								post: postNodeBlock
								edgeBlock: edgeBlock
								states: nodeStates]]].
	nodeStates at: self put: #processed.
	postNodeBlock
		ifNotNil: [postNodeBlock value: self]