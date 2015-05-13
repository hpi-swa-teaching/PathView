layout
layoutEdges
	"This may be overwritten, if the graph-implementation itself wants to decide how to layout the edges."
	
	self nodes do: #prepareEdgeLayout.
	(edgeLayouter
		ifNil: [ self class edgeLayouterClass new ])
		layoutEdgesIn: self.