zooming
testZoomToTooLittleZoom
	
	| zoomLevel scrollPane referenceScale |
	zoomLevel := SClassDiagram minZoomLevel - 0.1.
	scrollPane := SScrollPane forMorph: instance.
	referenceScale := scrollPane scroller scale.
	instance zoomTo: zoomLevel.
	self assert: [ referenceScale = scrollPane scroller scale. ]