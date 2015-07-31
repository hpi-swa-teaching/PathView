testZooming
testZoomToTooLittleZoom
	
	| zoomLevel scrollPane referenceScale |
	zoomLevel := SClassDiagram zoomMin - 0.1.
	scrollPane := SScrollPane forMorph: instance.
	referenceScale := scrollPane scroller scale.
	instance zoomTo: zoomLevel.
	self assert: [ referenceScale = scrollPane scroller scale. ]