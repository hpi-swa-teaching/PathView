accessing
pseudoEdgesDo: aBlock
	"If this is a normal edge, aBlock is not invoked at all.
	If this is a pseudo-edge, aBlock is first invoked with the receiver and then (possibly) with further pseudo-edges, if this pseudo-edge represents further pseudo-edges."
	
	self subclassResponsibility.