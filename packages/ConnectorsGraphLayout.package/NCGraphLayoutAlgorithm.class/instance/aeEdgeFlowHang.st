aesthetics
aeEdgeFlowHang
	"I am an aesthetic that causes edges to tend to hang down so their start nodes are above their end nodes. Since I consider all edges, my time complexity is O(|E|)"

	| retval upForce |
	retval := IdentityDictionary 
				newFrom: (self nodes collect: [:node | node -> (0 @ 0)]).
	upForce := 0 @ -0.01 * scale.
	self edges do: 
			[:edge | 
			| fromNode toNode |
			fromNode := edge startConnection.
			toNode := edge endConnection.
			toNode notNil & fromNode notNil 
				ifTrue: 
					[retval at: fromNode put: (retval at: fromNode) + upForce.
					retval at: toNode put: (retval at: toNode ifAbsentPut: [ 0@0 ]) - upForce]].
	^self nodes collect: [:ea | retval at: ea]