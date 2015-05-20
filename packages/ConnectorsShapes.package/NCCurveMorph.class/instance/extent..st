geometry
extent: aPoint
	super extent: aPoint.
	curve ifNotNil: [ curve bounds: self curveBounds ]
