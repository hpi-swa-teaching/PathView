corner-oriented layout
attach: neighbor toCorner: freeCorner
	
	| neighborCorner corner |
	neighborCorner := freeCorner + 4 \\ 8. "The opposite corner"
	self corner: freeCorner put: neighbor.
	neighbor corner: neighborCorner put: self.
	
	freeCorner even
	ifTrue: [
		"Check the corner left of the new neighbor"
		corner := freeCorner - 1 \\ 8.
		(self corner: corner)
			ifNotNilDo: [ :otherNeighbor |
				otherNeighbor corner: ((corner + 4 \\ 8) - 2 \\ 8) put: neighbor.
				neighbor corner: (neighborCorner + 1 \\ 8) put: otherNeighbor ].
	
		"Check the corner right of the new neighbor"
		corner := freeCorner + 1 \\ 8.
		(self corner: corner)
			ifNotNilDo: [ :otherNeighbor |
				otherNeighbor corner: ((corner + 4 \\ 8) + 2 \\ 8) put: neighbor.
				neighbor corner: (neighborCorner - 1 \\ 8) put: otherNeighbor ] ]
	ifFalse: [
		"Check the corner left of the new neighbor"
		corner := freeCorner - 1 \\ 8.
		(self corner: corner)
			ifNotNilDo: [ :otherNeighbor |
				otherNeighbor corner: ((corner + 4 \\ 8) - 1 \\ 8) put: neighbor.
				neighbor corner: (neighborCorner + 2 \\ 8) put: otherNeighbor ].
	
		"Check the corner right of the new neighbor"
		corner := freeCorner + 1 \\ 8.
		(self corner: corner)
			ifNotNilDo: [ :otherNeighbor |
				otherNeighbor corner: ((corner + 4 \\ 8) + 1 \\ 8) put: neighbor.
				neighbor corner: (neighborCorner - 2 \\ 8) put: otherNeighbor ].
		
		"In the case of attaching neighbor to one of my sides, check also the two adjacent sides."
		"Check the adjacent side left of the new neighbor"
		corner := freeCorner - 2 \\ 8.
		(self corner: corner)
			ifNotNilDo: [ :otherNeighbor |
				otherNeighbor corner: ((corner + 4 \\ 8) - 1 \\ 8) put: neighbor.
				neighbor corner: (neighborCorner + 1 \\ 8) put: otherNeighbor ].
		
		"Check the adjacent side right of the new neighbor"
		corner := freeCorner + 2 \\ 8.
		(self corner: corner)
			ifNotNilDo: [ :otherNeighbor |
				otherNeighbor corner: ((corner + 4 \\ 8) + 1 \\ 8) put: neighbor.
				neighbor corner: (neighborCorner - 1 \\ 8) put: otherNeighbor ] ].