accessing
pseudoEdgesDo: aBlock
	"Iterate recursively over all contained pseudo-edges. Depth-first."
	
	self representedEdge pseudoEdgesDo: aBlock.
	aBlock value: self.