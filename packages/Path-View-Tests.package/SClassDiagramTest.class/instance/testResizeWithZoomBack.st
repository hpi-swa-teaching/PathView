zooming
testResizeWithZoomBack
	
	| zoomLevel scrollPane zoomBack |
	zoomLevel := 0.6.
	zoomBack := 1.0.
	scrollPane := SScrollPane forMorph: instance.
	instance zoomTo: zoomLevel.
	instance zoomTo: zoomBack.
	self assert: (instance boundsInWorld area >= scrollPane boundsInWorld area).