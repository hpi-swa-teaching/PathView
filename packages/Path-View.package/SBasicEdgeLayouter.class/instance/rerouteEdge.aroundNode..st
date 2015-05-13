layouting
rerouteEdge: edge aroundNode: nodeToSegmentNumber
	"1. Find the corners, that should be used to reroute the edge.
	2. Insert bend-positions at these corners (either one or two!), outset by a constant delta."
	
	| newBendPositions |
	newBendPositions := Set new.
	(edge findRerouteCornersIn: nodeToSegmentNumber)
		do: [ :corner | | outsetBounds |
			outsetBounds := nodeToSegmentNumber key absoluteBounds expandBy: self class edgeReroutingOffset.
			newBendPositions add: (outsetBounds perform: corner) ].
	edge
		insertBendPositions: newBendPositions
		inSegment: nodeToSegmentNumber value.