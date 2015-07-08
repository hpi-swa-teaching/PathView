zooming
testZoomToANumber
	
	| zoomLevel scrollPane |
	zoomLevel := 0.6.
	scrollPane := SScrollPane forMorph: instance.
	instance zoomTo: zoomLevel.
	self assert: [ scrollPane scroller scale = zoomLevel ]