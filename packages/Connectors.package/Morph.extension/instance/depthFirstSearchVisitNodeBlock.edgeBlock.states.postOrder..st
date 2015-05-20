*connectors-graphs
depthFirstSearchVisitNodeBlock: nodeBlock edgeBlock: edgeBlock states: nodeStates postOrder: postOrder
	"nodeBlock is called with the node (Morph).
	edgeBlock is called with the edge (NCConnectorMorph) and one of:
		#unexplored -- dest morph has not yet been seen
		#processed -- dest morph has been seen
		#frontier -- this edge is a back edge (i.e. creates a cycle)
	If postOrder is true, the node block will be called after visiting a node.
	"

	| state |
	state := nodeStates at: self ifAbsentPut: [ #unexplored ].
	postOrder ifFalse: [ nodeBlock value: self ].
	nodeStates at: self put: #frontier.
	self outgoingConnections do: [:conn | 
		| neighbor | 
		neighbor := conn destinationMorph.
		neighbor ifNotNil: [
			state := (nodeStates at: neighbor ifAbsentPut: [ #unexplored ]).
			edgeBlock value: conn value: state.
			state == #unexplored
				ifTrue: [neighbor
							depthFirstSearchVisitNodeBlock: nodeBlock
							edgeBlock: edgeBlock
							states: nodeStates
							postOrder: postOrder].
		]
	].
	nodeStates at: self put: #processed.
	postOrder ifTrue: [ nodeBlock value: self ].
