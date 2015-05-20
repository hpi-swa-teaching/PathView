constraints
applyConstraint: aPoint
	"Make sure that I stay within my owner's bounds"
	self center: (self constrainedCenter: aPoint)