aesthetics
aeMinEdgeLength
	"I am an aesthetic that causes edges to be shortened. My magnitude is d^2, where d is the magnitude of the distance between nodes. Since I consider all edges, my time complexity is O(|E|)"

	| retval |
	retval := IdentityDictionary 
				newFrom: (self nodes collect: [:node | node -> (0 @ 0)]).
	self edges do: 
			[:edge | 
			| fromNode toNode delta mag force |
			fromNode := edge startConnection.
			toNode := edge endConnection.
			delta := toNode center - fromNode center.
			delta := delta / scale.
			mag := delta r.
			force := mag * delta.
			retval at: fromNode put: (retval at: fromNode) + force.
			retval at: toNode put: (retval at: toNode) - force].
	^self nodes collect: [:ea | retval at: ea]