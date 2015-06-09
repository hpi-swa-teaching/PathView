accessing
edgeLayouter: anEdgeLayouter
	"A single message will be sent to anEdgeLayouter during layouting - layoutEdgesIn: with the graph as parameter.
	From there, the edgeLayouter can access all the nodes and edges and add bend-positions to the edges.
	The edge-layouter will be invoked AFTER all nodes have been positioned."
	
	edgeLayouter := anEdgeLayouter.