zooming
testResizeWithZoomToANumber
	
	| zoomLevel scrollPane |
	zoomLevel := 0.6.
	scrollPane := SScrollPane forMorph: instance.
	instance zoomTo: zoomLevel.
	self assert: (instance boundsInWorld area >= scrollPane boundsInWorld area).