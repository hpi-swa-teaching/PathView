gestures
shapeNewConnector: c vertices: vPoints ortho: isOrtho curved: isCurved 
	super shapeNewConnector: c vertices: vPoints ortho: isOrtho curved: isCurved.
	c addUnwrappedLabel: 'event' near: c midpoint.
	^ c