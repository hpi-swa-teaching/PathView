zooming
centerAround: originalSizePoint
	"Center the viewport around the given point. The parameter is inside the coordinates of the ORIGINAL size of the viewed morph,
	without any scaling or offset taken into account."
	
	self setOffsetInsideBounds: (originalSizePoint * self scroller scale) - (self scroller extent / 2).