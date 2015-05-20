gestures
shapeNewConnector: c vertices: vPoints ortho: isOrtho curved: isCurved 
	super
		shapeNewConnector: c
		vertices: vPoints
		ortho: false
		curved: true.
	ActiveHand newKeyboardFocus: c.
	^ c