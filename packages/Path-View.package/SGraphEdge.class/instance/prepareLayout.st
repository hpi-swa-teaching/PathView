layout
prepareLayout
	"This is sent right before applyLayout, so reset the morphStraightened variable to ensure, that the GraphEdge-object
	can be used multiple times for layouting."
	
	morphStraightened := false.