traversal
dfsPre: nodeBlock post: postNodeBlock edgeBlock: edgeBlock 
	| states |
	states := IdentityDictionary new.
	self vertices do: [ :v | states at: v put: #unexplored ].
	(self vertices asSortedCollection: [:a :b | a incomingConnections size < b incomingConnections size])
		do: [:node | (states at: node) == #unexplored
				ifTrue: [node
						depthFirstSearchVisitPre: nodeBlock
						post: postNodeBlock
						edgeBlock: edgeBlock
						states: states]].