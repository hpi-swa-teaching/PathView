corner-oriented layout
corner: cornerNum
	"Access corners zero-based to properly apply module-operation when calculating nodes."
	
	^ corneringNodes at: cornerNum + 1