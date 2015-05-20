submorphs-add/remove
addJunctionDotShape
	self submorphs isEmpty ifTrue: [
		self addShape: self class junctionDotShape.
		self connectToNearestOrthogonalPoint.
		self preferredConnection: #(#connectToNearestOrthogonalPoint)
	].