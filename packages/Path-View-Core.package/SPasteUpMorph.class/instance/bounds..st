geometry
bounds: newBounds
	
	super bounds: newBounds.
	minimap ifNotNil: [
		minimap refreshExtent ].