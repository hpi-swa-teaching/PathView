rotate scale and flex
rotationDegrees: degrees 
	| flex center |
	center := self referencePosition.
	flex := (MorphicTransform offset: center negated)
			withAngle: (degrees - self forwardDirection) degreesToRadians.
	self setVertices: (vertices collect: [:v | (flex transform: v) - flex offset]).
	self forwardDirection: degrees.

