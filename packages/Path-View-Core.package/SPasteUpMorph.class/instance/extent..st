geometry
extent: newBounds
	
	super extent: newBounds.
	minimap ifNotNil: [
		minimap refreshExtent ].