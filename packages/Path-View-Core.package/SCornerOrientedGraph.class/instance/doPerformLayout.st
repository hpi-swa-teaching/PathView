layout
doPerformLayout
	"First assign the corners of the nodes to each other. Then calculate the actual positions from that."
	
	self
		assignCorners;
		assertCornerConsistency; "Check, whether assignCorners worked correctly"
		assignPositions.
		"assignPositionsNaively." "Alternative algorithm"