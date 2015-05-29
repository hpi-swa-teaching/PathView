corner-oriented layout
sortedNeighbors
	"Return my neighbors, sorted by my attraction to them; highly attracted nodes first."
	
	^ (SortedCollection
		sortBlock: [ :node1 :node2 | (self attractionTo: node1) > (self attractionTo: node2) ])
		addAll: neighborNodes;
		yourself