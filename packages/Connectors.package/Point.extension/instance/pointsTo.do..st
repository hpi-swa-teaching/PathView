*connectors-point functions
pointsTo: aPoint do: aBlock
	"Using the Bresenham algorithm, evaluate aBlock with all the points from me to aPoint, inclusive"
	aBlock value: self.
	self pointsLoopDo: aBlock X: aPoint x - self x Y: aPoint y - self y.
	aBlock value: aPoint.