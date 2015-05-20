accessing
updateBounds
	| boundsRect |
	boundsRect := self boundingBox.

	boundsRect width isZero 
		ifTrue: [boundsRect := boundsRect expandBy: (self scale x / 20.0) @ 0.0].
	boundsRect height isZero 
		ifTrue: [boundsRect := boundsRect expandBy: 0.0 @ (self scale y / 20.0)].

	bounds := boundsRect