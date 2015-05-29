layout
doPerformLayout
	
	nodesToPositions := Dictionary new.
	positionsToNodes := Dictionary new.
	self
		fillMatrix;
		assignPositions.