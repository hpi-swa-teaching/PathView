traversal
topologicallySortedVerticesDetectCycles: cycleBlockOrNil 
	"Answer a topologically sorted collection of my vertices.
	If cycleBlockOrNil is non-nil, evaluate it with whatever edges are detected as back edges"

	| retval |
	retval := OrderedCollection new: self vertices size.
	self 
		dfsPre: nil post: [:node | retval addFirst: node]
		edgeBlock: 
			[:edge :state | 
			state == #frontier 
				ifTrue: [cycleBlockOrNil ifNotNilDo: [:blk | blk value: edge]]].
	^retval intersection: self vertices