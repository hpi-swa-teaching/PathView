calculations
intersectingNodesIn: collectionOfNodes
	"Returns an ordered collection of nodes (in collectionOfNodes), that are intersected by the receiver edge.
	The elements are association from the intersected nodes to the segment-number, which intersects them."
	
	| result |
	result := OrderedCollection new.
	1 to: self numberOfSegments do: [ :segmentNumber |
		result addAll: 
			((self intersectionsOfSegment: segmentNumber in: collectionOfNodes)
				collect: [ :node | node -> segmentNumber ]) ].
	^ result