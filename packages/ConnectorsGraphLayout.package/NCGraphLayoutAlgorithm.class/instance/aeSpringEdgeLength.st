aesthetics
aeSpringEdgeLength
	"I am an aesthetic that causes edges to tend to a specific length, resisting compression and extension. My magnitude is d, where d is the difference between an edges length and it's desired length. Since I consider all edges, my time complexity is O(|E|)"

	| retval |
	retval := IdentityDictionary 
				newFrom: (self nodes collect: [:node | node -> (0 @ 0)]).
	self edges do: 
			[:edge | 
			| fromNode toNode delta mag force |
			fromNode := edge startConnection.
			toNode := edge endConnection.
			toNode notNil & fromNode notNil 
				ifTrue: 
					[delta := toNode center - fromNode center.
					delta := delta / scale.
					mag := delta r - 2.
					force := mag * delta.
					retval at: fromNode put: (retval at: fromNode) + force.
					retval at: toNode put: (retval at: toNode) - force]].
	^self nodes collect: [:ea | retval at: ea]